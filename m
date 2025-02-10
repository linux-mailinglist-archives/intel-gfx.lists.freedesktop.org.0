Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8301A2F16E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 16:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7537210E1D6;
	Mon, 10 Feb 2025 15:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UIdgOBez";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B9210E545
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 13:36:49 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id
 ffacd0b85a97d-38dd91c313bso834800f8f.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 05:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739194608; x=1739799408; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=223MxAxNXztbp67ZxJdOt7tmG0A7uxSl64PKr7bnTT8=;
 b=UIdgOBezC5+VmWT21JngM6tVXAX22hVSNJfG9/6i0xOQoJhXQpTZVvJRysyohO1frW
 SshTPt0+Q1PZ5qcmeuB2j98pKCGEz4/a4RIpWrE9ECfKL+HugbpVfZEXRGlrocFRPjFL
 x3251o2SaRjKo8y/vEFAL9gazuJoC0K0H5nqjpc8uQutJXCgRf+6c6G70YUf5xt9Ei3U
 4QB4jjNxxAksGRC2HoeOoM899+py0rq6BRHzgBVqpWEYnc8N8g0+Adg+oFTUZh641cSB
 oqiC8o24Xdxa3MD3qanpatWNrOfr80B28QuV7glTSaSa50WIBOvn2tHVxDpmFEre4+Cr
 7htw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739194608; x=1739799408;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=223MxAxNXztbp67ZxJdOt7tmG0A7uxSl64PKr7bnTT8=;
 b=U4p1r632FiiIjWJNbKBAmne6s0ZdAUkYyhIX43rIjXRtj8FUoSE/0KgKD+9qaIo8Il
 8O3VGJDldvmlB5Gv/gHvR06Qha5yT25AFLX4YfsPeh8DmMINl7n4qN+iUs09pw/p2v/Z
 65qeBv7SeSFzlCxWHeOm1U0bMlR092JIanvYhpJ9Dq2+CrKIV1ZFmaCgIxWAnSDwGO1L
 30S9OqFGnkjHRqfotSzFiXv12bffbuM7dysfuRMm28fFvXRZeOePd3v8A4WJnwLzb4nI
 vQUJIm2Ja8Dz3ND5juGEvZpY/Z2iEkE+HxdVw2d88NOKYqyvOxYAmpp4V9IBSWuVa+G5
 AM7w==
X-Gm-Message-State: AOJu0YzU7OwE70bGkSJikx/05t8AQOOnTeJAiHS8CeJv1ORjiQ2h36Yz
 Cf2v9zDVOAg08my3rBwTxjhmk4tRwmbrESGB1lmRLRaVEvaO0Ea1
X-Gm-Gg: ASbGncs4IfAfRXTndEIbkO5zkO5umjLofxxDjHo5ljCa8Ywla1piSrAQwJ0t0cFYRHV
 aQrzfhXMuMr+RSnOk4NYWWEhu4wROcjes7/9m0sNFfr/4vj31RFDpEiV/WdPlFjR87QzoPMosUO
 MhKw1W6ftCrqAJyQzQyShIrdHtN1p3RT2uH2B5OlDNBf5uRo6/K0ycwuF5Va2kyQctuIRYsVmVX
 bXQp3F1kfZFzLOZx2M5bCYdZwQK85qyEWeNCpAoGq6rtGL6fY4fk9hWXQET12Bhhi+WBOu0uPq+
 GmexX9NLmuzPVl9el13XaLclZRvpVEQTxS3hnkETgmvNnnQ1qKazdn2ZJTQ/CNOCYf3Y6nHkdJc
 vFYFzSJhcS7oL1uU=
X-Google-Smtp-Source: AGHT+IF+EQhLe8h5irMRb0V2F2mpADb4UbCqz7ZIeTUohTSxgMsPVxH017EN4mAXu3VNPEgdy5ZhvQ==
X-Received: by 2002:adf:f10f:0:b0:38d:bd41:2f8b with SMTP id
 ffacd0b85a97d-38dc959e1a7mr8545211f8f.44.1739194607354; 
 Mon, 10 Feb 2025 05:36:47 -0800 (PST)
