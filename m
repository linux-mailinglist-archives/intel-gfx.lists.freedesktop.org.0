Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEBD96491D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32A310E6EF;
	Thu, 29 Aug 2024 14:53:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Zpa0MCFH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCCC610E6EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 14:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724943194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=o8hizAOpY+7kJBYCq/LFUyXzMpPCymiKXp+YCyYUVXs=;
 b=Zpa0MCFHor9pyw3lMBEkGBEH+epKg+yey1FawautUsso3nyOHbx1v66VcyXwphRABCKlKl
 7lHUBSOSxm6RSz/oI7S1VF0LsH2XqZHHIM5SOKGEcKNSUq9qsrzwUc4rxEOtE3BwD38ydj
 fGZr2rYCbLuAEgD5M7ydr0JoCnMYHkI=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-379-llQBw0djOD2TTdgKPSOn3w-1; Thu, 29 Aug 2024 10:51:32 -0400
X-MC-Unique: llQBw0djOD2TTdgKPSOn3w-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-37189fc2977so513769f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 07:51:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724943091; x=1725547891;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=o8hizAOpY+7kJBYCq/LFUyXzMpPCymiKXp+YCyYUVXs=;
 b=C8tb7Mx2ao94wV3KR2E29aRqBIjOBYKf8WxLQZ3Mp9Q+j1TaCSQorRWHWb3Elf0KSH
 du0U1V2FgUR6WkvC47Gwbqbyo5xTwON8YrDfte66hHPL0EUUWRevE9uG88zrL8uOxHD0
 8zxMKRBAZPv7q+h7JuZDAWyq8Pcc1k4TgNzad4ewzi5tSrVsoFt50ngkW3EgiVfeVdG+
 ABaSBHz+hdQ5vgV1+uSTXdYTxdMQPf32JQOOK8E5RgF/YyZ9Y//Q6E/WAZMVOIntwj4P
 d8ypTeCW5DCJ+GmfqyqJQOdZQyhfH/hIIDbb6CjJo+cd8YubRQ6QypRPZSamCjUMJlaa
 3bdg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWl+Bt/EqxXXeGxAVsWiL0JwbDbAGTljxxFvQc4GH/Z8N/NEKQDX3dR+e6reMyHobEvFhDuMS+2hgM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywy2xXOvlLP9W91kBVwP0DuJGgDZhlJyAmOp7NIb2uv/R/rXXR+
 7k71Afo1bMuihlSCYMSi52EmxULToPEPoGzjl+rgUF9pGtfIRcfzEgiwL4cFNrjlFjyuIN+lg9N
 DCmjh6D71D9A152ouGu8HTCAWo4ya1fC12txb9Tq3UlMZS41J2Es6/e4nLN51oVXUYw==
X-Received: by 2002:a05:6000:1205:b0:36b:bb84:33e2 with SMTP id
 ffacd0b85a97d-3749b56157amr2160746f8f.37.1724943091337; 
 Thu, 29 Aug 2024 07:51:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6gzgcHYvgehEsl05HBBaQQHPASR2y09yuwyioLUAKciAMZLg1EbneAIKjRehHDFfy658nCg==
X-Received: by 2002:a05:6000:1205:b0:36b:bb84:33e2 with SMTP id
 ffacd0b85a97d-3749b56157amr2160721f8f.37.1724943090788; 
 Thu, 29 Aug 2024 07:51:30 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb9593c32sm5996765e9.48.2024.08.29.07.51.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2024 07:51:30 -0700 (PDT)
Date: Thu, 29 Aug 2024 16:51:29 +0200
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
Subject: [PULL] drm-misc-fixes
Message-ID: <20240829-efficient-swift-from-lemuria-f60c05@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="jqxdvs5nqe3j44as"
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


--jqxdvs5nqe3j44as
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2024-08-29:
A revert for a previous TTM commit causing stuttering, 3 fixes for
vmwgfx related to buffer operations, a fix for video/aperture with
non-VGA primary devices, and a preemption status fix for v3d
The following changes since commit 9b340aeb26d50e9a9ec99599e2a39b035fac978e:

  nouveau/firmware: use dma non-coherent allocator (2024-08-16 03:42:24 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2024-08-29

for you to fetch changes up to 9d824c7fce58f59982228aa85b0376b113cdfa35:

  drm/v3d: Disable preemption while updating GPU stats (2024-08-28 11:36:53 -0300)

----------------------------------------------------------------
A revert for a previous TTM commit causing stuttering, 3 fixes for
vmwgfx related to buffer operations, a fix for video/aperture with
non-VGA primary devices, and a preemption status fix for v3d

----------------------------------------------------------------
Alex Deucher (2):
      Revert "drm/ttm: increase ttm pre-fault value to PMD size"
      video/aperture: optionally match the device in sysfb_disable()

Tvrtko Ursulin (1):
      drm/v3d: Disable preemption while updating GPU stats

Zack Rusin (3):
      drm/vmwgfx: Prevent unmapping active read buffers
      drm/vmwgfx: Fix prime with external buffers
      drm/vmwgfx: Disable coherent dumb buffers without 3d

 drivers/firmware/sysfb.c                |  19 ++++--
 drivers/gpu/drm/v3d/v3d_sched.c         |   6 ++
 drivers/gpu/drm/vmwgfx/vmwgfx_blit.c    | 114 ++++++++++++++++++++++++++++++--
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.c      |  13 +++-
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.h      |   3 +
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.h     |   4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c    |  12 ++--
 drivers/gpu/drm/vmwgfx/vmwgfx_surface.c |   6 +-
 drivers/of/platform.c                   |   2 +-
 drivers/video/aperture.c                |  11 +--
 include/drm/ttm/ttm_bo.h                |   4 --
 include/linux/sysfb.h                   |   4 +-
 12 files changed, 161 insertions(+), 37 deletions(-)

--jqxdvs5nqe3j44as
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZtCK8QAKCRAnX84Zoj2+
dnhVAYDWqAvgA9KfHKMUCPWGuyC3YUBQpD/vf7UZqhVUO4IT6dPeHZ7btrnkJr4D
OZDsL4YBgISWjaJ8vryzLdtyG1H8gZ9GrqMpcRda620ZXbMR2vJJ7q6uXJYIvXqK
9/HIQAO2ZQ==
=LACF
-----END PGP SIGNATURE-----

--jqxdvs5nqe3j44as--

