Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63405A3280F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5C610E8B9;
	Wed, 12 Feb 2025 14:10:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z/M7l+uv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D25010E194
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 06:34:17 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id
 a640c23a62f3a-aaeec07b705so815663766b.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 22:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739255655; x=1739860455; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=L+ec3c5EsUPRIuG3vrRHYCCwoZpP0ewaD+gHvqCUVv0=;
 b=Z/M7l+uvIQaY+KFY9ExOVg3VsV2derc4qQo7GJnM8GdWI1RTNCrjv7isKGUUR6VjeC
 olr78l3wasMSzkThxGEzmjJiHvU8rHASGYHAP35KZtlnpPih7cw4aU/NWyKyUbN73FZJ
 9PRvyyjW0XbfK/RO5qzUN4GAOiTm68xZhBjfanDOwDzKWjGZg7zi1BW3zn4oXxDn3jFz
 JimXigG8rxRyx47wGAbO8AeP0Cor4EpeOZAjkIzs+m7A8oTHVrkMCDlCzoZAL1QeJnOn
 FC7NVgeXM3r0itegjVY4Q4T68W5+WcSsydP9fQggiJY3I5Om2ACalW470wAZDrqovjbv
 sbsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739255655; x=1739860455;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=L+ec3c5EsUPRIuG3vrRHYCCwoZpP0ewaD+gHvqCUVv0=;
 b=pnH1Vj+NFJwqnyfijLwHYRagZ1PGO2jIAXLUkAZQGeIRTqEEdZRFcRlA1DS+FgxIds
 scKGGekmVkg0PAKqMtS7g50jnRS0r6A2t39t+sIDaGe/RvWkjBllqQnaDA0LwxeNo9qG
 Wu9ULxvEVwnerTmcarW04wJM6vN+saBHLi4wXK4WToj839ZzrzyNXWWaCiO/j6nWU/XB
 qrCEx7oObkkV5oQtw+WVCshyVjsmPb6IE7viLZE3Nxepava3oqJohaZebxRkWBKnXIrV
 EYGJez9hvqfDc2CQZVWzU7w7t1/48mxgPZX7g5dCb9+zYPW1fajYOPzPTN8N+dyAaA6s
 gxdw==
X-Gm-Message-State: AOJu0YzoyJpxcHDJKNbamvXoKMF9PHLaGp/qrp9UAgL7PlekQQMqYZTg
 zxv7vHowoGkGFIJzc6OfHmFY7GA8OcZUYC5VR/6AMuWOk6g2je7P
X-Gm-Gg: ASbGncvXyA5fqo/6z0n8XBGKn9rD1T4/RbWY3FJH1EROZdbvcsb7kLYes/WS0VOzert
 0m9QqCokriBEKusmQAKLlCSr++zF2BnDWtxbRCQFhwEPVOId9y6etqQqVY8Ds+1MD59EvS6IJYV
 HC9I+yJK98zgfsRf0yREReZ8byJiLdh2l11q1zS6L5Ws16RPjxQhu3aT3JgDftKMAeEhfS7FDWN
 9b39tSPzhyYNhyJ0H1n/iQHlQ4tBxEaGHZWaFjGDQ5a4NpLe9kWVoE5Xy97xUC1xzPDHoNNhPjp
 QlZPOjkE1XKZDjR47YREwqXeDTqEUVUGd0a1UYZ5gtsuQvhI5IrnxGDSC3CxrL47i0ZIG0VdL4k
 0oKa6+rIdBIqQv0c=
X-Google-Smtp-Source: AGHT+IEcBbGWng53L53nwV8mRpg1jvru+K1+qfu2crjxWjtWQRgH6JO3CBOfaA8uy08JpU93QL+/Uw==
X-Received: by 2002:a17:907:3f27:b0:ab6:f06b:4a26 with SMTP id
 a640c23a62f3a-ab789aef91amr1673775366b.34.1739255655211; 
 Mon, 10 Feb 2025 22:34:15 -0800 (PST)
Received: from legolas.fritz.box
 (p200300d0af0cd200603313d7beea72d6.dip0.t-ipconnect.de.
 [2003:d0:af0c:d200:6033:13d7:beea:72d6])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab7c62c464dsm300440466b.28.2025.02.10.22.34.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2025 22:34:14 -0800 (PST)
From: Markus Theil <theil.markus@gmail.com>
To: linux-kernel@vger.kernel.org,
	andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, Jason@zx2c4.com,
 tytso@mit.edu, Markus Theil <theil.markus@gmail.com>
Subject: [PATCH v2 0/3] prandom: remove next_pseudo_random32
Date: Tue, 11 Feb 2025 07:33:29 +0100
Message-ID: <20250211063332.16542-1-theil.markus@gmail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
References: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
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
properties and is only used in two pieces of testing code. Remove and
convert the remaining two users to the single PRNG interface in
prandom.h

This removes another option of using an insecure PRNG.

Markus Theil (3):
  drm/i915/selftests: use prandom in selftest
  media: vivid: use prandom
  prandom: remove next_pseudo_random32

 drivers/gpu/drm/i915/selftests/i915_gem.c        | 7 ++++---
 drivers/media/test-drivers/vivid/vivid-vid-cap.c | 4 +++-
 include/linux/prandom.h                          | 6 ------
 3 files changed, 7 insertions(+), 10 deletions(-)

-- 
2.47.2

