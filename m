Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BUmDn19hGl/3AMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 12:22:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4B5F1D04
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 12:22:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C163D10E86A;
	Thu,  5 Feb 2026 11:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="aRn3s2ib";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="oZOGtSUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6236E10E867
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Feb 2026 11:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1770290551;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=PtoeRjJPoKPjVJ+o8aSXahjNNCmAGeSluGEium8wMe0=;
 b=aRn3s2ibcPTRPXGKFpDI4463VcBtzvffjBeTe4UK3Z2TkIGw9OWidPtkq1yMFHmTq5Mq8P
 +JVbJ/bF1HBv1K+t/8czL7Ku3IG1ea5CdYgNdveds3RR7pqCDiB8RrDcePl86FG7pVwKD2
 dOAhG2u/0aEwWNC3D5JOwTfOUrPR7NI=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-604-i3OOt2pYN5SaysKvEt91aA-1; Thu, 05 Feb 2026 06:22:27 -0500
X-MC-Unique: i3OOt2pYN5SaysKvEt91aA-1
X-Mimecast-MFC-AGG-ID: i3OOt2pYN5SaysKvEt91aA_1770290546
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-43624564fc9so356905f8f.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Feb 2026 03:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1770290546; x=1770895346; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PtoeRjJPoKPjVJ+o8aSXahjNNCmAGeSluGEium8wMe0=;
 b=oZOGtSURXHzoWajFEvwZgpKivgJ4wKQwpLmPg3+xZV5BAw70e8qb5T/jduBxXtTyfa
 1U6NvjyHV5HoM2ATTFlex0yynR+ohbSjhRbgwVnqR0bYofBAo1H2i2bdParlmXq7wRfM
 sAbW6T3s/GNmr1tML6DqL09XXt9bH3wpV+9pZ4twb8rxp3AIxnBXXUNxQQ8E+iJ0RIGT
 HKxBLxUAdg/TAPbXMt0a1eU9WPHtzoA209agQ+FcYJTl+u8fbKjvvqnUYUohfP8pkcO6
 z+TIG1LXE3VQozgrlhCp0eEXXxCN3jnZWyZxkbCM27Q0tr9oz2Uw6sepaJz784MwkejZ
 jMPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770290546; x=1770895346;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PtoeRjJPoKPjVJ+o8aSXahjNNCmAGeSluGEium8wMe0=;
 b=eOJ45KWdAu7CVKnsqT/fyoinLnBQ69zNOsDSqxPFAAKlQnWmosb0JvSK3KrccKJN1t
 AHIM4une0jH681Eh7XFYBdqxbTYFf8SZNUWj8i7dL6CDRZ7xXE8jkqhpaSwLJ9nI1ddj
 3ysP8QvJhK83vgBzDOr1Cwg+nVdH8AN/qz5nqxcys+f1/twSbP64EMK9ZHuYia0W9qr1
 tUpGS+cQJHArAELATYSQzNhff6Ihk4cOYZ18p0o6BbIEkc8peiZT7ZnwqK68xcYv67jS
 faFRv/TqiKHIU+YiL/hA4Rij9LzAlGzVTt3ev3PF1n8iq0ygLtIKrYUM7+g1s8ZOTl7W
 vBLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCURikrwUbMnkHTtxEG1a2g07saoe5uYra6XNln/X+cgiJzh4BXWEq7XPhaDg0QX5QvT82zgg43sd3k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyawsEmOD6WV8Cui9SYCB5Qwa5qXHQ08fImsOvZzrb92XkSN0e9
 XWEGZsxvadf7QDLEUcflbKQerSLAUFeTub3BD960tv0GYGC8RcBmelCZ0vcL3GmI6znG3rrZs7Q
 vm7JzcAd5SUY9fL+FBCoaaSZ6yQuzdUKE7XdT0VsntLWtBNjVTSU0PyyLlomT29Iy+Do7Gw==
X-Gm-Gg: AZuq6aIwlzE1NYLi7OYQ8p4zfyyE8Pk5WB97nPokm0WUGBxLeFn5CYsPRDqwW1dFEjL
 EPE87h9qm0ED7t2kjU+EYH0VaauSH16kIsoMpg4ShwLmq2JMb762SJwI1xAP1gKado2pYMQxhdW
 aJDU6Tb4ovHmVx1sF+WDkcN0g3xI5ATQceMBDDbn5xRAk+3IC2FXxO/IbB7AfieqhdlY4oc5D3u
 Klu83ACSDoNHieZnntXjVSyGMxm+cmFyKDgzFkZxl0E5ka2/9DpElBW0fCqaxNwHmC58CNq92dO
 KbrGduFPjzE/Yi/kn0hPi1ViigMrwGWMiP+Ls7BM/HD5l6HadL44dv2hiRSuWQ==
