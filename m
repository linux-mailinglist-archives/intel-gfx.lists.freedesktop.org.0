Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B16AE977D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7235110E839;
	Thu, 26 Jun 2025 08:06:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="OWsx9QQ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD8ED10E042
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 08:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1750925178;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=Un7u/oigN2lAcR1eqnwk5UCeHFwE7wCa9VlsCrBoRy4=;
 b=OWsx9QQ8mqAFHoLbgwK3UUiWnFlGwWJmPEFzcOQNOCcU2JG4eCe93G9smdsKjPhrwhvJt5
 V0NsKTkTgpKL0XZcIZKymu+TCzeYpPHSKHiNFl30xNn4oJ7LtVzEyqNuZhYC18EOVSOX78
 hCNuOmHj4iE/Vk1qs4H1njeZHI7n3eY=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-622-YqG5-E0gNmCtYQVWWkfVcA-1; Thu, 26 Jun 2025 04:06:17 -0400
X-MC-Unique: YqG5-E0gNmCtYQVWWkfVcA-1
X-Mimecast-MFC-AGG-ID: YqG5-E0gNmCtYQVWWkfVcA_1750925176
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3a4f3796779so353726f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 01:06:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750925176; x=1751529976;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Un7u/oigN2lAcR1eqnwk5UCeHFwE7wCa9VlsCrBoRy4=;
 b=krGSFj9Wt6LnTY4wrLDIHrUCkrvMWjj8wTQY+95ME1omRLT5L8zpirvqQ2LxTpMtgv
 GnagLZwKVnGAGG1/vKzUoy31cDWX49tcF7QWIauK2q8u6vcdmPBOOUhVaqRGD84lHqqA
 g+gSi559iwqaAwsXu9sRMvv031TGtRuuFCUpWowvUM1I3JA+NaooZjUpHZVCb+UdG7sC
 AM9tnNT7tyLZA9vo5B1TP0flvagWKrD+xDOStPnHfOMZMqeOyq7hBGjtAnGhj+YFGCI4
 2W8qjsde6faHlMzRr5I2wZI6OvhUd0QL1gAKptD6VrQDiW3hNjJRRrK+dtHZ0s+Xt2fC
 qHBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUt9gpnIrRbl44DBvJ15AgO8bKCfxLoNFBT7uY+fLYi60JVzwvd8C6apWh7EEewfktnXQbkQKcBUW8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxQ1bnFuVIIuSxX7nnHDiq12dvl083WBjalkRGNu0l/JiTRclp9
 7QXMmFVyo8nqPwMYGBXFXIZZ9PuUvwrZceYdGA7tecZQLP0BPiiYeohGT5lrBwNdMx39Gcv9x/0
 VzNLfp6zcdSkG94Lczpsn3VBPD3LHWD4aFYmqJdzAoRRreceHata5/3VU+62X23kEEz6BhA==
X-Gm-Gg: ASbGncsb0EuCXbzF8HxqXEAoN3rQhqZuk5pnPNgw/t/mSdgdOLPoWtu/4AT0T3ntDCf
 y40L7Yi0X3nGhBBL3n7Vu2T+QNMQOyWf/yI3qNGyHe89Q0Z6myT4Lm1jfp305G7rw4mM7KBpp0H
 MtTkX+hWTrXY7v2WHE6IWTlbFdtlv4sMRczg3YRkBdHA/LjoUS4VKtybi5j4Ym5XZDyCKftnxvM
 KjNyww879/x9tNVSNTUfdH9/fQFWNhV20JWVJxw0KY0zVoRweCU660YkSBMaec6OTuzFRCaKQ==
X-Received: by 2002:a05:6000:98e:b0:3a4:d953:74a1 with SMTP id
 ffacd0b85a97d-3a6ed5f2660mr4904892f8f.23.1750925175660; 
 Thu, 26 Jun 2025 01:06:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl+Et2fQCJMFtk7w65nFxPJgBsxzoM5kJmWZLpdhngsi7SOfXyOTEHOy5GgaRKAMwMVgqNNg==
X-Received: by 2002:a05:6000:98e:b0:3a4:d953:74a1 with SMTP id
 ffacd0b85a97d-3a6ed5f2660mr4904857f8f.23.1750925175169; 
 Thu, 26 Jun 2025 01:06:15 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a6e80f26ebsm6691042f8f.51.2025.06.26.01.06.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jun 2025 01:06:14 -0700 (PDT)
Date: Thu, 26 Jun 2025 10:06:14 +0200
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Simona Vetter <simona.vetter@ffwll.ch>
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
Subject: [PULL] drm-misc-next
Message-ID: <20250626-sincere-loon-of-effort-6dbdf9@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="o64ig7trmkikf3gy"
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


