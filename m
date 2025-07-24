Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77107B1011F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 08:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F35710E890;
	Thu, 24 Jul 2025 06:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="CmAAEt7U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE6710E890
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jul 2025 06:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1753339980;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=/0pKL5NP73eax0XQWW/ID5+A1+auXnZadTj2E/9ig0w=;
 b=CmAAEt7UyR0QfdAnUnB+oyPlctTcYi5CnJKUwiUM/iyhQJzl2z57loIU5/2lIf9FmCvJhS
 jUDR9h4g5/dwnDrp3yoxuNHSo8NtKU8Iel0TLC9hfQ5vWueJw9of/K7fGqCFgVSov9GnN8
 c5WyqmxvBMCUEb0dADXMlIFOvSzJO20=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-YwLMdKY3OaeTfK6QD-aF9A-1; Thu, 24 Jul 2025 02:52:55 -0400
X-MC-Unique: YwLMdKY3OaeTfK6QD-aF9A-1
X-Mimecast-MFC-AGG-ID: YwLMdKY3OaeTfK6QD-aF9A_1753339974
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3b5f97cb8fbso268822f8f.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jul 2025 23:52:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753339974; x=1753944774;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/0pKL5NP73eax0XQWW/ID5+A1+auXnZadTj2E/9ig0w=;
 b=itCP6+2RoHf4d9/QqYnloltF0UYcqWRuA6IroUGeTtieAJrpMEL73VPVUENOTO/ezw
 8YeWGFNsVyOclSgQ0oqSlL6z1svNmXphB8tGAUFNFwZPaKj1lZfVzvKsgP43KAxOqZta
 M/NkwqXtQIQtjxduVkYrh9NeUz6B3nMCyeSa2uZsaHti4ohfvzi4uhUf+NzJvK/g6vXr
 wwJ2d/MQmUw/8M9MrxhCR2y4qfb6vf3kwv9IauuQ1kWBvPeahDk7rCMF91clVYRM62Sx
 nJPtyWuS4rur6apdJ2xA1LPElMDEGIXftU0kitNLePMdPlSxaisKWcy8SqHruVLv9tpf
 6p4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHXqSAnj/zn59xvzBAl7TK5jhe1lWJtcl+HLAt+k297o4K0DZTgUamlUS8laIYNBfFV6HooRQBTMI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzdIQ4MW1fevncQ6k6qr8Nb/SLs2BBs9n3CiM8nGnYM4K82d4GR
 egGCTv/UV8dBMHPB1a+RwxiFWSeK1F1eikTMoC/fqo7Q0NGeH7KL2M/InkFeJpIrRyLQcyLPATV
 NR8ggknhnbmp3jWZBAn+ZCGtsPcWput10lkaRlZ4047tXUTgnrc2WwzbSicxlqhN3BFiwiA==
X-Gm-Gg: ASbGnctJgs3VfSqlpPyJofUcTSn1K+CudXGvheCjRgaeCBqqTsMy1cMAKMeUPlKJeSK
 UdJCfVoF4y1iWJRqgbYIxTquqDawJA61sB7AyPcVgGfEunGdqPYRekcIBvk6cByh5DPJ3Q0mCGY
 iP/Y2iognUl4DpdDoWBEcPYJ1bVaIUFJzWBj82zIrg5gdZRzpTvBnDUKHs81e/rBo8lYpWsc9tK
 ZG/eAQmlzJc9CJLF5gfmrR2G7jpLkGrqD0Y642+qBmxEaZYWI4kPgNyWXld3NMs/DxJ6XnyLnFV
 85320/gAR04Ksc0=
X-Received: by 2002:a05:6000:4383:b0:3a5:276b:1ec0 with SMTP id
 ffacd0b85a97d-3b768f052d6mr4670292f8f.45.1753339973844; 
 Wed, 23 Jul 2025 23:52:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcYzg5OUAe89hjtqRlx0qYuu+mbOBARXyBviyMZaliNHGqf9RslbHjHpMGF9JubuJmhYGZEQ==
X-Received: by 2002:a05:6000:4383:b0:3a5:276b:1ec0 with SMTP id
 ffacd0b85a97d-3b768f052d6mr4670276f8f.45.1753339973357; 
 Wed, 23 Jul 2025 23:52:53 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3b76fc6eaf3sm1158249f8f.27.2025.07.23.23.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jul 2025 23:52:52 -0700 (PDT)
Date: Thu, 24 Jul 2025 08:52:52 +0200
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
Subject: [PULL] drm-misc-next-fixes
Message-ID: <20250724-petite-gray-foxhound-b4fbb8@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="2r6awe2hfysrj2zu"
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


--2r6awe2hfysrj2zu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-next-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-next-fixes PR.

Maxime

drm-misc-next-fixes-2025-07-24:
Two more bridge conversions to devm_drm_bridge_alloc that address a
warning now reported by the bridge core code.
The following changes since commit fe69a391808404977b1f002a6e7447de3de7a88e:

  drm/panthor: Fix UAF in panthor_gem_create_with_handle() debugfs code (2025-07-10 10:16:50 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2025-07-24

for you to fetch changes up to b213eb34f857c45bdd769c9e9191a386accc9e8f:

  drm/tidss: oldi: convert to devm_drm_bridge_alloc() API (2025-07-18 14:55:57 +0300)

----------------------------------------------------------------
Two more bridge conversions to devm_drm_bridge_alloc that address a
warning now reported by the bridge core code.

----------------------------------------------------------------
Jayesh Choudhary (1):
      drm/tidss: oldi: convert to devm_drm_bridge_alloc() API

Michael Walle (1):
      drm/tidss: encoder: convert to devm_drm_bridge_alloc()

 drivers/gpu/drm/tidss/tidss_encoder.c | 10 +++++++---
 drivers/gpu/drm/tidss/tidss_oldi.c    |  8 ++++----
 2 files changed, 11 insertions(+), 7 deletions(-)

--2r6awe2hfysrj2zu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaIHYQwAKCRAnX84Zoj2+
dhvfAX4v4BIKZTk3mlaSfj2442uwg5JNUf+zyRRmGuF/yDCVGN1ZzRpMOOko3glS
cVDmvaMBgOxtrUG2gt6m0eXzRFOUEiugrs2CmmXznEvLlOZ9Nz/A9pc2G7sncM02
Cwfqg1aF5Q==
=f1YM
-----END PGP SIGNATURE-----

--2r6awe2hfysrj2zu--

