Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B03CA6C7A0
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Mar 2025 05:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D29F10E29F;
	Sat, 22 Mar 2025 04:55:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HGZNGcu5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED8A110E2A9;
 Sat, 22 Mar 2025 04:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742619342; x=1774155342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9AW5ztXyiPUa0oRPehaw+T+OWcer10JA34FEV209Akc=;
 b=HGZNGcu590Vp4r14f+7Uj7Nf4kg5lQDtUS9RvrM4jCxZfiGDD3wjWDkN
 uqv/IZwHYBc3wQF7gwqbilslhy0sHS7PoLJ8XPH8YxqvSgAe2xl67Cfsd
 OmplvH0ToGt3xEkHUgl6mweWCZ80+SHloXccDvX7AoMw0YRDqzpeL9UFG
 uojmA953u+JlmCvBcYbO97AZrMbJo9A37li6jnKZjuPLoO3mpF9tp8Q97
 a7UU4RpSrrdl4UVnbyVDBU2Bmk1d1457MxzTwPacd2zzIDh1wIkISMaiK
 rmeqVv07aiiM1K/9h8/LCNr6vKnl7oA5YmxKtl07DF8Pn32ryZgHsOu62 Q==;
X-CSE-ConnectionGUID: 8609fw7qSnmCV4NBiqq59Q==
X-CSE-MsgGUID: nGi/4pd+SR6YcdexlEm6mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="54526774"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="54526774"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 21:55:40 -0700
X-CSE-ConnectionGUID: 4+0d7+FVTc2wZ5GUEaqZsQ==
X-CSE-MsgGUID: Wr/ukiBZR0aNCaeVj9f52Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="124353802"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 21:55:37 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [RESEND 2/2] drm/i915/vrr: Avoid reading vrr.enable based on fixed_rr
 check
Date: Sat, 22 Mar 2025 10:13:45 +0530
Message-ID: <20250322044345.3827137-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250322044345.3827137-1-ankit.k.nautiyal@intel.com>
References: <20250322044345.3827137-1-ankit.k.nautiyal@intel.com>
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

Currently, vrr.enable is intended only for variable refresh rate timings.
At this point, we do not set fixed refresh rate timings, but the GOP can,
which creates a problem during the readback of vrr.enable.

The GOP enables the VRR timing generator with fixed timings, while the
driver only recognizes the VRR timing generator as enabled with
variable timings. This discrepancy causes an issue due to the
fixed refresh rate check during readback. Since the VRR timing generator
is enabled and we do not support fixed timings, the readback should set
vrr.enable so that the driver can disable the VRR timing generator.
However, the current check does not allow this.

Therefore, remove the fixed refresh rate check during readback.

Fixes: 27217f9d1856 ("drm/i915/vrr: Track vrr.enable only for variable timing")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index aa65a6933ddb..6bdcdfed4b9b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -657,8 +657,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
-				 !intel_vrr_is_fixed_rr(crtc_state);
+	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 
 	/*
 	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
-- 
2.45.2

