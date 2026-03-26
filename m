Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QG8cB6bdxGnz4gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 08:17:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A823533055A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 08:17:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D27B10E9DC;
	Thu, 26 Mar 2026 07:17:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="RkDKnAyi";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="Ukwtk/3e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B9110E9EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 07:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1774509472;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=jiAy5WF94udF9XSc7HvqXP/pL3x/y3FMYCC0P8YcHII=;
 b=RkDKnAyiUese+DZGo+FLBq3sa1u3p/iV6tLXn6bXfwQTjKkpWaAC7KCVukMUyq5H20uAU2
 2DDTZ6dSAS5ZkNFIZZ5qlO55V+NsYyO2BJr43ORw2c26WiihG2DDF7dEhQzWU5PgDyLcHu
 fzV7e40XUwjN70K4C+AlNPQcA0B2a2c=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-2-18md4kpuPNegSWam2Gi4NQ-1; Thu, 26 Mar 2026 03:17:50 -0400
X-MC-Unique: 18md4kpuPNegSWam2Gi4NQ-1
X-Mimecast-MFC-AGG-ID: 18md4kpuPNegSWam2Gi4NQ_1774509469
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-485345e2fdfso3297795e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 00:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1774509469; x=1775114269; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=jiAy5WF94udF9XSc7HvqXP/pL3x/y3FMYCC0P8YcHII=;
 b=Ukwtk/3eGpKE/qd/8IUnUVS8qQbrvXEGahb+hFIMFUiz5W4hTG7t0ahnJ5VA1+kRCP
 ZWegKy6EwmjV1oP5C6q98Y1/JCkLQGtHgAc6bW31wzk+6fHPrmmE0r1EIJ3J8ksTfdk/
 KIo3W03M3U0+DtCeVwbsy4aOyifEA05C1gjRWyZ6D4yOygDdG4fTf6aHzohPPC9eB3v2
 UQOzrLI2u+WR/JYlYBcTlpfZAhMPyK5G/G7iy2WIPw8Y17IK8FPiu9IPOWMpsKy7cTwE
 yQr1S+BXeJEUBhuSpwvL4f52JBGekIqH5AYzUBVB9mX7MmCbNZ2BPou6HFYnNB1/iX4P
 +nuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774509469; x=1775114269;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=jiAy5WF94udF9XSc7HvqXP/pL3x/y3FMYCC0P8YcHII=;
 b=QT94ZTKhIdggVrLpo6JkUgjQG1Tcwhz4hgUbbW2pME2A4BN662+SoYKcBREQhyUCun
 Z77MLbIEnvSVxyJjrkKLJUJjZ9GSds7m1sDPzJfUMGE3Kyi3HI1p1hUnvecLzFuMNx9n
 aAb7xmByasiRuiCJK2JyuT+H8RgonQT9AW2+NNpUA6gPkZENCqaesZ3Dmb4MzqMeTUck
 TIIi23MRjPj0qOf8OriBEg43DtMM6EPASenuBKFw2nSCUVfYp0Ru7WaijhulKUzYPepM
 vzLUvCLm+iduWLMDRS4P96BdUf2nqtDseRUcDG5J7mtW2ovEQNS50M3t+A06pUSOwVMM
 pK/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCV7LzCECfHhhnOc+Ce5s+NsCa+bCJk0z/BYonHJMfzUq0Y++8CWuU1SgzKCHYGOMErrym+XELLtCi0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyqqhYdC70ORVxfJKYO/NbUmA5WAELUjypptFAR/12odBrSMe5o
 7YCmLpMEKKH0KbtgMuE5lgodIQ1CdD3fJ8EqS7MhN1TzWSTLcr1IjzTWUn0gJOp94ux3uJdBTan
 +CgbOjEqNkaLhpEXL/8dyAm59RjR4RBT72jQnW3BfVu82pIvIuoEwwzu8Jpg0gJFf7sgpRw==
