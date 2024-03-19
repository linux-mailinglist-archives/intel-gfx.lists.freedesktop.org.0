Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB2F87FDA0
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 13:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EE9210FA51;
	Tue, 19 Mar 2024 12:33:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GMQtp0Hx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8BE10E085
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 12:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710851624; x=1742387624;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8jb9TKAbHWPEprmI56qBj/v6ekLUTkxQtArlkLU+i9Y=;
 b=GMQtp0Hx84/8EnbaDvUie6R5/YckvEOdya97NTAHHETMHL8jxj5zFS2S
 NoFNZzkDYjbZ+CaynvgLTTL2NMqB8h+W9I4NgjxbiGcuxHhBskKLFbE4c
 cltb0x9SJW8uqkaeyJ3kiHv2tsNpzDRaSD4+TuH0x1PHO0jMdbnN8kO4e
 y/A4QZ65jMjsssZqd9KZVdUpFLYQgGfXJyg4wELZS7DF7zm34zI60js6z
 mT4zvcBZUee12KywqffrVAYdDAWiLon0q4Nk3RmLvU4uaPqbJ6BZqSoK1
 JwXt60mNlCkEHo4W2NgPwCxH3RXlhqDXzz3qn7aLU6e1IhxkBGrGUdVSW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5894292"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="5894292"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="18437969"
Received: from jlaghzal-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.53.224])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/5] drm/i915/psr: Move writing early transport pipe src
Date: Tue, 19 Mar 2024 14:33:24 +0200
Message-Id: <20240319123327.1661097-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240319123327.1661097-1-jouni.hogander@intel.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently PIPE_SRCSZ_ERLY_TPT is written in
intel_display.c:intel_set_pipe_src_size. This doesn't work as
intel_set_pipe_src_size is called only on modeset.

Bspec: 68927

Fixes: 3291bbb93e16 ("drm/i915/psr: Configure PIPE_SRCSZ_ERLY_TPT for psr2 early transport")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ---------
 drivers/gpu/drm/i915/display/intel_psr.c     | 7 +++++++
 2 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d366a103a707..55c2a0fbd797 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2709,15 +2709,6 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 	 */
 	intel_de_write(dev_priv, PIPESRC(pipe),
 		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
-
-	if (!crtc_state->enable_psr2_su_region_et)
-		return;
-
-	width = drm_rect_width(&crtc_state->psr2_su_area);
-	height = drm_rect_height(&crtc_state->psr2_su_area);
-
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
-		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
 }
 
 static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cbf9495c7072..961f92d10241 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2018,6 +2018,7 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_encoder *encoder;
@@ -2037,6 +2038,12 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 
 	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
 		       crtc_state->psr2_man_track_ctl);
+
+	if (!crtc_state->enable_psr2_su_region_et)
+		return;
+
+	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
+		       crtc_state->pipe_srcsz_early_tpt);
 }
 
 static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
-- 
2.34.1

