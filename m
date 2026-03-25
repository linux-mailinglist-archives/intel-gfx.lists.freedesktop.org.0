Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDbnAVwvxGkAxQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0EC32AD73
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 19:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C3A10E868;
	Wed, 25 Mar 2026 18:54:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQTaEQaD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4721310E863;
 Wed, 25 Mar 2026 18:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774464856; x=1806000856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x52EN390b8bL6T3IVxFZAwzwdRkMKUNtDpvTvKICQtU=;
 b=XQTaEQaD2leh6ZF2TAD2tIWAxYx1lrCi7XqlDrXvGcq7M8SKwP3rd0UF
 x0jkDjOkFXHucs7lRyKvwSH8/4WLpm3WQtwYLgX5LKsaX0gyeLKhgcr4+
 IL+beRjKUvV3XhgjstMYHMLz39DZp0z1qBgfB5r0ss9uqRvWQKntdUwI9
 PH8zLJjCBSYhjXHJ/6jcn4QHQSPn2ylBtRPVrADgniwO33qiz7vV/Vvvt
 v0VavgCrNj2yaZRnurVT1wR5cIqZG4dClJz1Vvf8H1AAsY2ygg8trRPcl
 JoRk+XYb338N0AvhtOns3nMjYawQ4g+M89Ua/wgjghdKYfKh/Ogz60OGr A==;
X-CSE-ConnectionGUID: HITUYQ4kSx2//qiZi/p3sg==
X-CSE-MsgGUID: JSfzak2AQ9G6csraiLzXKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86991628"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86991628"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:16 -0700
X-CSE-ConnectionGUID: qjTF4x8BTg2fMg5be+qN3A==
X-CSE-MsgGUID: p8h8Rg1tSf2zhqXmWmjgaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="221448650"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 11:54:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/12] drm/i915/de:
 s/intel_de_read64_2x32()/intel_de_read64_2x32_volatile()/
Date: Wed, 25 Mar 2026 20:53:37 +0200
Message-ID: <20260325185342.11482-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AD0EC32AD73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The raison d'etre of intel_de_read64_2x32() is that it can
handle registers where volatile values are split across two
registers. I don't like that it's being used needlessly.

Rename it to intel_de_read64_2x32_volatile() to make it
more clear when it should be used.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h     | 4 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_vrr.c    | 8 ++++----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 3f9861b7a589..295e7176b732 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -36,8 +36,8 @@ intel_de_read(struct intel_display *display, i915_reg_t reg)
 }
 
 static inline u64
-intel_de_read64_2x32(struct intel_display *display,
-		     i915_reg_t lower_reg, i915_reg_t upper_reg)
+intel_de_read64_2x32_volatile(struct intel_display *display,
+			      i915_reg_t lower_reg, i915_reg_t upper_reg)
 {
 	u64 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 1b7cfe226ff8..0726a2abed38 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -109,8 +109,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 	 * we get a low value that's stable across two reads of the high
 	 * register.
 	 */
-	frame = intel_de_read64_2x32(display, PIPEFRAMEPIXEL(display, pipe),
-				     PIPEFRAME(display, pipe));
+	frame = intel_de_read64_2x32_volatile(display, PIPEFRAMEPIXEL(display, pipe),
+					      PIPEFRAME(display, pipe));
 
 	pixel = frame & PIPE_PIXEL_MASK;
 	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8a957804cb97..ae5385e92889 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -1053,11 +1053,11 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	if (crtc_state->cmrr.enable) {
 		crtc_state->cmrr.cmrr_n =
-			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
-					     TRANS_CMRR_N_HI(display, cpu_transcoder));
+			intel_de_read64_2x32_volatile(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
+						      TRANS_CMRR_N_HI(display, cpu_transcoder));
 		crtc_state->cmrr.cmrr_m =
-			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
-					     TRANS_CMRR_M_HI(display, cpu_transcoder));
+			intel_de_read64_2x32_volatile(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
+						      TRANS_CMRR_M_HI(display, cpu_transcoder));
 	}
 
 	if (DISPLAY_VER(display) >= 13) {
-- 
2.52.0

