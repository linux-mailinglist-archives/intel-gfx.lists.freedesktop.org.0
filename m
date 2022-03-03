Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E954CC5BD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 20:12:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FBB10EF49;
	Thu,  3 Mar 2022 19:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AAA510EF49
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 19:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646334749; x=1677870749;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TjmzvV1DaEuX1oanWeIvpF/E1ssISSYZ2pJyvvE2oSQ=;
 b=k+gyDBfRTBTyeyCWVHRFF7LmiUfEqjERjraL4X6FE45Gvu1bI6Z2pduy
 MgJLMWYqUlboB4zFwcihODFlw660V6jKCMCKXAo7Ogs5ZXN9FH7zjckAA
 Pnr8BSdMM6Gt0HegwoJ9zYTSLaDStQSFlPjTJovgV54mEfbEuPKw2EnCz
 xGvvChSLHGjROCu6H3tajjdAxDWRbNK95ajwqI6IKFywPAXj3QdY8j8Gg
 ql92ywy7GQv95bDBxMRTmuzzri5BTlBEC7JuqtM2wmrCkc/b44YC8rW4z
 efwsJWnVyKLEv+rXeR1h/S3cc4Bw5hXm0ekicNLHWJTut07jeNG6X1eEF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253978918"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="253978918"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 11:12:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="594516230"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 03 Mar 2022 11:12:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 21:12:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 21:12:04 +0200
Message-Id: <20220303191207.27931-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915: Round up when calculating
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
index df98b1d7a6f7..0759bb95ea4b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -638,7 +638,7 @@ static unsigned int intel_bw_data_rate(struct drm_i915_private *dev_priv,
 		data_rate += bw_state->data_rate[pipe];
 
 	if (DISPLAY_VER(dev_priv) >= 13 && intel_vtd_active(dev_priv))
-		data_rate = data_rate * 105 / 100;
+		data_rate = DIV_ROUND_UP(data_rate * 105, 100);
 
 	return data_rate;
 }
@@ -763,7 +763,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
 		}
 	}
 
-	new_bw_state->min_cdclk = max_bw / 64;
+	new_bw_state->min_cdclk = DIV_ROUND_UP(max_bw, 64);
 
 	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
 		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
-- 
2.34.1

