Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IhhLO8qET2qeigIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:23:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AC6730456
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:23:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=AgksuMgF;
	dkim=pass header.d=redhat.com header.s=google header.b=LurRybuz;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5D510F4ED;
	Thu,  9 Jul 2026 11:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DBE10F4ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2026 11:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1783596229;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=iqvuaXf4vG1HDX5Z90yA08BrpKhvZyMNlr2mnXXfO0Q=;
 b=AgksuMgFVCtCSnN5py1wIvaaJvVy5jMNyJ3+2DjWLPMnSw6TeBnMmB+XofH5t5eKYP6ft2
 5wTb/WnQxPOblSOdpjLnbLXuqWREXeklP5TYkrg/fv6mOszjvPOMi/oewPcvT48eMrtU+I
 WONDyShzhtoJVtdBC6NymomLyhE9W9o=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-140-FlzT-JeKOG-fBUUo9-_Sjg-1; Thu, 09 Jul 2026 07:23:46 -0400
X-MC-Unique: FlzT-JeKOG-fBUUo9-_Sjg-1
X-Mimecast-MFC-AGG-ID: FlzT-JeKOG-fBUUo9-_Sjg_1783596225
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-492488f8583so9195675e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2026 04:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1783596225; x=1784201025; darn=lists.freedesktop.org;
 h=content-disposition:content-type:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to
 :content-type; bh=iqvuaXf4vG1HDX5Z90yA08BrpKhvZyMNlr2mnXXfO0Q=;
 b=LurRybuzAKoazKPKtuvTQoK2qo2A5xgpsd9E5vlbTu5Zh3C9B1ZCIFhISEfF48bwYf
 9Dt/14RETzzfA57cDJJ1KSJUI+5Qr/gmgdw7pTW/UeQtiHtg2XX8d57VIK7pMKgRLkJJ
 tCZY5mznsNnzdXLFs0+EDhuE3uc6SJIxWysE0BjEa0mjPrh/sUFjPEEyRxgom9u63pst
 /Ga4twJ19+XG4ZUNI5zB0+povlQdT2M38Jlmzz4o6B2vQK9wlO4NFJacGeo9E1nuxRBA
 fCp5h96QQLTMjPV6Wou4/rz4KTIyA4uwlJ/zW961hrgQRvWJgtYOkN3E5zQPpBvRPiVT
 Mmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783596225; x=1784201025;
 h=content-disposition:content-type:mime-version:message-id:subject:cc
 :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=iqvuaXf4vG1HDX5Z90yA08BrpKhvZyMNlr2mnXXfO0Q=;
 b=TMxPeYOEg9UHSShy6FYgftJLeqzoOdfaf5yzu7CnTEIRSH/qbS7cOPH+dnFGexPbuM
 e+/WyYjPpxoDrxwKbqULETSWdJhNUetMSQECgB4xcUph6DbTlnlRdcSccYz4uDl966sf
 7LyX+MFM+BqYNMhdSSjItCz8E6fApZIZHCba1k9dziU6sHxQCLAC28SXi9aeUHh104hs
 VfajIYeAJOuXd9sO6DUstyqwKPCQQpk0+pl1XCLJL2qSdgFYd+PeSp9ksFArNQRs8a6E
 XHCdGFW6BPQLI8556g42vJPhbSMdHmJuVnl9nGd7NhIzzDvl0GBnKWG5nZjqeQQ82/ND
 ELMQ==
X-Forwarded-Encrypted: i=1;
 AHgh+Rr/6r8B0WWyCZz2RADmkQKB0keQ8lXvs1nRDKj8RXO5KeM/5DYTJiU3QFMpeBYU5YO2Q+Ujk2oAbWg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxFezAlOst2J1j0aUSOiybQHfaRBOnsn1JTRBeO6uCvyzynGvLl
 O9Wz2ewjlQog4Tjf4LFA+OHAy+TIEzQcmMBQwZ5yG8lBAQ78AKD0yuaTzzx82i+0GvYro80viFS
 G8z67mDgyN8UaCxwznDASBhmBqzUes5ckJiI0CYilnPUlrDWvEnX6BFhekl6UInuSrMe4yA==
