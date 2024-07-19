Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C771893747E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2024 09:40:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D7A10E650;
	Fri, 19 Jul 2024 07:40:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="cHS+W/oK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D90F10E495
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2024 07:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1721374799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=4kxYdIrHu4b00o0zuiOs8N/yg0Z0AcAqiSsUuf4gK9Y=;
 b=cHS+W/oKr0mEUkfnYea0pAk8p1yfxLvYxRu6e28JPv88bdcyLeZkkIaWJfpLPKEMFudR4w
 Q8IogYcXjg3UHQ8sZH/ole27irq99fbS8rRm782gvjLjxNsRV7HQDwHsYIhKG1nul/IMtH
 zfm6NnX6KkqEhJ5GRbF7JgO2YuM5rvc=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-315--HxPOQaAOxywwgRA4mxJGw-1; Fri, 19 Jul 2024 03:39:57 -0400
X-MC-Unique: -HxPOQaAOxywwgRA4mxJGw-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-368255eab46so250165f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2024 00:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721374796; x=1721979596;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4kxYdIrHu4b00o0zuiOs8N/yg0Z0AcAqiSsUuf4gK9Y=;
 b=mV2HH2vfC5eq3CMpM7Zm9ux71v1dbLECb3MU142NU54+s6zcxSZbYnADkYjkWclLOS
 UUEPLNHG58+MNpUGoTh6FQd9Wke5y20N4BjCWKJjfabH0Ercku8VTk4ruY6zxfPcnveZ
 FK7Ug8xe44Ewm+Da3yhJOFdtY1yFXK/B4ydBJ7X3oGTziny0rWH5708GnIJivIa3gjRg
 YcmSBSPPp+TbxUIdxz+u+P6YX7hUd7Q9bse3+zCMcXXWbboPddwwVvXxmXC8xGr/EH0s
 YmjBcsX7T7aLkluaM1s/KgGe9B2y24fyXTQknkMfyud7D4eZasp+3rhLWj4VQgLcMzpQ
 aHKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPCCJ0di7sfjE1kJ3TkRrOkQoF9ZfWVNAnmlDMg5c19MSV95y3IUDctum0MRA6Mhas1cHguODgDwEGzi0jDSt4ZQgWoPP/paeu6E8r/dqj
X-Gm-Message-State: AOJu0Yz2+vWQTASOE24jGJUNvSScCxJ/7kkur7icVCCEu0mHUeYA3IeA
 pEY9N83cd+2EkDqpvw9DTMz2z7yAxFAzXifIWM38kQss4JrESQXeUDex0wHO44KJTCOejPdcK7Q
 NXpmq2eSCO9v0C9bSGj4VRfWtP1qJeMeAKiwk8QOrNGC8tgChIcaSUAHq0er3m00iEQ==
X-Received: by 2002:a05:6000:100c:b0:368:377a:e8bb with SMTP id
 ffacd0b85a97d-36874027587mr896393f8f.28.1721374796048; 
 Fri, 19 Jul 2024 00:39:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHj8idIyc+IRNzwwG6x5fdHgk4zHPBp8GCc3h83ZY13uWqnImlcSxnUYfuF4t8oZH8vJ5F6Qw==
X-Received: by 2002:a05:6000:100c:b0:368:377a:e8bb with SMTP id
 ffacd0b85a97d-36874027587mr896376f8f.28.1721374795651; 
 Fri, 19 Jul 2024 00:39:55 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-368786848basm857701f8f.15.2024.07.19.00.39.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jul 2024 00:39:55 -0700 (PDT)
Date: Fri, 19 Jul 2024 09:39:54 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-next-fixes
Message-ID: <20240719-emerald-newt-of-skill-89b54a@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="mnbsingi4eabsfox"
Content-Disposition: inline
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


--mnbsingi4eabsfox
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Here's this week drm-misc-next-fixes PR

Thanks!
Maxime

drm-misc-next-fixes-2024-07-19:
Two fixes for v3d to fix an array indexing on newer V3D revisions.
The following changes since commit c537fb4e3d36e7cd1a0837dd577cd30d3d64f1bc:

  drm/qxl: Pin buffer objects for internal mappings (2024-07-10 09:12:42 +0=
200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fix=
es-2024-07-19

for you to fetch changes up to 1fe1c66274fb80cc1ac42e0d38917d53adc7d7a3:

  drm/v3d: Fix Indirect Dispatch configuration for V3D 7.1.6 and later (202=
4-07-15 12:49:52 -0300)

----------------------------------------------------------------
Two fixes for v3d to fix an array indexing on newer V3D revisions.

----------------------------------------------------------------
Ma=EDra Canal (2):
      drm/v3d: Add V3D tech revision to the device information
      drm/v3d: Fix Indirect Dispatch configuration for V3D 7.1.6 and later

 drivers/gpu/drm/v3d/v3d_drv.c   |  5 ++++-
 drivers/gpu/drm/v3d/v3d_drv.h   |  8 +++++---
 drivers/gpu/drm/v3d/v3d_sched.c | 16 +++++++++++++---
 3 files changed, 22 insertions(+), 7 deletions(-)

--mnbsingi4eabsfox
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZpoYSgAKCRDj7w1vZxhR
xTJFAQCZxg8Rb0UtvvZy0VN+QIFodVbw1dOcJELCGWf5x/QzogD/T+7JqgDk187n
/55o0MtDBa5ItxE0R7eggdl9iZoUQwA=
=8lBw
-----END PGP SIGNATURE-----

--mnbsingi4eabsfox--

