Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D57B4FC44
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B0010E70E;
	Tue,  9 Sep 2025 13:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="jxZb3aPz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f73.google.com (mail-wr1-f73.google.com
 [209.85.221.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 830FB10EB4E
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Sep 2025 09:32:42 +0000 (UTC)
Received: by mail-wr1-f73.google.com with SMTP id
 ffacd0b85a97d-3e1e7752208so765011f8f.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Sep 2025 02:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1757064761; x=1757669561;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=WUQQxacMUqRahxycdA3h1y3Z0OF1IgYvOPyUtwNUMm8=;
 b=jxZb3aPzz7zncvaJhdbXuB+lCt+I6STZcdZjYuNN+/oCMsRdH50Yvjzg0qujMM3Qsz
 d4jIgeb+zaj9t8GtbxGqjvnVkydXdFNe6mBZOm7GwTVzjsWEB3t/RAZeLwcHE68HpsrK
 wfkpHm2O2ed1jFdtDdeGPgZZQD4Q63W3HFBNspChcdglprD2in1UAe4heZisa8/Nhn9/
 TRRbIQMCrjaIsBpK9xm98Y9PE4vKrpv/fRToVHS67FIIJJTu8h0YnTy+oFNyCQhGbmSu
 ZcmKYMhFxny1P/pJk3c+JBss9E3p3c4sBIOyZbB1CTmo9MgAknbjUVT7MFBe6OdRW4Pa
 shaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757064761; x=1757669561;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=WUQQxacMUqRahxycdA3h1y3Z0OF1IgYvOPyUtwNUMm8=;
 b=Xv2yJMXVstov+DEjLFrWYxyNGegL0idLqBiLcpjv6WZQKrD7fJlNmtEpbVc+2UNw9c
 hA5FDUqbj3B4U5Y/Leyk8GbsxUre+eIdM11VEXKu1KtlSY9lze/G59BLY5jJhiSsgcyw
 BKpBaWpOcFd9bOE0N6nvTv3VP64Qg1uFus4S+oKD52FQtYsxmHao8zrvcDIpKh+RHTel
 4Xy6jSQ4ucQd2ZYU0kd4UcYcZQb9ZnAThwaGiowTL1lblykFN3IYHpYj5uyRfUJKGN6g
 1KBMQ35lfY7Ms51BUzrLMCDf5xBHAO96rWuVXI8oLtyCA5DZIxyt/D12M/stCuM32+7q
 hwPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVayNioiZBlyehiRgHiCDaANGmyKetYpyqsGOiPOxPJTCpzGUpeF+42xuI4kykkH8++/5WR6vy4Kto=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz1+juYb5MuCZK1afu2CZjkAK7P3xWwzmsXtX2+WXxro5AMulkD
 DSygMDyeiUA2hQoufuKTGcs6QnblcQeLzPtl0RG9RHPrMXgWOBIgaRo1jDXpmXGKtJf8A/YSK9F
 9d+5sXM7Fwcxg0qKV/Q==
X-Google-Smtp-Source: AGHT+IHZDkHcj/6VcYiM7mL8WwChssJZFLeAxiSE8KdBYC7hKhBpbzlSoeURD7a3i2UI42tf17qNH1ABChvUeQQ=
X-Received: from wrbm16.prod.google.com ([2002:adf:a3d0:0:b0:3db:bfe0:7582])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6000:40d9:b0:3e0:43f0:b7ad with SMTP id
 ffacd0b85a97d-3e043f0bd75mr4771289f8f.18.1757064761059; 
 Fri, 05 Sep 2025 02:32:41 -0700 (PDT)
Date: Fri, 5 Sep 2025 09:32:39 +0000
Mime-Version: 1.0
Message-ID: <aLquN1YvdyI_6PJS@google.com>
Subject: [PULL] drm-rust-fixes 2025-09-05
From: Alice Ryhl <aliceryhl@google.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 "Thomas =?utf-8?Q?Hellstr=C3=B6m?=" <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dim-tools@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Tue, 09 Sep 2025 13:21:25 +0000
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

Hi Dave and Sima,

Here's the first PR for the drm-rust-fixes branch. It includes the
commit to add the drm-rust repository to MAINTAINERS.

The following changes since commit b320789d6883cc00ac78ce83bccbfe7ed58afcf0:

  Linux 6.17-rc4 (2025-08-31 15:33:07 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/rust/kernel.git tags/drm-rust-fixes-2025-09-05

for you to fetch changes up to 349510052f765b6eb9c2a21d0ffe08ba61fa683c:

  MAINTAINERS: Add drm-rust tree for Rust DRM drivers and infrastructure (2025-09-05 07:07:08 +0000)

----------------------------------------------------------------
- Add drm-rust tree to MAINTAINERS
- Require CONFIG_64BIT for Nova

----------------------------------------------------------------
Danilo Krummrich (2):
      gpu: nova-core: depend on CONFIG_64BIT
      MAINTAINERS: Add drm-rust tree for Rust DRM drivers and infrastructure

 MAINTAINERS                   | 11 ++++++++++-
 drivers/gpu/nova-core/Kconfig |  1 +
 2 files changed, 11 insertions(+), 1 deletion(-)

-- 
Alice
