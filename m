Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +H1ANefKGGrrnQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 01:08:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D2D5FB339
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 01:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2950210F6D2;
	Thu, 28 May 2026 23:08:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=poorly.run header.i=@poorly.run header.b="XI79Uu3f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D22E10F6D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 23:08:19 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-7dd3f176f84so7909877b3.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 16:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google; t=1780009698; x=1780614498; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=WCd+eJCIusrbfetJCTMFBLKlj+qUy/ODp/mDze4wwfU=;
 b=XI79Uu3fxVmmHfcXazXplB8duYD/JPuqSQ9lGW2qTgF8+t4n8iwhVTC8y2DxQJrCqR
 qfDJu7CqLEEFi9uTbE5fIEh2WbEeenfSQVhqoPONbjwTgF7mGCf7mQ2PuLWH7I/2PAR/
 3/0PQh9ZIZK/bDnT5PbcmLJ6NRYlUBT6QG+Fx4aFxah5lZ9kCeuf/u/LVgBTMYp7dMPA
 L509LD+Al1rXwhg2mxFBmrjlsusNBsDvSZGY/gw1BMyYSBQtmY3UoRyvoLnYqNNlgyB9
 NqjUiS/RTGlsH7Gs4bUJk/xFf9EF+5/YDApbGM7GNZcIlLcN1s53j4FpFkb7epEYTvqc
 6WLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780009698; x=1780614498;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WCd+eJCIusrbfetJCTMFBLKlj+qUy/ODp/mDze4wwfU=;
 b=bX237rQn9YqdK5svwzeRk2WxptMBBGc1Bi0M4uPCPPlhuQ9nIvRzacEQdTdrp07tQQ
 JDovWtwbeF2SEjMAiCm01BB6yODK5Af63MvC7P5XwsCTI35PlWTmrNHx3WwpNvnMElrD
 70JQcxuUN26CNL9DFIIyFjH3o/DH8BsbmZjGq5n8HsBM/8Bqc4XIaVSRP5rjG2fnctNz
 dii+EUtMBntzdo8BRRgRmgTh2m2xNlChJMA7M2LPR4ZZGnIPCN2U0S2PvfPv7PmSULi0
 Sg/8vAy/O1C3fbdDgpuxw0YA0zqrfi1IOL26kWf7fTJBnvd83dvBK8AACm2fDciFstHw
 i6OQ==
X-Gm-Message-State: AOJu0YyxImGQmfQo10XGRi5wl0V1fMAdQHWh+A1Q49OYIsIIgHI5XRrg
 7tG5EKQdzC55YAZIsjJgX3vpdyPh5CqOMoRaQ6aihiEFZr5rXNAD0STik1TcVHqiTGYkEH/v1vO
 qa2fU
X-Gm-Gg: Acq92OF0VDynaBnxlpDQeHWClDsZUIYn/0fgt0fXZkn4GupF61tbV//GW4us4MhHVBU
 v3dpdNCQVjbZrlzbjAYXB++/yFr5CGL8b7q4jjNyq43VKaz70IpKuBatPmHG/aj3J2hhJoL27rE
 TLYGa2OPeaXXG7TWhsn6vtFpibRo20OlmRKHAEv20QmJPSl9CefhjgA4XYs1zPEJicFLEQpLrf1
 toFYJwAAGWwzO9rTtxfI087q3dPwXEtfZj28i58/qivTw1gUmoaWQ4ynR0Pa1ojtGJR9wghfMO0
 hr+a3ux6rkloqGU752FYExtVK3gRfa/WO29JqH9KoAg22ZI0VSbtoa4PZsUzscs9QqRxkJh6qWC
 Xg355dI2uIez8Z1tXvGpvFDVxJZ6UnBOTDOnNL/YltSitd8xs2ZpBr+60PAOqxPrBrESROQeAJe
 4D4diq+Os2tUAZn0WctJHgbBRyIDVXLxhCtaTzW1CpoXypgIjfL92zhVd4NlZE1LRS+A==
X-Received: by 2002:a05:690c:6e0c:b0:7d0:4824:6411 with SMTP id
 00721157ae682-7de4d16b634mr2397747b3.47.1780009698408; 
 Thu, 28 May 2026 16:08:18 -0700 (PDT)
Received: from localhost (182.221.85.34.bc.googleusercontent.com.
 [34.85.221.182]) by smtp.gmail.com with ESMTPSA id
 00721157ae682-7de6ea5d9b2sm34117b3.47.2026.05.28.16.08.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2026 16:08:18 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 chaitanya.kumar.borah@intel.com
Cc: Sean Paul <seanpaul@google.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/2] drm/i915/color: Fix step discontinuity in Post-CSC
 Gamma LUT
Date: Thu, 28 May 2026 19:07:46 -0400
Message-ID: <20260528230817.2455072-1-sean@poorly.run>
X-Mailer: git-send-email 2.54.0.823.g6e5bcc1fc9-goog
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	FREEMAIL_CC(0.00)[google.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sean@poorly.run,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[poorly.run:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[poorly.run:mid,poorly.run:dkim]
X-Rspamd-Queue-Id: 03D2D5FB339
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sean Paul <seanpaul@google.com>

Fix a step discontinuity in the Post-CSC Gamma LUT when SDR dimming
is active by clamping Segment 2 to the last user-provided LUT entry
value instead of hardcoding it to 1.0 (1 << 24).

Signed-off-by: Sean Paul <seanpaul@google.com>
Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.run/ #v1
Link: https://lore.kernel.org/intel-gfx/20260525135730.1122696-1-sean@poorly.run/ #v2

Changes in v2:
- Split out into separate patches for pre/post csc fixes
- Dropped loop bounds fix in favor of [1]
Changes in v3:
- None

[1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 7ef870cd9a16..7185f3628dcf 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -4038,11 +4038,11 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
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

