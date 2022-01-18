Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA9E4922A4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 857C4112A46;
	Tue, 18 Jan 2022 09:24:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81D0112A46
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497872; x=1674033872;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MtLOmbbPHGaZNbd9SX3PmkBCu06rS1N9yMNlhKJ3SiY=;
 b=UsvbO+kwTjaK8wuLWEYTu86Z7fVqVpHF13P25EpvXsA25lqc8pl6QYJM
 NqsD36sgRU3cgxzCEjTS19NSQlhfYSrHi1v4+smk+TBqQ4rxTtpcLeoY9
 7AmOPv0IaDmRBLqESDONIByCxJ1D9SCBgO3Ff/CpnADQY3eNq6oULLBpA
 NkZNaFVkLEL3dWP8TksCVKFifaAUgKqclPaOKaKEagMDhJlUWfPuZEQsW
 RLcqQ4jKKhHi2TBbcMcuEyiRFvrYKm6fnnb/Hxbh+Utzo+JsSty4nFf/u
 DAXd5ObE5XcWCj2VyREW/uxI2Pqombh8FZb30I1cYNItuR/phXsQqXQZD A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="305507370"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="305507370"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="492607146"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 18 Jan 2022 01:24:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:51 +0200
Message-Id: <20220118092354.11631-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/15] drm/i915: Round up when calculating
 display bandwidth requirements
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

We should round up when doing bandwidth calculations to make sure
our estimates don't fall short of the actual number.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index a3f169686f14..b0cdad89c1ba 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -636,7 +636,7 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 		data_rate += bw_state->data_rate[pipe];
 
 	if (DISPLAY_VER(dev_priv) >= 13 && intel_vtd_active(dev_priv))
-		data_rate = data_rate * 105 / 100;
+		data_rate = DIV_ROUND_UP(data_rate * 105, 100);
 
 	return data_rate;
 }
@@ -761,7 +761,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
 		}
 	}
 
-	new_bw_state->min_cdclk = max_bw / 64;
+	new_bw_state->min_cdclk = DIV_ROUND_UP(max_bw, 64);
 
 	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
 		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
-- 
2.32.0

