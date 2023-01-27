Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F4767E2D5
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 12:13:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2125F10E463;
	Fri, 27 Jan 2023 11:13:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836D710E45A;
 Fri, 27 Jan 2023 11:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674817978; x=1706353978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fbL/b4nzlV1gzZmk3j8X9z1Zu/a0IY1oM0bY+/erhLA=;
 b=Ew8/9U3gDP6jT5OkQX4q0A6Lg0RSDscyygJV5i4WeWZPdb2e007JRNgN
 q888et62C6TgaUgWAZDPBiBte883UiAz5ORg7ZCkaUBtTeMM82dCdeTrb
 WMPQ6Xz5Xd3eI3zoRedRrukgAJ5+ke0g3MoS/dBrwZHCKlV3M0OswZUW3
 RfbyWC/LoFW487plSWwb2G86Qs3yuq+sIQVvigrKHzwpbrjHbhPbk1UR9
 pIsG27T1P8y2AoQGem0bkLafNgUQWcTYLq6bTkJsD/dJp6Gm8Pa9Euj5/
 2/81bA/N0ueHctCeDv4RYMl5bnB8Zd2vcWoLA4M7n8AGyiDTpQEOGkATB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328352664"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="328352664"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908638134"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="908638134"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:56 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 11:12:40 +0000
Message-Id: <20230127111241.3624629-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 5/6] intel_gpu_top: Fix cleanup on old
 kernels / unsupported GPU
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Avoid trying to dereference null engines on exit when there are either
none which are supported, or kernel does not have i915 PMU support.

Also fix a memory leak on the same failure path just so Valgrind runs are
quite.

v2:
 * Fix a memory leak in the same failure mode too.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com> # v1
---
 tools/intel_gpu_top.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 7aa233570463..0a1de41b3374 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -340,7 +340,7 @@ static struct engines *discover_engines(char *device)
 
 	d = opendir(sysfs_root);
 	if (!d)
-		return NULL;
+		goto err;
 
 	while ((dent = readdir(d)) != NULL) {
 		const char *endswith = "-busy";
@@ -423,10 +423,8 @@ static struct engines *discover_engines(char *device)
 	}
 
 	if (ret) {
-		free(engines);
 		errno = ret;
-
-		return NULL;
+		goto err;
 	}
 
 	qsort(engine_ptr(engines, 0), engines->num_engines,
@@ -435,6 +433,11 @@ static struct engines *discover_engines(char *device)
 	engines->root = d;
 
 	return engines;
+
+err:
+	free(engines);
+
+	return NULL;
 }
 
 static void free_engines(struct engines *engines)
@@ -448,6 +451,9 @@ static void free_engines(struct engines *engines)
 	};
 	unsigned int i;
 
+	if (!engines)
+		return;
+
 	for (pmu = &free_list[0]; *pmu; pmu++) {
 		if ((*pmu)->present)
 			free((char *)(*pmu)->units);
@@ -2568,7 +2574,7 @@ int main(int argc, char **argv)
 			"Failed to detect engines! (%s)\n(Kernel 4.16 or newer is required for i915 PMU support.)\n",
 			strerror(errno));
 		ret = EXIT_FAILURE;
-		goto err;
+		goto err_engines;
 	}
 
 	ret = pmu_init(engines);
@@ -2585,7 +2591,7 @@ int main(int argc, char **argv)
 "More information can be found at 'Perf events and tool security' document:\n"
 "https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
 		ret = EXIT_FAILURE;
-		goto err;
+		goto err_pmu;
 	}
 
 	ret = EXIT_SUCCESS;
@@ -2699,8 +2705,9 @@ int main(int argc, char **argv)
 		free_clients(clients);
 
 	free(codename);
-err:
+err_pmu:
 	free_engines(engines);
+err_engines:
 	free(pmu_device);
 exit:
 	igt_devices_free();
-- 
2.34.1

