Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGGhMhxg12noNAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:15:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1163C79B3
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CAC10E76D;
	Thu,  9 Apr 2026 08:15:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="HAXYGnzN";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="DL5Ht5qp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BAC010E76E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 08:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1775722520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=cgrA7bBT8ZXCQqWY+bO1JlCg1Ecm798GETsxCdNk+V4=;
 b=HAXYGnzN1jmlSW8Q8yZSRhphJLwq6JZYUuyb+64tqlqxQeZi//T78nfGc55WSrh+y/fN7T
 5nIYHhtRNkz3SdxDuX4huye8L3V/tHvoOXgIK5hOSA/tqtOWthb0cY0tqEOlgUzWHXjoCU
 SMTJDY9I7ylTnz9XYYYZ4/UL/5vnJ6w=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-564-VZhrTRarNniCLf5IN0Khag-1; Thu, 09 Apr 2026 04:15:18 -0400
X-MC-Unique: VZhrTRarNniCLf5IN0Khag-1
X-Mimecast-MFC-AGG-ID: VZhrTRarNniCLf5IN0Khag_1775722517
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-48378df3469so3677585e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 01:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1775722517; x=1776327317; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cgrA7bBT8ZXCQqWY+bO1JlCg1Ecm798GETsxCdNk+V4=;
 b=DL5Ht5qpgzhCKvaQvy2rYKJQKgmZOQrfrdg+yGc90z6upgyrSnO84xj2GzQCeei4eV
 CPTStztFqwAf9f+91FKgLTMmRq/ZgfaqbI5HLUixA27iVVcDbORnBEwmgoRTTtBnbR8Z
 g1D1I6NAJmEl9B0YIGL/Hok+hbOowSOrnoZtT7ATCYzk3OrMhoORgbNDeFf0ne1R3moI
 99f/nrfzZsPC1EVLCHge7I1Vjl7wnHtruIsGuj4oIVtrg2nLi7pWw71KcFdgWjk8R8rA
 39xG0hErPqX3G7KagLZgDgCeoGGSU/CnXOx4kTakhPbqXEV3XpD/vES2wt0xjnFkGr8J
 UD7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775722517; x=1776327317;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cgrA7bBT8ZXCQqWY+bO1JlCg1Ecm798GETsxCdNk+V4=;
 b=BGPUd9sVy0CetJIhSafffWf2NDCGR0P2zcGg+PERhOC6+3bPz1sYFVsJ6D8ZDIyiR/
 xs7pJQN91iasv8yw9PvjqIwm4khAWazMBknmx0pIAbtcyGj9NqowUVPDGWt0fEjbrnX9
 fkPzVjYJke6DnpTFh2fl0nePJL2Lv1XJcGfV7V6LlXisvA/G8njh2L3Q3+OpUk06aAb2
 NHFt+h/56OkDNIGo65OqpaG2CTImKdb2ZLKU/1sWWhhB4uX4i6yJqpfYAtwnql8FT1nw
 kQ+99I/vLWn8HbuBJ9O/GfGAyzXqcHtCd5gP6IeGWK1w4Zpq+CJEvjP8mT8hfVkieQev
 rDsg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVF1o6+csigL2MtWRcZjNtypHGiBSs+YSvZ2IKujTxn0Kf+OZu20Yjw/eFBcBKtwmSpfuPzv1doP/g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzUkcXn7ZT/yWbGP5qE/BwOSVl5zuLWpLD7Jy/zgtN48iYUsquD
 R/IQQuId07InWd6O2ccylufOsDF6PSpzrICPLT0vGqxiFQKCuqJyFs6jsTbLPZa6voRfwxHVW2W
 hL1XsmTVqMtUePq8p1rLfa4eEuaYc/+29RSYdFYdom/sFmhxPmqlHt89TYBnNH9wGxZWnlA==
