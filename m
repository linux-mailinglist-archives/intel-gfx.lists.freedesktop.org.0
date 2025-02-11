Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CD3A3280E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738AD10E8B7;
	Wed, 12 Feb 2025 14:10:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lM5+6p2y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A592110E194
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 06:34:17 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-aaf0f1adef8so965887466b.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 22:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739255656; x=1739860456; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=83Kr1XJvuE8Nibv15SsvxQl/PkbmF5XblUMSI/u8zh4=;
 b=lM5+6p2yDpTZdgs9mQhuqHdB8M9AZJw0iYCoeU0BD67Le+wEvgFMqI1pHWT1NPZOmL
 bHSFg5D/8Hgt4MgbESEabfgyMGZe81GOrMt9hTJDg+9b3CHQzZoODCgqsndY4TbwjLld
 uTUBrTCeCwJgYCf74VOeDfTJmKF7anxLAjSpY7GcMqhp8iK6XDMNeLEjHrbhZI1m27Qs
 1lW424Hjr0p9njPJ/zT6TF2u1gRsbBhjiZbmnP4f7hy5/X3XIBUPV7KL2EyJ/+H0dta1
 UcV1nbmHrsW3K+yd4MPSPN2c82C8SJH4lL8Yh0mR1MfKvvcH2r7+Iq4y5Yhfnqxy46Dw
 SwcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739255656; x=1739860456;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=83Kr1XJvuE8Nibv15SsvxQl/PkbmF5XblUMSI/u8zh4=;
 b=NTUkNvnCANbs/WKHuI1Nb8Ad49At3s+IAilAFRZJ1OEIczoOPkqSSfi/+1MuPGs/69
 YAMRPeHl6Cg1NY9Q8Qv+xbiRdgCZNxYY2a/y/f3BA1cgpFbt397c6sscgfBcxQC6M+F5
 PRolziK32K2Xyi+FRdWlo3nCrmGNhlV2gAvrajLnIvXI7cJ0Wc7iYr0dFIl2GbDnld/L
 Ibd0gnRgwHbwF4oFD7PVdFy14rZYZmgF2IB34n5sZTfDnk2QrPBWQknPymKFuf20bYj4
 7LSAEWxBn0POdAUIewewnSfhHGkPktUPRAyhhZlwd0ti4aFkIQ7BdpsxRuLzoPgIpj0d
 S+wA==
X-Gm-Message-State: AOJu0YzksysHyNpzX9NJsfOfM5HvmBFN0JRsMTDEvTrnXYDHKb9psK6T
 9VjrRyx+G60C/8wNKS1Z3QkHQQbfpkSfE6xe7+gqpqS3sV4/gOFg
X-Gm-Gg: ASbGncu5x5/USawm3Z7m32sD9T9Uv2FddeSa1hsuMMP5Tlu2LGAwIPw5HLAoa0ckkwa
 zh84tgQoI2IxD9hloEQpF0XDrTs6rUm0HwndbrA6hi9xCAWQYf/gfe3BLu9eC1/1JOjWiBiAPyO
 N1JPDUBSUfMvypFUJTjmhpXvEhQurq/H8DVg6BjQmarS1MJBsLiiNP45UPpCJhQeQQmn8RaLpia
 ciyJx58lYyI5gp6LWlKzjQZj1fTJ8Vw7k+GjJUpGeu1Nq4Y9rU7sPDnG7mrURlqqBmdjtFvhO17
 4o11sglxYy484WqYBzw4jw3z/jMok7dVly18YfKkLB+OwFW5wlMh9dSYz87/NxAvHpNqR34eVf/
 hcSvtMzz/rbVmtDk=
X-Google-Smtp-Source: AGHT+IHsRixgYX74cjRITFO7Dzi7RuKZ0l8c1d/vpy7ESsNCqcmtKgflrfKndElewU1nswOLlZhidg==
X-Received: by 2002:a17:906:564e:b0:ab7:c893:fc80 with SMTP id
 a640c23a62f3a-ab7c893fda1mr524868966b.24.1739255655913; 
 Mon, 10 Feb 2025 22:34:15 -0800 (PST)
Received: from legolas.fritz.box
 (p200300d0af0cd200603313d7beea72d6.dip0.t-ipconnect.de.
 [2003:d0:af0c:d200:6033:13d7:beea:72d6])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab7c62c464dsm300440466b.28.2025.02.10.22.34.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 22:34:15 -0800 (PST)
From: Markus Theil <theil.markus@gmail.com>
To: linux-kernel@vger.kernel.org,
	andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, Jason@zx2c4.com,
 tytso@mit.edu, Markus Theil <theil.markus@gmail.com>
Subject: [PATCH v2 1/3] drm/i915/selftests: use prandom in selftest
Date: Tue, 11 Feb 2025 07:33:30 +0100
Message-ID: <20250211063332.16542-2-theil.markus@gmail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250211063332.16542-1-theil.markus@gmail.com>
References: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
 <20250211063332.16542-1-theil.markus@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 12 Feb 2025 14:10:13 +0000
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

This is part of a prandom cleanup, which removes
next_pseudo_random32 and replaces it with the standard PRNG.

Signed-off-by: Markus Theil <theil.markus@gmail.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

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
-- 
2.47.2

