Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8H6hJi8gzmnElAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 09:52:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0729D385739
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 09:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A29710F13A;
	Thu,  2 Apr 2026 07:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="IKiVop3z";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="WynND31R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC4010F13A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2026 07:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1775116331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=FvsWPlqmbOTslEl+opiYN/LrLejN3naTFWYzUkcHCYw=;
 b=IKiVop3zZ1bdjDsgorGSeiumpWPPGSe20M+MsqjwbLCdWdG+AvGni/6hcCiBg5knaMB7VL
 GT+5iM8fSgUoatEWLem6sGDVBiMx4okZI+UeNvz9CnKiuH/Xh1rsMpmubA3ztsyLAFEcS4
 7QueTgUjZGsfyNWdBF14LARFYFyiqL8=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-255-0k5-UtjPNbmPRayCIdKWTg-1; Thu, 02 Apr 2026 03:52:07 -0400
X-MC-Unique: 0k5-UtjPNbmPRayCIdKWTg-1
X-Mimecast-MFC-AGG-ID: 0k5-UtjPNbmPRayCIdKWTg_1775116326
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-43d022974acso594466f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Apr 2026 00:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1775116326; x=1775721126; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=FvsWPlqmbOTslEl+opiYN/LrLejN3naTFWYzUkcHCYw=;
 b=WynND31RCCyyikLYjl98lr2p3hdX0011GvZwsl8AlGyfKwGvrxwySYObol+o8/f11l
 wvcF/i7YVEBYeWfKceDRtsDbKAA0qfBctaz2apY3RrpEXJSqPqCDi4xClI0CuoRnztLF
 A8fDgTGLi0YWXZSmZqYQdbrXYCx/YspfnoqA3CzwPKdXFT+FuIq7ewH6Hs6PzHGAixS3
 qZUOhOGJlSdSXeE3kgjcXLKMP/g1zZxlYyQ/8p3D0TjdNGUyfNAkgq7FxCtYHYf8k7PD
 kKx7g/zjprON24leDJ8zixLwFLHg8FiNWHYeJBq933n35iPK0tc5Jz13TZK13mPRBzDr
 pXbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775116326; x=1775721126;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FvsWPlqmbOTslEl+opiYN/LrLejN3naTFWYzUkcHCYw=;
 b=ldlzbz9bc7dBCDNjk2uYS7mlYfKMo7HMi2ssGKLHhsY9OjkUPluc5uuh9psg3UUNop
 tMj7UdWHLmUBkvepuEHj1mupCjtzb/7qxOFk6xOr/53VfxOm7trqZBh78vYVCC3bVFv1
 ao/b12yA+uYdAV/qygONCkdQK7CzY67tIw812XIsiJ/FDSDc/iS5wBaXaxbMASPRaG7P
 i33YMuVyhYscLJ54t/jpR1rdSEB4rHhGvDtxfjGai6b3O0nhZFPVFx7v2v7n1EsEyj0h
 w0QKL1lEQM2ZHzyW0RFjgyrAfigvrBkoAVY+yR0aHxmi9+b824T7H1prfuGcfKJtGBr1
 wNkg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6sREOBPF+cUOKpFcpI1dKruB3YU79TxS0Csi0wIgRBtG3e9F8jYXc+AH94tmHtumv5ZcrO5lRKLU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxkBBuEvIBbHXHK+LWazBXFL0ZCpuoznZm8grN8/fy4g83iEPKZ
 /d/h2L6jfMgvtaix44K9QUYesPFDyDULTy80u0kTFwBRzDciAbB6TWQ5vojVXN1z6vL62mSB6LC
 teu0KkodOPUkgiDhR8+0gMUJscF8bwyb0EKxudOazN54FG03h3sSRZmAHegAogb8tDP7kDw==
