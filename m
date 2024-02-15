Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF05855CD5
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 09:50:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F8410E299;
	Thu, 15 Feb 2024 08:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="MHgn7VXr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE46910E21A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 08:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1707987002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=sX3oVMyy9XRTy9yx5EbbzgkZnCPKuMcmoALywqbasxE=;
 b=MHgn7VXrKHzxquys6MBXNzqZLrVsFNYpJvBFZX6DE+v7Ec1s6mZLZD+v1BHIwgtYdy49dV
 K7yLV6Fuxf2Vw6pVWMXDIFvB2HEfoFtbRTp92AmcDeH6T/c22DZoYpX+COl0mtUs96gJQW
 zBnNSlTqKFOLYQwqTxSXCMTIIewzr1o=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-56-cXS8FI83Nw--EyZIBKY1Lg-1; Thu, 15 Feb 2024 03:49:59 -0500
X-MC-Unique: cXS8FI83Nw--EyZIBKY1Lg-1
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-42c95f83ce0so5699561cf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 00:49:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707986999; x=1708591799;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sX3oVMyy9XRTy9yx5EbbzgkZnCPKuMcmoALywqbasxE=;
 b=S511YHhU9MJkH9lAIr5uwxsiiizg6jVD4jWs42xE20qi+Jnh1vVAa2u4PhjXkoJZ6j
 b0pt4DyRFLhCobvBFX19GwGfn8pZiwjD/nd33Q+3al1EY9BHPynJLL6zx9jhnDuQQ9wx
 rDxdr7+6vEmG/fzLCdZirn+X91VN+xXvYqjUxyjJ++zAlDd5xSuW42KntqgHC0lvxKx1
 TSR1cz37NiHAoZnz0ezvmaLt/ZQJ7EYEq1TIf5qSZAUbVOpCGw+ByxA7SG2i6uSautNT
 V6VdyWj1ZvY34YL+z5/0kH7SobLG+UjmeOarXEoqcA7+ZRV0O4qQB566ZzF/LxsJVF6+
 ImaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV19ObE+wszYnGe1BHNEK+G9d4rx+3p4873nDowztIX5vMCiQsRX2RJQVKzhuHLRnDYcZzD3C1Zy9GCEgqWZwBjJyPpjZ8uZiyOGjb5ddGT
X-Gm-Message-State: AOJu0YzQ561b9M30KyFzQRH1qbETEYf6sy8nzfVmD56E6Lg+stRxm/Lu
 CRtUdYUw33fBOA5emymECfIxUPKSzr1mOD5D8PQHPajnErsfhDfu1P7qmtrb/h+FUR5g6oJ59QG
 MLtrOy+DQYCP9dXLir39rvTblTNQOwCxwo1TEcqA4gTHSaNs3fMU9XZOYHwoEs3s6xg==
X-Received: by 2002:ac8:6b54:0:b0:42d:cff1:7bb7 with SMTP id
 x20-20020ac86b54000000b0042dcff17bb7mr639525qts.15.1707986998899; 
 Thu, 15 Feb 2024 00:49:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE3B9fZ09ND00SBjtT6N26t6zEKQ5EZUvT+XzYQCT6zkY+YvFMumJXRAkJRqaoOsMt2NE0/7A==
X-Received: by 2002:ac8:6b54:0:b0:42d:cff1:7bb7 with SMTP id
 x20-20020ac86b54000000b0042dcff17bb7mr639506qts.15.1707986998591; 
 Thu, 15 Feb 2024 00:49:58 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 d22-20020a05622a15d600b0042dbcf23a64sm390258qty.1.2024.02.15.00.49.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Feb 2024 00:49:58 -0800 (PST)
Date: Thu, 15 Feb 2024 09:49:56 +0100
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
Message-ID: <b4ffqzigtfh6cgzdpwuk6jlrv3dnk4hu6etiizgvibysqgtl2p@42n2gdfdd5eu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="iqzyv4n4wkdriy45"
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


--iqzyv4n4wkdriy45
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2024-02-15:
A suspend/resume error fix for ivpu, a couple of scheduler fixes for
nouveau, a patch to support large page arrays in prime, a uninitialized
variable fix in crtc, a locking fix in rockchip/vop2 and a buddy
allocator error reporting fix.
The following changes since commit 5f8408aca66772d3aa9b4831577b2ac5ec41bcd9:

  accel/ivpu: Add job status for jobs aborted by the driver (2024-02-06 13:37:34 +0100)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2024-02-15

for you to fetch changes up to a64056bb5a3215bd31c8ce17d609ba0f4d5c55ea:

  drm/tests/drm_buddy: add alloc_contiguous test (2024-02-14 15:22:21 +0100)

----------------------------------------------------------------
A suspend/resume error fix for ivpu, a couple of scheduler fixes for
nouveau, a patch to support large page arrays in prime, a uninitialized
variable fix in crtc, a locking fix in rockchip/vop2 and a buddy
allocator error reporting fix.

----------------------------------------------------------------
Arnd Bergmann (1):
      nouveau/svm: fix kvcalloc() argument order

Arunpravin Paneer Selvam (1):
      drm/buddy: Fix alloc_range() error handling code

Danilo Krummrich (2):
      drm/nouveau: don't fini scheduler if not initialized
      drm/nouveau: omit to create schedulers using the legacy uAPI

Harshit Mogalapalli (1):
      drm/rockchip: vop2: add a missing unlock in vop2_crtc_atomic_enable()

Jacek Lawrynowicz (1):
      accel/ivpu: Fix DevTLB errors on suspend/resume and recovery

Matthew Auld (1):
      drm/tests/drm_buddy: add alloc_contiguous test

Philip Yang (1):
      drm/prime: Support page array >= 4GB

Rob Clark (1):
      drm/crtc: fix uninitialized variable use even harder

 drivers/accel/ivpu/ivpu_hw_37xx.c            | 44 ++++++++++----
 drivers/accel/ivpu/ivpu_pm.c                 | 39 ++++++------
 drivers/gpu/drm/drm_buddy.c                  |  6 ++
 drivers/gpu/drm/drm_crtc.c                   |  1 +
 drivers/gpu/drm/drm_prime.c                  |  2 +-
 drivers/gpu/drm/nouveau/nouveau_abi16.c      | 20 +++++--
 drivers/gpu/drm/nouveau/nouveau_abi16.h      |  2 +-
 drivers/gpu/drm/nouveau/nouveau_drm.c        |  7 ++-
 drivers/gpu/drm/nouveau/nouveau_drv.h        |  2 +-
 drivers/gpu/drm/nouveau/nouveau_exec.c       |  2 +-
 drivers/gpu/drm/nouveau/nouveau_sched.c      | 38 +++++++++++-
 drivers/gpu/drm/nouveau/nouveau_sched.h      |  6 +-
 drivers/gpu/drm/nouveau/nouveau_svm.c        |  2 +-
 drivers/gpu/drm/nouveau/nouveau_uvmm.c       |  2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c |  4 +-
 drivers/gpu/drm/tests/drm_buddy_test.c       | 89 ++++++++++++++++++++++++++++
 16 files changed, 216 insertions(+), 50 deletions(-)

--iqzyv4n4wkdriy45
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZc3QMwAKCRDj7w1vZxhR
xRZAAQC1+lM9MSha6mE5SXxoPZ4TxfLFiO1UB8coWlOMMZo0jQD8CLKKSFmarIZU
afZUz6ljN/nYUxdsvWWGUEUIG7wBtwg=
=Ku2g
-----END PGP SIGNATURE-----

--iqzyv4n4wkdriy45--

