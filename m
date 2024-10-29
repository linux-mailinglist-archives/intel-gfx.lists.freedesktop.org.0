Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EC49B527D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 20:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFFCF10E6E5;
	Tue, 29 Oct 2024 19:11:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KkBsrNaB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE5810E6E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 19:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730229108; x=1761765108;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yDzZl1JQuspzlRWr2hzYejub4PkNT4THf2BzpvQ3V2I=;
 b=KkBsrNaBaG4QrRmdhrCT/opb85lZWG7T/OmYZF1zGrfyGhqtSAVyqgtl
 dB9hADjR0KkyBW9dvrCtaFDu7L02PXaR3qUGP/hcRNAI7X1iD1Du/U6RW
 VEYl5+Hm8NNATjWaD4X/pgj1dAtUUPVJcdTeBxFfH7OcYXSwtW6zjGxov
 8QRZmKn6GT5mY/pKrml6DZzgOb1Q6Hu7N9CT6l8L7w5hSRmrhzjLp2CWM
 etpTgsQumw8bHWGvXbt6mqWAMfxgHbIkYsYSVSKMp+eYF6TOuTgaW/mbe
 p4d3S1YtNfi6c+XtKPA4q0ub6FDWHCLPvgAY0AdSynCzQRePuV8KiYjSt g==;
X-CSE-ConnectionGUID: kam1FbCxSnSF9EBXekryfQ==
X-CSE-MsgGUID: mY5rULjESDSQ3WvgIQdRig==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29745613"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29745613"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:48 -0700
X-CSE-ConnectionGUID: CpG1A++ARHKS28Hk7j9JlA==
X-CSE-MsgGUID: 9jPw7YVxTiGYbXEqmZJgHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86812745"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/adlp+: Align slave transcoder sequences with
 spec wrt. DDI function/DP2 config
Date: Tue, 29 Oct 2024 21:12:15 +0200
Message-ID: <20241029191215.3889861-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241029191215.3889861-1-imre.deak@intel.com>
References: <20241029191215.3889861-1-imre.deak@intel.com>
MIME-Version: 1.0
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

On ADLP+ during modeset enabling configure the DDI function without
enabling it for MST slave transcoders before programming the data and
link M/N values. The DDI function gets enabled separately later in the
transcoder enabling sequence.

Also for these platforms the DP2 configuration needs to be
enabled/disabled during enabling/disabling MST slave transcoders.

Align the code with the spec wrt. the above DDI function and DP2
configuration programming.

Bspec: 55424, 54128, 65448, 68849
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b1eee8500a383..089ed457621e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1057,7 +1057,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	if (DISPLAY_VER(dev_priv) >= 30 && !last_mst_stream)
+	if (DISPLAY_VER(dev_priv) >= 13 && !last_mst_stream)
 		intel_ddi_config_transcoder_dp2(encoder, old_crtc_state, false);
 
 	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
@@ -1227,7 +1227,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
-	if (DISPLAY_VER(dev_priv) >= 30 && !first_mst_stream) {
+	if (DISPLAY_VER(dev_priv) >= 13 && !first_mst_stream) {
 		intel_ddi_config_transcoder_dp2(encoder, pipe_config, true);
 		intel_ddi_config_transcoder_func(encoder, pipe_config);
 	}
-- 
2.44.2

