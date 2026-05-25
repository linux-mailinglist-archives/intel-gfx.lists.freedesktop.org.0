Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IwmI1VVFGp2MgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 15:57:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B785CB6BA
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 15:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665C310E31D;
	Mon, 25 May 2026 13:57:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=poorly.run header.i=@poorly.run header.b="VyWwa/km";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E7F10E135
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 13:57:37 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-7bdf83185bbso93351817b3.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2026 06:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google; t=1779717456; x=1780322256; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gIiu1ri2o7Ro6bhV4J7LIEJCYOdJihANjgjmW46ndBY=;
 b=VyWwa/kmvRYntINVD3k92mcfzF709r74BBo/7cJy3Dpis6ybpoV1FLuaU7R9Vrqc+L
 Wc26WRcgc3OXWloggpfweikJy4k1kApXF0rKVL7LetZdmhBHGFP/VNWXU3j4pL7a0g2m
 IyTLFu3VQxwkTh1fHqqZCV+3HRSOMxYDO9b7YHxTPF+YjufKdA/gNjcMXnpSkWTLWcv7
 gPt+h9jUt05BuJO+qcL1f25vP3PjRwYh0babRQL/3SVsUF3mwIzU7lGPPC5cu46lXmGB
 Tylg9MMUs8ADdCi0AEt6m7f7OBSPdMikJ6VHdl2oSTJ2lbXtT9PWT0E5cDVcwU8mdSFT
 NAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779717456; x=1780322256;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=gIiu1ri2o7Ro6bhV4J7LIEJCYOdJihANjgjmW46ndBY=;
 b=eeR36+OFoRWS5QiKKrNP3S+pNnl517QqOMpsd9ISDBQihm2yHRQjyNGPC1RZjZNSg+
 c+GY8YdtYN2o52dfVRkSiotDOv7HR62SSCEV+kZJBosQci+QY3vesHWfezeu5qBgrsdh
 rVTlN/sFk5OX5TMsVDKU0YFoQu+tUhr9av0UOJWuEwR770NQ0ijvJ3XsMMmmon76f4yy
 FxxZDkSsPG/cCTFiOCnxsFprzOjrdpxgwoxlaSn7n7i4g4XBROFPryFCi2KxWQ7sJ6Ue
 1ABwZhAdDvVK472a0IP4EGNBBoVbx3VlSCYU+KfOEUeWVmtfkWCLS7kVsgxFEJqhAS33
 YcZw==
X-Gm-Message-State: AOJu0YzqaNZVylAUDbNjBUPYl9u08Bhv07q1ZWLRqJeLcfJQ8j6ml0ZK
 iTpAAoprqHyZi6kadFi19V4aNH/aTLKGl6LSP0TsjzaBP6/bTLYzplODVDV9eRNso4qASbaJ4nM
 ARzJPOZnGPQ==
X-Gm-Gg: Acq92OETTLfoDi7U2hxQnoXNPzEIcgki+RftPg5FiwhFP9OuN0ZEZ51rusN3ja2DrIG
 e9US3UX4e142PQZe8gSPvEwSrp5IhVsFrCzJx/hoRuBeUlhIhOORPB2sV9FaScELYEbv3GH6g5q
 UQRuNDk4O7bVpZTJoahJVVqlGEWbiC8eW+DNvbnLKCASaiwoD+Ay/eKuUAJH/TRX8jsxNbjMWbw
 rcAlPtd2EaVEbWjYw3yHwa32T1Vw3+AeV5oTOY/8SK37b0JreDQ1Bzh/ilv1xEDVS+ht6AyGg5p
 Sizdhd+l2JXKvX6C3ExeeJwwaes68m3eP2bm8xCTi8TJu0i9AZRmTDV3Es+NxfGVLgr97Pjkb2j
 4B51TiHKHaNfVlbuZIz5kWT3+TyCVp7X+Sj+X2yhaBeUQj6oV2RKdUlkD3KPT+er/GEBd8fFh9J
 3B5jT7QxnR7okJUtIxZbjfDf8eKEYBOfKKyFOyLRG+PoSy8uvpYJxQ6MI=
X-Received: by 2002:a05:690c:6982:b0:7cf:e690:3e3c with SMTP id
 00721157ae682-7d338488bc8mr153718117b3.11.1779717456255; 
 Mon, 25 May 2026 06:57:36 -0700 (PDT)
Received: from localhost (191.99.245.35.bc.googleusercontent.com.
 [35.245.99.191]) by smtp.gmail.com with ESMTPSA id
 00721157ae682-7d38be2dc9csm46036237b3.24.2026.05.25.06.57.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2026 06:57:35 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: intel-gfx@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Cc: Sean Paul <seanpaul@google.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v2.1 2/2] drm/i915/color: Fix Pre-CSC degamma LUT bounds
Date: Mon, 25 May 2026 09:56:05 -0400
Message-ID: <20260525135730.1122696-2-sean@poorly.run>
X-Mailer: git-send-email 2.54.0.794.g4f17f83d09-goog
In-Reply-To: <20260525135730.1122696-1-sean@poorly.run>
References: <20260525135730.1122696-1-sean@poorly.run>
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
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
X-Rspamd-Queue-Id: 34B785CB6BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sean Paul <seanpaul@google.com>

Fix a typo in the loop condition in xelpd_program_plane_pre_csc_lut
for Segment 2 degamma programming, changing 'while (i++ > 130)' to
'while (i++ < 130)'. Also clamp Segment 2 to the last user-provided
LUT entry value instead of hardcoding it to 1.0 (1 << 24) to fix
a step discontinuity.

Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.run/ #v1
Signed-off-by: Sean Paul <seanpaul@google.com>

Changes in v2:
- Split out into separate patches for pre/post csc fixes
- Dropped loop bounds fix in favor of [1]

[1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com
---

Changes in v2.1:
- Rebased on Pranay's patch and sending without in-reply-to

 drivers/gpu/drm/i915/display/intel_color.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 7185f3628dcf..458508bcf1f4 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3968,6 +3968,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 	enum plane_id plane = to_intel_plane(state->plane)->id;
 	const struct drm_color_lut32 *pre_csc_lut = plane_state->hw.degamma_lut->data;
 	u32 i, lut_size;
+	u32 lut_val = 1 << 24;
 
 	if (icl_is_hdr_plane(display, plane)) {
 		lut_size = 128;
@@ -3978,7 +3979,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 
 		if (pre_csc_lut) {
 			for (i = 0; i < lut_size; i++) {
-				u32 lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
+				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
 
 				intel_de_write_dsb(display, dsb,
 						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
@@ -3990,7 +3991,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 			do {
 				intel_de_write_dsb(display, dsb,
 						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   (1 << 24));
+						   lut_val);
 			} while (i++ < 130);
 		} else {
 			for (i = 0; i < lut_size; i++) {
-- 
Sean Paul, Software Engineer, Google / Chromium OS

