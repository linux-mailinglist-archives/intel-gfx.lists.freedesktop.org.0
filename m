Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0951B393CD
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 08:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A8110E197;
	Thu, 28 Aug 2025 06:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="P3Dh0KkN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C58910E193
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 06:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1756362758;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=7AoG9YHih5iXChLTsxRiuXwiWs4qQNPsTE1cJiG9KLo=;
 b=P3Dh0KkNWqYsgGdVNqVdvP5ZxGC8p/GcUzMeaYMeCk8+Bq2YTFVM/DtngDu8PbIhpRJRJK
 LLPSrG7ToqV51jPk9mmIovrdSZyslN+Q+1WRIWR0Qn8ttn6WYJZUBkBuIbnl0kLuthgE5n
 WV3acxrSme5rWkbiu8zfvTtvn/i+9q4=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-413-s2egY00MPFeAMglXSaiK2A-1; Thu, 28 Aug 2025 02:32:36 -0400
X-MC-Unique: s2egY00MPFeAMglXSaiK2A-1
X-Mimecast-MFC-AGG-ID: s2egY00MPFeAMglXSaiK2A_1756362755
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-45b7bb85e90so1159205e9.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 23:32:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756362755; x=1756967555;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7AoG9YHih5iXChLTsxRiuXwiWs4qQNPsTE1cJiG9KLo=;
 b=H5qaq1OkJrEXC2ogL2/hx/5AqAckiBok2U3ycPx3o1Qn0G+oRaxMn6r7LY1imDEa/N
 Cw63FphydqjuXf8x9QhefAX5+W9bKXpjMD34JnaB5hooh1uUJnF5ti7+LbZs7gZEqRY5
 GaDWfL7Zqx29EIUN238l6QBJsWtlV990RCM+I8Ouh6DwfRoLKGxWZWpykpV3mNdcu1A/
 vlyBFNqHit4l9JXaW5FZQ39NilLcIrCpgMJCfO9BBab/ZbPhJM0nyr/0u1y9z1YdqAlP
 Sf9GSaLecJxopLiTby+Ml6Kh3rj6uRsRfXgVblvfq6SCbTLGqtSoJDv3ULLDZvi1k0lM
 id9A==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7EhvJ5eym9+AxC96jZ3XW7DAZfCo9yt+wfxt7Ef/qSku6M/XkYawycTyo+ob0jbFtRBQ1dKvvTo4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyPbBpWk2A4uCILYTxHIiwWY7UlGIiatxbkXsSWm7vts/mBykTJ
 UJheZ3m1Qmd0rcqyG6/BDI5ZolNBAN/g+Y61AdLPhmH2TToRH/WzleLL03fgMBda5oi25eebtxS
 r7J0kb37UH+hMBCFmhROJCde0AlZ2Lk5TONGoH0pUWmIyKHS7bHyLbwKIvfRBomxkUD4KbQ==
X-Gm-Gg: ASbGncvNHbhuAWoC+HJ3RdwRflw6Ic6TxlJycelL+VIAc6+V6yjxP617JmfLb+9/Nwj
 NMmaGbqVfggzDHo8oojv+o0hOIAmmE2KdyuxVytDikNtZphP7EdHJRBr1d0UCdiQ4Fbfb3EDb0p
 5pug0rGo7xJIWc38hQz878Cg6p62/rrOSv0JoSQ+U9R9y2G7HovwRjKhX79Ihdr1mXCZ8hlYe5E
 p1MmkjSONj0x87WJvRey7285P9Py35AruYwduXs5lKMvc7vxLFgz0oWENCBH0qDBrrZLF00nyFQ
 YiNf+7JE2NZtk7I=
X-Received: by 2002:a05:600c:c493:b0:45b:7bba:c79f with SMTP id
 5b1f17b1804b1-45b7bbaca16mr4471355e9.13.1756362754958; 
 Wed, 27 Aug 2025 23:32:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfmgTsZg/VX13PXkOipuoNoPe3imAyCZvKudh2VGqkUeTRG4jj92qcBhtntnqYiRsxLL3FQg==
X-Received: by 2002:a05:600c:c493:b0:45b:7bba:c79f with SMTP id
 5b1f17b1804b1-45b7bbaca16mr4471145e9.13.1756362754535; 
 Wed, 27 Aug 2025 23:32:34 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3c70e4ba046sm25390318f8f.1.2025.08.27.23.32.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Aug 2025 23:32:33 -0700 (PDT)
Date: Thu, 28 Aug 2025 08:32:33 +0200
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
Subject: [PULL] drm-misc-fixes
Message-ID: <20250828-hypersonic-colorful-squirrel-64f04b@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="xhzf22kj3z7coqpl"
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


--xhzf22kj3z7coqpl
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2025-08-28:
Several nouveau fixes to remove unused code, fix an error path and be
less restrictive with the formats it accepts. A fix for amdgpu to pin
vmapped dma-buf, and a revert for tegra for a regression in the dma-buf
/ GEM code.
The following changes since commit 1a2cf179e2973f6801c67397ecc987391b084bcf:

  Merge drm/drm-fixes into drm-misc-fixes (2025-08-20 16:08:49 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-08-28

for you to fetch changes up to 16fdb3cc6af8460f23a706512c6f5e7dfdd4f338:

  Revert "drm/tegra: Use dma_buf from GEM object instance" (2025-08-26 10:41:27 +0200)

----------------------------------------------------------------
Several nouveau fixes to remove unused code, fix an error path and be
less restrictive with the formats it accepts. A fix for amdgpu to pin
vmapped dma-buf, and a revert for tegra for a regression in the dma-buf
/ GEM code.

----------------------------------------------------------------
Alice Ryhl (1):
      drm/gpuvm: fix various typos in .c and .h gpuvm file

James Jones (1):
      drm/nouveau/disp: Always accept linear modifier

Thomas Zimmermann (2):
      drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
      Revert "drm/tegra: Use dma_buf from GEM object instance"

Timur Tabi (3):
      drm/nouveau: fix error path in nvkm_gsp_fwsec_v2
      drm/nouveau: remove unused increment in gm200_flcn_pio_imem_wr
      drm/nouveau: remove unused memory target test

 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c     | 34 ++++++++++-
 drivers/gpu/drm/drm_gpuvm.c                     | 78 ++++++++++++-------------
 drivers/gpu/drm/nouveau/dispnv50/wndw.c         |  4 ++
 drivers/gpu/drm/nouveau/nvkm/falcon/gm200.c     | 15 ++---
 drivers/gpu/drm/nouveau/nvkm/subdev/gsp/fwsec.c |  5 +-
 drivers/gpu/drm/tegra/gem.c                     |  2 +-
 include/drm/drm_gpuvm.h                         | 10 ++--
 7 files changed, 88 insertions(+), 60 deletions(-)

--xhzf22kj3z7coqpl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaK/4AQAKCRAnX84Zoj2+
dkEEAYDpd0YqFdGm9BGLBX+ExSDguR4FXLpIfdqxzG6EJoktzNXweJcV9HXhC2AT
waiATMUBfR2v2dsmPYo2/ACCLvLsmbz+Suzjg42Wau45mht7nnKgJaNO+SsDm0AL
2rWgo3t/4A==
=TtXz
-----END PGP SIGNATURE-----

--xhzf22kj3z7coqpl--

