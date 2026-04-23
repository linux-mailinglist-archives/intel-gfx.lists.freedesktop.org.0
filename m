Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCmzMCyx6Wm4hgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 07:42:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F3144D501
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 07:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B4B10EAE7;
	Thu, 23 Apr 2026 05:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="CGmH9DCh";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="T7R5wMKI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577CA10EAE7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2026 05:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1776922917;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=im1Mdl348sFe/nlHqsRdHrLzuKk+QKDCsvoUlJwx48Q=;
 b=CGmH9DCh57AktOIiSxAI0rgJTJJVxHfpKefItOWBDsdDSOrnPta8eiVjmkeVL6yeCP3fSg
 Sf1ZhOHAphKRnBvPTeRDY+XzEOJ64uYCS3zl+X180UUX15+uVuLe49rvYkCnFaARARtgPW
 rQ33PwKyNApRXLnTV2pmxytaVFO/zyk=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-591-7kZbH7siM5GAjLeRJnVzDQ-1; Thu, 23 Apr 2026 01:41:53 -0400
X-MC-Unique: 7kZbH7siM5GAjLeRJnVzDQ-1
X-Mimecast-MFC-AGG-ID: 7kZbH7siM5GAjLeRJnVzDQ_1776922913
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-4891f97aef0so21971165e9.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2026 22:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1776922912; x=1777527712; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=im1Mdl348sFe/nlHqsRdHrLzuKk+QKDCsvoUlJwx48Q=;
 b=T7R5wMKIV6vAD8aFxSf2wLunoOjq9PvSy2vUd6Jzpq1bxvGRQL/OkGavt89Jb3D5fk
 2tm8GFvr1WR94wX7/kb5oHnTP5TgNBOd/7I5SO4AwFi47nJhOu0LOy1qehGAUUNHHTQG
 RJjo1QvNwjKBP8YFeT9krOzByxDg4/LvNlltEDJZOi6HQeBK/480/6RTFN+GPhc7tZId
 3KYuMLkExaxctd66ekFbNo6N6CrQ3JPIT+XsvNmvbxE3u827gd4Mr7P4QxYTdRNJX9bC
 ngf7B8I6cqMHfcXpfK/8RWxn7elCICNj38AD/JyIA2A8jk2R1RTbUhifgTb17ZRkiaz0
 zhTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776922912; x=1777527712;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=im1Mdl348sFe/nlHqsRdHrLzuKk+QKDCsvoUlJwx48Q=;
 b=i/EA1LqhRlyDdP37mfuZfoB4h+0pRTJkeVvYywkYzM8Zwl6SyzmfJku9tELnwyLLr+
 ryKYRDXSbSC6aEXiQYQbTezXjxOGjsfO9+15BKIquA3NYzuLLe3/WtsDos9YOJJTtvTV
 GqQGt2z+5YbS2Pr/ksoh8nGNxqxmTQ/3RkrfhYkDBZav0HKEyr9KTutcQklwBqzpv7tn
 vL2f1n/fmaSuyS4zNj7qawKPWK+BQBnYltxyGJKpSAEYFdu103t3JONOtXjfzMftZVGC
 riiKRTArP14EIZguj8NdHf2mpj1FxG0N9N0jpTceDr+zUgivd1wEj7KI+ddIsBcKsef6
 byKw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+SwqfmsSPOxXax4WwrH7g6KpNfKtJAO+oeIrIplWC4KSKFpyIaAubtaIPURPY1HPHQ91IiIzDUXvo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxAvJnvT4B9drrVh1Cg1A6xMHuCkTZj7kEwZVOZ0J0PmXsCh+JR
 QI9c5q8aD40ozZIO68B4sGhnfgw5lOj79RZ4O56te6GUxjItmwcfThNisOOMlilpXEoCk54Ux+Z
 y6s87GspvKx0SS5n71HxwUFIiOaC/iD2aQU/zH3/xeYrTXRVMP/cgRRaZjkMeEIyIJUur5g==
X-Gm-Gg: AeBDievMt8AePXWxDLAw5axj/+rBhngzeNb0b0RUcAVSJgcnEVxRP3fG0WrI/icGBds
 KE7PqDr5D3eOTulvhjYq3UrYXUg41wpi9O6sZVftvXTwD5FTKuvB/yE0SxvCOi56WBZ2UasGUjg
 aEt81ZYqmddjdVEaLADgNs8jf69YfM0Lf8vl5FLxil1bi+IhJ/41mKPBrVzdAvIoHgOHnTYcC+R
 ZbXY3jchszGM+nYM4kUlwe9PJPmmXWAohq1jUVLuNiInK86VIASMul/VcaejOQIZSHBlFOScTmv
 yKKQydgk9TUnJusVRlAP2/DDmGKj20q7SEepZR1bOd3iNoLifJ4U+BBF/3s5dRr5UVTT3Sbv1Ug
 iCtpCnIj5
X-Received: by 2002:a05:600c:c106:b0:489:1ba8:5be9 with SMTP id
 5b1f17b1804b1-4891ba85d07mr162132875e9.29.1776922912401; 
 Wed, 22 Apr 2026 22:41:52 -0700 (PDT)
X-Received: by 2002:a05:600c:c106:b0:489:1ba8:5be9 with SMTP id
 5b1f17b1804b1-4891ba85d07mr162132555e9.29.1776922911860; 
 Wed, 22 Apr 2026 22:41:51 -0700 (PDT)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488fb767961sm148312475e9.16.2026.04.22.22.41.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2026 22:41:51 -0700 (PDT)
