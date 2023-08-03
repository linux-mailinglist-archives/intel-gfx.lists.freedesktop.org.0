Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B5576E20A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 09:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA3D10E5BB;
	Thu,  3 Aug 2023 07:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502E010E5BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 07:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1691048368;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=ux6/F/8zNxcMXbZYyvs2PsfvsSCrOuLEm40mTn4N4jg=;
 b=YfHFYc6c5GeuWl2XO3rj+J1X3C/gFMplRwzWyEcX8h408x1EmHqmDo/P22SwkIIoKqd5Yo
 hizlHaHZ+h2KcU3LhacMXs3GMpuQXmxi8UnHos4xpsqs9eeV2faH+7XLV80sAjVacfachh
 DqQ+3Z2/VFTxp9FAZsfj+FwG88STYlA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-54-bcf26FwSO6KIOVsrsJHyDw-1; Thu, 03 Aug 2023 03:39:26 -0400
X-MC-Unique: bcf26FwSO6KIOVsrsJHyDw-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-317955f1b5fso406409f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Aug 2023 00:39:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691048365; x=1691653165;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ux6/F/8zNxcMXbZYyvs2PsfvsSCrOuLEm40mTn4N4jg=;
 b=K0iFIYyIeIn5nS1Z/QwvqCOOIh3XlRAYt+QYUQUG6hhfDVQHj2i6bYnZPjMmq1TgUh
 roDdYFQ96OZma3O+Tp99iAs4nQKhm4vIK7xNg4uMlOUW/ViHbvmqTsiN5z2iyoFFuch7
 p2vCqqoEgj09lCJbwbedzp47YEioylXnmSMwufF1HmcrJdkvBBsPRDEOyEW0E7kWzvaR
 XcQfJiZl3pPCxQXO5C5o4SUITcCTNPpSlJSVd+ZlnGU3bAvzMJ9tSueoS1p0zZBqoWAF
 YH+eu2zFkw6SJTYU2HpCcUqu07kL4R2oqLzHQovpOfcxZRona409qG9LAyLyenHm0Wtx
 1zPQ==
X-Gm-Message-State: ABy/qLY/7QXv9LYyr4j+YSMsBUCpSKFPxDaaPTVt1MuHUKdOKc8MM+6a
 DcwV4lS8SsNG9l+FlAP9yve5tnPra0fSuMDGATWO9rmbIweAwaNRn7rSvYz1FXxVixl5aNZDfmh
 JjMMDHDisoHJBTcEj+pt4Vm6LjA0s
X-Received: by 2002:a5d:6387:0:b0:317:6992:855c with SMTP id
 p7-20020a5d6387000000b003176992855cmr6816943wru.19.1691048365483; 
 Thu, 03 Aug 2023 00:39:25 -0700 (PDT)
X-Google-Smtp-Source: APBJJlH0ZaqurtShCL2+B3g9cWGgJxZXiWQdLkYMbG/BPwu8oAiUd9ONd5l/QDkz4IO5o41rQhObOA==
X-Received: by 2002:a5d:6387:0:b0:317:6992:855c with SMTP id
 p7-20020a5d6387000000b003176992855cmr6816926wru.19.1691048365169; 
 Thu, 03 Aug 2023 00:39:25 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 l6-20020adfe586000000b0031416362e23sm21181185wrm.3.2023.08.03.00.39.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Aug 2023 00:39:24 -0700 (PDT)
Date: Thu, 3 Aug 2023 09:39:24 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <ztfogof2dhtlvjwe73mvd2jp5kbldhkkav7k5culuseqblwpti@qfobohwx3c3j>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="xcahitbmxezrjv7i"
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--xcahitbmxezrjv7i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

The following changes since commit 39b1320e5dc2b707dfb5c25b0298ce9d4fc05aea:

  drm/fb-helper: Remove unused inline function drm_fb_helper_defio_init() (2023-07-25 20:38:37 +0200)

are available in the Git repository at:

  ssh://git.freedesktop.org/git/drm/drm-misc tags/drm-misc-fixes-2023-08-03

for you to fetch changes up to c71b7aa8619a0c9700132d0733e33999fb614339:

  drm/panel: samsung-s6d7aa0: Add MODULE_DEVICE_TABLE (2023-08-02 10:56:50 +0200)

----------------------------------------------------------------
A NULL pointer dereference fix for TTM, a timings fix for imx/ipuv3 and
the addition of a MUDULE_DEVICE_TABLE for the samsung-s6d7aa0 panel.

----------------------------------------------------------------
Alexander Stein (1):
      drm/imx/ipuv3: Fix front porch adjustment upon hactive aligning

Guchun Chen (1):
      drm/ttm: check null pointer before accessing when swapping

Nikita Travkin (1):
      drm/panel: samsung-s6d7aa0: Add MODULE_DEVICE_TABLE

 drivers/gpu/drm/imx/ipuv3/ipuv3-crtc.c        | 2 +-
 drivers/gpu/drm/panel/panel-samsung-s6d7aa0.c | 1 +
 drivers/gpu/drm/ttm/ttm_bo.c                  | 3 ++-
 3 files changed, 4 insertions(+), 2 deletions(-)

--xcahitbmxezrjv7i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZMtZrAAKCRDj7w1vZxhR
xT0eAQDd5R2mYSvbb62DliHnsaQKOXm3yl9mIemRxJhDhe3pAwEAhas3qZbaVkT8
MSJ4LLXdoKRva271997VTr3fFjExtgs=
=XLp8
-----END PGP SIGNATURE-----

--xcahitbmxezrjv7i--

