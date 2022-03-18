Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E5B4DD66D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 09:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D84910E797;
	Fri, 18 Mar 2022 08:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399C010E78E
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 08:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647593288; x=1679129288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9y5aO2jXLHXSQ7Q9tT5Hltdom7ONW/zTr2Q2mmlFAOI=;
 b=QfzB2OFWmyG/PG+wJbqxZ/aj8ptSXNeuiGrIGhRPmKE5vDfhD0AYMQHm
 xOB42+4hgDxZMuUOIloWYqMMx/cALq4g96ELcB0TbbvNR9/e+gsBSuHgo
 D0LZlJ7V8ET797cjlO8esQWAh1zOCItgjFFH1zzYPRs90S2GOBII5TxIx
 YIeg18wa89ixmi8YjD0gfJrCvMiouX7PX648CnPBqPiXbD75icMJ5Negj
 xW+F+L2j1O3eaKpnVIjo6zoxGGJWe0QmreKrd47lxz7EHkU9H7281VFAc
 r/xgGbhjrxpHDjfep/uVoHEFHXuGVHYxcVTCseahMIInpxVvBrfB9CwZw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="255922538"
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="255922538"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 01:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="581617111"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 18 Mar 2022 01:48:05 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Mar 2022 10:48:42 +0200
Message-Id: <20220318084842.7201-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
References: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if PSR2
 is used
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

We are currently getting FIFO underruns, in particular
when PSR2 is enabled. There seem to be no existing workaround
or patches, which can fix that issue(were expecting some recent
selective fetch update and DBuf bw/SAGV fixes to help,
which unfortunately didn't).
Current idea is that it looks like for some reason the
DBuf prefill time isn't enough once we exit PSR2, despite its
theoretically correct.
So bump it up a bit by 15%(minimum experimental amount required
to get it working), if PSR2 is enabled.
For PSR1 there is no need in this hack, so we limit it only
to PSR2 and Alderlake.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8888fda8b701..095b79950788 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2325,6 +2325,19 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 					dev_priv->max_cdclk_freq));
 	}
 
+	if (IS_ALDERLAKE_P(dev_priv)) {
+		struct intel_encoder *encoder;
+
+		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+			if (intel_dp->psr.psr2_enabled) {
+				min_cdclk = DIV_ROUND_UP(min_cdclk * 100, 85);
+				break;
+			}
+		}
+	}
+
 	if (min_cdclk > dev_priv->max_cdclk_freq) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-- 
2.24.1.485.gad05a3d8e5