Received: from legolas.fritz.box
 (p200300d0af0cd2008ab2e79e9971853b.dip0.t-ipconnect.de.
 [2003:d0:af0c:d200:8ab2:e79e:9971:853b])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-439452533ecsm18136765e9.0.2025.02.10.05.36.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 05:36:46 -0800 (PST)
From: Markus Theil <theil.markus@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, Jason@zx2c4.com,
 tytso@mit.edu, Markus Theil <theil.markus@gmail.com>
Subject: [PATCH] prandom: remove next_pseudo_random32
Date: Mon, 10 Feb 2025 14:35:56 +0100
Message-ID: <20250210133556.66431-1-theil.markus@gmail.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 10 Feb 2025 15:23:40 +0000
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

next_pseudo_random32 implements a LCG with known bad
statistical properties and is only used in two pieces
of testing code. Remove and convert users to the remaining
single PRNG interface in prandom/random32.

This removes another option of using an insecure PRNG.

This is a preliminary patch for further prandom cleanup:
- In another upcoming patch, I'd like to add more warnings,
  that prandom must not be used for cryptographic purposes.
- Replace the LFSR113 generator with Xoshiro256++, which is
  known to have better statistical properties and does not
  need warmup, when seeded properly.

Signed-off-by: Markus Theil <theil.markus@gmail.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem.c        | 7 ++++---
 drivers/media/test-drivers/vivid/vivid-vid-cap.c | 4 +++-
 include/linux/prandom.h                          | 6 ------
 3 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
index 0727492576be..14efa6edd9e6 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
@@ -45,13 +45,15 @@ static void trash_stolen(struct drm_i915_private *i915)
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	const u64 slot = ggtt->error_capture.start;
 	const resource_size_t size = resource_size(&i915->dsm.stolen);
+	struct rnd_state prng;
 	unsigned long page;
-	u32 prng = 0x12345678;
 
 	/* XXX: fsck. needs some more thought... */
 	if (!i915_ggtt_has_aperture(ggtt))
 		return;
 
+	prandom_seed_state(&prng, 0x12345678);
+
 	for (page = 0; page < size; page += PAGE_SIZE) {
 		const dma_addr_t dma = i915->dsm.stolen.start + page;
 		u32 __iomem *s;
@@ -64,8 +66,7 @@ static void trash_stolen(struct drm_i915_private *i915)
 
 		s = io_mapping_map_atomic_wc(&ggtt->iomap, slot);
 		for (x = 0; x < PAGE_SIZE / sizeof(u32); x++) {
-			prng = next_pseudo_random32(prng);
-			iowrite32(prng, &s[x]);
+			iowrite32(prandom_u32_state(&prng), &s[x]);
 		}
 		io_mapping_unmap_atomic(s);
 	}
diff --git a/drivers/media/test-drivers/vivid/vivid-vid-cap.c b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
index b166d90177c6..166372d5f927 100644
--- a/drivers/media/test-drivers/vivid/vivid-vid-cap.c
+++ b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
@@ -300,8 +300,10 @@ void vivid_update_quality(struct vivid_dev *dev)
 	 */
 	freq_modulus = (dev->tv_freq - 676 /* (43.25-1) * 16 */) % (6 * 16);
 	if (freq_modulus > 2 * 16) {
+		struct rnd_state prng;
+		prandom_seed_state(&prng, dev->tv_freq ^ 0x55);
 		tpg_s_quality(&dev->tpg, TPG_QUAL_NOISE,
-			next_pseudo_random32(dev->tv_freq ^ 0x55) & 0x3f);
+			prandom_u32_state(&prng) & 0x3f);
 		return;
 	}
 	if (freq_modulus < 12 /*0.75 * 16*/ || freq_modulus > 20 /*1.25 * 16*/)
diff --git a/include/linux/prandom.h b/include/linux/prandom.h
index f2ed5b72b3d6..ff7dcc3fa105 100644
--- a/include/linux/prandom.h
+++ b/include/linux/prandom.h
@@ -47,10 +47,4 @@ static inline void prandom_seed_state(struct rnd_state *state, u64 seed)
 	state->s4 = __seed(i, 128U);
 }
 
-/* Pseudo random number generator from numerical recipes. */
-static inline u32 next_pseudo_random32(u32 seed)
-{
-	return seed * 1664525 + 1013904223;
-}
-
 #endif
-- 
2.47.2

