Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A945A547CD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 11:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F41A10E93A;
	Thu,  6 Mar 2025 10:32:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="DsTBXlKK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32DD10E93A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 10:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1741257136;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=+UOQWLNHD36avSTa9JquHqKO4u+iQSMwvjaDPAD9G44=;
 b=DsTBXlKKSrmPg9SJk7XemqrAAZXBUhex2xVsVY9wVVOWu54vPAZSULo4hm56DyWTTRdRy9
 SGq7VOKeF0hAkQiq+0tfJVPAaAgL12pIxFb65QCp4Zjnle3j27qAMidpHlhcRq0VDPMuuB
 g71aIUTp04TV5iK8o3CrDysy/NPXQTA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-138-kEuvTOh0Mp2Hxo8TxwfpKA-1; Thu, 06 Mar 2025 05:32:09 -0500
X-MC-Unique: kEuvTOh0Mp2Hxo8TxwfpKA-1
X-Mimecast-MFC-AGG-ID: kEuvTOh0Mp2Hxo8TxwfpKA_1741257128
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3912e4e2033so146051f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Mar 2025 02:32:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741257128; x=1741861928;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+UOQWLNHD36avSTa9JquHqKO4u+iQSMwvjaDPAD9G44=;
 b=Ew9CHnHu9LHHXBY2s/74+aI+qN71hUqo1VBS42c3tlMrZAbVMiTIwiYMke0FkoxBa1
 DeXtYyHwUXy35g6p+dk8x6d0uOoP/IXBfSIB95tbyw0oVTx4sn4ds52mluOltfY0OyuK
 78vbFotFnNP4zfr2IdDo5f8ECc9hI33069NRADczZA2rDHk/OVUFY7829kieTbPyte4t
 OOmYyCYeHBOqXKn7Pl7+vB4r8tj1FyJf7zhp2sW6fTfb3kvWpSJZlmrZMKIlf5bm5bMf
 eT8eq6gQ3K4I92NAZ51u0BFzRfhBqySw/9BXb30N/wqjlJh7QMufvMWcxI5+UStne1IZ
 usfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGcWVWDf7KARR+eGh5g8169/aOdbwcNmmk7SNCjVmWbfoFfRUTcqVM+x+Yv4jyTFiT85NGxq+StoA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwlE8kOY7mFAX8vNOGN2qycYWgENbESrKO+SYf0GlTN1vRpzikR
 WgNIPKkpjINRGH1rHMBUjERKVViUztPRU0gMDbUvYpoKuiWouRUQRAnoAkcR3L4JYnhE2zNcelt
 9m394//tNz5PtMWWfM+AHMWTsL6/nlpPHDX85yt01nEsdsa04htoI8cF8LESmP6JWNg==
X-Gm-Gg: ASbGncvPbWRipBvx6BPktyRA74P52aCw1T4ZwDFv90lPRB79715+HEISQezhmdNEUNU
 IQgslBuX6D8tJoR36Ncyx5IJBSY+wdXtqg9Bb/ZSjCZSpoo1Negc21fsvY12OMFosMSQbjC7Nnl
 6rdJJPuC3JxwwwBvBLSgHCejesLtSIaEhiWX2ft+qSfy5oGyd2kj8Fj+fZ4DJQmxX9brjcnE/cl
 9AOEzUqmAer61+RdBbwrf1M6Ny1FSQOGG1HGGhs1FF6Xl1J4i9lf4eDqPiFtNcp10Q=
X-Received: by 2002:a5d:6489:0:b0:391:13ef:1b27 with SMTP id
 ffacd0b85a97d-3911f7ce4b6mr6328154f8f.51.1741257128278; 
 Thu, 06 Mar 2025 02:32:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG+Tgv35AjEidAtwDd/7uDt9U9WK08/b/Hy7ngRGH/XCMkog1BQwQ1QPGrK1xSOjh46+jQw3Q==
X-Received: by 2002:a5d:6489:0:b0:391:13ef:1b27 with SMTP id
 ffacd0b85a97d-3911f7ce4b6mr6328134f8f.51.1741257127917; 
 Thu, 06 Mar 2025 02:32:07 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43bd42c5880sm45356665e9.19.2025.03.06.02.32.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Mar 2025 02:32:07 -0800 (PST)
Date: Thu, 6 Mar 2025 11:32:06 +0100
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
Message-ID: <20250306-antelope-of-imminent-anger-bca19e@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="367poxrw3iccmrnk"
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


--367poxrw3iccmrnk
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR.

Maxime

drm-misc-fixes-2025-03-06:
A Kconfig fix for nouveau, locking and timestamp fixes for imagination,
a header guard fix for sched and a DPMS regression fix for bochs.
The following changes since commit 3603996432997f7c88da37a97062a46cda01ac9d:

  drm/fbdev-dma: Add shadow buffering for deferred I/O (2025-02-27 09:37:55 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-03-06

for you to fetch changes up to 80da96d735094ea22985ced98bc57fe3a4422921:

  drm/bochs: Fix DPMS regression (2025-03-06 08:54:42 +0100)

----------------------------------------------------------------
A Kconfig fix for nouveau, locking and timestamp fixes for imagination,
a header guard fix for sched and a DPMS regression fix for bochs.

----------------------------------------------------------------
Alessio Belle (1):
      drm/imagination: Fix timestamps in firmware traces

Brendan King (3):
      drm/imagination: avoid deadlock on fence release
      drm/imagination: Hold drm_gem_gpuva lock for unmap
      drm/imagination: only init job done fences once

Dave Airlie (1):
      drm/nouveau: select FW caching

Philipp Stanner (1):
      drm/sched: Fix preprocessor guard

Takashi Iwai (1):
      drm/bochs: Fix DPMS regression

 drivers/gpu/drm/imagination/pvr_fw_meta.c       |   6 +-
 drivers/gpu/drm/imagination/pvr_fw_trace.c      |   4 +-
 drivers/gpu/drm/imagination/pvr_queue.c         |  18 +++-
 drivers/gpu/drm/imagination/pvr_queue.h         |   4 +
 drivers/gpu/drm/imagination/pvr_vm.c            | 134 +++++++++++++++++++-----
 drivers/gpu/drm/imagination/pvr_vm.h            |   3 +
 drivers/gpu/drm/nouveau/Kconfig                 |   1 +
 drivers/gpu/drm/scheduler/gpu_scheduler_trace.h |   4 +-
 drivers/gpu/drm/tiny/bochs.c                    |   5 +-
 9 files changed, 141 insertions(+), 38 deletions(-)

--367poxrw3iccmrnk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ8l5pgAKCRAnX84Zoj2+
dvnpAX49PGgUPS/QzfI3bxYFe1E0JsdlQYzZYEURMktAULCGVDlw89fVBiyN3213
U6nviXQBf2DLLDtOet6R6d8nWlI8tI91U7R5evYVl6i5pVqBqINXCCfhIZkgv7xX
thHLmpOAsw==
=ug7S
-----END PGP SIGNATURE-----

--367poxrw3iccmrnk--

