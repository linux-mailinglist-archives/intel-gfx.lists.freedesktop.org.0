Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B93B83824
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF6610E3A6;
	Thu, 18 Sep 2025 08:24:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Oa3pqlKx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45CC310E66C
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Sep 2025 08:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1758183870;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=m4QsnAy0CzPIurKifptNo9f10B6Yy9sbvMq/EE+hd9g=;
 b=Oa3pqlKxWNaeXj991kc2zawkHs0mK6e5ZT0e/7iUdnpLwyxf4rw670T6t69nWnbbhkfyTC
 evOaVpLU9zoEADgzoUE9Ga5QCW2FK1pVylqX+jwnE9uIWlG9Kn4fPK7s0IbNZP1ZrBmFro
 8bGRZzbHzfIKtrRsnkNfdbJuYSeAOH0=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-505-92l4ImhpPXyIqiklpNmMNQ-1; Thu, 18 Sep 2025 04:24:28 -0400
X-MC-Unique: 92l4ImhpPXyIqiklpNmMNQ-1
X-Mimecast-MFC-AGG-ID: 92l4ImhpPXyIqiklpNmMNQ_1758183867
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3eae0de749dso370896f8f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Sep 2025 01:24:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758183867; x=1758788667;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=m4QsnAy0CzPIurKifptNo9f10B6Yy9sbvMq/EE+hd9g=;
 b=MCKPG4prcl68dQW7CskPCcOUvrR/xGhvRCCOiiouGKg/ZXcXaqffqDES9LOVoj616/
 P0dTrrxF6RmMsc0ARgX4nHQYjvDYD7djMMHYfzt1ybLiT1tO4632h3zaXTTEjxH2UzX8
 OPv+xkyzafAngHBGCVQvP2dGGXHqWn+IeOVofVcG7LHD92QJHCS3+RMzYdMzznrK5A/o
 Cq0nrGCar8WC8rFIug/HQDfBFsT66wzQ9ErHDIouKmYfJZ1gUPjg6BRy560utenpsU69
 4bkIpECx6vNfkKHIJflnor0oeHXVhy5uXnzp5BI2CFB3fh+e/gpmnyRYG9JIywFe6igg
 0C7A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXWE6o8o3YF1oXNp4OZcHzNeM4lIOEts1+FYqKwTwLdZj+tayOgyj5JENiRMmz9MPkBB/sgR87YwEk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy0h4NNEvitNvoOQSh4pqmUqBWZ3Oc+/9uiLh+kV4aG4UivsPtY
 PsfRYQJRi+FhIAuOsfEhvUSh4+FPy4AA15cWX2vPoQCEn7w6T0mcjSwW3kfTxPCwEmslqfjlraF
 PbOCW4voV5nwT6DDvFfzIF+E7k3yjFbGR07RnRlQmQxu4anzKcwlydfwErhxLsU7vqi6gdg==
X-Gm-Gg: ASbGncuUPigRhoUgFLMiSteK62EKHWJSRB6OWEmu2LBkL2cpGFVvt6OpVO9HbyXA5ek
 kcCNhzTwfZIWXdSLgi4bNsQk8tmVmaGP53pf3o1cPmv+JV/HLCLPepr+oEVTTxzIHLZMlxwBfuy
 Rxty4U4awwv36v+c8x5mguxse2QZSnPy60qTRyXsyddcZ+m/OIJ5h0Tan3amIsG3D7nMnNA3NZR
 mpjTQmo8n9s/rGNKMfDsnk7fe4N7rZiTGgaNNczDtB9gUxhrePFpuqEbV8NHEM0SQyzfOCJFz7/
 VXMNZlcb0STfn6s=
X-Received: by 2002:a05:6000:2082:b0:3e7:492f:72b4 with SMTP id
 ffacd0b85a97d-3ecdfa32db4mr4244290f8f.42.1758183867183; 
 Thu, 18 Sep 2025 01:24:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYe2Jq3iqw8F9GXKxw65z82I8UIpwQPICcX60KJ6ApCZS9tT/esEJmwGmUgclQPs2SSFJotw==
X-Received: by 2002:a05:6000:2082:b0:3e7:492f:72b4 with SMTP id
 ffacd0b85a97d-3ecdfa32db4mr4244253f8f.42.1758183866726; 
 Thu, 18 Sep 2025 01:24:26 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3ee0fbf0a4fsm2508947f8f.52.2025.09.18.01.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Sep 2025 01:24:26 -0700 (PDT)
Date: Thu, 18 Sep 2025 10:24:25 +0200
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
Message-ID: <20250918-orthodox-pretty-puma-1ddeea@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="wdhgzu7qjyuhxmnh"
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


--wdhgzu7qjyuhxmnh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR.

Maxime

drm-misc-fixes-2025-09-18:
One fix for a documentation warning, a null pointer dereference fix for
anx7625, and a mutex unlock fix for cdns-mhdp8546
The following changes since commit 87b90cee22d8658a69c0fbd43633839b75f8f05f:

  MAINTAINERS: drm-misc: fix X: entries for nova/nouveau (2025-09-10 15:52:25 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-09-18

for you to fetch changes up to 288dac9fb6084330d968459c750c838fd06e10e6:

  drm: bridge: cdns-mhdp8546: Fix missing mutex unlock on error path (2025-09-16 15:42:35 +0200)

----------------------------------------------------------------
One fix for a documentation warning, a null pointer dereference fix for
anx7625, and a mutex unlock fix for cdns-mhdp8546

----------------------------------------------------------------
Bagas Sanjaya (1):
      Revert "drm: Add directive to format code in comment"

Loic Poulain (1):
      drm: bridge: anx7625: Fix NULL pointer dereference with early IRQ

Qi Xi (1):
      drm: bridge: cdns-mhdp8546: Fix missing mutex unlock on error path

 drivers/gpu/drm/bridge/analogix/anx7625.c           | 6 ++++--
 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c | 6 ++++--
 drivers/gpu/drm/drm_gpuvm.c                         | 2 --
 3 files changed, 8 insertions(+), 6 deletions(-)

--wdhgzu7qjyuhxmnh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaMvBuQAKCRAnX84Zoj2+
dl7eAXsHsMz9cZz0PGMyw6QlgzVO7Yax29AChzX2IlpQFbnleD08azc4XzRpHJGN
G96LxRwBf3Qq2QQ5ALZIKO6rrrUtUIDNihWGQGPLxGScCZbsr0WSXS55Btu/7yHq
32HKoYFHkQ==
=0j7j
-----END PGP SIGNATURE-----

--wdhgzu7qjyuhxmnh--

