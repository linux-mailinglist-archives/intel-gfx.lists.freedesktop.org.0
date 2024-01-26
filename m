Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3B583E3A9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 22:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB8C10FEAA;
	Fri, 26 Jan 2024 21:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D26F10FEAA;
 Fri, 26 Jan 2024 21:09:30 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id
 2adb3069b0e04-5102b00c2cdso404412e87.3; 
 Fri, 26 Jan 2024 13:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706303308; x=1706908108; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ddM7dM5sERIiSASDCmMAMm6Wqis5zem3ge5Q7aEhjYU=;
 b=Mu1/ZMjMP8QLdRRqGAMNSltGqa4qSSaPjNl/O1uf52j47rEBNB/p+tUjcorTvn0xx0
 dI02TH9S5xgAOMaKQx11e3sodJS3HBvYy2xlI0ySZnrt+eXX/g2Hc06/ekgalyDvq9OB
 2zV8fy6/Tzcs8Z7/CqfWEJFu5hjEd37omfIk1ljK7xSRsb5xU9yHLgXQwYbqT4OAzdbA
 Afzl5vkXCE4/KzZqhK0enPE6pBlAdBkJz3p6ZAp+F4cPXXEaS/ydGaLquhA7MElAeWv8
 4YlkSsrV2Kh+f6wIkcLMsEH+P/2WjotfkiMX2hmuiiRceKBv1Ynx+r27buZ2UEKX6XdA
 sI7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706303308; x=1706908108;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ddM7dM5sERIiSASDCmMAMm6Wqis5zem3ge5Q7aEhjYU=;
 b=ee3MnET+cVybgpOZjyemSr8nKc3dXKJkhsJinlEpQrlfeR0wNF205P64jZmaj0mRLq
 sSyrGjWekkUpMbR1lVf+Xx/WK8vnVDNjCv1T/TUNk/lc/kIoF2xO0fU0cyPfXJZa6zCP
 CNdh2y/zxB79CI/gGHrNhU9oIoS6myceTmjcG/7AkVJdNzepJlDGeU98MgKHMwvhDmGh
 HX92AQgSeak8PrJ6sarqISh+8xRuuvghoaYPEBPvjV9i1KCrzrgzLal6zjVXkVhjmArq
 43yLYyXBTigot6qrEHJ8NOawYF0UYkoISFhEmwsXAveOL+BQA2f70y3kDroeAa8mzAAh
 U9RQ==
X-Gm-Message-State: AOJu0Ywv5706nvjdRAl79xCkbNFsDfyrP9LyvOxZIPGm+zwr3uWfuVXI
 ek0tJmd4FJjM4DVl+gsX6KZn+KVV2GoCRGm6ISUliW4xONr/8d8HXH++toZbDmU=
X-Google-Smtp-Source: AGHT+IG/fxmJAWlnJfE0wlTWdMxotcH/zr6N28G3mdE1aq/xkbj73keLo3OqhVV1Fuzanb/vsFPivA==
X-Received: by 2002:a05:6512:541:b0:510:358:74e1 with SMTP id
 h1-20020a056512054100b00510035874e1mr117429lfl.53.1706303307801; 
 Fri, 26 Jan 2024 13:08:27 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 t3-20020a192d43000000b00510218debaasm290479lft.35.2024.01.26.13.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jan 2024 13:08:27 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/5] Enable ccs compressed framebuffers on Xe2
Date: Fri, 26 Jan 2024 23:08:02 +0200
Message-Id: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
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

Juha-Pekka Heikkila (5):
  drm/xe/pat: annotate pat index table with compression information
  drm/xe: add bind time pat index to xe_bo structure
  drm/xe: store bind time pat index to xe_bo
  drm/xe/xe2: Limit ccs framebuffers to tile4 only
  drm/i915/display: On Xe2 always enable decompression with tile4

 .../drm/i915/display/skl_universal_plane.c    |  5 ++++
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 19 +++++++++++++++
 drivers/gpu/drm/xe/xe_bo_types.h              | 11 +++++++++
 drivers/gpu/drm/xe/xe_pat.c                   |  9 +++++++-
 drivers/gpu/drm/xe/xe_pat.h                   |  8 +++++++
 drivers/gpu/drm/xe/xe_pt.c                    | 23 +++++++++++++++----
 6 files changed, 70 insertions(+), 5 deletions(-)

-- 
2.25.1