X-Gm-Gg: AfdE7ck1XeI8yD71CzHHzsgD88g1wLeW1h3ljbY0wH6bkgogxKu3iYuclLqiqsJY+Rc
 6feRjCFmIKKSxphReYhdYRSWKd6Q+MZTgcv2bhhnufaOyrzgeSJPS8sk0i/8Uh8+y/SDM+MlJZX
 TFBWTqqabNgFWc6gDJsYtrHaCfr9GQdTHNCVodIIhhUYfSg9X7AHdBxncKC0p0itq0u3MzRfLMG
 PMI30hTtnpUbtp3ltpARG2Fx78HklfSycyO2k35618kLLnHlsbwKHPy9JZuMhuE+TRjI4U9Gq7W
 A69eoY+F/TWX/LLujI4dMwIAPgGaKwFPEtUMIeTfYc2AxJWhmE4fO22Y1M4H3rG411xaKu1Z+qq
 oww2xeCTw
X-Received: by 2002:a05:600c:5394:b0:493:ece1:86b9 with SMTP id
 5b1f17b1804b1-493ed949ffemr18412395e9.8.1783596224456; 
 Thu, 09 Jul 2026 04:23:44 -0700 (PDT)
X-Received: by 2002:a05:600c:5394:b0:493:ece1:86b9 with SMTP id
 5b1f17b1804b1-493ed949ffemr18411995e9.8.1783596223959; 
 Thu, 09 Jul 2026 04:23:43 -0700 (PDT)
