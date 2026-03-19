Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMG3FMyju2kLmAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 08:20:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2172C731B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 08:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64AE10E8BB;
	Thu, 19 Mar 2026 07:20:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Np9CA8Bt";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="JDGox7sN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 777B510E8BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2026 07:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1773904839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=fe51MXVKNtt97IK2v9bXGEUIRb61ACw33tyTc00UOXY=;
 b=Np9CA8Bts4voxUMPfBYje1wJSAOb9Vr6cq0vBBBlueOLSGolxbufjpqTeU5+Ur9K60c6/q
 i+umlHc26Oniki+MxL5IbC6juGFfGUBtk6WJyi5xp6c9+ZJ3EZjnVVWQ1ygjZaUfXxKpuS
 RSfwxffaVn7UYbfXyGSB2LywXEBCayw=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-383-jk7w-CzyOwCsWBf8CmxD7g-1; Thu, 19 Mar 2026 03:20:35 -0400
X-MC-Unique: jk7w-CzyOwCsWBf8CmxD7g-1
X-Mimecast-MFC-AGG-ID: jk7w-CzyOwCsWBf8CmxD7g_1773904835
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-43b3da235dbso859582f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2026 00:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1773904834; x=1774509634; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=fe51MXVKNtt97IK2v9bXGEUIRb61ACw33tyTc00UOXY=;
 b=JDGox7sN4hj9kSDNSDN96WFZHJ9kNnlKZtpXJIEcmA4AZ9yDcqWVGFkEr9bSF2+Xxh
 Uz82yQIvahS1mcW5fvA/tI6TPMnujITS0s8YokxySxqAqi8PjCL33cSgdkmC7Q+kCUm/
 R1uL/L0SO+aKcY4XIC/CkyCKz9BtSrjlfUK4VQwat+SfRlAp04r0bZk48a8IzYinChfN
 JMNCWowhJOZdYi7qbo7Poqtcb8YwvqgsJy00kU/wedB7s0jKLIkJZV1KS80Jtw4Y9Gse
 hI9hXL1j9kEiad8I+GhAW9DK6kSnJR048I+RUE4LIm6ro5pRuCkGZJCfeGlbt8/oMQEh
 bXzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773904834; x=1774509634;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fe51MXVKNtt97IK2v9bXGEUIRb61ACw33tyTc00UOXY=;
 b=tRNWYZbK6Y5ddHUsA7PxK3bysJ87sk7JIeie7XafV1daW0RiiGGXl4Lh/+ZoY1pZPH
 Y9xHWxdgDNK4IPzEyzSu9i0JKXasl+6hR9+9dzfr5b3lJtvcLjk8yJTVlQjZa69vOJsf
 r8jbw3v+V9Pd1DtV4woabvzNNBzoy3AL5TWpgAvytLfSG/2EnfytiXfdfOx/v9HJd9if
 09F3JUGcyiDa/MQZJ5b78KPHf89vAHowWc7baozrLy65MUu/pWlU3x0j0oK5qUE6lCYf
 FdlVUwWJ0DX1xXXVO0Rm3vldkFvx6xwwCfxBaAG0cXUCYpV72Ei4fL/OLBf3d2dtEEcY
 XCaw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWms+wYkgRKZC5D32j55FLCwO4bvsvEoJgKWBuLUSca/eUbp7wp18GTJFSXhDtDsXigb+ROqfpoZXI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyQpdnuRcGi9vtgff37mELCSDZpB597iRWU0nNmRKLGGDgJc1mJ
 H8kyh0oV13plSPEXSH/11mkQGxCZJsETskkf8ETC+qp4mTiBgQXfELLHJln3dgOkPnFxpdTzcsJ
 sjppkALn/OGUQjITd4NdEQFC/YL0RzFU0a6f5EAh6IOL13o9MyUy21OoZRECYuutvB2roXw==