Date: Thu, 23 Apr 2026 07:41:50 +0200
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
Message-ID: <20260423-realistic-eager-reindeer-4dacf7@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="swzqgswgrxkw3gj3"
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 76F3144D501
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--swzqgswgrxkw3gj3
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-fixes
MIME-Version: 1.0

Hi Sima, Dave,

Here's this week drm-misc-fixes PR.

Please not that the last commit (2fc87d37be1b) has a missing link and
creates a dim warning.

Maxime

drm-misc-fixes-2026-04-23:
This week in drm-misc-fixes, we have:
- A patch to raise the vblank timeout to avoid it on virtual drivers
- a state check fix for stm_lvds
- a use-after-free fix for dma-buf
- a mapping fix for panthor
- a device_node reference leak fix for arcgpu
- a bridge reference leak fix for dw-mipi-dsi
- a sparse warning fix for dma-fence
- a kconfig fix for hv
- a memory leak fix for nouveau
- a fix to duplicate colorop when duplicating states
- a panel initialisation order fix for visionox-rm69299
- a fix to prevent an infinite loop for v3d
- an overflow fix for nouveau
The following changes since commit 857fa8f2a5b184c206c703a3d9ce05cea683cfed:

  accel: ethosu: Add hardware dependency hint (2026-04-02 15:18:14 -0500)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-20=
26-04-23

for you to fetch changes up to 2fc87d37be1b730a149b035f9375fdb8cc5333a5:

  drm/nouveau: fix u32 overflow in pushbuf reloc bounds check (2026-04-20 2=
1:23:14 +0200)

----------------------------------------------------------------
This week in drm-misc-fixes, we have:
- A patch to raise the vblank timeout to avoid it on virtual drivers
- a state check fix for stm_lvds
- a use-after-free fix for dma-buf
- a mapping fix for panthor
- a device_node reference leak fix for arcgpu
- a bridge reference leak fix for dw-mipi-dsi
- a sparse warning fix for dma-fence
- a kconfig fix for hv
- a memory leak fix for nouveau
- a fix to duplicate colorop when duplicating states
- a panel initialisation order fix for visionox-rm69299
- a fix to prevent an infinite loop for v3d
- an overflow fix for nouveau

----------------------------------------------------------------
Adri=E1n Larumbe (2):
      drm/panthor: Extend VM locked region for remap case to be a superset
      drm/panthor: Fix outdated function documentation

Andi Shyti (1):
      dma-buf: fix UAF in dma_buf_put() tracepoint

Ashutosh Desai (1):
      drm/v3d: Reject empty multisync extension to prevent infinite loop

David Carlier (1):
      drm/nouveau: fix nvkm_device leak on aperture removal failure

Greg Kroah-Hartman (1):
      drm/nouveau: fix u32 overflow in pushbuf reloc bounds check

Guido G=FCnther (1):
      drm/panel: visionox-rm69299: Make use of prepare_prev_first

Luca Ceresoli (1):
      drm/arcpgu: fix device node leak

Marek Vasut (1):
      drm/bridge: stm_lvds: Do not fail atomic_check on disabled connector

Melissa Wen (1):
      drm/drm_atomic: duplicate colorop states if plane color pipeline in u=
se

Osama Abdelkader (1):
      drm/bridge: dw-mipi-dsi: Fix bridge leak when host attach fails

Thomas Zimmermann (2):
      drm/atomic: Increase timeout in drm_atomic_helper_wait_for_vblanks()
      hv: Select CONFIG_SYSFB only for CONFIG_HYPERV_VMBUS

Tvrtko Ursulin (1):
      dma-fence: Silence sparse warning in dma_fence_describe

Yongbang Shi (1):
      MAINTAINERS: split hisilicon maintenance and add Yongbang Shi for hib=
mc-drm matainers

 MAINTAINERS                                    | 13 ++++++++++---
 drivers/dma-buf/dma-buf.c                      |  3 +--
 drivers/dma-buf/dma-fence.c                    |  4 ++--
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c  |  6 +++++-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c |  6 +++++-
 drivers/gpu/drm/drm_atomic_helper.c            | 14 +++++++++++++-
 drivers/gpu/drm/nouveau/nouveau_drm.c          |  2 +-
 drivers/gpu/drm/nouveau/nouveau_gem.c          |  2 +-
 drivers/gpu/drm/panel/panel-visionox-rm69299.c |  2 ++
 drivers/gpu/drm/panthor/panthor_gem.c          |  2 +-
 drivers/gpu/drm/panthor/panthor_mmu.c          | 19 +++++++++++++++++++
 drivers/gpu/drm/stm/lvds.c                     |  6 +++---
 drivers/gpu/drm/tiny/arcpgu.c                  |  3 ++-
 drivers/gpu/drm/v3d/v3d_submit.c               |  5 +++++
 drivers/hv/Kconfig                             |  2 +-
 include/drm/drm_atomic.h                       |  3 ++-
 16 files changed, 73 insertions(+), 19 deletions(-)

--swzqgswgrxkw3gj3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaemxHgAKCRAnX84Zoj2+
dlsIAX9sodnjELE5YmNVL7DybjaekNLOGtKOJzfl6/eK7+uS8pRI8EbgnRAO2ljb
drSc1XsBfjyJa7q+5VqLjoptvmH3siWEekHEEhjTljt9uxlOgl/WWM11WrEtgRFH
vlvEGOO2eg==
=i8kY
-----END PGP SIGNATURE-----

--swzqgswgrxkw3gj3--

