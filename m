Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 712BDA32811
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0670C10E8BA;
	Wed, 12 Feb 2025 14:10:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="czHmWN0t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2797610E194
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 06:34:20 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id
 4fb4d7f45d1cf-5de5a8a96abso4880000a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 22:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739255658; x=1739860458; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=oQlwrL1wOOlUYQ3HVkX2Tc4R5TyGKexreWomFPK3P/Y=;
 b=czHmWN0tLU43N/DQXrfSFoI+krVXCy2u9RisbLGXoigJTMXFkHu5onqmGHIw/hrR5C
 Q/kYdWvvnZuoyB5/E18iRnYAT07qDyhBOsV08MNAPty9WN2svzCer3GqF2h1xwURqd0f
 1d+51oISUagvRNoMZIc/0D0WmfbOt7gdXEYzNGUjegBxcsFzygMi13q0RbOejiuBkksd
 m0RzZSlgC0Sc8psUBg0puvz+SqC8Za9M5FNR76GRQroB0QMcOMjRYmnIwW9MNPcRyJFA
 zcFc4Gjc4dn5yivvLMrVZn4KMS3Z6x/G1g/trSuZZgCmyeUXMCYlu6rkKHfmKw43zk8X
 CGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739255658; x=1739860458;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=oQlwrL1wOOlUYQ3HVkX2Tc4R5TyGKexreWomFPK3P/Y=;
 b=a0wYNnvH1Pwr+tknWhSAa7mq1fP6UoY8PwlISOqcCvkBOt5t0+IeuRpVV6QOGhve9n
 kdzcWJzTaDDzRkU3uS7Yue5Vr9mXjstEAHiqwEy2XpqK6DA/ZZY+RUTM+559fnrnD5zd
 WLMEGTDxI0nnMkhv+v2+fnnVJFhHETZOAehK2vNQ6QsVlpwpj62QuNWQR9tdgDcMYyUl
 ImBKIV8o4I+cD4+Sa3hMqcX/dZPMAld1aqmA2eMTAe0iYkTvlCgM6/SBJRJYBBjLFMM2
 jV2XyijxVG8eWYU3dVSs8KqKeAUWdGQMHMG0n3Sd2VxMWLi0tBfyobH6MB/GATDBqjyB
 54Iw==
X-Gm-Message-State: AOJu0YyuiJ1IF6WM2ZDb3PvJFh7FrwXDVMYtytiiDL9yHohrVB0XRASJ
 pUhrlZOrWfLAksk1TUTSm2o97pJDUpr8L7vv+nkue6ut86U6upeR
X-Gm-Gg: ASbGncv0ZMZWcUZuOe/BgRRjeSOx22f3djJlTo4B62ZNyScPeQ4ZVNw9hXEpR4PaKIK
 urG25TYAO+Aj6IdMOuAYSohJm+itK+jQxZKMKEKV4RT1uERDUEeLM+MIFoEp7HlSbb3KnpNotXt
 npSXHZnbz1fnrpmnoe8S+6/9DXl3K7C2ry14B7PFqb56Ahq5TdLNIGy412cxAMgbS4/SA5lZLek
 0gWW8TgAwrVyF8htZXtb3o4G0WM66f6sVwwTfKe5wNn+swGQfuTCnB+3pYxgW+3XdfwMnb8Js+e
 n3O4AcepVvMn6jKs14Ps9Umlf5WDa0z0U4AQlJvqZ4UO4i+30vXYH+wsOPiRG+UdCL2/SV+3854
 6vjfhuLgae49ugAw=
X-Google-Smtp-Source: AGHT+IFSPB5VMDpn4O68C4Tn6MoteErC5LVqv/fR36wtc5VsAKcH0UgEvTej9OJbBiYLW9OPxxMEdw==
X-Received: by 2002:a05:6402:a00e:b0:5de:39fd:b309 with SMTP id
 4fb4d7f45d1cf-5de44fe9488mr41766347a12.4.1739255658307; 
 Mon, 10 Feb 2025 22:34:18 -0800 (PST)
Received: from legolas.fritz.box
 (p200300d0af0cd200603313d7beea72d6.dip0.t-ipconnect.de.
 [2003:d0:af0c:d200:6033:13d7:beea:72d6])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab7c62c464dsm300440466b.28.2025.02.10.22.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 22:34:17 -0800 (PST)
From: Markus Theil <theil.markus@gmail.com>
To: linux-kernel@vger.kernel.org,
	andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, Jason@zx2c4.com,
 tytso@mit.edu, Markus Theil <theil.markus@gmail.com>
Subject: [PATCH v2 3/3] prandom: remove next_pseudo_random32
Date: Tue, 11 Feb 2025 07:33:32 +0100
Message-ID: <20250211063332.16542-4-theil.markus@gmail.com>
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

next_pseudo_random32 implements a LCG with known bad statistical
properties and was only used in two pieces of testing code.

After the users are converted to prandom as part of this series,
remove the LCG here.

This removes another option of using an insecure PRNG.

Signed-off-by: Markus Theil <theil.markus@gmail.com>
---
 include/linux/prandom.h | 6 ------
 1 file changed, 6 deletions(-)

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

