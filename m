Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FE0847295
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 16:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5628710E1B1;
	Fri,  2 Feb 2024 15:06:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nRU1aO+N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5DD10E07F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 15:06:20 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id
 2adb3069b0e04-511344235c6so1537377e87.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Feb 2024 07:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706886378; x=1707491178; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tYUqFYtMu556DHb8XjDycI4Sc10wotmyjbYDqQB8k5c=;
 b=nRU1aO+NQRt6zgw7/35uJe7kbenAVr83/mFl6anroqvxpCq0zoWh2Ff9cec0CU9qd9
 KtU6lbPNjHj4DuoNrRRVU3x3wpL/RzBKR8g8+XYdFq46zzbmhLUdfzv6YZKckqw/U/al
 aA77R1im0kgQhvC+tLOaHgy1mTKiyKZR4GtY9wx84HPK6CDQ0PZgq9QAPi8HNrTuL51F
 bscRON9mh6Hkb0BOqRlOuKAR7iGBnknE3ps2Fm6AzLQfiOnJZ8mxtsJy/FUH3OBppwbx
 MVVy6fRcOSzAsswOoDGxkCvOSMTuHt6LVaEr+SuLQwjWUK5CgqAITP5RQQPNCUUhNhQl
 xjow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706886378; x=1707491178;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tYUqFYtMu556DHb8XjDycI4Sc10wotmyjbYDqQB8k5c=;
 b=B/KJpnrjrSDsXO9TYciKZ0nHFsUSXA2qL5VSBWfm+Xw8rpqQru4FwOpfRG4eCduc4n
 R9zTrSPOi4ZFpKfox82XV7DLFR5/2fc4RAIBH9A+zk6jK6tufNWCJkRrM1OYbMALTLet
 /jwX4PksyOuMYNUTxRJ0zVBN8dXwb51ribIJ6KocXBWPPIDSjVnA+HcmPgffn5x+DS0j
 MwRYWEOEtRbwV47AYDq5z0FdvIkJYLhNSr6uGt1jj27vkInfsVxKIGhx7RWpxy+fGXSE
 vq73JlAZPaeNqi5rcGWkwUTlk5M0fF9PaZleEsYpJ7F8x617fGGCvczFyIEBvQcqnygd
 HkQA==
X-Gm-Message-State: AOJu0YzBLE3yA5PEjDnGjDv/N8nutsTp2mcYVZvTwzX0C3m1F3q+y6s/
 qi8dLf3602FYHVsBy9qxxZgOMLIO2rypU9t71YSRYvzyed5E3QZBa/qO53OMz7RU2w==
X-Google-Smtp-Source: AGHT+IGYUWY5C7aNr2wHh5AkD06qEmbP5PiFW2S3GCfeTDvuRpEBMKmEwrpgf1DBhOIWjPzhNz0ROw==
X-Received: by 2002:a19:2d15:0:b0:511:1de3:1b49 with SMTP id
 k21-20020a192d15000000b005111de31b49mr1454621lfj.0.1706886378026; 
 Fri, 02 Feb 2024 07:06:18 -0800 (PST)
Received: from jheikkil-mobl1.. ([2001:998:22:0:7cc9:771:a174:dbb9])
 by smtp.gmail.com with ESMTPSA id
 r7-20020ac24d07000000b0051021a9febdsm326931lfi.153.2024.02.02.07.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Feb 2024 07:06:17 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/1] Enable ccs compressed framebuffers on Xe2
Date: Fri,  2 Feb 2024 17:06:01 +0200
Message-Id: <20240202150602.430036-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
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

This patch set touches Xe and i915 drivers. On i915 is checked if
running on Xe2 hardware and enable framebuffer ccs decompression
unconditionally for tile4 framebuffers. On Xe driver with Xe2
hardware check if ccs compression is in use and behave accordingly;
attempt to use ccs with linear and x-tiled framebuffers will result
in -EINVAL as display does support decompression only on tile4.

v2: Add compressed flag into pat index table and use that. Try to
avoid situation where framebuffer can be bound with different
pat index after it was pinned.

v3: Small changes. Changed pat index annotation code author for
Matthew as it was cut'n'paste from review comment.

v4: Drop attempts to control ccs for linear/x-tile. Just
unconditionally enable tile4 decompression on display.

Juha-Pekka Heikkila (1):
  drm/i915/display: On Xe2 always enable decompression with tile4

 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 +++++
 1 file changed, 5 insertions(+)

-- 
2.25.1

