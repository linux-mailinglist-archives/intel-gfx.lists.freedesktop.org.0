Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0823481B05D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 09:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D4B10E228;
	Thu, 21 Dec 2023 08:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2469710E14D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 08:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1703147778;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=fX2gsYsoad6Eltjc3grb+R/VT2CbYFsf8+asZhzjQ8s=;
 b=OJh1VkkE+NwWYVeFMwGMqgb/y94e5B4VA4OkjEgICEPuIkIEP4upho/HFAFnBElSO/SFSL
 9XO/weLZ6DzhdMhkO59vTk2192ux5V0QAHNLkjCXEfIHhyvadxK51fN8IkewkvgSMoX8Q0
 Vq5U8/JCZ4dLa5HILK9BF+jDMI5DkFc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-zdGXgQ0uN2WHQSgzM8AhOA-1; Thu, 21 Dec 2023 03:36:15 -0500
X-MC-Unique: zdGXgQ0uN2WHQSgzM8AhOA-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-40d38c09797so4127525e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 00:36:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703147774; x=1703752574;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fX2gsYsoad6Eltjc3grb+R/VT2CbYFsf8+asZhzjQ8s=;
 b=JHBFT31Y/ivzOxOcGIdevTyI6H2uGJt0T/6dw5F1Q2+5etg01gsHNvA/xcVJ4Ap/2B
 RlNqLAwIWGCp2wpjjsLvz/IkfQmoW2789M/MQehYTBTzMlSdlQ+fcHF6Je+oN1bAHAm7
 KLN6YwMOzjW/kGVEYW75zPfz9l27yR8DPN2Kz7hgxpc2qTXXoa9fvUqaTbPsKKIXiH7b
 UInqdskbVy5LkoyBXTZQnR+OUW4IPCHYFNQdqbVSMHuQVQjEsQS8ymiDNZaSLpDa/jGl
 YoO9jqlnuan+wISCroP7EF40mJ5tQt6oo8/y+fW2TF7N0buWn6BBnOSMKgNbSwg/KL5S
 FIwA==
X-Gm-Message-State: AOJu0YyElP6XE/6V7WhCH0mJo/mbWPLMM/hchWEqobmf2sG7IE9pbdMw
 JTkDhIHXtqIUZmnBqlr8TY/HpditfsZ5TfvysfpQhC0yqch8mkI8XaaVJZvx+9DzyJhwnEQLIHB
 ERcI/P+AcFFdcshkTAt0l5FU9QuWs
X-Received: by 2002:a05:600c:1f0a:b0:40d:3541:97ae with SMTP id
 bd10-20020a05600c1f0a00b0040d354197aemr542716wmb.161.1703147774352; 
 Thu, 21 Dec 2023 00:36:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHf2T4tY+B5yiZNi0JchAkblFbdxFN3i1rZIda44IdxWuMqOQhaNeFDAAhtcbkeNJeMNagGZQ==
X-Received: by 2002:a05:600c:1f0a:b0:40d:3541:97ae with SMTP id
 bd10-20020a05600c1f0a00b0040d354197aemr542709wmb.161.1703147774019; 
 Thu, 21 Dec 2023 00:36:14 -0800 (PST)
Received: from localhost ([193.32.126.216]) by smtp.gmail.com with ESMTPSA id
 c5-20020a05600c0a4500b0040c411da99csm10322867wmq.48.2023.12.21.00.36.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Dec 2023 00:36:13 -0800 (PST)
Date: Thu, 21 Dec 2023 09:36:07 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PULL] drm-misc-next-fixes
Message-ID: <42dw6ok2g5kz5xljrw7t6lzrgafhwslgw3j4rbaaivluv24vkj@k4smx5r3y2gh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="mizjnefyq76ky7uk"
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--mizjnefyq76ky7uk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-next-fixes PR

Thanks!
Maxime

drm-misc-next-fixes-2023-12-21:
More fixes for the new imagination drier, a DT node refcount fix for the
new aux bridge driver and a missing header fix for the LUT management
code.
The following changes since commit b1a2aa9bcbb88a7dc1c4df98dbf4f4df9ca79c9f:

  drm: ci: Update xfails (2023-12-13 15:18:30 -0300)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2023-12-21

for you to fetch changes up to 933a2a376fb3f22ba4774f74233571504ac56b02:

  drm: using mul_u32_u32() requires linux/math64.h (2023-12-19 15:29:17 +0200)

----------------------------------------------------------------
More fixes for the new imagination drier, a DT node refcount fix for the
new aux bridge driver and a missing header fix for the LUT management
code.

----------------------------------------------------------------
Dmitry Baryshkov (1):
      drm/bridge: properly refcount DT nodes in aux bridge drivers

Donald Robson (4):
      drm/imagination: Fixed infinite loop in pvr_vm_mips_map()
      drm/imagination: Fixed oops when misusing ioctl CREATE_HWRT_DATASET
      drm/imagination: Fix ERR_PTR test on pointer to pointer.
      drm/imagination: Fix error path in pvr_vm_create_context

Stephen Rothwell (1):
      drm: using mul_u32_u32() requires linux/math64.h

 drivers/gpu/drm/bridge/aux-bridge.c       |  3 ++-
 drivers/gpu/drm/bridge/aux-hpd-bridge.c   |  4 ++--
 drivers/gpu/drm/imagination/pvr_hwrt.c    | 27 ++++++++++++++-------------
 drivers/gpu/drm/imagination/pvr_vm.c      | 30 ++++++++++++++----------------
 drivers/gpu/drm/imagination/pvr_vm_mips.c |  6 +++---
 include/drm/drm_color_mgmt.h              |  1 +
 6 files changed, 36 insertions(+), 35 deletions(-)

--mizjnefyq76ky7uk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZYP49wAKCRDj7w1vZxhR
xWUvAQDvAEnWQm7AtipTVlM2g9EVaIAKoANQ23LNlTP5kaJ1kQEAo6IUuQdvmeam
A+HaEpPbhNQtOsI7MZWsF32CvhiwNwI=
=p0I3
-----END PGP SIGNATURE-----

--mizjnefyq76ky7uk--

