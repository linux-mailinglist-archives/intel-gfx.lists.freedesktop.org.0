Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB10348C569
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 15:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24CF310E659;
	Wed, 12 Jan 2022 14:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28C310F12A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 14:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641996090; x=1673532090;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OANhv6ijf5sPwsrSXO/ti5DdEWdEF+BtCsz3C8QJzaA=;
 b=k9C4/P9kKyJvc5tlsy0Xn1spmav/7L2ApMtM3sI8Hb662o8hfa30SASR
 mBeFPcvCKIPlbWAm/W9KCk73GkfeHWpW5fh+6Va3cP+nAUAE5MTmtapiA
 2H5HSkkLXf3f5IdwNBH98HeJ37YysGz2Z2vNYqMtes0vTMo+rpD8Rsvqf
 +atwrmvCI//Bxs4oxlCGdUvOF4DK0i81R3gN91Q2nfCresZff9u3rRNVZ
 JrPPcLA/FLO9i1c0dzi3u73i2B+taWEZLd34R1Pb6aJ8ywqAQVvKiZtxb
 TA2wMZXClRJ0F94AKJqWpoyF0h4UTeQ3N0/8hg4ZRg31MeglOnAktM1il w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="242555318"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="242555318"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 06:01:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="474913383"
Received: from tmsbuild050.tm.intel.com ([10.237.53.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 06:01:16 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 16:00:31 +0200
Message-Id: <20220112140031.39823-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20220112140031.39823-1-jouni.hogander@intel.com>
References: <20220112140031.39823-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 2/2] drm/i915: Use new has_psr2_sel_fetch
 flag
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

Now as we have has_psr2_sel_fetch flag we can rely that
instead of checking each platform separately.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 -------
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a1a663f362e7..c0bf2f6db94e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -825,13 +825,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	/* Wa_16011181250 */
-	if (IS_ROCKETLAKE(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
-	    IS_DG2(dev_priv)) {
-		drm_dbg_kms(&dev_priv->drm, "PSR2 is defeatured for this platform\n");
-		return false;
-	}
-
 	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely functional in this stepping\n");
 		return false;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index beeb42a14aae..d84ca414663c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1502,7 +1502,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
-#define HAS_PSR2_SEL_FETCH(dev_priv)	 (GRAPHICS_VER(dev_priv) >= 12)
+#define HAS_PSR2_SEL_FETCH(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_psr2_sel_fetch)
 #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
 
 #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
-- 
2.34.0

