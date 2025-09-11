Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32286B538A6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 18:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C6410EB7C;
	Thu, 11 Sep 2025 16:04:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="PksTyhmT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D48FE10EB7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 16:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1757606682;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=jtZEVi1bBiJckYAxa3sEu/hHpNe6eKx7VTDTRhqbfkU=;
 b=PksTyhmTuDiuUj54mP5maSTTulk475kySj5gc0mi27BvtAxWOUW1ZMQ27VmVH4FMr1dx87
 PxQND6YmvAY3nTe6xDfefDsXWoo4ok3FLkI7yEPbpKdAAd6NDj02NxkKGxQRCxVabska71
 JNIol/WSS0KnWFBHWWynizqiXva9RK4=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-509-GzmI4xpVPb-W8XYRejQCqg-1; Thu, 11 Sep 2025 12:04:40 -0400
X-MC-Unique: GzmI4xpVPb-W8XYRejQCqg-1
X-Mimecast-MFC-AGG-ID: GzmI4xpVPb-W8XYRejQCqg_1757606679
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3e067ef24aaso600963f8f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 09:04:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757606679; x=1758211479;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jtZEVi1bBiJckYAxa3sEu/hHpNe6eKx7VTDTRhqbfkU=;
 b=I3X5evtx19xzy32s/vMUSQaYVyUNYOGlZj9SAHAa24vzKv08jzZ2YmH1l+Lrvf4HA8
 wIjd6IrHjo4IXaJKlpXxysByDZQcepvv7XVeWOXHla/8tGRWZggi7sSSPPHz+6XbtVzO
 np5xRzFT27yjABhkpfH0bmLBj5uklXc71DzCE6zur8mzUqptMbl/TNfk/C12s5v3TSXS
 fEVQNeDnD1Lt20NiWZIbOr90rv6jb1rlcWNHB0rpdLiENEVGlDpQYeN9uH/hIswU5Ila
 6q5ygDJot1mDeNr1muraOIPrF3n7m4UWPDsXwWJzanqFgQgzbqwPkT60MFp9tY0NKb9l
 VDBg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXw1eUOH7Qd4pWGN9dqmf+q3N7s1N/EofFTMR0pKydYxBJRrwXqzalOPKPLU2kBtAya1nrIvtm+8i0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxjtOvOYz0oPd8qsSvtzPuX7f6sb1D7KVb3vAy5jLJ50mrDqkU/
 9UK9Y28Q91ZkIOn0w04c4/jNOIsGmJT9Eo0FbKzvWSkr4usFYMbwwkj1DXBrr4NHH3MYtj9BiDD
 Qfp4Dvj0eCoKphp/ouPCh51vy5FMTQa0QHh8xiJ+rv9l3oWWi53smQ/orTYmjHwGwriBtzQ==
X-Gm-Gg: ASbGnct+R5sGJY4uD2PojvoczUbS4TCMNyAmW8u8rlSRhXSjz79kAE5HgpxmYl7t5zm
 Dv//I+pP375oqXovkITCFil+9Nxzkqtgz2DCtJclMhpKmGZfbH2KZkaKcQ6BBt9TaHXFucyOOHb
 fNYb7XpwtSBlBFwbLJtCp4rLnAhrXN1Tyx0Vr99RC8oI6zrH/iXB3ZST23+4WfKQnGB3Wp7rIiJ
 oZTIEsSSaA122vXACV1h+MJ3SwO73iy3zjMOWK267+8Z3eQKC1xWnhO508mg7nbsU7fHHF1Jq9C
 XaB8kjQDvRRadOU=
X-Received: by 2002:a5d:588c:0:b0:3e2:9a5a:1f38 with SMTP id
 ffacd0b85a97d-3e64c692464mr14106119f8f.50.1757606678759; 
 Thu, 11 Sep 2025 09:04:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYGKzZTNFxaumU0lwQa1TM2uyRQUhmekKodD8ASxi5wTwWwSFpdAUhSe/UMfM4+ltbXkHQkA==
X-Received: by 2002:a5d:588c:0:b0:3e2:9a5a:1f38 with SMTP id
 ffacd0b85a97d-3e64c692464mr14106068f8f.50.1757606678233; 
 Thu, 11 Sep 2025 09:04:38 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45e037c3ee8sm30016945e9.18.2025.09.11.09.04.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Sep 2025 09:04:37 -0700 (PDT)
Date: Thu, 11 Sep 2025 18:04:37 +0200
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
Message-ID: <20250911-glistening-uakari-of-serendipity-06ceb1@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="yzr6tslhgdx3cftq"
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


--yzr6tslhgdx3cftq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR.

Maxime

drm-misc-fixes-2025-09-11:
A maintainer update, an out-of-bound check for panthor and a revert for
nouveau to fix a race.
The following changes since commit bdd5a14e660062114bdebaef9ad52adf04970a89:

  drm/bridge: ti-sn65dsi86: fix REFCLK setting (2025-09-02 09:56:05 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2025-09-11

for you to fetch changes up to 87b90cee22d8658a69c0fbd43633839b75f8f05f:

  MAINTAINERS: drm-misc: fix X: entries for nova/nouveau (2025-09-10 15:52:25 +0200)

----------------------------------------------------------------
A maintainer update, an out-of-bound check for panthor and a revert for
nouveau to fix a race.

----------------------------------------------------------------
Chia-I Wu (1):
      drm/panthor: validate group queue count

Danilo Krummrich (1):
      MAINTAINERS: drm-misc: fix X: entries for nova/nouveau

Philipp Stanner (1):
      Revert "drm/nouveau: Remove waitque for sched teardown"

 MAINTAINERS                             |  2 +-
 drivers/gpu/drm/nouveau/nouveau_fence.c | 15 --------------
 drivers/gpu/drm/nouveau/nouveau_fence.h |  1 -
 drivers/gpu/drm/nouveau/nouveau_sched.c | 35 +++++++++++++--------------------
 drivers/gpu/drm/nouveau/nouveau_sched.h |  9 ++++++---
 drivers/gpu/drm/nouveau/nouveau_uvmm.c  |  8 ++++----
 drivers/gpu/drm/panthor/panthor_drv.c   |  2 +-
 7 files changed, 26 insertions(+), 46 deletions(-)

--yzr6tslhgdx3cftq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaMLzFAAKCRAnX84Zoj2+
dunuAXwJbxHdjpqURM+YYUhZ8Y2JJ9gZVZ07Qpeptun8xjpUpCLOJ3pcOn+dK2zG
GHtRZXgBgPxDxn/QnaDW66mHK5uqRRcNCUHf7jq8pXDg4g9LIOJFqlp0CfZJ7iJu
WupqGIyy/Q==
=F5qC
-----END PGP SIGNATURE-----

--yzr6tslhgdx3cftq--

