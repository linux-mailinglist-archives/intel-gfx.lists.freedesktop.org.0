Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1754C673DFD
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 16:54:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1019310E997;
	Thu, 19 Jan 2023 15:54:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B067B10E995;
 Thu, 19 Jan 2023 15:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674143679; x=1705679679;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QDWu8SLW73fcvikfm7dWyjDluYkerQQdmYPzf6CgFpc=;
 b=iF+q5to/VZ2py03+tP89iZhrsOgTMLmnmwIJfGySXnCyOdcLGRNWju3x
 qsSRSck9ERHFTT4IvuFCVUu01mVyCIdsEjhlXaEr4K2CoORUnkDNcT68Q
 CS14xdOyKGuCDEuM/xZapXVhOCgEmr3QE5mLTVqnjdWJsKFVviJOE73l3
 AMUathX4aKveBYcJABfK/Cm4Q9bFRQNf4s/7cpDkyYr3uf4GqiiY+O80a
 2EeFkvIvUTDwkyDnS/tOtkoMe308rfDU4Sq37YNVpEyFOwu2LHpnl3TP5
 TPxTrbPhN3yKlNUkfKsp7VtkV5DjySsMiCvSdv/5Q7ba9PYZ0mH0YPUwD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="324010003"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="324010003"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 07:54:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="748972957"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="748972957"
Received: from btbaby-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.230.246])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 07:54:37 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 19 Jan 2023 15:54:28 +0000
Message-Id: <20230119155428.3260937-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Fix cleanup on old kernels
 / unsupported GPU
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Avoid trying to dereference null engines on exit when there are either
none which are supported, or kernel does not have i915 PMU support.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 7aa233570463..517dc2995d26 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -448,6 +448,9 @@ static void free_engines(struct engines *engines)
 	};
 	unsigned int i;
 
+	if (!engines)
+		return;
+
 	for (pmu = &free_list[0]; *pmu; pmu++) {
 		if ((*pmu)->present)
 			free((char *)(*pmu)->units);
@@ -2568,7 +2571,7 @@ int main(int argc, char **argv)
 			"Failed to detect engines! (%s)\n(Kernel 4.16 or newer is required for i915 PMU support.)\n",
 			strerror(errno));
 		ret = EXIT_FAILURE;
-		goto err;
+		goto err_engines;
 	}
 
 	ret = pmu_init(engines);
@@ -2585,7 +2588,7 @@ int main(int argc, char **argv)
 "More information can be found at 'Perf events and tool security' document:\n"
 "https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
 		ret = EXIT_FAILURE;
-		goto err;
+		goto err_pmu;
 	}
 
 	ret = EXIT_SUCCESS;
@@ -2699,8 +2702,9 @@ int main(int argc, char **argv)
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

