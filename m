Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9DB824410
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 15:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBFF10E46C;
	Thu,  4 Jan 2024 14:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF82210E46C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 14:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1704379559;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=vafT9aFcJjnmQvuSHkbQY1E3TaxMVcjMmIh6EpI/G0E=;
 b=IR1YsPWORzrA6p+DQsx/dn3NsqwtPntuQfDfiL0kTbI5uEphHzqwODiIHUANbwWxyhWBLe
 YVTYTr2uzcvMajtLWnOvqP/yV1hH6b4x7scII4LbLF3j50aLAtP6ocW0PillQUnu+Scv9Q
 0ZwuzaaV1QuZI1wl1SjRqF30f98O9k0=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-48-I2dqxFKCPTC19FmvUKlimg-1; Thu, 04 Jan 2024 09:45:55 -0500
X-MC-Unique: I2dqxFKCPTC19FmvUKlimg-1
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3367c893deeso338537f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jan 2024 06:45:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704379554; x=1704984354;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vafT9aFcJjnmQvuSHkbQY1E3TaxMVcjMmIh6EpI/G0E=;
 b=SxzcJN5bmgTfxtzf0Ir3/gj9s1kBIH54CwPieZMQlvQyvoKg6U98/Z6EeEiIHwyfh9
 CT1Zzb/2jERrrDMh2a955xDywTsqeTzegBgWc9qqv+eRpU8AdS99j2DMVa7DJyLYQaSU
 0DPjdFYO0MU8kbqEUWor3EMgAPj/fRlxlAcEBUtlW+mcMTsJuTZZV/Jdlj06sdFMtZJi
 dSdKo5N+870u+zaH9a+IaPFvKxglJ5bhbOeGjzPzDFlTgeX8VGHGiPu9EEy7F1iCE+aS
 n/nMMkHNP3VSfehXbLqoNvypdz/2Moc98CafwYFMYi2geksr6F6XypusSbI43yTl2089
 G+ow==
X-Gm-Message-State: AOJu0Yw6nApN9BSI1qpk38JWqe70TSn1JXhw2onFE1HTZh7S+HqEb94f
 nWB97Z7+PtkpqctD1fi7ECVuIileaBfqFmzUUKnlRYsFQM5/GtyhFhn3jRT8JWekeLaqZo1znVu
 5J3R7NsOtIlOHAOEV4RqZU4wMzisgTnGiW7yn
X-Received: by 2002:adf:e382:0:b0:336:c120:854b with SMTP id
 e2-20020adfe382000000b00336c120854bmr506123wrm.113.1704379554450; 
 Thu, 04 Jan 2024 06:45:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMrLnT8/EkVP25txr75cnq65PVvtSBnrZoxkdPB/n9Q+1xyKcSeAN1pdjmKO2vq0qIQCrhSw==
X-Received: by 2002:adf:e382:0:b0:336:c120:854b with SMTP id
 e2-20020adfe382000000b00336c120854bmr506108wrm.113.1704379554081; 
 Thu, 04 Jan 2024 06:45:54 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 b7-20020adfe307000000b0033674734a58sm17669090wrj.79.2024.01.04.06.45.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jan 2024 06:45:53 -0800 (PST)
Date: Thu, 4 Jan 2024 15:45:53 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PULL] drm-misc-next-fixes
Message-ID: <enhl33v2oeihktta2yfyc4exvezdvm3eexcuwxkethc5ommrjo@lkidkv2kwakq>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="mxcuae33wdg4jqul"
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


--mxcuae33wdg4jqul
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Here's this week drm-misc-next-fixes PR

Maxime

drm-misc-next-fixes-2024-01-04:
One fix for drm/plane to avoid a use-after-free and some additional
warnings to prevent more of these occurences, a lock inversion
dependency fix and an indentation fix for drm/rockchip, and some doc
warning fixes for imagination and gpuvm.
The following changes since commit 933a2a376fb3f22ba4774f74233571504ac56b02:

  drm: using mul_u32_u32() requires linux/math64.h (2023-12-19 15:29:17 +02=
00)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2024-=
01-04

for you to fetch changes up to eee706839333ec0643f1b4898a37588025bf4cb5:

  drm/imagination: pvr_device.h: fix all kernel-doc warnings (2024-01-02 11=
:50:05 +0100)

----------------------------------------------------------------
One fix for drm/plane to avoid a use-after-free and some additional
warnings to prevent more of these occurences, a lock inversion
dependency fix and an indentation fix for drm/rockchip, and some doc
warning fixes for imagination and gpuvm.

----------------------------------------------------------------
Andy Yan (1):
      drm/rockchip: vop2: Avoid use regmap_reinit_cache at runtime

Jiapeng Chong (1):
      drm/rockchip: vop2: clean up some inconsistent indenting

Randy Dunlap (2):
      drm/gpuvm: fix all kernel-doc warnings in include/drm/drm_gpuvm.h
      drm/imagination: pvr_device.h: fix all kernel-doc warnings

Ville Syrj=E4l=E4 (2):
      drm: Don't unref the same fb many times by mistake due to deadlock ha=
ndling
      drm: Warn when freeing a framebuffer that's still on a list

 drivers/gpu/drm/drm_framebuffer.c            |  5 +-
 drivers/gpu/drm/drm_plane.c                  |  1 +
 drivers/gpu/drm/imagination/pvr_device.h     | 46 ++++++++--------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 12 ++---
 include/drm/drm_gpuvm.h                      | 80 ++++++++++++++++--------=
----
 5 files changed, 79 insertions(+), 65 deletions(-)

--mxcuae33wdg4jqul
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZZbEoAAKCRDj7w1vZxhR
xaIlAQCREOGVj9u+v2f3G80x84sTB6c7UTTSp+58ImkdPAx3EgD/QGaOyCvUWVcc
4+V+DXobiKd/q9/86S5RdcGL5QOlyAs=
=aO1Z
-----END PGP SIGNATURE-----

--mxcuae33wdg4jqul--

