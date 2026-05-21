Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCKvOY9ID2ptIgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 20:01:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B1F5AABA0
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 20:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C5210E54F;
	Thu, 21 May 2026 18:01:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=poorly.run header.i=@poorly.run header.b="OK6KrhN4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com
 [209.85.128.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DE1510E54F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 18:01:47 +0000 (UTC)
Received: by mail-yw1-f175.google.com with SMTP id
 00721157ae682-7bd9f61458eso47976807b3.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 11:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google; t=1779386506; x=1779991306; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=0j0TPpzgwk8K8QWPmCr8MZO43/oD20R506hhkUYcHEM=;
 b=OK6KrhN4Z0FUSpUTSVvrgxIoDf7qt/vSis4pzlEbXvXB4MJ7tOLAbFTmlbivEgt7kM
 Mz3ksPFnySsKojD2JwKrppvlSu7NXYWSDFJU1ueR+QbzBXpmVm4zoUCyfek3u0CP1+9s
 mYbaYZUAegkVjCzsXyDiUTHu2pMOyURscgLYYH1VIAm2zc1Yu7C3dHyl/ABT3zwYdsgI
 It0Ev3uaYA7YqbXseuytqianpRFnMKZfB3XWO48CaoaJk96rTYwgdPbrMPXbzMuF+sdH
 SkI1Ew2sRPBqo7z7UrNeZmOv6mTezfLEYhMYIMEUDvVLtKiiUYIAqb1X3X8T+OkqXHY8
 3u/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779386506; x=1779991306;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0j0TPpzgwk8K8QWPmCr8MZO43/oD20R506hhkUYcHEM=;
 b=ShmtVOi4j5bQclcadCUik4EcHjDHZt7KO4tOQm8cLBjiCayBbYohMjTWgnVSDFUkV/
 W4SCt3EfPrgjE7TUb6j54dJD9hlMlkPbcmihGExGCZqBn1QTNTW3gy3AzPhsRaucZTT3
 FacWsf7hfa5HiTtJcYxU7dWOGwxpVoLFFB+L3FdREOUIrk5tKpDOk3Vl937/QXtIVLH+
 SBEXMOoM90rhtqypSd8NQPzZOfipguMJ9ni51N25z8AApiZ2eR4QxnpjNv1oluBKDBYO
 ysEBpz5hK7YAfM7vjaAxas/j+eOBcWgRPxyMe2ofJOEg93zCiyMJkVFcRKxxtV9m8txY
 SS5w==
X-Gm-Message-State: AOJu0YzXuqr4xKsnEeAHeLwl8p0rseeMoQBgxuS5dyBrili8hW2KpE0c
 J8HrO74UHBHOp9zQeRJiNgq68I2uXzOibcBjnXTfZp43FAflOIQCAlyBy+TmYvesozfDPc3PWzU
 Qk7DG6YJnvg==
X-Gm-Gg: Acq92OGK2+A+oW1SYRU2mvYKeOLu86fb9ns0i8bnkw55fzzoHwbzal3K+lhZouZKD6k
 pf7c+ewddBl3rlvwbr1l7i2vWWwTfZ3vhpghcoc48HI22m2hpcq7BBSZ2G2ECRuTybT1FocZc1B
 Y1nXlKI9zZzLX6z1G3X6IrHCERD8/lFKzuskf3R/VdObDdLkpvyoJmylKZK7iWoCTl5gn141vc3
 sIWu9KKU09ZGnTfiYbVc1lay80FlVK6InW/faX4JgRYO7aeOFWHFZOo+LH9EfjGe5DadUAmyLDg
 0K2Ty9wRNTyMwCAzjVLuUUEks25q38ZlgBwq12MnLPYbDXzsMXEtBpB4fZcy4W+VkwRsgpPYgEN
 kvKBwECRZUNob7W/xedyant98nw3ZX9ELMcwfM1x2x5MIsXaBnVBGy070nkcv349Ra6dWs62XsX
 e+Ae817s5r/u5Gr0pd6Tpb5IWQ1ZddfcV7mf0ro9FJO4cFQttSETAN93+XPX8N5fHaog==
X-Received: by 2002:a05:690c:22c2:b0:7b9:edca:bac6 with SMTP id
 00721157ae682-7d3342da421mr5592967b3.15.1779386505668; 
 Thu, 21 May 2026 11:01:45 -0700 (PDT)
Received: from localhost (182.221.85.34.bc.googleusercontent.com.
 [34.85.221.182]) by smtp.gmail.com with ESMTPSA id
 00721157ae682-7d2ca76a7b1sm5987237b3.23.2026.05.21.11.01.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2026 11:01:45 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: intel-gfx@lists.freedesktop.org
Cc: Sean Paul <seanpaul@google.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/i915/color: Fix plane color pipeline programming bugs
Date: Thu, 21 May 2026 14:00:45 -0400
Message-ID: <20260521180143.2143262-1-sean@poorly.run>
X-Mailer: git-send-email 2.54.0.794.g4f17f83d09-goog
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
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[poorly.run:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[poorly.run];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[google.com,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sean@poorly.run,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[poorly.run:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 43B1F5AABA0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sean Paul <seanpaul@google.com>

Fix two bugs in the plane-level color pipeline programming:
1. Fix a step discontinuity in the Post-CSC Gamma LUT when SDR dimming
   is active by clamping Segment 2 to the last user-provided LUT entry
   value instead of hardcoding it to 1.0 (1 << 24).
2. Fix a typo in the loop condition in xelpd_program_plane_pre_csc_lut
   for Segment 2 degamma programming, changing 'while (i++ > 130)' to
   'while (i++ < 130)'. Also clamp Segment 2 to the last user-provided
   LUT entry value instead of hardcoding it to 1.0 (1 << 24) to fix
   a step discontinuity similar to the Post-CSC fix.

Signed-off-by: Sean Paul <seanpaul@google.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2d318e922671..9b807b024ec3 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3953,6 +3953,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 	enum plane_id plane = to_intel_plane(state->plane)->id;
 	const struct drm_color_lut32 *pre_csc_lut = plane_state->hw.degamma_lut->data;
 	u32 i, lut_size;
+	u32 lut_val = 1 << 24;
 
 	if (icl_is_hdr_plane(display, plane)) {
 		lut_size = 128;
@@ -3963,7 +3964,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 
 		if (pre_csc_lut) {
 			for (i = 0; i < lut_size; i++) {
-				u32 lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
+				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
 
 				intel_de_write_dsb(display, dsb,
 						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
@@ -3975,8 +3976,8 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 			do {
 				intel_de_write_dsb(display, dsb,
 						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   (1 << 24));
-			} while (i++ > 130);
+						   lut_val);
+			} while (i++ < 130);
 		} else {
 			for (i = 0; i < lut_size; i++) {
 				u32 v = (i * ((1 << 24) - 1)) / (lut_size - 1);
@@ -4023,11 +4024,11 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 						   lut_val);
 			}
 
-			/* Segment 2 */
+			/* Segment 2 - clamp to the last LUT value to prevent step discontinuity */
 			do {
 				intel_de_write_dsb(display, dsb,
 						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   (1 << 24));
+						   lut_val);
 			} while (i++ < 34);
 		} else {
 			/*TODO: Add for segment 0 */
-- 
Sean Paul, Software Engineer, Google / Chromium OS