X-Received: by 2002:a05:6000:2909:b0:430:ff81:2961 with SMTP id
 ffacd0b85a97d-4361805d057mr9636936f8f.51.1770290546062; 
 Thu, 05 Feb 2026 03:22:26 -0800 (PST)
X-Received: by 2002:a05:6000:2909:b0:430:ff81:2961 with SMTP id
 ffacd0b85a97d-4361805d057mr9636872f8f.51.1770290545520; 
 Thu, 05 Feb 2026 03:22:25 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43617e38ec5sm14063139f8f.14.2026.02.05.03.22.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Feb 2026 03:22:24 -0800 (PST)
Date: Thu, 5 Feb 2026 12:22:24 +0100
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
Subject: [PULL] drm-misc-next-fixes
Message-ID: <20260205-refreshing-natural-vole-4c73af@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="ow64eandfwfxuszq"
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: AF4B5F1D04
X-Rspamd-Action: no action


--ow64eandfwfxuszq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: [PULL] drm-misc-next-fixes
MIME-Version: 1.0

Hi Dave, Sima,

Here's this week drm-misc-next-fixes PR.

Maxime

drm-misc-next-fixes-2026-02-05:
Several fixes for amdxdna around PM handling, error reporting and
memory safety, a compilation fix for ilitek-ili9882t, a NULL pointer
dereference fix for imx8qxp-pixel-combiner and several PTE fixes for
nouveau
The following changes since commit db7e7ea838c916ee4cdf26bee126fd36f58295dc:

  drm/bridge: imx8qxp-pxl2dpi: Fix NULL pointer dereference in imx8qxp_pxl2dpi_bridge_destroy() (2026-01-27 12:22:22 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2026-02-05

for you to fetch changes up to 69674c1c704c0199ca7a3947f3cdcd575973175d:

  accel/amdxdna: Move RPM resume into job run function (2026-02-04 13:08:48 -0800)

----------------------------------------------------------------
Several fixes for amdxdna around PM handling, error reporting and
memory safety, a compilation fix for ilitek-ili9882t, a NULL pointer
dereference fix for imx8qxp-pixel-combiner and several PTE fixes for
nouveau

----------------------------------------------------------------
Dave Airlie (3):
      nouveau/vmm: rewrite pte tracker using a struct and bitfields.
      nouveau/vmm: increase size of vmm pte tracker struct to u32 (v2)
      nouveau/vmm: start tracking if the LPT PTE is valid. (v6)

Liu Ying (1):
      drm/bridge: imx8qxp-pixel-combiner: Fix bailout for imx8qxp_pc_bridge_probe()

Lizhi Hou (6):
      accel/amdxdna: Hold mm structure across iommu_sva_unbind_device()
      accel/amdxdna: Stop job scheduling across aie2_release_resource()
      accel/amdxdna: Remove hardware context status
      accel/amdxdna: Fix incorrect error code returned for failed chain command
      accel/amdxdna: Fix incorrect DPM level after suspend/resume
      accel/amdxdna: Move RPM resume into job run function

Nathan Chancellor (1):
      drm/panel: ilitek-ili9882t: Remove duplicate initializers in tianma_il79900a_dsc

Zishun Yi (1):
      accel/amdxdna: Fix memory leak in amdxdna_ubuf_map

 drivers/accel/amdxdna/aie2_ctx.c                   | 48 +++++--------
 drivers/accel/amdxdna/aie2_message.c               |  3 +
 drivers/accel/amdxdna/aie2_pm.c                    |  3 +
 drivers/accel/amdxdna/aie2_smu.c                   |  2 -
 drivers/accel/amdxdna/amdxdna_ctx.h                |  5 --
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |  3 +
 drivers/accel/amdxdna/amdxdna_pci_drv.h            |  1 +
 drivers/accel/amdxdna/amdxdna_ubuf.c               | 10 ++-
 .../gpu/drm/bridge/imx/imx8qxp-pixel-combiner.c    |  2 +-
 drivers/gpu/drm/nouveau/nouveau_drv.h              |  4 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c      | 82 ++++++++++++++--------
 drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.h      | 16 +++--
 drivers/gpu/drm/panel/panel-ilitek-ili9882t.c      |  4 --
 13 files changed, 103 insertions(+), 80 deletions(-)

--ow64eandfwfxuszq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaYR9bwAKCRAnX84Zoj2+
dpccAYC3hibmSRRvXuB0MgqO2qrGhihntcn/vNIF9FTLWdoMiuza11H9Sf2enr/p
64XqztsBgPiWWrzdmLtzUQcMzU815Y5DRYJA8zfX+7f/fPe+Q1JI5/uHqLDwpRZO
1SiTu+ZY6Q==
=rkc7
-----END PGP SIGNATURE-----

--ow64eandfwfxuszq--

