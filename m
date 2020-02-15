Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D2915FC5C
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 03:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F216E0E4;
	Sat, 15 Feb 2020 02:34:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909176E0E4;
 Sat, 15 Feb 2020 02:34:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 18:34:25 -0800
X-IronPort-AV: E=Sophos;i="5.70,442,1574150400"; d="scan'208";a="348088066"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 14 Feb 2020 18:34:24 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 18:34:21 -0800
Message-Id: <20200215023421.41563-1-dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC i-g-t] lib/i915/gem_mmio_base.c - add support for
 mmio_base via sysfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Obtaining mmio_base info via sysfs (if available).  This is in addition
to the already existing support for obtaining that data via debugfs.
The use of sysfs data is preferred.

This patch depends upon the following proposed IGT patch, which is not
presently merged:
  i915/gem_mmio_base.c - get mmio_base from debugfs (if possible)

The availability of sysfs info for mmio_base depends on the presence of
these two proposed kernel patches, not presently merged:
  drm/i915/gt: Expose engine properties via sysfs
  drm/i915/gt: Expose engine->mmio_base via sysfs

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
---
 lib/i915/gem_mmio_base.c | 79 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/lib/i915/gem_mmio_base.c b/lib/i915/gem_mmio_base.c
index 514f87f42..8a29a9150 100644
--- a/lib/i915/gem_mmio_base.c
+++ b/lib/i915/gem_mmio_base.c
@@ -5,8 +5,11 @@
 #include <ctype.h>
 
 #include <fcntl.h>
+#include <sys/types.h>
+#include <dirent.h>
 
 #include "igt.h"
+#include "igt_sysfs.h"
 
 struct eng_mmio_base_s {
 	char       name[8];
@@ -102,6 +105,82 @@ static struct eng_mmio_base_table_s *_gem_engine_mmio_base_info_get_legacy(int f
 	return mbp;
 }
 
+static struct eng_mmio_base_table_s *_gem_engine_mmio_base_info_get_sysfs(int fd_dev)
+{
+	struct eng_mmio_base_table_s mbt;
+	struct eng_mmio_base_table_s *mbp = NULL;
+	const size_t name_max = sizeof(mbt.mb_tab[0].name);
+	int fd_top = -1;
+	int fd_engines = -1;
+	int fd_this;
+	int fd_mmio_base;
+	DIR *dirp = NULL;
+	struct dirent *pde;
+	const char *eng_name;
+	ssize_t nb;
+	char rbuf[32];
+	unsigned long int ulv;
+	uint32_t uiv;
+
+	memset(&mbt, 0, sizeof(mbt));
+
+	fd_top = igt_sysfs_open(fd_dev);
+	if (fd_top < 0)
+		goto mbsf_cleanup;
+
+	fd_engines = openat(fd_top, "engine", O_RDONLY);
+	if (fd_engines < 0)
+		goto mbsf_cleanup;
+
+	dirp = fdopendir(fd_engines);
+	if (!dirp)
+		goto mbsf_cleanup;
+
+	for (;;) {
+		pde = readdir(dirp);
+		if (!pde)
+			break;
+
+		if ((pde->d_type == DT_DIR) || (pde->d_type == DT_UNKNOWN)) {
+			eng_name = pde->d_name;
+			if (eng_name[0] == '.')
+				continue;
+			fd_this = openat(fd_engines, eng_name, O_RDONLY);
+			if (fd_this < 0)
+				continue;
+			fd_mmio_base = openat(fd_this, "mmio_base", O_RDONLY);
+			close(fd_this);
+			if (fd_mmio_base < 0)
+				goto mbsf_cleanup;
+			nb = read(fd_mmio_base, rbuf, sizeof(rbuf));
+			close(fd_mmio_base);
+			if (nb > 0) {
+				ulv = strtoul(rbuf, NULL, 16);
+				uiv = (uint32_t) ulv;
+
+				strncpy(mbt.mb_tab[mbt.mb_cnt].name,
+					eng_name, name_max);
+				mbt.mb_tab[mbt.mb_cnt].mmio_base = uiv;
+				mbt.mb_cnt++;
+			}
+		}
+	}
+
+	if (mbt.mb_cnt > 0)
+		mbp = _gem_engine_mmio_info_dup(&mbt);
+
+mbsf_cleanup:
+	if (dirp)
+		closedir(dirp);
+
+	if (fd_engines >= 0)
+		close(fd_engines);
+	if (fd_top >= 0)
+		close(fd_top);
+
+	return mbp;
+}
+
 
 /**
  * _gem_engine_mmio_base_info_get_debugfs:
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
