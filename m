Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2783D636D29
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 23:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15E310E650;
	Wed, 23 Nov 2022 22:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9990D10E651
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 22:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669242701; x=1700778701;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qUA247MtJezaAv2bzhd/HxHZW6x1hBilFd7NDizs2A0=;
 b=ggk5eCfCkeJP60UGI3BDvfI4zk0UEoq3gI7DhAPQ4AOG8er5GwTajlr5
 xShX2WtxkRSxMU/znL3vUIPMi0e1WH8DBEy4ehnzAKpgVYBMpw7c8Ga2Q
 mCnksc17vMoif3Kttc8Sea6lBrMjLHNHLsQ3lZbPqhV36DsuI2UbE/Alt
 KLdeJRAkzM7hCkGQni0F3smVFjyzK8ACOf0T6aSJAUtppEZ9vA58e0pgl
 gpuU2p4isldAdw85Rl3L0m5k21UT8OYlPvH+2vBtHZOLeFQcCsGIyGtw3
 tByOb/N9rnF6w9OoSB2+2AG0K8e5Hjld7PS3cphI55iPXP+d6hkeFt41f w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293875378"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293875378"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 14:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="784404452"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="784404452"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2022 14:31:40 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 14:34:05 -0800
Message-Id: <20221123223410.2846296-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/7] drm/i915/pxp: Refactor mei-teelink checks at
 init/fini
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

In preparation of MTL-pxp support, add helper functions to
determine if teelink is required and to determine the type
of teelink for the current gt-pxp subsystem.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c     |  6 +++---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 26 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h |  3 +++
 3 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 58219beecfa4..33f86bb05148 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -174,7 +174,7 @@ static void pxp_init_full(struct intel_pxp *pxp)
 	if (ret)
 		return;
 
-	ret = intel_pxp_tee_component_init(pxp);
+	ret = intel_pxp_teelink_init(pxp);
 	if (ret)
 		goto out_context;
 
@@ -197,14 +197,14 @@ void intel_pxp_init(struct intel_pxp *pxp)
 	if (intel_pxp_supported_on_gt(pxp))
 		pxp_init_full(pxp);
 	else if (_gt_needs_teelink(gt))
-		intel_pxp_tee_component_init(pxp);
+		intel_pxp_teelink_init(pxp);
 }
 
 void intel_pxp_fini(struct intel_pxp *pxp)
 {
 	pxp->arb_is_valid = false;
 
-	intel_pxp_tee_component_fini(pxp);
+	intel_pxp_teelink_fini(pxp);
 
 	destroy_vcs_context(pxp);
 }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index b9198e961cb6..23a848b52c75 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -319,3 +319,29 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
 
 	return ret;
 }
+
+static bool gt_supports_teelink_via_mei(struct intel_gt *gt)
+{
+	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && !HAS_ENGINE(gt, GSC0));
+}
+
+int intel_pxp_teelink_init(struct intel_pxp *pxp)
+{
+	struct intel_gt *gt = pxp_to_gt(pxp);
+	int ret = -ENOLINK;
+
+	if (!gt_supports_teelink_via_mei(gt))
+		return -ENODEV;
+
+	ret = intel_pxp_tee_component_init(pxp);
+	if (ret)
+		drm_warn(&gt->i915->drm, "Teelink initialization failed with %d\n", ret);
+
+	return ret;
+}
+
+void intel_pxp_teelink_fini(struct intel_pxp *pxp)
+{
+	intel_pxp_tee_component_fini(pxp);
+}
+
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
index aeb3dfe7ce96..62995e95773f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
@@ -19,4 +19,7 @@ int intel_pxp_tee_stream_message(struct intel_pxp *pxp,
 				 void *msg_in, size_t msg_in_len,
 				 void *msg_out, size_t msg_out_len);
 
+int intel_pxp_teelink_init(struct intel_pxp *pxp);
+void intel_pxp_teelink_fini(struct intel_pxp *pxp);
+
 #endif /* __INTEL_PXP_TEE_H__ */
-- 
2.34.1

