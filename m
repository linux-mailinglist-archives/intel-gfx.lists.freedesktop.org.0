Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 273CF1D8A8E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 00:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748446E15E;
	Mon, 18 May 2020 22:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A6A76E096;
 Mon, 18 May 2020 22:16:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21235843-1500050 
 for multiple; Mon, 18 May 2020 23:15:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Mon, 18 May 2020 23:15:33 +0100
Message-Id: <20200518221533.1540101-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200518205010.1539621-1-chris@chris-wilson.co.uk>
References: <20200518205010.1539621-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Cleanup __igt_params_open()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The device always exist, so use it to derive the module name required to
lookup either the debugfs params directory or the sysfs module parameters.

Fixes: 2f5cee33ce55 ("igt/params: use igt_params_set_save for igt_set_module_param*")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 lib/igt_params.c | 165 +++++++++--------------------------------------
 1 file changed, 29 insertions(+), 136 deletions(-)

diff --git a/lib/igt_params.c b/lib/igt_params.c
index d8649dfd9..23660f445 100644
--- a/lib/igt_params.c
+++ b/lib/igt_params.c
@@ -80,9 +80,18 @@ static void igt_params_exit_handler(int sig)
  * Notice that this function is called by igt_set_module_param(), so that one -
  * or one of its wrappers - is the only function the test programs need to call.
  */
-static void igt_params_save(int dir, const char *path, const char *name)
+static void igt_params_save(int dir, const char *name)
 {
 	struct module_param_data *data;
+	char path[PATH_MAX];
+	char buf[80];
+	int len;
+
+	snprintf(buf, sizeof(buf), "/proc/self/fd/%d", dir);
+	len = readlink(buf, path, sizeof(path) - 1);
+	if (len < 0)
+		return;
+	path[len] = '\0';
 
 	/* Check if this parameter is already saved. */
 	for (data = module_params; data != NULL; data = data->next)
@@ -110,175 +119,59 @@ static void igt_params_save(int dir, const char *path, const char *name)
 }
 
 /**
- * __igt_params_open:
- * @device: fd of the device or -1 for default
- * @outpath: full path to the sysfs directory if not NULL
- * @param: name of parameter of interest
- *
- * Find parameter of interest and return parameter directory fd, parameter
- * is first searched at debugfs/dri/N/<device>_params and if not found will
- * look for parameter at /sys/module/<device>/parameters.
- *
- * Giving -1 here for default device will search for matching device from
- * debugfs/dri/N where N go from 0 to 63. First device found from debugfs
- * which exist also at /sys/module/<device> will be 'default'.
- * Default device will only be used for sysfs, not for debugfs.
+ * igt_params_open:
+ * @device: fd of the device
  *
- * If outpath is not NULL caller is responsible to free given pointer.
+ * This opens the module parameters directory (under sysfs) corresponding
+ * to the device for use with igt_sysfs_set() and igt_sysfs_get().
  *
  * Returns:
- * Directory fd, or -1 on failure.
+ * The directory fd, or -1 on failure.
  */
