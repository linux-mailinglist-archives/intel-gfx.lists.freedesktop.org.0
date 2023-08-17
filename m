Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5308377F7E0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 15:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C36A210E48B;
	Thu, 17 Aug 2023 13:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D9310E48B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 13:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1692279544;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=Ty1oIhhQ7byU/Dm75CvlZO0hlYAOBNHBN71sN2Mt1b0=;
 b=ga0ap119p3fReuJngf2ox5twj5ObCK7FiSQUNFQz6kCH+Hq+gzwkoaufjUrwelmyq4p/fX
 qwE6dTFLudI8XkPpfzXbbgqp2TCbH6snEZC+wHLsW1KYXKmkymG5TzbVM0INoMt8fIA3OH
 4vqGWw75vMtaGS6gyCPrEXxffFpORYo=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-139-vE6FQrYBMcC3Nh1k-R3qjw-1; Thu, 17 Aug 2023 09:39:00 -0400
X-MC-Unique: vE6FQrYBMcC3Nh1k-R3qjw-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-314256aedcbso4171321f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 06:39:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692279539; x=1692884339;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ty1oIhhQ7byU/Dm75CvlZO0hlYAOBNHBN71sN2Mt1b0=;
 b=XV6bAcXVvXm2Z7d+KRs2HLJk2OQ6WchRKcxk2s1krONbO2wOMTVmBWDW5D9Ui8dURX
 HvH4i1XGStd7LiKrRBBbG4BMCMo3xHTYU9Mh+l4xhlVgEfZU39jE5ZCMiX0ifx9cmN+p
 kQKEluXGqrzt0n0F8tCRrqV9SEySHIYp0N6Ll9kkpiHLj7dgXRJZjacMO9hioNdeAQH1
 AV7wyqn0luacUtwzVJv67JG0TAupR3JUDuH8GnD9kKtIzyja+dYSZJExFc5LkSVsf+h2
 32LCw0oMkASYJsQnsNKgyg6mUrxVF6v+qM/al18N85HHPZVp4CrxTiushLJXImKPgrN7
 dy+Q==
X-Gm-Message-State: AOJu0YzDbUsUJAw11BI0cxP74DAmybWl7MPjPsoo+LUHTFk55GfLHs9g
 QqsdO5oY5TqrgVmCtSaM6Opq2Znc3fOffaqNZjMJd86o5v2Q0xcTKrZO/mXcF9BnlT7noqckY0k
 X49ZZoH0QAJ7PJpWL/RIfsxPJbon7
X-Received: by 2002:adf:ea85:0:b0:317:e025:5a5c with SMTP id
 s5-20020adfea85000000b00317e0255a5cmr3614262wrm.48.1692279539544; 
 Thu, 17 Aug 2023 06:38:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGF0S6oXPzXigKkIgiiy8ydq8OKsC2KvQccVh0tN+uQdMV+nUW6lm9Tb/tgSzkEoGmFwmuzVA==
X-Received: by 2002:adf:ea85:0:b0:317:e025:5a5c with SMTP id
 s5-20020adfea85000000b00317e0255a5cmr3614231wrm.48.1692279539180; 
 Thu, 17 Aug 2023 06:38:59 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 v9-20020a5d6b09000000b0031759e6b43fsm24838200wrw.39.2023.08.17.06.38.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Aug 2023 06:38:58 -0700 (PDT)
Date: Thu, 17 Aug 2023 15:38:58 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <3olqt33em5uhxzjbqghwcwnvmw73h7bxkbdxookmnkecymd4vc@7ogm6gewpprq>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="npc4dorxccvsv2oa"
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--npc4dorxccvsv2oa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2023-08-17:
One EPROBE_DEFER handling fix for the JDI LT070ME05000, a timing fix for
the AUO G121EAN01 panel, an integer overflow and a memory leak fixes for
the qaic accel, a use-after-free fix for nouveau and a revert for an
alleged fix in EDID parsing.
The following changes since commit 07dd476f6116966cb2006e25fdcf48f0715115ff:

  drm/shmem-helper: Reset vma->vm_ops before calling dma_buf_mmap() (2023-08-10 08:29:14 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-08-17

for you to fetch changes up to 50b6f2c8297793f7f3315623db78dcff85158e96:

  Revert "drm/edid: Fix csync detailed mode parsing" (2023-08-17 14:39:12 +0300)

----------------------------------------------------------------
One EPROBE_DEFER handling fix for the JDI LT070ME05000, a timing fix for
the AUO G121EAN01 panel, an integer overflow and a memory leak fixes for
the qaic accel, a use-after-free fix for nouveau and a revert for an
alleged fix in EDID parsing.

----------------------------------------------------------------
Dan Carpenter (1):
      accel/qaic: Clean up integer overflow checking in map_user_pages()

David Heidelberg (1):
      drm/panel: JDI LT070ME05000 simplify with dev_err_probe()

Jani Nikula (1):
      Revert "drm/edid: Fix csync detailed mode parsing"

Karol Herbst (1):
      drm/nouveau/disp: fix use-after-free in error handling of nouveau_connector_create

Luca Ceresoli (1):
      drm/panel: simple: Fix AUO G121EAN01 panel timings according to the docs

Pranjal Ramajor Asha Kanojiya (1):
      accel/qaic: Fix slicing memory leak

 drivers/accel/qaic/qaic_control.c              | 26 +++++++++++++------
 drivers/accel/qaic/qaic_data.c                 |  1 +
 drivers/gpu/drm/drm_edid.c                     | 29 ++++++---------------
 drivers/gpu/drm/nouveau/nouveau_connector.c    | 11 +++++---
 drivers/gpu/drm/panel/panel-jdi-lt070me05000.c | 36 ++++++++++----------------
 drivers/gpu/drm/panel/panel-simple.c           | 24 ++++++++---------
 include/drm/drm_edid.h                         | 12 +++------
 7 files changed, 63 insertions(+), 76 deletions(-)

--npc4dorxccvsv2oa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZN4i8gAKCRDj7w1vZxhR
xdH0AP9xBZc16miFgJD9TrIEAEkYnyVZUeDQndjvwVgKNvPdqQD+OODBo1V+OIJv
zC6igGNrt3FKh6g1H+BTIoYoYJAU0Q4=
=BvUL
-----END PGP SIGNATURE-----

--npc4dorxccvsv2oa--

