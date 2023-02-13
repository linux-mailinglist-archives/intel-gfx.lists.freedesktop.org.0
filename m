Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 731D9695423
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A75BA10E76F;
	Mon, 13 Feb 2023 22:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A668510E763
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328800; x=1707864800;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7FUsWKM9x08eDAv7scbZceNWCXdWM6+9kHGpW/5Udts=;
 b=AGtFI+cLNcOQwYjHNflAVTb2zbY03LZshzPhUb9Zt9z0JzVOZBLR3thF
 k9l5bSZrfCLYLjOGEV+BBR5wX5bFf3XHe2zMuEG1pMAZIAUfx9QTw9LzX
 8iAHdtIXfO+HylxmcnTZqdgUPiflulZpWiysVxE+eIGHeJfS9bb1EoqzO
 Q+TBFenxdS50IeYR85tEGEwttrJv2pSDm1cSVCvL+l13BGdy8+J3LIC5t
 TXBpOscFAmczlJDzP4vXWkhMkX7y+bx1na5R6KbQX2R3TzF226wWIiuBw
 ikKr9cxMX7UBue5dWprH/+h7iMMHeSm6Ix9iNCNOqBoKu3TjOrk1Q5Ast A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237403"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237403"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766434"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766434"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:53 +0200
Message-Id: <20230213225258.2127-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915/psr: Stop clobbering
 TRANS_SET_CONTEXT_LATENCY
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The PSR code has no business mucking around with the
vblank delay. Currently nothing that depends on knowing
the exact vblank start scanline (eg. vblank evasion)
is aware of this and so will not work correctly.

The w/a seems to be for pre-production hw only, so let's
just nuke it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a021f59f0ac7..cb02f572e1d8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1179,13 +1179,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
 				     ADLP_1_BASED_X_GRANULARITY);
 
-		/* Wa_16011168373:adl-p */
-		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
-			intel_de_rmw(dev_priv,
-				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
-				     TRANS_SET_CONTEXT_LATENCY_MASK,
-				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
-
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
@@ -1350,12 +1343,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			     wa_16013835468_bit_get(intel_dp), 0);
 
 	if (intel_dp->psr.psr2_enabled) {
-		/* Wa_16011168373:adl-p */
-		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
-			intel_de_rmw(dev_priv,
-				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
-				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
-
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
-- 
2.39.1

