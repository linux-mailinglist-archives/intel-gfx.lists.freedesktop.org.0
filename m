Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01725A6A18C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 09:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB35B10E5A4;
	Thu, 20 Mar 2025 08:38:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ItUG6bBP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4CFD10E5A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Mar 2025 08:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1742459912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=eVSYC2akOgiwP6yKLJOSHan3aNOI03QHvfAehHGVWcE=;
 b=ItUG6bBPn8/WcTIZjgeLY46VM0bQqpmhMHAoK33vfKr98vhP5BjgA62bmpJk8J5Mad9Ypm
 CUcq3lkOxRi5Fy0HjkcB2I9xewunZ3EFgfGRWRY7OgHk5wurtfI7JeCYeK8+rWoNmMNmjn
 I0tPaVfGoydX17cL1+bE8XFkkt7LEYA=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-164-9bJH6cnhPiOij7UcXcfcCQ-1; Thu, 20 Mar 2025 04:38:29 -0400
X-MC-Unique: 9bJH6cnhPiOij7UcXcfcCQ-1
X-Mimecast-MFC-AGG-ID: 9bJH6cnhPiOij7UcXcfcCQ_1742459909
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-43d025a52c2so3534705e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Mar 2025 01:38:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742459909; x=1743064709;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eVSYC2akOgiwP6yKLJOSHan3aNOI03QHvfAehHGVWcE=;
 b=RSUafFEzvdkjMoyWJZm5QsjNuKsJO7LqET2y4IVcuvc5X9BQmlTkUU0OZAob/qZcrP
 ZDmn0AUNU6NyugYCzcPXnIABgcLKOzZUewX1A0Qpjbx95soTEdIpLc0TKoENIWNaiXER
 bHcJA5HB0T0q4fKD6/ooLUeSV0eDKHB6p2880oOks9MzgcJz/K6HFrdqbXR7i6lqnNVj
 RlAW4acgXiJEGYgEkQ7iAMsGzrDAM8/OUgWBuF2JLXTxB1OzCPQqNfGN6w//ZNT0qLWK
 gPQCcg6Gj10E23yNo5r/OHFlXyQBWQR+2rSE0vEQMeIKIyzCKs1lodJbsy2Uq9hMqadc
 YFTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVF44gRIKSrqjjOB9uVlaURe8s75Z0G0qmLJs+k+rbXUH3KDE5vEOybpL8q0XCjXk7g6lWd6fvE0rA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzpmwNim/+T2Dx+AaTugEvPO0/q1aNc3BT5ELxDAHDCB3DsKjhZ
 4B5jsQQyZ/crXgGxeN9mfZYuGPJjy9ChWJ38nWtaEtCLFo+9S6gt96RCXQErkWSDgc0LeejHllo
 bVmSW/ptw/X62eT4PT7Zf+CDlU6l366PPJrWHkmaEosMzCzWxQtGvFQz9hNnWljJPSA==
X-Gm-Gg: ASbGncvJ6CU1zl3tyEA0co+xy/tzv1+Js/AfRcPbYnWxB3R3fkPNin3WfLRrdsFicrY
 GsuBXV4qmg9Q7QMm2YWWZIdf4d0lvR72K6eEu9glVz9FDrvxS40rG9+v5+t3m2SJgQfEAFmo7hs
 9gVERdENMRVKgRkjAGRaKFRrmQ6Ngp1qwONOuQgIY1M5Uf8IC9gA+yFCRk56CW7kCgQ3B8vD1kV
 p4mfo6G87f4mTqAsfrPgi/fvVOK9HRT7eJEA8OfrCUdy/L7VnQRDynsUju2Hi+gzNM=
X-Received: by 2002:a05:600c:3d88:b0:43d:db5:7b1a with SMTP id
 5b1f17b1804b1-43d4379b544mr46799245e9.12.1742459908612; 
 Thu, 20 Mar 2025 01:38:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2ABTv2JwL/AM+EzDkblJ4THEXWcPirEf3A6Ijee80hlkhSxHLu9VwR1gZbn6IcOhuJRlh2A==
X-Received: by 2002:a05:600c:3d88:b0:43d:db5:7b1a with SMTP id
 5b1f17b1804b1-43d4379b544mr46798935e9.12.1742459908115; 
 Thu, 20 Mar 2025 01:38:28 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43d46edba08sm32428835e9.18.2025.03.20.01.38.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Mar 2025 01:38:27 -0700 (PDT)
Date: Thu, 20 Mar 2025 09:38:27 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Simona Vetter <simona.vetter@ffwll.ch>, David Airlie <airlied@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-fixes
Message-ID: <20250320-valiant-outstanding-nightingale-e9acae@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="47mp7vgniqed6naw"
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


--47mp7vgniqed6naw
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR.

Maxime

The following changes since commit 12d8f318347b1d4feac48e8ac351d3786af39599:

  drm/dp_mst: Fix locking when skipping CSN before topology probing (2025-0=
3-11 11:29:18 +0200)

are available in the Git repository at:

  ssh://git@gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-=
2025-03-20

for you to fetch changes up to cb83f4b965a66d85e9a03621ef3b22c044f4a033:

  gpu: host1x: Do not assume that a NULL domain means no DMA IOMMU (2025-03=
-19 19:05:40 +0100)

----------------------------------------------------------------
A sched fence reference leak fix, two fence fixes for v3d, two overflow
fixes for quaic, and a iommu handling fix for host1x.

----------------------------------------------------------------
Dan Carpenter (1):
      accel/qaic: Fix integer overflow in qaic_validate_req()

Jason Gunthorpe (1):
      gpu: host1x: Do not assume that a NULL domain means no DMA IOMMU

Jeffrey Hugo (1):
      accel/qaic: Fix possible data corruption in BOs > 2G

Ma=EDra Canal (2):
      drm/v3d: Don't run jobs that have errors flagged in its fence
      drm/v3d: Set job pointer to NULL when the job's fence has an error

qianyi liu (1):
      drm/sched: Fix fence reference count leak

 drivers/accel/qaic/qaic_data.c           |  9 +++++++--
 drivers/gpu/drm/scheduler/sched_entity.c | 11 +++++++++--
 drivers/gpu/drm/v3d/v3d_sched.c          | 23 ++++++++++++++++++++---
 drivers/gpu/host1x/dev.c                 |  6 ++++++
 4 files changed, 42 insertions(+), 7 deletions(-)

--47mp7vgniqed6naw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ9vUAgAKCRAnX84Zoj2+
dlATAYCtuSibllvUw0LRAksLq+2dw95GaaHpe/yqHUhj4mnrYaVwskUMuN05Z3Je
g1M6vV8Bf1WI7AiXgRyaUghC6Ne0vSW5D7eStRbqifJMMydRqkEMPaCELL+X5Fpk
f0edh7S3FQ==
=2eWI
-----END PGP SIGNATURE-----

--47mp7vgniqed6naw--

