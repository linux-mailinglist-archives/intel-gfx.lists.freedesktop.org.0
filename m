Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F5E842D04
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:38:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC681134C2;
	Tue, 30 Jan 2024 19:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9841134DD;
 Tue, 30 Jan 2024 19:38:07 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-510faac8c57so149589e87.1; 
 Tue, 30 Jan 2024 11:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706643425; x=1707248225; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=dIfS0TQ4cfFI7L81dw2L2hur/vLNWxe+ZTTNcU4KcAY=;
 b=ad1oCWt/dNQ6tE7U+Ki1UERQFVBQCojW6WPNU5/OGlBTtgXHBLDOfXevdqUAW4cRBM
 K/u4QnMV6wwnjjztwuHsu1tGdIEXu1FuX56dmsnc3IstAo58h9KJPhhPEVzImbEGiS7w
 w46UzUsghNiDVm5tFwonnAWAkeG1PgHNiHsA6cJAdfnGWPrF/1DuM0xXK3Wsy4m9sz0A
 /Xd8P12NEr7idzLZzQj5tl675ksdSDrhMLWzvYh+qrxU00sx8VbkrFv2rg4UXQA0dU+3
 YRUdWKGXcxUAuwD5+kIGbk45dFCbI1clFF1RAc35Oud8AfRaGXVuouPI8VzN+BAJx1r0
 IdWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706643425; x=1707248225;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dIfS0TQ4cfFI7L81dw2L2hur/vLNWxe+ZTTNcU4KcAY=;
 b=wvaAKdWn8C5JRAg/FJ9AAprNNwnYPM6HR1kMXYltbLeeZwdFel1IlSvBmPLjHDKS4T
 c1MksACciK/In+Al3GtubeVzXuA6a+uKg3DojO880oogwsYKn0ZXB5L5otWbMFKADDmJ
 2pDHCFUnXmQsojqxCkgJfxiNfvxkRaAGz1+H1NGf9zW01xuJHBSQKj1nTDyB8B0ShOx/
 G5c84+g3Wvk2bS7SsNRZRKtfQRyu2TUhaqyJyinpY+fKTDtOxP3kn0biwnL7U4fizTMu
 4oZDxJuOrYfH0dNb4Giy4MC/rtrAWOB4lPqg8Za74uYYSWelRU7jMNfwf57mksv49weP
 yD9A==
X-Gm-Message-State: AOJu0YxN+tNjHmPsW9T7sumzOmLCGErbhEQ7lQ0Hs2w4DQDHnVqNIeVO
 zbcau1mRpUMoUo37SCU9xXv72ACQx2ao2Miy7y6O6eSgkZZyhiSPmnvtZav/NvY=
X-Google-Smtp-Source: AGHT+IHz1d5gOxYNDNTX+3DdomUR7mMGPQH4G0bIRQUxSahcndfHCtUFe34tQWwS0jusTEabHlMMgA==
X-Received: by 2002:a19:6748:0:b0:510:226a:b84f with SMTP id
 e8-20020a196748000000b00510226ab84fmr1050023lfj.1.1706643425139; 
 Tue, 30 Jan 2024 11:37:05 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 w30-20020a05651204de00b00510187749besm1558863lfq.80.2024.01.30.11.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 11:37:04 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] Enable ccs compressed framebuffers on Xe2
Date: Tue, 30 Jan 2024 21:36:48 +0200
Message-Id: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
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

Juha-Pekka Heikkila (3):
  drm/xe: add bind time pat index to xe_bo structure
  drm/xe/xe2: Limit ccs framebuffers to tile4 only
  drm/i915/display: On Xe2 always enable decompression with tile4

Matthew Auld (1):
  drm/xe/pat: annotate pat index table with compression info

 .../drm/i915/display/skl_universal_plane.c    |  5 ++++
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 23 +++++++++++++++++++
 drivers/gpu/drm/xe/xe_bo_types.h              | 12 ++++++++++
 drivers/gpu/drm/xe/xe_pat.c                   |  9 +++++++-
 drivers/gpu/drm/xe/xe_pat.h                   | 14 +++++++++++
 drivers/gpu/drm/xe/xe_pt.c                    | 22 ++++++++++++++----
 6 files changed, 80 insertions(+), 5 deletions(-)

-- 
2.25.1

