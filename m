Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DA4786A4B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC6B10E4BC;
	Thu, 24 Aug 2023 08:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE2D10E4BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1692866485;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=5mtjeMY9E3m0WJdC5E0q7o++ntGobTiHpLVFQcZVRcg=;
 b=IeAQxNcpHGxaJ1KkmFW+dXXXYnxAuJO23CRcyjf4h7a+6z/25LzgmhmDJh5mnUU2N5J0Xi
 lt3T55c0fcPrACZFDpNM40b05d0NcPMzgITWkhbvQ2apNSYEQwi847NbIKQiJ/GCYHdkk6
 +oTO79ekT3hCubjdvxvD/9Il7JAbseU=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-177-y8Esw2OzM_SukeNCmAlfIg-1; Thu, 24 Aug 2023 04:41:23 -0400
X-MC-Unique: y8Esw2OzM_SukeNCmAlfIg-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-31c5cc3b512so2261238f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 01:41:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692866482; x=1693471282;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5mtjeMY9E3m0WJdC5E0q7o++ntGobTiHpLVFQcZVRcg=;
 b=YGsGVH+AWtlOJijtxP1c1hSmFOx6MqBJ64bgNaqzgJLfDx0qvb4bw3e2jmuwDNMN7I
 Pu6+c/xWatoARjYAKxNekZOClN6rS4L+lJWFICd1yCugYKJEEHo9U0pjlKnl5GDDyyo6
 dKFLq/JUATNY4vX06tTMMgu8vfSO+tbsn/cPMZJV9zBr7PR64qUENjB+KWAWKyTf1AYQ
 DDCORv1SZ9Jd58fmzqQ4uaOwO4Ef7QZ3nBpugVdBF4bGOvl7ZQTBbQLw3kJ6miAKp4qA
 /CJnHA8oCbh41FWKvi/JeXxEMVLaHmR7Su5w1SrAMLcfIt0ZDgjSlnfHVQRXbuHbebg/
 IF7A==
X-Gm-Message-State: AOJu0YzgJ16tPnxwwg+HKlvxM86SFanps7sChRXveRqtHa+IYtoRS0eg
 PRAb3QZrDr+/AOYFg5ly8cvaj2+7ARIjz/ZNoIQ7Gsp9gOb8+196UVLS+ZBIwnui2PORZFSZ9KA
 FkWwQjaYJqcWCjn4aV+KL/9lZ0wtz
X-Received: by 2002:a5d:574d:0:b0:319:6ec3:79c7 with SMTP id
 q13-20020a5d574d000000b003196ec379c7mr11131613wrw.36.1692866481929; 
 Thu, 24 Aug 2023 01:41:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKxlXLllNtHsIyDSgL0ciTV3wk7YxGaX6bIOc6LHqgUywc38hmcA9yUBmpzmwfQdsmxCmnYg==
X-Received: by 2002:a5d:574d:0:b0:319:6ec3:79c7 with SMTP id
 q13-20020a5d574d000000b003196ec379c7mr11131597wrw.36.1692866481549; 
 Thu, 24 Aug 2023 01:41:21 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 f12-20020a0560001b0c00b0031c5d74ecd8sm9638680wrz.84.2023.08.24.01.41.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Aug 2023 01:41:21 -0700 (PDT)
Date: Thu, 24 Aug 2023 10:41:20 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <amy26vu5xbeeikswpx7nt6rddwfocdidshrtt2qovipihx5poj@y45p3dtzrloc>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="pg2nwcx6lmpfnz7x"
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


--pg2nwcx6lmpfnz7x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2023-08-24:
A samsung-dsim initialization fix, a devfreq fix for panfrost, a DP DSC
define fix, a recursive lock fix for dma-buf, a shader validation fix
and a reference counting fix for vmwgfx
The following changes since commit 50b6f2c8297793f7f3315623db78dcff85158e96:

  Revert "drm/edid: Fix csync detailed mode parsing" (2023-08-17 14:39:12 +0300)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-08-24

for you to fetch changes up to f9e96bf1905479f18e83a3a4c314a8dfa56ede2c:

  drm/vmwgfx: Fix possible invalid drm gem put calls (2023-08-23 13:20:04 -0400)

----------------------------------------------------------------
A samsung-dsim initialization fix, a devfreq fix for panfrost, a DP DSC
define fix, a recursive lock fix for dma-buf, a shader validation fix
and a reference counting fix for vmwgfx

----------------------------------------------------------------
Ankit Nautiyal (1):
      drm/display/dp: Fix the DP DSC Receiver cap size

David Michael (1):
      drm/panfrost: Skip speed binning on EOPNOTSUPP

Frieder Schrempf (1):
      drm: bridge: samsung-dsim: Fix init during host transfer

Rob Clark (1):
      dma-buf/sw_sync: Avoid recursive lock during fence signal

Zack Rusin (2):
      drm/vmwgfx: Fix shader stage validation
      drm/vmwgfx: Fix possible invalid drm gem put calls

 drivers/dma-buf/sw_sync.c                   | 18 +++++++--------
 drivers/gpu/drm/bridge/samsung-dsim.c       | 27 +++++++++++++---------
 drivers/gpu/drm/panfrost/panfrost_devfreq.c |  2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.c          |  6 ++---
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.h          |  8 +++++++
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.h         | 12 ++++++++++
 drivers/gpu/drm/vmwgfx/vmwgfx_execbuf.c     | 35 +++++++++++------------------
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c         |  6 ++---
 drivers/gpu/drm/vmwgfx/vmwgfx_overlay.c     |  3 +--
 drivers/gpu/drm/vmwgfx/vmwgfx_shader.c      |  3 +--
 include/drm/display/drm_dp.h                |  2 +-
 11 files changed, 67 insertions(+), 55 deletions(-)

--pg2nwcx6lmpfnz7x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZOcXsAAKCRDj7w1vZxhR
xb+UAQDmuE1fhpzh7uXoLbxwmZJsE8lqF59s1i45U7A9dr+eJwEA4JE7CF2ho4YX
YG7n0H/hN/kJJ0CyPMmtCBzrKd+/KQI=
=CCEM
-----END PGP SIGNATURE-----

--pg2nwcx6lmpfnz7x--

