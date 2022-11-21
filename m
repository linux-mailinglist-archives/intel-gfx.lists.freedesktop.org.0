Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A31632EA2
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 22:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2699F10E1B0;
	Mon, 21 Nov 2022 21:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11AC610E1B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 21:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669065515; x=1700601515;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NhXZwjrPZlnCzhvDcJqXmFwXDDpW0ryPpSoaYOB6Qvw=;
 b=GTeb89NWpPMadzdF5webCy5Pe3yQHDdViSAmPsXVPf0T4fKShpKoTbbI
 iaCazjKWXJ4NsJ0z/CYBMz7EESnC1WliLoOpQKYWE8otuXPIvRfgVtM1x
 daExcAQo8+7LjSAUb6V1F7AEuQFaRaUnClEFskdnP6EIDECD2WBGyNr1e
 5uWUtuEGZs6WkcE6b3B/knlVR5T1R81Tkiop/iqmYGxLmzwkZQbV9BikW
 ngH/E0Yyhde2fdDDFkubDDfYaSfvNi/1Ggl22hRy8Qgs87yinXXzd4pbw
 zpMLhP1gHBGVSGXV49H5oc7uatU+fGRkJr+QuF9ciyO/EYbggyzaOSeA8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="297020886"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="297020886"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 13:18:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="730156853"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="730156853"
Received: from brandimu-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.193.120])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 13:18:33 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 18:18:15 -0300
Message-Id: <20221121211815.30950-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Update DG2 DMC version to v2.08
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

Release notes:

1. Fixes for Register noclaims and few restore.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 081a4d0083b1..697196368fbb 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -52,8 +52,8 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
-#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
+#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
+#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 08)
 MODULE_FIRMWARE(DG2_DMC_PATH);
 
 #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
-- 
2.38.1

