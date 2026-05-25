Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLkDN09VFGp2MgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 15:57:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4371D5CB69E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 15:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1FEB10E122;
	Mon, 25 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=poorly.run header.i=@poorly.run header.b="drl1dbHg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
 [209.85.128.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB6D10E131
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 13:57:32 +0000 (UTC)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-7cff695e6b1so63283337b3.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 06:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google; t=1779717451; x=1780322251; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=R2Pnx/Mi+Y/3KV/4Sc1GEttUJtfyf8f5vLDsmZdB3eA=;
 b=drl1dbHgFn46jD9/1E+ftFwo8fyEynU0mzF7rrsOJG1h+Djaa6JbjM/0SZA7UKgPY+
 NTP4j9vJukZhEAOb3N0Gwf2AXoIZvsjx1EYXFe1PfN5T71l3Dd2VwSYWehPWVEcAck91
 kmxGWZvOVMf0nt+5vo2UFGKOJuGr3uP5CIG7PaSbpy8HMU7dTK2a/ozJ9KObsaZL+uE/
 ssFFqp4gMhzStA13VF4M4lSVQr6mbknzlOJRiu31kE5AqlTvTH5Q8xhkKoYli8Qfv7vQ
 oU/INzDTwA6xF+EeNktGhPrRBvdsytBWoBAzlnxFbTGPAkHpc8p0j2bd8fjTpncTxIDu
 24VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779717451; x=1780322251;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R2Pnx/Mi+Y/3KV/4Sc1GEttUJtfyf8f5vLDsmZdB3eA=;
 b=a6o5It5EhzeCkfSaBQ7U3XCwiWaDEP24a29fmfTx4GyECllCbfIVeP3nEVqNC76qIx
 ffOMOtDP+JE1+OdJUWdsjnWQoLgeO24Jup9+WprJp0GEtuImazyWiU2//es2XIi1RfOv
 UuMNRJwmbQ5yepbdypZu488/sNWYs9Lrt7w2OBfoSGlVJKZ4tUGL11sKtPGGQyq4b5GY
 iMM68hAZdvyScEhExkRriGsLWjlzpTMOp/WNcoqjCmxxNmuvtEWZSHgCpp94xbqW7Nkw
 gImTMhF3Idr9zVSJdyGMoIX6hJMN/5zkk4coWyGnBwJrWj9oUKQfY4beEuaUrz9s84X8
 jQJA==
X-Gm-Message-State: AOJu0YyUXbBmQcFG2+u+ifVfx/rht0xqRYNjciMxx4eHLQhd6d6dJoc1
 w4FVEkNed5Fj67MWR2nPngvhWX94IcDlzPCxFrC24Ai58QgPbqcGxNsSZ3/1CRW/ptdycup6PVY
 SV/veZFr+Sw==
X-Gm-Gg: Acq92OHQFJhmHl1Y2k/MNALTyyvdez4jT9JDDPcDNPChTcqhkozQ+pIXAawCfWr3oSF
 ZbsuPJzMhL28FMrLoEKHA1WHaLupjSJgAiZSUkX7F8kx4Pcs+NXO3LOM7Cd6pDKFRkFnK2Bv9bo
 zghwRV77CsZOBtE4lx6UXuKOOQg1iZF3XQMPnWVY53CfK/sOF2ks6w02nIdkt4Tpt+bfLbk9edz
 NUIe7xIEb67mrED4SkdlLrcZFjWFL0tBK1wrAgHs5hD0Xx8AfEcK/M6JPRz5vr2swVOW7uspmnY
 QjB+IZovdf8kEmoJ4PCCUDc6miosWs5Tw5u24G34PtHtTLnANuhFIy5PZsXt008MbNxlhqYVxse
 YjzrWSjr+M26SkwDPkgjtwTSdZ4RQzJ/N7L6NiiqfDsMRP3+nUga7HupqUa489IdBJ0jFj9x6vR
 gU97uU0g/B9RK4jsiXudYrrNOcJ3TEi+RMT1wB073IwA5OI8XcuqmavpI=
X-Received: by 2002:a05:690c:338e:b0:7c9:30f5:2054 with SMTP id
 00721157ae682-7d33a95ca47mr156744337b3.40.1779717451418; 
 Mon, 25 May 2026 06:57:31 -0700 (PDT)
Received: from localhost (191.99.245.35.bc.googleusercontent.com.
 [35.245.99.191]) by smtp.gmail.com with ESMTPSA id
 00721157ae682-7d389d176a9sm46721407b3.16.2026.05.25.06.57.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2026 06:57:30 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: intel-gfx@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Cc: Sean Paul <seanpaul@google.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v2.1 1/2] drm/i915/color: Fix step discontinuity in Post-CSC
 Gamma LUT
Date: Mon, 25 May 2026 09:56:04 -0400
Message-ID: <20260525135730.1122696-1-sean@poorly.run>
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
	R_DKIM_ALLOW(-0.20)[poorly.run:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[poorly.run];
	FREEMAIL_CC(0.00)[google.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	DKIM_TRACE(0.00)[poorly.run:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sean@poorly.run,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 4371D5CB69E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sean Paul <seanpaul@google.com>

Fix a step discontinuity in the Post-CSC Gamma LUT when SDR dimming
is active by clamping Segment 2 to the last user-provided LUT entry
value instead of hardcoding it to 1.0 (1 << 24).

Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.run/ #v1
Signed-off-by: Sean Paul <seanpaul@google.com>

Changes in v2:
- Split out into separate patches for pre/post csc fixes
- Dropped loop bounds fix in favor of [1]

[1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com
---

Changes in v2.1:
- Rebased on Pranay's patch and sending without in-reply-to

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