Received: from localhost ([2a01:e0a:a99:9822:ca7f:54ff:fe01:374c])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493e5a58853sm104845375e9.1.2026.07.09.04.23.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jul 2026 04:23:43 -0700 (PDT)
Date: Thu, 9 Jul 2026 13:23:42 +0200
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
Subject: [PULL] drm-misc-next
Message-ID: <20260709-calm-ibis-of-storm-4aefe4@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="g3d2ia2nlmjl6uj4"
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.91 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER(0.00)[mripard@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[houat:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97AC6730456


--g3d2ia2nlmjl6uj4
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-next
MIME-Version: 1.0

Hi Dave, Sima,

Here's this week drm-misc-next PR. The diffstat still looks scary
because the previous MRs haven't been merged yet, but this week has
actually been pretty quiet.

Thanks!
Maxime

drm-misc-next-2026-07-09:
drm-misc-next for 7.3:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
- Switch to kmalloc_objs where relevant
- Create drm_of_get_panel_orientation(), and switch to it where relevant

Driver Changes:

- rockchip: Switch away from simple helpers
- rocket: error handling and null pointer dereference fixes
- ssd130x: Addressing fixes
- sun4i: Switch away from simple helpers, refcount fix
- v3d: validate CPU-job query writes boundaries, misc perfmon fixes

- bridges:
  - analogix_dp: Switch to DP link training helpers

- panels:
  - visionox-vtdr6130: Enable DSC
  - New panels: Ilitek ILI7807S, Renesas R63419, MNE001BS6-2, MNF601BS4-1
The following changes since commit 0461ba9a7994a9bfa2ceefe730e2c87759edc267:

  Merge tag 'amd-drm-next-7.3-2026-07-02' of https://gitlab.freedesktop.org=
/agd5f/linux into drm-next (2026-07-07 16:48:23 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-202=
6-07-09

for you to fetch changes up to 671b7825dbfe9ea6e3ad3001003aeee0df48d1b5:

  drm/v3d: bound CPU-job query writes to their destination BO (2026-07-08 0=
9:15:42 -0300)

----------------------------------------------------------------
drm-misc-next for 7.3:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
- Switch to kmalloc_objs where relevant
- Create drm_of_get_panel_orientation(), and switch to it where relevant

Driver Changes:

- rockchip: Switch away from simple helpers
- rocket: error handling and null pointer dereference fixes
- ssd130x: Addressing fixes
- sun4i: Switch away from simple helpers, refcount fix
- v3d: validate CPU-job query writes boundaries, misc perfmon fixes

- bridges:
  - analogix_dp: Switch to DP link training helpers

- panels:
  - visionox-vtdr6130: Enable DSC
  - New panels: Ilitek ILI7807S, Renesas R63419, MNE001BS6-2, MNF601BS4-1

----------------------------------------------------------------
Adri=E1n Larumbe (2):
      drm/gpuvm: Remove dead code
      drm/gpuvm: Fix comment to reflect remap operation operand status

Amit Barzilai (3):
      drm/ssd130x: fix column and row end address in partial updates for ss=
d132x
      drm/ssd130x: hoist column and row addresses out of repeated division
      drm/ssd130x: fix column and row end address in partial updates in ssd=
133x

Arpit Saini (2):
      dt-bindings: display: panel: add Ilitek ILI7807S panel controller
      drm/panel: add Ilitek ILI7807S panel driver

Cristian Ciocaltea (1):
      MAINTAINERS: Track dw-hdmi-qp under Rockchip DRM drivers

Damon Ding (1):
      drm/bridge: analogix_dp: Apply standard DP training delay helpers

Diogo Silva (2):
      drm/sun4i: Remove dependency on DRM simple helpers
      drm/rockchip: Remove dependency on DRM simple helpers

Haikun Zhou (1):
      drm/panel-edp: Support MNE001BS6-2 and MNF601BS4-1 edp panel

Jonathan Cavitt (2):
      drm/exec: Use kvmalloc_objs for exec->objects
      drm/syncobj: Use kmalloc_objs for chains

Jun Nie (1):
      drm/panel: Enable DSC for Visionox VTDR6130 panel

KancyJoe (1):
      drm: panel: add support for the Renesas R63419 based dual-DSI video m=
ode Display Panels

Ma=EDra Canal (3):
      drm/v3d: Refactor perfmon locking
      drm/v3d: Serialize jobs across queues when a perfmon is attached
      drm/v3d: Use write_to_buffer() helper in performance query copy

Michael Bommarito (1):
      drm/v3d: bound CPU-job query writes to their destination BO

Muhammad Bilal (1):
      accel/rocket: fix NULL dereference and integer overflow in rocket_job=
_push()

Neil Armstrong (2):
      dt-bindings: display: panel: document the Renesas R63419 based dual-D=
SI video mode Display Panels
      drm/panel: visionox-vtdr6130: switch to devm panel calls and drop rem=
ove

Philipp Stanner (1):
      drm/sched: Remove relic from entity docu

Shahyan Soltani (1):
      dma_buf: change unsigned int and int types into size_t

Shuvam Pandey (1):
      accel/rocket: initialize job domain before cleanup paths

Thierry Reding (1):
      drm/panel: Use drm_of_get_panel_orientation()

Thomas Zimmermann (3):
      Merge drm/drm-next into drm-misc-next
      drm/of: Implement drm_of_get_panel_orientation()
      drm/sysfb: simpledrm: Read panel orientation from DT node

Wentao Liang (1):
      drm/sun4i: fix refcount leak in sun4i_backend_init_sat()

ZhaoJinming (1):
      accel/rocket: Fix error path handling in rocket_job_run()

 .../bindings/display/panel/ilitek,ili7807s.yaml    |  71 +++++
 .../bindings/display/panel/renesas,r63419.yaml     |  98 ++++++
 MAINTAINERS                                        |   3 +
 drivers/accel/rocket/rocket_job.c                  |  32 +-
 drivers/dma-buf/dma-fence-unwrap.c                 |   8 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  10 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.h |   2 +
 drivers/gpu/drm/drm_exec.c                         |   2 +-
 drivers/gpu/drm/drm_gpuvm.c                        |  44 ---
 drivers/gpu/drm/drm_of.c                           |  44 +++
 drivers/gpu/drm/drm_panel.c                        |  44 +--
 drivers/gpu/drm/drm_syncobj.c                      |   2 +-
 drivers/gpu/drm/panel/Kconfig                      |  26 ++
 drivers/gpu/drm/panel/Makefile                     |   2 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c      |   3 +-
 .../gpu/drm/panel/panel-boe-th101mb31ig002-28a.c   |   3 +-
 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c     |   3 +-
 drivers/gpu/drm/panel/panel-chipone-icna35xx.c     |   3 +-
 drivers/gpu/drm/panel/panel-chipwealth-ch13726a.c  |   3 +-
 drivers/gpu/drm/panel/panel-edp.c                  |   5 +-
 drivers/gpu/drm/panel/panel-elida-kd35t133.c       |   3 +-
 drivers/gpu/drm/panel/panel-focaltech-ota7290b.c   |   3 +-
 drivers/gpu/drm/panel/panel-himax-hx83102.c        |   3 +-
 drivers/gpu/drm/panel/panel-himax-hx8394.c         |   3 +-
 drivers/gpu/drm/panel/panel-ilitek-ili7807s.c      | 285 +++++++++++++++++
 drivers/gpu/drm/panel/panel-ilitek-ili9488.c       |   3 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9806e-dsi.c  |   3 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c      |   3 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9882t.c      |   3 +-
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c   |   2 +-
 drivers/gpu/drm/panel/panel-lvds.c                 |   2 +-
 drivers/gpu/drm/panel/panel-novatek-nt36523.c      |   3 +-
 drivers/gpu/drm/panel/panel-renesas-r63419.c       | 351 +++++++++++++++++=
++++
 drivers/gpu/drm/panel/panel-simple.c               |   2 +-
 drivers/gpu/drm/panel/panel-sitronix-st7701.c      |   3 +-
 drivers/gpu/drm/panel/panel-sitronix-st7703.c      |   3 +-
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c     |   3 +-
 drivers/gpu/drm/panel/panel-visionox-vtdr6130.c    |  42 +--
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |   9 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.c             |   9 +-
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c    |   9 +-
 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c   |   8 +-
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c          |   1 -
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        |   1 -
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     |   1 -
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |   8 +-
 drivers/gpu/drm/rockchip/rockchip_lvds.c           |   9 +-
 drivers/gpu/drm/rockchip/rockchip_rgb.c            |   8 +-
 drivers/gpu/drm/solomon/ssd130x.c                  |  14 +-
 drivers/gpu/drm/sun4i/sun4i_backend.c              |   2 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |   9 +-
 drivers/gpu/drm/sun4i/sun4i_lvds.c                 |  10 +-
 drivers/gpu/drm/sun4i/sun4i_rgb.c                  |  10 +-
 drivers/gpu/drm/sun4i/sun4i_tv.c                   |  10 +-
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c             |  10 +-
 drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c              |   8 +-
 drivers/gpu/drm/sysfb/simpledrm.c                  |  11 +-
 drivers/gpu/drm/v3d/v3d_drv.h                      |  47 ++-
 drivers/gpu/drm/v3d/v3d_gem.c                      |   7 +-
 drivers/gpu/drm/v3d/v3d_irq.c                      |   7 +-
 drivers/gpu/drm/v3d/v3d_perfmon.c                  | 189 ++++++++---
 drivers/gpu/drm/v3d/v3d_power.c                    |   4 +
 drivers/gpu/drm/v3d/v3d_sched.c                    |  37 +--
 drivers/gpu/drm/v3d/v3d_submit.c                   | 206 +++++++++++-
 include/drm/drm_gpuvm.h                            |   4 +-
 include/drm/drm_of.h                               |  11 +
 include/drm/drm_panel.h                            |   8 -
 include/drm/gpu_scheduler.h                        |   3 +-
 include/linux/dma-fence-unwrap.h                   |   6 +-
 69 files changed, 1502 insertions(+), 302 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,=
ili7807s.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/renesas=
,r63419.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili7807s.c
 create mode 100644 drivers/gpu/drm/panel/panel-renesas-r63419.c

--g3d2ia2nlmjl6uj4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCak+EvQAKCRAnX84Zoj2+
dqMxAYCpiwLrG+bRTmYGwDu/tDWMDajxHzJ6AHoSPjncvgxD26uM8YigwuVJyff5
3uIqod0BgNzX4QB7wfWJcoiH0GaRs10CaYYAscTKYnhT6kivq3HrSpAvykcfOtB4
+TyZeXjA2A==
=9YQi
-----END PGP SIGNATURE-----

--g3d2ia2nlmjl6uj4--

