Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63163797088
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 09:44:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CA710E780;
	Thu,  7 Sep 2023 07:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C26610E21C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 07:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1694072679;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=P2lql2HG0KmUdTztc7rXyyrgq7Szgu4lMAR+05SwhrA=;
 b=LfF7hlXUSCXwg5KTVKY6G8UzCwycbxN9ESxV6dTclc1WvDH4xwUV5lJB6X5EpD9N0Icrbb
 uD7CPK7TcmikW4fEmeuRR4vrJ9rT4jcmbnKTU4t6MH+rp4WFD0mU2fxBT+I96XNyTispko
 6qqQG00ErciXAcEK0l44F4W/iV35Yn4=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-533-YgYgIZtTPE-TGXBCaSsr5Q-1; Thu, 07 Sep 2023 03:44:36 -0400
X-MC-Unique: YgYgIZtTPE-TGXBCaSsr5Q-1
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-64b8160a71aso7935006d6.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Sep 2023 00:44:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1694072675; x=1694677475;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=P2lql2HG0KmUdTztc7rXyyrgq7Szgu4lMAR+05SwhrA=;
 b=je5bu77WEyUez4UXf8rIlyYYOQDimMl1ZE7LmMAR2ASPgJvZpLJpb+d2OWjMN8FaE1
 AVLiAv+Y5ZJ5GMsCwS3BYxhgJjAPfRCg4WT7KTWnR0ZWnK/ZRfErDFFU7aLnZbdjgJpQ
 w/ARViLSfgKwwrCNZFTRODF9Rw7s3HYqUt4XE7ZuvxCSNUo3FatfU8Pm/Aap8U6nPKUj
 aGkzVi/VCPpwSB0TTpvU4ya3Evx4HBfpEFcMsuhL1/wTFyqflrpk7WAJ1c8aKvRc2MZ1
 j66u6m0TVIdU0ya+jmglwlIROyTr0pl1d8BNyTCzyGWq8sKIag3h44oixLAALJk3vxxX
 E8Rg==
X-Gm-Message-State: AOJu0YzpxBxVCJwin2RMHX5iUKNRTFLGvg6nJUHA8I/Qo6XTqQY3oHvc
 IH1Rg5875yCQdLG+cl9CCUmSqlBOqt/Al9+g6EMrFq1p0+NuSTiTi+GC+pwdfjRQpJ+vbqh8ctv
 Y/V/hdYte7a2CIhKVr2cOPQnf7+Su
X-Received: by 2002:a0c:e0d4:0:b0:655:81e4:aac4 with SMTP id
 x20-20020a0ce0d4000000b0065581e4aac4mr8904580qvk.42.1694072675748; 
 Thu, 07 Sep 2023 00:44:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEy7nem7oGjLOQnBj2IctAgYR0dYvrRPi05/CBV0fc0ZPxWM+t18S+40lSeUFMTxKywRL4VPA==
X-Received: by 2002:a0c:e0d4:0:b0:655:81e4:aac4 with SMTP id
 x20-20020a0ce0d4000000b0065581e4aac4mr8904569qvk.42.1694072675498; 
 Thu, 07 Sep 2023 00:44:35 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 z11-20020a0cf24b000000b006516780a0a5sm6099546qvl.117.2023.09.07.00.44.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Sep 2023 00:44:35 -0700 (PDT)
Date: Thu, 7 Sep 2023 09:44:33 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <w5nlld5ukeh6bgtljsxmkex3e7s7f4qquuqkv5lv4cv3uxzwqr@pgokpejfsyef>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="i3mwmexzb4sj24cq"
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


--i3mwmexzb4sj24cq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2023-09-07:
One doc fix for drm/connector, one fix for amdgpu for an crash when
VRAM usage is high, and one fix in gm12u320 to fix the timeout units in
the code
The following changes since commit f9e96bf1905479f18e83a3a4c314a8dfa56ede2c:

  drm/vmwgfx: Fix possible invalid drm gem put calls (2023-08-23 13:20:04 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-09-07

for you to fetch changes up to 7583028d359db3cd0072badcc576b4f9455fd27a:

  drm: gm12u320: Fix the timeout usage for usb_bulk_msg() (2023-09-04 10:00:57 +0200)

----------------------------------------------------------------
One doc fix for drm/connector, one fix for amdgpu for an crash when
VRAM usage is high, and one fix in gm12u320 to fix the timeout units in
the code

----------------------------------------------------------------
Jinjie Ruan (1):
      drm: gm12u320: Fix the timeout usage for usb_bulk_msg()

Lee Jones (1):
      drm/drm_connector: Provide short description of param 'supported_colorspaces'

Simon Pilkington (1):
      drm/amd: Make fence wait in suballocator uninterruptible

 drivers/gpu/drm/amd/amdgpu/amdgpu_sa.c |  2 +-
 drivers/gpu/drm/drm_connector.c        |  2 ++
 drivers/gpu/drm/tiny/gm12u320.c        | 10 +++++-----
 3 files changed, 8 insertions(+), 6 deletions(-)

--i3mwmexzb4sj24cq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZPl/YQAKCRDj7w1vZxhR
xXpvAQDNkfhZBTYGlqZlnFt64e6yFFkvMrHGtKRa7kkCDBd42AEA9LFNgvVxJfRS
AtHonSDpCo3ZpjOz4oXVpXc+TWTjngA=
=Qw8y
-----END PGP SIGNATURE-----

--i3mwmexzb4sj24cq--