X-Gm-Gg: ATEYQzzrhHTaGapEHJqcz/6J+pmFFdFhFowIuhrwddzoavgof89RV+Zxl2ficsjzZ2K
 /HEGgxN7fzDoGXovu+LbFs/+sfNbVRq3SmK+oOVtOrrzDGeelB2zI0dn0XBvO6UCSq6IBCK5TrO
 j/hTctPs17tZqHHEmS3mGPK6zdQSQsZKrGAa421Ovy+UZOKgX/Qj+e68JjmWaVg8kg8VV/rcynb
 yt9eVJpgwEFdW4zQRADH9/FglUNDbbZarB+zvkDB/K5cH7GeC7z13YNmH9/eafAOcUH/fNjb+4k
 iTDapSX2nGHsSNFK4y2AOfNHqj+GEUnx3XFtqHudlnNkI1IWAAaoXp2mAnNrRfANVmweQ4wogg=
 =
X-Received: by 2002:a05:600c:1f13:b0:47e:e952:86c9 with SMTP id
 5b1f17b1804b1-48715f03a9dmr96582435e9.0.1774509468614; 
 Thu, 26 Mar 2026 00:17:48 -0700 (PDT)
X-Received: by 2002:a05:600c:1f13:b0:47e:e952:86c9 with SMTP id
 5b1f17b1804b1-48715f03a9dmr96581895e9.0.1774509468078; 
 Thu, 26 Mar 2026 00:17:48 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48722cb10fcsm11225905e9.14.2026.03.26.00.17.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 00:17:47 -0700 (PDT)
Date: Thu, 26 Mar 2026 08:17:46 +0100
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
Message-ID: <20260326-lush-cuddly-limpet-ab2aa9@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="cwnmwkle24ojkev6"
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A823533055A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--cwnmwkle24ojkev6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi Dave, Sima,

Here's the drm-misc-fixes PR for this week.

Maxime

drm-misc-fixes-2026-03-26:
A page mapping fix for shmem fault handler, a power-off fix for ivpu, a
GFP_* flag fix for syncobj, and a MAINTAINERS update.
The following changes since commit cffcb42c57686e9a801dfcf37a3d0c62e51c1c3e:

  drm/bridge: dw-hdmi-qp: fix multi-channel audio output (2026-03-17 18:15:16 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-03-26

for you to fetch changes up to 87a70013be7d1b96e7e160aea6dad4564b459868:

  MAINTAINERS: Update GPU driver maintainer information (2026-03-25 15:10:30 +0100)

----------------------------------------------------------------
A page mapping fix for shmem fault handler, a power-off fix for ivpu, a
GFP_* flag fix for syncobj, and a MAINTAINERS update.

----------------------------------------------------------------
Jianmin Lv (1):
      MAINTAINERS: Update GPU driver maintainer information

Karol Wachowski (1):
      accel/ivpu: Add disable clock relinquish workaround for NVL-A0

Pedro Demarchi Gomes (1):
      drm/shmem-helper: Fix huge page mapping in fault handler

Tvrtko Ursulin (1):
      drm/syncobj: Fix xa_alloc allocation flags

 MAINTAINERS                            |  8 +++++-
 drivers/accel/ivpu/ivpu_drv.h          |  1 +
 drivers/accel/ivpu/ivpu_hw.c           |  6 +++--
 drivers/gpu/drm/drm_gem_shmem_helper.c | 48 +++++++++++++++++++---------------
 drivers/gpu/drm/drm_syncobj.c          |  4 +--
 5 files changed, 41 insertions(+), 26 deletions(-)

--cwnmwkle24ojkev6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCacTdmgAKCRAnX84Zoj2+
dg+wAX9OxIUCGifj+s86KPwDPO7VokI6o4YIxsIq4FaVEYDG06aP28ONJvOY16cE
S0H32/QBf2hW02MSDiCy3kCfkMqK7JklR835I6AxFwArcH9ET57QPYCbbbx3QxSz
hJCioCi4Cw==
=7e8m
-----END PGP SIGNATURE-----

--cwnmwkle24ojkev6--

