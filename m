Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCC1860001
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 18:49:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7800E10E9E2;
	Thu, 22 Feb 2024 17:49:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="jL28L3JS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C19310E9E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 17:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1708624139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=3ioFLGtXAzl49LxeGXZoB4HlsD4SiUYcXnlMZjKgpEQ=;
 b=jL28L3JS+vu+DBE/Uv0HQgMovc9yQlM2M0NArDG4FMeppwX3n1hMpa35LfoNF8lOikujTr
 XqsBiMxo/mamlzf6SpTsAXlU78DHrTEFYiecKy6Jnr7lIN8IzicqGHVAoTvhFzjFNn3Jdk
 WLXotty6K6YGrU1wMqDhTfzAg0esbT8=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-692-xx1yE4sJNkq1zRTmrBwrfA-1; Thu, 22 Feb 2024 12:48:57 -0500
X-MC-Unique: xx1yE4sJNkq1zRTmrBwrfA-1
Received: by mail-lf1-f69.google.com with SMTP id
 2adb3069b0e04-512add274bfso16929e87.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 09:48:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708624136; x=1709228936;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3ioFLGtXAzl49LxeGXZoB4HlsD4SiUYcXnlMZjKgpEQ=;
 b=gNENvwGHJTrvFuVKhUEaiuPBmKJiG0sbwNdOqJUsIvXsCworl5CPIJeNNs9rIRTd/B
 2kH4+53O4i31TT/3yHvT4imRp8THfUfnFNNfalMvTFxMGaljcfy/Pz+YLuPPX+jHafXL
 EL5Fu9ZrUbW7emkiVquvNPct/e3iUAmIzTpMKQ+NH5XGKwy7FYmgWCFjrlEuowQMLSS9
 gBKAYcrKZHS732IYIv+f2X4o+g9+Z1IRVL6G6ghWaJaAQg2F2Sc1w3qWoKW35EJGwnTG
 wQZaCTdImMMbHqozvF0RgcEEoAg2BmHdDDlXTmjH4YkPCQgC+cOUQZpoK38ClTCjzaMh
 I/Bg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOTKx5CsDX9uG6FYJXkJGlUJ4yw0qyeeHlKhUuQ7hZQZEZ9TwdiJFDV86x9u8OxoAUE/Rpqs6zqH4K6XBBVajC4hSxaUXNZLQvoLltC31A
X-Gm-Message-State: AOJu0YzT7gfbxZTeYdHY/uWi2wrgTqqmsaiZNK9YghxfX0cDXnGxKQ9A
 Qa3ifgy5zLv/N0NVo4CbgEbDySs1gxN/z9wllRspTjR8yLL5uYJ4+ObihtfqHbH6fiOEXyKh7sU
 ZfnK1oL2WcBHzP3QRvcQh7hoN5EdgaxcoGZkKbkUXNLMmUqAqk9biFciEokQlz3TcgQ==
X-Received: by 2002:a05:6512:3a88:b0:512:db76:4e16 with SMTP id
 q8-20020a0565123a8800b00512db764e16mr2123067lfu.4.1708624136187; 
 Thu, 22 Feb 2024 09:48:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEBAWvm+yI3Pr7fiLFm9XFNOLrF5RmpV/2JkyZ9oYkZoK7MMkLsr2+wsHuHCHG7VLRplm5xSg==
X-Received: by 2002:a05:6512:3a88:b0:512:db76:4e16 with SMTP id
 q8-20020a0565123a8800b00512db764e16mr2123052lfu.4.1708624135720; 
 Thu, 22 Feb 2024 09:48:55 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 u7-20020a7bc047000000b0040fe4b733f4sm6742438wmc.26.2024.02.22.09.48.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Feb 2024 09:48:55 -0800 (PST)
Date: Thu, 22 Feb 2024 18:48:55 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-fixes
Message-ID: <gl2antuifidtzn3dfm426p7xwh5fxj23behagwh26owfnosh2w@gqoa7vj5prnh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="5hhkflxukzuxfpx5"
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


--5hhkflxukzuxfpx5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2024-02-22:
A list handling fix and 64bit division on 32bit platform fix for the
drm/buddy allocator, a cast warning and an initialization fix for
nouveau, a bridge handling fix for meson, an initialisation fix for
ivpu, a SPARC build fix for fbdev, a double-free fix for ttm, and two
fence handling fixes for syncobj.
The following changes since commit a64056bb5a3215bd31c8ce17d609ba0f4d5c55ea:

  drm/tests/drm_buddy: add alloc_contiguous test (2024-02-14 15:22:21 +0100)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2024-02-22

for you to fetch changes up to 2aa6f5b0fd052e363bb9d4b547189f0bf6b3d6d3:

  drm/syncobj: handle NULL fence in syncobj_eventfd_entry_func (2024-02-22 =
13:52:52 +0100)

----------------------------------------------------------------
A list handling fix and 64bit division on 32bit platform fix for the
drm/buddy allocator, a cast warning and an initialization fix for
nouveau, a bridge handling fix for meson, an initialisation fix for
ivpu, a SPARC build fix for fbdev, a double-free fix for ttm, and two
fence handling fixes for syncobj.

----------------------------------------------------------------
Andrzej Kacprowski (1):
      accel/ivpu: Don't enable any tiles by default on VPU40xx

Arnd Bergmann (1):
      nouveau: fix function cast warnings

Arunpravin Paneer Selvam (1):
      drm/buddy: Modify duplicate list_splice_tail call

Dan Carpenter (1):
      drm/nouveau/mmu/r535: uninitialized variable in r535_bar_new_()

Erik Kurzinger (2):
      drm/syncobj: call drm_syncobj_fence_add_wait when WAIT_AVAILABLE flag=
 is set
      drm/syncobj: handle NULL fence in syncobj_eventfd_entry_func

Javier Martinez Canillas (1):
      sparc: Fix undefined reference to fb_is_primary_device

Martin Blumenstingl (1):
      drm/meson: Don't remove bridges which are created by other drivers

Matthew Auld (1):
      drm/tests/drm_buddy: fix 32b build

Thomas Hellstr=F6m (1):
      drm/ttm: Fix an invalid freeing on already freed page in error path

 arch/sparc/Makefile                               |  2 +-
 arch/sparc/video/Makefile                         |  2 +-
 drivers/accel/ivpu/ivpu_hw_40xx.c                 |  2 +-
 drivers/gpu/drm/drm_buddy.c                       |  4 ++--
 drivers/gpu/drm/drm_syncobj.c                     | 19 ++++++++++++++++---
 drivers/gpu/drm/meson/meson_encoder_cvbs.c        |  1 -
 drivers/gpu/drm/meson/meson_encoder_dsi.c         |  1 -
 drivers/gpu/drm/meson/meson_encoder_hdmi.c        |  1 -
 drivers/gpu/drm/nouveau/nvkm/subdev/bar/r535.c    |  5 ++---
 drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c |  8 +++++++-
 drivers/gpu/drm/tests/drm_buddy_test.c            | 16 ++++++++--------
 drivers/gpu/drm/ttm/ttm_pool.c                    |  2 +-
 12 files changed, 39 insertions(+), 24 deletions(-)

--5hhkflxukzuxfpx5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZdeJBgAKCRDj7w1vZxhR
xRbyAQCnYNCfqIbjHWMolyt0BYbCzpSWutK1vtBD/FsjqQY9XAEA32eKhN0BzJOP
Gq2TJ8zFcUD6FfaFtG79ZAscIZFXLw8=
=4w2f
-----END PGP SIGNATURE-----

--5hhkflxukzuxfpx5--

