Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APS3NRJ3qmlcSAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 07:41:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C11F21C263
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 07:41:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAED10E1D2;
	Fri,  6 Mar 2026 06:41:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="h3NmPB5a";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="LcSe5VFQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28BDD10E1D2
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2026 06:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1772779277;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=MBTMJTT82PS0Pu/z8VlhrxomReyPLpqBl+fqlhabERY=;
 b=h3NmPB5arai41p0qfJxT6fnF0S5sn81BnEgSWoUWu46OBTsGRj/iYshr9kaLHN4UovXep6
 S2vbhYuTDCoaXqPhHG0z/7mP/FShoYNQN+vaJhKplZeB/fjT8105cSsTfgQhCaqPenagw/
 6Hz/6F4Zb/5aulKGi71007cLrpJ2Nmk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-250-KRMaf79VPk69Jv_38oH_7g-1; Fri, 06 Mar 2026 01:41:13 -0500
X-MC-Unique: KRMaf79VPk69Jv_38oH_7g-1
X-Mimecast-MFC-AGG-ID: KRMaf79VPk69Jv_38oH_7g_1772779273
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-439c794ec8eso2856890f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2026 22:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1772779273; x=1773384073; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=MBTMJTT82PS0Pu/z8VlhrxomReyPLpqBl+fqlhabERY=;
 b=LcSe5VFQLk58/RzrOg/fPe3zRaieLQoS1DaWsCjRC9CoAc7cVPdAftdmwn4V7YR3um
 ikj4KQy3mj/oU/byOujYl/8oDQPrMjP0aq1INAxxq+G04D1xV0mq8AJ1zfvDkU15nVyx
 A67ET8I7NdeH4tzk0bNIdsOseY6NPQPSDOMIqFP8sHpD0igqjLtgyYJkR4EV8ehun8H+
 a2FBFbO4gAsz2vIPaqww+djF2AB2SY8NSk6FiFYGrbTCgZfb+Zdg8Sx0MnTYU3jO1s6p
 FsoiWRO48dRvu+qsX499XL7QhhDk6HYg1Hfjde+SZejHjSk8ppRvh/K3zNI0+z2rqNr7
 QlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772779273; x=1773384073;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MBTMJTT82PS0Pu/z8VlhrxomReyPLpqBl+fqlhabERY=;
 b=OAvr/eVxWwr4SPJdfTzW3yyuPH5eQL1Yei2Je87FCHRCk9ZrcBwh3FooSHUFfPdgOC
 1hMXHDTCtJHw9/pbmA3A8vTO/9tVh4hzgWB+PEmHBer93+bWw0Ez8deZMYgDLX303/oe
 4uwBtVchDhiQzDcFe5IzWMVmOXxHtuXb2AmyTbgYxWh1NVNNWz35CRJeJSaZWOEfXyFL
 L18RjiIIjuW/M5yLfKA6vIEljnO/myTVr9U8wvDicM9Llo9ICdtnFS7IF5oPYvp6jSzu
 A+fbuBFBtVJ8rxSPFoMhoHt8DO0eCsunSG8E7rgdxArsv25zRr4ZOpIIyBFz9NuOLe2Y
 L/4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNrCDyCgTN+DJdIyavYbU1I28YJexKToWTfZd+GfcfPzheNnQQ5+1TthStByPqdq92oVpLv9zx8IE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy4jLYI8MNqX4AMFYqCPHQABS+ByCHwnHMMHPfKLeJTWIlQTDHz
 jwAup3+XizoIglOU/1/PuzSKb3mE+mRD4hXEisI1ePghhIvYIB5wQRb538Fju9/6rHt/u6zoC8z
 ns22OJKzlCAFr5YPXrzm9Ex1hqW1/xMGIosf+F76T77H154b6h0dS9VTlw1hLc8NG78U4SQ==
X-Gm-Gg: ATEYQzwBntRBR9m+NU0bn2jZ1w3EkRvqw7guVpSREsLZq1A2NrK+h0+DtLoGhD3sgWS
 iRq7dVx4xljXX1Y3mtV8lwaoT7QVX0lK/LwLtD+9BwX1pEJCYVP/1T71nYlHRaKzXujMT3o1IBD
 G1LqwrD9npEFT0ayP3tq4VRaj+VqRiY1WqVLqzrL9RJiNQQ/3hU5+iUCghsWKGlMNYHW8Xp/+QY
 sqp9dicy8buXIZhTG6Vh2ebKvdX638HBSxtir6IZydJH9OBXjhAxiO1zV5YnmVe18G4sUMwwTKJ
 UHaRHLqkJE1nA1huGWB835NISvMTZmEDl4Mi6A8NRKbPy8LXNLpEwQEpIW6MLjO9CedC0ZF8Vg=
 =
X-Received: by 2002:a05:600c:3b0c:b0:477:7b16:5fb1 with SMTP id
 5b1f17b1804b1-48526918939mr14036645e9.7.1772779272516; 
 Thu, 05 Mar 2026 22:41:12 -0800 (PST)
X-Received: by 2002:a05:600c:3b0c:b0:477:7b16:5fb1 with SMTP id
 5b1f17b1804b1-48526918939mr14036375e9.7.1772779271987; 
 Thu, 05 Mar 2026 22:41:11 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-485245dbf04sm10997855e9.14.2026.03.05.22.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2026 22:41:11 -0800 (PST)