-static int __igt_params_open(int device, char **outpath, const char *param)
+int igt_params_open(int device)
 {
+	drm_version_t version;
 	int dir, params = -1;
-	struct stat buffer;
-	char searchname[64];
-	char searchpath[PATH_MAX];
-	char *foundname, *ctx;
+	char path[PATH_MAX];
+	char name[32] = "";
+
+	memset(&version, 0, sizeof(version));
+	version.name_len = sizeof(name);
+	version.name = name;
+	if (ioctl(device, DRM_IOCTL_VERSION, &version))
+		return -1;
 
 	dir = igt_debugfs_dir(device);
 	if (dir >= 0) {
-		int devname;
-
-		devname = openat(dir, "name", O_RDONLY);
-		igt_require_f(devname >= 0,
-		              "Driver need to name itself in debugfs!");
-
-		read(devname, searchname, sizeof(searchname));
-		close(devname);
-
-		foundname = strtok_r(searchname, " ", &ctx);
-		igt_require_f(foundname,
-		              "Driver need to name itself in debugfs!");
-
-		snprintf(searchpath, PATH_MAX, "%s_params", foundname);
-		params = openat(dir, searchpath, O_RDONLY);
-
-		if (params >= 0) {
-			char *debugfspath = malloc(PATH_MAX);
-
-			igt_debugfs_path(device, debugfspath, PATH_MAX);
-			if (param != NULL) {
-				char filepath[PATH_MAX];
-
-				snprintf(filepath, PATH_MAX, "%s/%s",
-					 debugfspath, param);
-
-				if (stat(filepath, &buffer) == 0) {
-					if (outpath != NULL)
-						*outpath = debugfspath;
-					else
-						free(debugfspath);
-				} else {
-					free(debugfspath);
-					close(params);
-					params = -1;
-				}
-			} else if (outpath != NULL) {
-				/*
-				 * Caller is responsible to free this.
-				 */
-				*outpath = debugfspath;
-			} else {
-				free(debugfspath);
-			}
-		}
+		snprintf(path, PATH_MAX, "%s_params", name);
+		params = openat(dir, path, O_RDONLY);
 		close(dir);
 	}
 
 	if (params < 0) { /* builtin? */
-		drm_version_t version;
-		char name[32] = "";
-		char path[PATH_MAX];
-
-		if (device == -1) {
-			/*
-			 * find default device
-			 */
-			int file, i;
-			const char *debugfs_root = igt_debugfs_mount();
-
-			igt_assert(debugfs_root);
-
-			for (i = 0; i < 63; i++) {
-				char testpath[PATH_MAX];
-
-				snprintf(searchpath, PATH_MAX,
-					 "%s/dri/%d/name", debugfs_root, i);
-
-				file = open(searchpath, O_RDONLY);
-
-				if (file < 0)
-					continue;
-
-				read(file, searchname, sizeof(searchname));
-				close(file);
-
-				foundname = strtok_r(searchname, " ", &ctx);
-				if (!foundname)
-					continue;
-
-				snprintf(testpath, PATH_MAX,
-					 "/sys/module/%s/parameters",
-					 foundname);
-
-				if (stat(testpath, &buffer) == 0 &&
-				    S_ISDIR(buffer.st_mode)) {
-					snprintf(name, sizeof(name), "%s",
-						 foundname);
-					break;
-				}
-			}
-		} else {
-			memset(&version, 0, sizeof(version));
-			version.name_len = sizeof(name);
-			version.name = name;
-			ioctl(device, DRM_IOCTL_VERSION, &version);
-		}
 		snprintf(path, sizeof(path), "/sys/module/%s/parameters", name);
 		params = open(path, O_RDONLY);
-		if (params >= 0 && outpath)
-			*outpath = strdup(path);
 	}
 
 	return params;
 }
 
-/**
- * igt_params_open:
- * @device: fd of the device
- *
- * This opens the module parameters directory (under sysfs) corresponding
- * to the device for use with igt_sysfs_set() and igt_sysfs_get().
- *
- * Returns:
- * The directory fd, or -1 on failure.
- */
-int igt_params_open(int device)
-{
-	return __igt_params_open(device, NULL, NULL);
-}
-
 __attribute__((format(printf, 3, 0)))
 static bool __igt_params_set(int device, const char *parameter,
 			     const char *fmt, va_list ap, bool save)
 {
-	char *path = NULL;
 	int dir;
 	int ret;
 
-	dir = __igt_params_open(device, save ? &path : NULL, parameter);
+	dir = igt_params_open(device);
 	if (dir < 0)
 		return false;
 
 	if (save)
-		igt_params_save(dir, path, parameter);
+		igt_params_save(dir, parameter);
 
 	ret = igt_sysfs_vprintf(dir, parameter, fmt, ap);
-
 	close(dir);
-	free(path);
 
 	return ret > 0;
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
