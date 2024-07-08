Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 689B192A968
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 21:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 525C510E3D6;
	Mon,  8 Jul 2024 19:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mQmT25Un";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 593DC10E232
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 19:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720465219; x=1752001219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GNxv+R12ylRsoWXQk72T4lYT3jeo6FtncipNXpy8Pck=;
 b=mQmT25UnVGbGjR5v7nVq7j6JCbTZoWIgNz2H4pJP0ItXmu0S78LsTQA3
 Wp3kDAXpNMfpTmmFqSrnU5gw1jaNFsRRILrrZOA7WvXr8GQPvsHi9Z9s2
 WMpjgyA3IpZIQfSYHAXpwK4A2QQqnHO885PB/GAMyHPFhnNZJ8/dxl56r
 8pNi8A4DuwlVfaM2Xt0VF/cAUtobvhpTr/JVly7C03UHxqFstE+Co9oos
 NkTYg3wdwHHlXcxYDaFqDefSVg1RjAK9V7tmVeIQdAgbVoai5aL+c58dn
 5KcoGtPeb/rOuTKeAVV2gQZwRQACmwEgyZXPLQcXiTehXLoW+F/05zmTi A==;
X-CSE-ConnectionGUID: t83t1FayS5m1ohd+cCk/mQ==
X-CSE-MsgGUID: TRJn9n4ESlOjWAjLMAMGWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17821045"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="17821045"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:19 -0700
X-CSE-ConnectionGUID: RIt7j5OcQNyh/vHN31slLA==
X-CSE-MsgGUID: AQwgXFuHQxypMA3vj6Ri+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="85140009"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 1/6] drm/i915/dp: Reset intel_dp->link_trained before
 retraining the link
Date: Mon,  8 Jul 2024 22:00:24 +0300
Message-ID: <20240708190029.271247-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240708190029.271247-1-imre.deak@intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
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

Regularly retraining a link during an atomic commit happens with the
given pipe/link already disabled and hence intel_dp->link_trained being
false. Ensure this also for retraining a DP SST link via direct calls to
the link training functions (vs. an actual commit as for DP MST). So far
nothing depended on this, however the next patch will depend on
link_trained==false for changing the LTTPR mode to non-transparent.

Cc: <stable@vger.kernel.org> # v5.15+
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3903f6ead6e66..59f11af3b0a1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5314,6 +5314,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
+		intel_dp->link_trained = false;
+
 		intel_dp_check_frl_training(intel_dp);
 		intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
 		intel_dp_start_link_train(NULL, intel_dp, crtc_state);
-- 
2.43.3