X-Gm-Gg: AeBDiev4C2SfmCaGDYVOkA0YvqkHU6rU659mcQvVJjJXFb9RjaLkxKoVYRtQXeZNG19
 z8w8hNKnIi2fLvqjg9x199rdAmxYvfRJc1TiC33jPE9bRRN9pNr5tRTluIa9pWZHMtzD7KSvChM
 VMEUVxr3arUWno44HicbxBMUJceU0qfQF6XoyIwq6teOMTqT1Hry5KY3V4sMEDrOT8GfPHIptMW
 rRC6L4TvW9uVJrJO/vOvG4oOP5dwl8mlz37/lCqOB+LqvpRVk4pTe0s7VKTt8pbwtX0eBpwtSQF
 05u9q8edEo9i/WgvttWg4f/O/twXFfMPRllOuv3yLOLi6L9GM2oQfiLhCfSXQj06YZGLyt4tbTq
 VsPlUPxANCUb3j6py
X-Received: by 2002:a05:600c:c087:b0:485:3c2e:60d5 with SMTP id
 5b1f17b1804b1-488cd50f45dmr21727375e9.2.1775722516985; 
 Thu, 09 Apr 2026 01:15:16 -0700 (PDT)
X-Received: by 2002:a05:600c:c087:b0:485:3c2e:60d5 with SMTP id
 5b1f17b1804b1-488cd50f45dmr21726855e9.2.1775722516410; 
 Thu, 09 Apr 2026 01:15:16 -0700 (PDT)
Received: from localhost ([37.221.85.123]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488cd2492e8sm54399245e9.15.2026.04.09.01.15.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2026 01:15:15 -0700 (PDT)
Date: Thu, 9 Apr 2026 10:15:10 +0200
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
Message-ID: <20260409-omniscient-tomato-coucal-edbadc@penduick>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="zyi5rrtfb4irsvwy"
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
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 2D1163C79B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--zyi5rrtfb4irsvwy
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi,

Here's this week drm-misc-fixes PR.

Maxime

drm-misc-fixes-2026-04-09:
Several fixes for v3d about memory leak, runtime PM, and locking, and a
Kconfig improvement for ethosu.
The following changes since commit f8995c2df519f382525ca4bc90553ad2ec611067:

  drm/ioc32: stop speculation on the drm_compat_ioctl path (2026-04-02 08:2=
4:55 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-20=
26-04-09

for you to fetch changes up to 857fa8f2a5b184c206c703a3d9ce05cea683cfed:

  accel: ethosu: Add hardware dependency hint (2026-04-02 15:18:14 -0500)

----------------------------------------------------------------
Several fixes for v3d about memory leak, runtime PM, and locking, and a
Kconfig improvement for ethosu.

----------------------------------------------------------------
Jean Delvare (1):
      accel: ethosu: Add hardware dependency hint

Ma=EDra Canal (4):
      drm/vc4: Release runtime PM reference after binding V3D
      drm/vc4: Fix memory leak of BO array in hang state
      drm/vc4: Fix a memory leak in hang state error path
      drm/vc4: Protect madv read in vc4_gem_object_mmap() with madv_lock

 drivers/accel/ethosu/Kconfig  |  1 +
 drivers/gpu/drm/vc4/vc4_bo.c  |  3 +++
 drivers/gpu/drm/vc4/vc4_gem.c | 19 +++++++++++--------
 drivers/gpu/drm/vc4/vc4_v3d.c |  1 +
 4 files changed, 16 insertions(+), 8 deletions(-)

--zyi5rrtfb4irsvwy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaddgDQAKCRAnX84Zoj2+
dq+8AX9h1JYGdlhW52Zj4EWdoRxaJBWxFCZNyc2xQBtzzr6NTN0KeIhc8MqhmQND
y5WSyc8BfjOYEMehb2BhpAw/A0qZZRSRQKeXskcw87pwZN0wPA1CLGL2lEl4E/RP
Hy3M+KMS/w==
=ebgs
-----END PGP SIGNATURE-----

--zyi5rrtfb4irsvwy--