--o64ig7trmkikf3gy
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-next
MIME-Version: 1.0

Hi,

It looks like it's been a slow week, but here's this week drm-misc-next PR

Maxime

drm-misc-next-2025-06-26:
drm-misc-next for 6.17:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
- ci: Add Device tree validation and kunit
- connector: Move HDR sink metadat to drm_display_info

Driver Changes:
- bochs: drm_panic Support
- panfrost: MT8370 Support

- bridge:
  - tc358767: Convert to devm_drm_bridge_alloc()
The following changes since commit 1a45ef022f0364186d4fb2f4e5255dcae1ff638a:

  drm/format-helper: Move drm_fb_build_fourcc_list() to sysfb helpers (2025-06-18 10:46:03 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2025-06-26

for you to fetch changes up to d6b93bfa5d1eba452e494d3a05d6bef65bc569b7:

  drm/nouveau/disp: Use dev->dev to get the device (2025-06-25 20:07:03 +0200)

----------------------------------------------------------------
drm-misc-next for 6.17:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
- ci: Add Device tree validation and kunit
- connector: Move HDR sink metadat to drm_display_info

Driver Changes:
- bochs: drm_panic Support
- panfrost: MT8370 Support

- bridge:
  - tc358767: Convert to devm_drm_bridge_alloc()

----------------------------------------------------------------
Jani Nikula (1):
      drm/connector: move HDR sink metadata to display info

Louis-Alexis Eyraud (5):
      dt-bindings: gpu: mali-bifrost: Add compatible for MT8370 SoC
      drm/panfrost: Drop duplicated Mediatek supplies arrays
      drm/panfrost: Commonize Mediatek power domain array definitions
      drm/panfrost: Add support for Mali on the MT8370 SoC
      arm64: dts: mediatek: mt8370: Enable gpu support

Luca Ceresoli (1):
      drm/bridge: tc358767: convert to devm_drm_bridge_alloc() API

Ryosuke Yasuoka (1):
      drm/bochs: Add support for drm_panic

Sakari Ailus (1):
      drm/nouveau/disp: Use dev->dev to get the device

Vignesh Raman (2):
      drm/ci: Add jobs to validate devicetrees
      drm/ci: Add jobs to run KUnit tests

 .../devicetree/bindings/gpu/arm,mali-bifrost.yaml  |  5 +-
 arch/arm64/boot/dts/mediatek/mt8370.dtsi           | 16 ++++++
 drivers/gpu/drm/bridge/tc358767.c                  | 56 ++++++++++++++------
 drivers/gpu/drm/ci/check-devicetrees.yml           | 50 ++++++++++++++++++
 drivers/gpu/drm/ci/dt-binding-check.sh             | 19 +++++++
 drivers/gpu/drm/ci/dtbs-check.sh                   | 22 ++++++++
 drivers/gpu/drm/ci/gitlab-ci.yml                   |  4 ++
 drivers/gpu/drm/ci/kunit.sh                        | 16 ++++++
 drivers/gpu/drm/ci/kunit.yml                       | 37 +++++++++++++
 drivers/gpu/drm/ci/setup-llvm-links.sh             | 13 +++++
 drivers/gpu/drm/display/drm_hdmi_helper.c          |  2 +-
 drivers/gpu/drm/drm_connector.c                    |  2 +-
 drivers/gpu/drm/drm_edid.c                         | 19 +++----
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c  |  2 +-
 drivers/gpu/drm/nouveau/nouveau_display.c          |  2 +-
 drivers/gpu/drm/panfrost/panfrost_drv.c            | 61 ++++++++++++----------
 drivers/gpu/drm/tiny/bochs.c                       | 19 +++++++
 include/drm/drm_connector.h                        |  8 +--
 18 files changed, 292 insertions(+), 61 deletions(-)
 create mode 100644 drivers/gpu/drm/ci/check-devicetrees.yml
 create mode 100755 drivers/gpu/drm/ci/dt-binding-check.sh
 create mode 100755 drivers/gpu/drm/ci/dtbs-check.sh
 create mode 100755 drivers/gpu/drm/ci/kunit.sh
 create mode 100644 drivers/gpu/drm/ci/kunit.yml
 create mode 100755 drivers/gpu/drm/ci/setup-llvm-links.sh

--o64ig7trmkikf3gy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaFz/dQAKCRAnX84Zoj2+
dpQrAYD5yJ8ZYbrX4N8fGExKTQewOb+1Opt6nglHHG2SmlPBjDlOTabB0dPy2Ynu
NcMVDKQBgL3Hq1/V/W7f3n6PltrFi+k7FH+tUqsY9zZZPT3pq12Io/j56B3x4h+3
3sErNO+vRw==
=Tv+w
-----END PGP SIGNATURE-----

--o64ig7trmkikf3gy--