X-Gm-Gg: ATEYQzwDEHj6EXGofYGLJHX+FqhjwGsFo2xSMDB18nFVEyHKKPD9lPhQdZWyKQ/Xeoj
 qErvpj09OMGYqviG9xTCIGGcc8IdLFddszebKWfk4+eSPJgN1tq3ShCK64XzxzMnwNOKlUAe0u5
 pLHX9/juCoytpMw2MvoZ0O9X+HX9l5NrjdT4EGnDOJBNiqQ/xnHyi8+WIhR3SYo7nY/R12XBoTG
 oMFL9NxXvXB8Ergv72DFYKqA8P5tCrKWM7taq+lxYMllWLnR+0/KgOYWmY9E8wgcjXq9Q1IUHzw
 7je+Fd/fC1u4rpD3DTbgoGq87iHXDcwKguxwHleSLwPe0YKFoZVH72D2Gf0vuNSc0EBQFUIUsw=
 =
X-Received: by 2002:a05:600c:1d10:b0:477:7ae0:cd6e with SMTP id
 5b1f17b1804b1-486f4422046mr101607065e9.5.1773904834521; 
 Thu, 19 Mar 2026 00:20:34 -0700 (PDT)
X-Received: by 2002:a05:600c:1d10:b0:477:7ae0:cd6e with SMTP id
 5b1f17b1804b1-486f4422046mr101606445e9.5.1773904833968; 
 Thu, 19 Mar 2026 00:20:33 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-486f8c4aa85sm37232575e9.12.2026.03.19.00.20.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2026 00:20:33 -0700 (PDT)
Date: Thu, 19 Mar 2026 08:20:32 +0100
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
Message-ID: <20260319-lush-righteous-malamute-e7bb98@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="svf7amwab55hyikj"
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BB2172C731B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--svf7amwab55hyikj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR

Maxime

drm-misc-fixes-2026-03-19:
A doc warning fix and a memory leak fix for vmwgfx, a deadlock fix and
interrupt handling fixes for imagination, a locking fix for
pagemap_until, a UAF fix for drm_dev_unplug, and a multi-channel audio
handling fix for dw-hdmi-qp.
The following changes since commit 49973e2a4156a88e46ba1c1c484b7c214199a181:

  drm/loongson: Mark driver as orphaned (2026-03-11 10:15:36 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-03-19

for you to fetch changes up to cffcb42c57686e9a801dfcf37a3d0c62e51c1c3e:

  drm/bridge: dw-hdmi-qp: fix multi-channel audio output (2026-03-17 18:15:16 +0100)

----------------------------------------------------------------
A doc warning fix and a memory leak fix for vmwgfx, a deadlock fix and
interrupt handling fixes for imagination, a locking fix for
pagemap_until, a UAF fix for drm_dev_unplug, and a multi-channel audio
handling fix for dw-hdmi-qp.

----------------------------------------------------------------
Alessio Belle (3):
      drm/imagination: Fix deadlock in soft reset sequence
      drm/imagination: Synchronize interrupts before suspending the GPU
      drm/imagination: Disable interrupts before suspending the GPU

Ian Forbes (1):
      drm/vmwgfx: Don't overwrite KMS surface dirty tracker

Jonas Karlman (1):
      drm/bridge: dw-hdmi-qp: fix multi-channel audio output

Jonathan Cavitt (1):
      drm/pagemap_util: Ensure proper cache lock management on free

Maarten Lankhorst (1):
      drm: Fix use-after-free on framebuffers and property blobs when calling drm_dev_unplug

Randy Dunlap (1):
      drm/vmwgfx: fix kernel-doc warnings in vmwgfx_drv.h

 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c |  2 +-
 drivers/gpu/drm/drm_file.c                   |  5 +-
 drivers/gpu/drm/drm_mode_config.c            |  9 ++-
 drivers/gpu/drm/drm_pagemap_util.c           | 14 ++---
 drivers/gpu/drm/imagination/pvr_device.c     | 17 -----
 drivers/gpu/drm/imagination/pvr_power.c      | 51 +++++++++++----
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.h          | 93 +++++++++++++++++-----------
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c          |  3 +-
 8 files changed, 114 insertions(+), 80 deletions(-)

--svf7amwab55hyikj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJQEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCabujvwAKCRAnX84Zoj2+
dt5cAXdNUS7Cy30+bodwJCDRPxeogAOQhkcxDIgdpuu4Or3t7kzK9/rIyljyU2vE
fCUqwAF/TqqwgmaI8Fj+kF8N6FhhDute9hnDVR5+4J1oEHEzIK+LFFmNOSVgF/uG
zw/BSthq
=1aoG
-----END PGP SIGNATURE-----

--svf7amwab55hyikj--

