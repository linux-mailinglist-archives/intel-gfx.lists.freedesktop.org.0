Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 604AB80916F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 20:35:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE3CD10E975;
	Thu,  7 Dec 2023 19:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC3610E972
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 19:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701977706; x=1733513706;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Dmp8qepmZ9kdmDBZ4zs/Lk5MnNk9jb7Sw0S1K+OIz3Y=;
 b=kFv7LxEob5iyRwnIYCF9U4Cdq8wdhwrTmzitpRf5LPaGZaTSnLW1sBLt
 LT2t5fCZzgQrbs0KSQAabPVs13/r9wdgHbQTL8EE8tzVyd7hTthfH8Cnk
 KKU6U9+mogo3Ydy2xpBof7yNtak8yVqZJ5uH7DirFmo8ISaVhrC4B8P4K
 8zM1le8hNAt1YktEr3A1q0EvEC6ByIRgzNL7hNvkPHEmlwPsTk8WttHHO
 fa1rasD6q9rtiKXhaqhzF1zkzyQSbHeSzyjShHbL6VcIUVPoyStFE5Lov
 qnVrkVukUp0wVHV8BRujwLTt/sNh9X9LYyyGZe52q6R5Dyx8WVHI96YJl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384694395"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="384694395"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 11:35:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765213198"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="765213198"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 11:35:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 21:35:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/8] drm/i915: s/cstate/crtc_state/ in
 intel_get_frame_time_us()
Date: Thu,  7 Dec 2023 21:34:40 +0200
Message-ID: <20231207193441.20206-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
References: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Use standard variable name 'crtc_state' instead of 'cstate'.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0058b07a7cda..b6e2e70e1290 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -891,13 +891,13 @@ transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder cpu_trans
 		return false;
 }
 
-static u32 intel_get_frame_time_us(const struct intel_crtc_state *cstate)
+static u32 intel_get_frame_time_us(const struct intel_crtc_state *crtc_state)
 {
-	if (!cstate->hw.active)
+	if (!crtc_state->hw.active)
 		return 0;
 
 	return DIV_ROUND_UP(1000 * 1000,
-			    drm_mode_vrefresh(&cstate->hw.adjusted_mode));
+			    drm_mode_vrefresh(&crtc_state->hw.adjusted_mode));
 }
 
 static void psr2_program_idle_frames(struct intel_dp *intel_dp,
-- 
2.41.0