X-Gm-Gg: ATEYQzyP1+tLX4m4jT3cV8iDq3q8wBBElpjH6wVZnWGXIOxcmjnbDq+GMdw+N9RlI9Y
 kIDOuXDGdoV3zt7pBqM/6sM/U8fEtJ59lsHdze8U7kTf/mu36RNlEZS/Lu0t3kdkajVQj+O3yPP
 C1Y+K3+cQCSCH7zGiGTMm5rYxenqgPFjCDf14TKpoan4wySlzTT9oQeIY1xPyt/z9pLSkhKV8Di
 lJj3FmLuBSicfQbjXyvJn+Mj2crgvLMyi28L8nvs0ZhiBhCgF4ZtYueCN740DDe3V4zDUtq7RLS
 TsZknkUwVy+lOYUL4m3tvBjEHAYQzKp5CzkSeZluYOJG/e72HhdeF/8YbAysI5dlbiV4+wqDRA=
 =
X-Received: by 2002:a05:6000:144f:b0:43d:b0f:eb44 with SMTP id
 ffacd0b85a97d-43d15057f18mr12783649f8f.15.1775116326228; 
 Thu, 02 Apr 2026 00:52:06 -0700 (PDT)
X-Received: by 2002:a05:6000:144f:b0:43d:b0f:eb44 with SMTP id
 ffacd0b85a97d-43d15057f18mr12783605f8f.15.1775116325690; 
 Thu, 02 Apr 2026 00:52:05 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d1e4f1a99sm6565398f8f.32.2026.04.02.00.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2026 00:52:05 -0700 (PDT)
Date: Thu, 2 Apr 2026 09:52:04 +0200
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
Message-ID: <20260402-vivid-perfect-caiman-ca055e@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="mw3d5nnhrpwvh64u"
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0729D385739
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--mw3d5nnhrpwvh64u
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR.

Maxime

drm-misc-fixes-2026-04-02:
A refcounting fix for bridges, revert a previous framebuffer
use-after-free fix that turned out to be causing more problems, a hang
fix for qaic, an initialization fix for ast, a error handling fix for
sysfb, and a speculation fix for drm_compat_ioctl.
The following changes since commit 87a70013be7d1b96e7e160aea6dad4564b459868:

  MAINTAINERS: Update GPU driver maintainer information (2026-03-25 15:10:30 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-04-02

for you to fetch changes up to f8995c2df519f382525ca4bc90553ad2ec611067:

  drm/ioc32: stop speculation on the drm_compat_ioctl path (2026-04-02 08:24:55 +0200)

----------------------------------------------------------------
A refcounting fix for bridges, revert a previous framebuffer
use-after-free fix that turned out to be causing more problems, a hang
fix for qaic, an initialization fix for ast, a error handling fix for
sysfb, and a speculation fix for drm_compat_ioctl.

----------------------------------------------------------------
Chen Ni (1):
      drm/sysfb: Fix efidrm error handling and memory type mismatch

Greg Kroah-Hartman (1):
      drm/ioc32: stop speculation on the drm_compat_ioctl path

Liu Ying (1):
      drm/bridge: Fix refcount shown via debugfs for encoder_bridges_show()

Maarten Lankhorst (1):
      Revert "drm: Fix use-after-free on framebuffers and property blobs when calling drm_dev_unplug"

Thomas Zimmermann (1):
      drm/ast: dp501: Fix initialization of SCU2C

Youssef Samir (1):
      accel/qaic: Handle DBC deactivation if the owner went away

 drivers/accel/qaic/qaic_control.c | 47 +++++++++++++++++++++++++++++++++++++--
 drivers/gpu/drm/ast/ast_dp501.c   |  2 +-
 drivers/gpu/drm/drm_bridge.c      | 16 ++++++++-----
 drivers/gpu/drm/drm_file.c        |  5 +----
 drivers/gpu/drm/drm_ioc32.c       |  2 ++
 drivers/gpu/drm/drm_mode_config.c |  9 +++-----
 drivers/gpu/drm/sysfb/efidrm.c    | 46 +++++++++++++++++++++++++-------------
 7 files changed, 94 insertions(+), 33 deletions(-)

--mw3d5nnhrpwvh64u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCac4gJAAKCRAnX84Zoj2+
drPOAYCqO9KtSnn4c37r7FPdKUuXVaBPscaFo4b+iSzTYSpLAaH1vnacCPeOqY7W
bdUCSqEBgJBBw1sI//uYcm35XvKjQvF4ePb1wi2bX6/+Gt9r3rj1klHnfFHKzoA0
1fmVo5SmOw==
=tHr/
-----END PGP SIGNATURE-----

--mw3d5nnhrpwvh64u--

