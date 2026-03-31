Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGY8KKzry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A6936BF49
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D375010EAAA;
	Tue, 31 Mar 2026 15:43:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c0nPHPXL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 474CA10EAAA;
 Tue, 31 Mar 2026 15:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971817; x=1806507817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NrfZBazZKNKtvJiXDJZUqsXzKNZniVlWZ+j7z19gBO8=;
 b=c0nPHPXLEKveXoO3BYygryw7q3eoFLS4wDeRVX315IPhcrTbLjpVG+Vu
 x2wCzl7HvdjOSUyaAuDEPZ2H6xY905vnQRJazuoTOn8SMEdEX79FZpshN
 EM5B6C0RM7mLnu3v3vKEbM11EWvVNle2UOFevQycHx9J1vcP/WxVga8VW
 ZJ4c9V0wjUDoIVwshk70Nn3JNV35MgX4hRxoFZrJ3gyW1bLteCc2ZKNaV
 IzsD+E83vVF49O9yZdAx2i8MQUPDsl8DP262+R2EZPzmFlha9b9gS6Ual
 F4ZFz7F4z5j3fNgmvLtm+qBO9TVlRhSABWsLbx+4S4EPAfrgeqeSOzCm9 g==;
X-CSE-ConnectionGUID: R6IAjkV7Si6k+NOKDhj7gw==
X-CSE-MsgGUID: uhCpIu+HTF6nHmHRG1H1tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76181003"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="76181003"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:37 -0700
X-CSE-ConnectionGUID: e2uLa+e5RMqZAUtfWIfYdA==
X-CSE-MsgGUID: VhEn0iUIQLyn8VYT+StVYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="223519303"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:35 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 08/12] drm/i915/de:
 s/intel_de_read64_2x32()/intel_de_read64_2x32_volatile()/
Date: Tue, 31 Mar 2026 18:42:55 +0300
Message-ID: <20260331154259.24600-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 52A6936BF49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The raison d'etre of intel_de_read64_2x32() is that it can
handle registers where volatile values are split across two
registers. I don't like that it's being used needlessly.

Rename it to intel_de_read64_2x32_volatile() to make it
more clear when it should be used.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