Date: Fri, 6 Mar 2026 07:41:10 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Matthew Brost <matthew.brost@intel.com>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-fixes
Message-ID: <20260306-grumpy-pegasus-of-witchcraft-6bd2db@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="kz3gnqntjfip7uxz"
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
X-Rspamd-Queue-Id: 8C11F21C263
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.91 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[mripard@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action


--kz3gnqntjfip7uxz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi Sima, Dave,

Here's a new drm-misc-fixes to fast-track the syncobj revert.

Maxime

drm-misc-fixes-2026-03-06:
Another early drm-misc-fixes PR to revert the previous uapi fix sent in
drm-misc-fixes-2026-03-05, together with a UAF fix in TTM, an argument
order fix for panthor, a fix for the firmware getting stuck on
resource allocation error handling for amdxdna, and a few fixes for
ethosu (size calculation and reference underflows, and a validation
fix).
The following changes since commit 75c151ceaacf5ca8f2f34ebf863d88002fb12587:

  accel/amdxdna: Use a different name for latest firmware (2026-02-25 13:51:31 -0800)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-03-06

for you to fetch changes up to 021f1b77f70d62351bba67b050b8d784641d817f:

  accel: ethosu: Handle possible underflow in IFM size calculations (2026-03-05 15:21:17 -0600)

----------------------------------------------------------------
Another early drm-misc-fixes PR to revert the previous uapi fix sent in
drm-misc-fixes-2026-03-05, together with a UAF fix in TTM, an argument
order fix for panthor, a fix for the firmware getting stuck on
resource allocation error handling for amdxdna, and a few fixes for
ethosu (size calculation and reference underflows, and a validation
fix).

----------------------------------------------------------------
Akash Goel (1):
      drm/panthor: Correct the order of arguments passed to gem_sync

Chris Brandt (1):
      drm: renesas: rz-du: mipi_dsi: Set DSI divider

Dave Airlie (1):
      nouveau/dpcd: return EBUSY for aux xfer if the device is asleep

Francesco Lavra (1):
      drm/solomon: Fix page start when updating rectangle in page addressing mode

Isaac J. Manjarres (1):
      dma-buf: Include ioctl.h in UAPI header

Julian Orth (1):
      drm/syncobj: Fix handle <-> fd ioctls with dirty stack

Lizhi Hou (4):
      accel/amdxdna: Fill invalid payload for failed command
      accel/amdxdna: Fix NULL pointer dereference of mgmt_chann
      accel/amdxdna: Fix major version check on NPU1 platform
      accel/amdxdna: Split mailbox channel create function

Maarten Lankhorst (2):
      drm/ttm/tests: Fix build failure on PREEMPT_RT
      Revert "drm/syncobj: Fix handle <-> fd ioctls with dirty stack"

Rob Herring (Arm) (3):
      accel: ethosu: Fix job submit error clean-up refcount underflows
      accel: ethosu: Fix NPU_OP_ELEMENTWISE validation with scalar
      accel: ethosu: Handle possible underflow in IFM size calculations

Thadeu Lima de Souza Cascardo (1):
      drm/ttm: Fix bo resource use-after-free

Tvrtko Ursulin (1):
      drm/ttm: Fix ttm_pool_beneficial_order() return type

Yujie Liu (1):
      drm/sched: Fix kernel-doc warning for drm_sched_job_done()

 drivers/accel/amdxdna/aie2_ctx.c               | 23 +++---
 drivers/accel/amdxdna/aie2_message.c           | 36 +++++++---
 drivers/accel/amdxdna/aie2_pci.c               | 66 +++++++++--------
 drivers/accel/amdxdna/aie2_pci.h               |  1 +
 drivers/accel/amdxdna/amdxdna_ctx.c            | 27 +++++++
 drivers/accel/amdxdna/amdxdna_ctx.h            |  3 +
 drivers/accel/amdxdna/amdxdna_mailbox.c        | 99 +++++++++++++-------------
 drivers/accel/amdxdna/amdxdna_mailbox.h        | 31 ++++----
 drivers/accel/amdxdna/npu1_regs.c              |  2 +-
 drivers/accel/ethosu/ethosu_gem.c              | 12 +++-
 drivers/accel/ethosu/ethosu_job.c              | 28 +++++---
 drivers/gpu/drm/nouveau/nouveau_connector.c    |  3 +
 drivers/gpu/drm/panthor/panthor_sched.c        |  9 +--
 drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c | 16 ++++-
 drivers/gpu/drm/scheduler/sched_main.c         |  1 +
 drivers/gpu/drm/solomon/ssd130x.c              |  6 +-
 drivers/gpu/drm/ttm/tests/ttm_bo_test.c        |  4 +-
 drivers/gpu/drm/ttm/ttm_bo.c                   | 11 ++-
 drivers/gpu/drm/ttm/ttm_pool_internal.h        |  2 +-
 include/uapi/linux/dma-buf.h                   |  1 +
 20 files changed, 234 insertions(+), 147 deletions(-)

--kz3gnqntjfip7uxz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaap3BgAKCRAnX84Zoj2+
dmI9AYDUmiFfUsIsj2U3URAGqZ6O3I1d+mBR/H0pOHlyfCrDWBudIsqlbnwERpWy
Q3oOMd8BgKh1s//puJCYmLkT+2L0A7g1bStPgDeThF6KTbyY70W3etZ8e/0k8284
6zHxkZJjnA==
=ozcz
-----END PGP SIGNATURE-----

--kz3gnqntjfip7uxz--

