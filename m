Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c2+NMUMJNWoimQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 11:17:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8316A4EB1
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 11:17:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=buqW8emE;
	dkim=pass header.d=redhat.com header.s=google header.b=Qa9OS7X1;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8FD810F4EE;
	Fri, 19 Jun 2026 09:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A22F610E095
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2026 09:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1781860669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=Q71vRciY7PDe0uI9KUjoYrWJ/7wCyzblVDY8/EQ/Tpk=;
 b=buqW8emEp2ZwQ/0AsuQtY9ukvd+MYpZDedvjhsUeHkj9eeE10J52AAfjbxuLV2lKBG9ds8
 1PPNwYugIAjWlL9b4czTeR/jq0ozb+xt/4POWkw0nHDUJeWK/4xgFxybnW6bxcKRzV52Wd
 7k7E+Hp6wvS7KpIY6uPwhuGn6zLhSY0=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-357-4JhspsvCNz26jlq1pFyYgw-1; Fri, 19 Jun 2026 05:17:47 -0400
X-MC-Unique: 4JhspsvCNz26jlq1pFyYgw-1
X-Mimecast-MFC-AGG-ID: 4JhspsvCNz26jlq1pFyYgw_1781860666
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-4924314568cso4241475e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2026 02:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1781860666; x=1782465466; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Q71vRciY7PDe0uI9KUjoYrWJ/7wCyzblVDY8/EQ/Tpk=;
 b=Qa9OS7X1LtXkYu3nVHcjEyoC9G2rP1RkxUvfP1OvWj9ubkSEn1dfLtNCXy8iyOP/zM
 lg7NfaJ5lbYthAZNc5i71bfuaP75XfL93wHmaqzJXvLMKwerGpolRfBNyM7eBP84iBu/
 09EmJxeJwWGo7/0zCnRNhI+C7guuz1nHRVJL7PArWs3Tqdzf+iTFmx/EzbI0eYMPDzG6
 IqtFqkL+3Z2xwVaFYBQr2zhaGqMRj754SC6Qu/50xOLH5oeL/Ryc/yZfFp8BQFs7N1ru
 vj8eD8u59U0U+Yio6DijvFeMFTsSjxqlBya7LPff8mqjPHOuEDDXoR0QV2HsmrMkPmId
 PtVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781860666; x=1782465466;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Q71vRciY7PDe0uI9KUjoYrWJ/7wCyzblVDY8/EQ/Tpk=;
 b=SnZqpX52rGP7VBZnO4evv+LrW1hT4dsGI52ZQTFiEQhlarkrzaMwcHpztXDf036cmx
 1M4PGwujuDsLh/bKk7CLdCJNC5OGNqH0BXEqtjm77BH27vRjQh/gi7Vp3A7Gnl5/L7wA
 v/KHdkWXYpqNZCXKoomA46ZJOj9BiJdIYHtKOSo5q5D2YilBKmGHop5/oQ9GfJLabna/
 pYxfVKvm+W1HViBnPy8YMx4o1GW0t4y7EY2qbJW//JxkFDYcyuUIYmgTvGHVSi7tx8w5
 XBQI0iOG6noBgR8IPiH9e92iSwe2u9lx+13yCYCoNecV0jZ0w3Bjvy0eKVGiqbAEsnjG
 EyAQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8X8lsf3L+oyUy6fyuUGp8A9785cp/s4BNE4ynkVcW5TMEg3oueBaCpZXrXXgxkgA8RnYco4Nzu9kg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzMkyox6qUOg3BHkAEUdS33mx7ph/8e3BTHFsfN4m821aNAnDJ1
 NPyhJOmPGTDcyDtEo4vPYV4DruoSE4VBAr+8mtsct9/1YI5Fw9skEcTE5pmikqEdRmuQWOnq7XH
 ugUlJgPrMTQORiEtI9JyhIPqAdAYTZ4fiifYnNvY8HJLdw+/Rj5RqjpeIjF/CHT+Xf1g6dA==
X-Gm-Gg: AfdE7clei9AraPxX3oFGo2Q68mZf0pK+41TXF+ZdQtV3huD3nUbVAqRK0fQTLT88EEf
 XE2dnQq4xjkz2KC0wXAaw50Fa4bICKsu5r6bsNIqv9gmtbIOggqaXDGaf2K0f190uVKHGwd4z/S
 lxftVdVAVU2lKzzJxNKmNqJmWvCJvKqOnZRQDHaZWCjRN5n7IrXj/eRakTHfNhlQS1Q7pTGOjIA
 imAoIMnayop8GuoPFGMMqbMnmXwhJsgwIHOP7DIL4GbyZInA3zSUSnds5wqJkgO8UcRsQDmFwYk
 yVZSUNAHN6fhxpKkKlpC6ue7mJ/ve4biOPs7/dgTFv6dZcIUrEr06lFfIzV3TXDf9D45+nIzPEv
 dZpOFuvcz
X-Received: by 2002:a05:600c:2b17:b0:490:ab8b:1bb3 with SMTP id
 5b1f17b1804b1-4923f5791d1mr36711145e9.18.1781860665921; 
 Fri, 19 Jun 2026 02:17:45 -0700 (PDT)
X-Received: by 2002:a05:600c:2b17:b0:490:ab8b:1bb3 with SMTP id
 5b1f17b1804b1-4923f5791d1mr36710785e9.18.1781860665253; 
 Fri, 19 Jun 2026 02:17:45 -0700 (PDT)
Received: from localhost ([2a01:e0a:a99:9822:ca7f:54ff:fe01:374c])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4923fcfee57sm47367965e9.7.2026.06.19.02.17.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2026 02:17:44 -0700 (PDT)
Date: Fri, 19 Jun 2026 11:17:43 +0200
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
Message-ID: <20260619-burgundy-termite-of-whirlwind-f7a4dd@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="2lw3goeh7zomq6d7"
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[mripard@redhat.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[houat:mid,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C8316A4EB1


--2lw3goeh7zomq6d7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-next
MIME-Version: 1.0

Hi Dave, Sima,

It's a bit early, but drm-misc-next was getting pretty big so I decided
to do an early PR.

You'll find things meant for drm-next when 7.2-rc1 will get released.

Maxime

drm-misc-next-2026-06-19:
drm-misc-next for 7.3:

UAPI Changes:
 - connector: Add color format property

Cross-subsystem Changes:

 - dmem: introduce a peak file

Core Changes:
 - atomic: Add create_state callback and helpers to all objects, add
   documentation on atomic commit lifetime
 - buddy: Fix use-after-free, add per-order free and used block
   scoreboards
 - gem: Remove DRIVER_GEM_GPUVA feature flag
 - hdmi: Hook the color format property in the helpers
 - mipi-dsi: Add MIPI_DSI_MODE_DSC_ALL_SLICES_IN_PKT flag
 - sched: Add test suite for concurrent job submissions
 - virtio: Add support for saving and restoring virtio_gpu_objects,
   abort virtqueue wait on device removal to avoid hung task

Driver Changes:
 - amdgpu: Implement "color format" DRM property
 - amdxdna: Disable device buffer exporting
 - ethosu: Add performance counter support
 - msm: Support DSC configurations with slice_per_pkt > 1
 - mxsfb: Fix disable sequence
 - panthor: Support sparse mappings
 - rockchip: Support YUV background color, Fix layer config timeout, add
   edp support for rk3576, cleanups and formats improvements
 - solomon: Add a batch command submission function
 - tegra: Add DSI support for Tegra 20 and 30, fix dsi driver when the
   firmware hasn't enabled the controller,
 - v3d: Reduce PM runtime autosuspend delay, Scheduler and submission
   fixes and refactoring, Deprecate V3D 3.3 and 4.1 support

 - bridge:
   - display-connector: don't autoenable HPD IRQ, trigger initial HPD
     event for DP
   - dw-dp: Null pointer dereference and use-after-free fixes
   - ti-sn65dsi83: Remove NO_HFP and NO_HBP mode flags
 - panel:
   - himax-hx83121a: add backlight regulator support
   - novatek-nt36672a: Inline panel init sequences
   - panel-edp: Add quirks for AUO B116XAT04.3, CMN N116BCP-EA2, CSW
     MNB601LS1-8, BOE NV116WH2-M30, BOE NT116WHM-N21, BOE NV116FH1-M31,
     BOE NV116FH1-M30, NV140FHM-N5B, TM156VDXP25
   - New panels: Samsung ATNA40HQ08-0, Anbernic TD4310, Chipone
     ICNA35XX, Ilitek ILI9488
The following changes since commit 61de054a772a1feda6364931ab1baf9038abf1c8:

  drm/nouveau/gsp: formally support GA100 (2026-05-28 19:30:15 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-202=
6-06-19

for you to fetch changes up to 98b46e693b912eef0e6d497327489113845cbd15:

  drm/panel: himax-hx83121a: add backlight regulator support (2026-06-18 15=
:53:23 +0200)

----------------------------------------------------------------
drm-misc-next for 7.3:

UAPI Changes:
 - connector: Add color format property

Cross-subsystem Changes:

 - dmem: introduce a peak file

Core Changes:
 - atomic: Add create_state callback and helpers to all objects, add
   documentation on atomic commit lifetime
 - buddy: Fix use-after-free, add per-order free and used block
   scoreboards
 - gem: Remove DRIVER_GEM_GPUVA feature flag
 - hdmi: Hook the color format property in the helpers
 - mipi-dsi: Add MIPI_DSI_MODE_DSC_ALL_SLICES_IN_PKT flag
 - sched: Add test suite for concurrent job submissions
 - virtio: Add support for saving and restoring virtio_gpu_objects,
   abort virtqueue wait on device removal to avoid hung task

Driver Changes:
 - amdgpu: Implement "color format" DRM property
 - amdxdna: Disable device buffer exporting
 - ethosu: Add performance counter support
 - msm: Support DSC configurations with slice_per_pkt > 1
 - mxsfb: Fix disable sequence
 - panthor: Support sparse mappings
 - rockchip: Support YUV background color, Fix layer config timeout, add
   edp support for rk3576, cleanups and formats improvements
 - solomon: Add a batch command submission function
 - tegra: Add DSI support for Tegra 20 and 30, fix dsi driver when the
   firmware hasn't enabled the controller,
 - v3d: Reduce PM runtime autosuspend delay, Scheduler and submission
   fixes and refactoring, Deprecate V3D 3.3 and 4.1 support

 - bridge:
   - display-connector: don't autoenable HPD IRQ, trigger initial HPD
     event for DP
   - dw-dp: Null pointer dereference and use-after-free fixes
   - ti-sn65dsi83: Remove NO_HFP and NO_HBP mode flags
 - panel:
   - himax-hx83121a: add backlight regulator support
   - novatek-nt36672a: Inline panel init sequences
   - panel-edp: Add quirks for AUO B116XAT04.3, CMN N116BCP-EA2, CSW
     MNB601LS1-8, BOE NV116WH2-M30, BOE NT116WHM-N21, BOE NV116FH1-M31,
     BOE NV116FH1-M30, NV140FHM-N5B, TM156VDXP25
   - New panels: Samsung ATNA40HQ08-0, Anbernic TD4310, Chipone
     ICNA35XX, Ilitek ILI9488

----------------------------------------------------------------
Aaron Kling (1):
      dt-bindings: display: panel: Add Chipone ICNA3512 OLED driver bindings

Adri=C3=A1n Larumbe (6):
      drm/panthor: Expose GPU page sizes to UM
      drm/panthor: Pass vm_bind_op to vm_prepare_map_op_ctx
      drm/panthor: Delete spurious whitespace from uAPI header
      drm/panthor: Remove unused operation context field
      drm/panthor: Support sparse mappings
      drm/panthor: Bump the driver version to 1.9

Alberto Ruiz (4):
      drm/solomon: add ssd130x_run_cmd_seq() for batch command execution
      drm/solomon: use ssd130x_run_cmd_seq() in ssd130x_init()
      drm/solomon: use ssd130x_run_cmd_seq() in ssd132x_init()
      drm/solomon: use ssd130x_run_cmd_seq() in ssd133x_init()

Alexander Koskovich (1):
      drm/mipi-dsi: add flag for sending all DSC slices in one packet

Chintan Patel (1):
      drm/panel: novatek-nt36672a: Inline panel init sequences

Chris Morgan (2):
      dt-bindings: display: panel: Add Anbernic TD4310 panel
      drm/panel: anbernic-td4310: Add RG Vita Pro panel

Colin Ian King (1):
      drm/sched: Fix spelling mistake "sumission" -> "submission"

Cristian Ciocaltea (10):
      drm/rockchip: vop2: Rename CSC_BT2020 to CSC_BT2020L
      drm/rockchip: vop2: Add YUV support to background color
      drm/bridge: synopsys: dw-dp: Support unregistering the AUX channel
      drm/rockchip: dw_dp: Add missing newline in dev_err_probe() message
      drm/rockchip: dw_dp: Release core resources
      drm/rockchip: vop2: Fix wrong wait target in layer cfg done check
      drm/rockchip: vop2: Wait for layer cfg done before switching LAYERSEL=
_REGDONE_SEL
      drm/rockchip: vop2: Delay old_{layer|port}_sel updates in setup_layer=
_mixer()
      drm/rockchip: vop2: Drop redundant zero-init in setup_layer_mixer()
      drm/rockchip: vop2: Use vop2->old_layer_sel directly in wait_for_laye=
r_cfg_done()

Damon Ding (9):
      dt-bindings: display: rockchip: analogix-dp: Fix hclk as third clock =
for RK3588
      dt-bindings: display: rockchip: analogix-dp: Add per-clock descriptio=
ns
      drm/rockchip: analogix_dp: Enable hclk for RK3588
      drm/rockchip: analogix_dp: Fix OF node reference leak via auto cleanup
      dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
      drm/bridge: analogix_dp: Rename and simplify is_rockchip()
      drm/bridge: analogix_dp: Add support for RK3576
      drm/rockchip: analogix_dp: Add support for RK3576
      drm/bridge: analogix_dp: Convert status check functions to bool

Derek Foreman (1):
      drm: writeback: Document behaviour for framebuffer size mismatch

Dmitry Baryshkov (3):
      drm/bridge: split hpd_mutex into two mutexes
      drm/bridge: display-connector: don't autoenable HPD IRQ
      drm/bridge: display-connector: trigger initial HPD event for DP

Dongwon Kim (3):
      drm/virtio: Freeze and restore hooks to support suspend and resume
      drm/virtio: Add support for saving and restoring virtio_gpu_objects
      drm/virtio: Add PM notifier to restore objects after hibernation

Eric Engestrom (1):
      drm/doc: update tree setup instructions

Ethan Nelson-Moore (1):
      sysfb: correct CONFIG_SYSFB_SIMPLEFB macro name in #endif comment

Francois Dugast (5):
      gpu/buddy: Fix use-after-free in split_block() call sites
      gpu/buddy: Remove redundant condition in alloc_from_freetree() error =
path
      gpu/buddy: Introduce __gpu_buddy_undo_splits() helper
      gpu/buddy: Track per-order free blocks with a scoreboard
      gpu/buddy: Track per-order used blocks with a scoreboard

Geert Uytterhoeven (1):
      drm/rcar-du: Drop superfluous spaces after assignments

Godswill Onwusilike (2):
      docs: gpu: drm-uapi: fix spelling of "unprivileged"
      docs: gpu: todo: fix spelling of "fucntion"

Haikun Zhou (1):
      drm/panel-edp: Support NV140FHM-N5B and TM156VDXP25

Icenowy Zheng (3):
      dt-bindings: display: panel: himax,hx83121a: add optional bl supply
      drm/panel: himax-hx83121a: pass the panel pointer when creating BL
      drm/panel: himax-hx83121a: add backlight regulator support

Igor Reznichenko (2):
      dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
      drm/panel: Add Ilitek ILI9488 controller driver

Jonas Karlman (11):
      drm/rockchip: dw_hdmi: Use of_device_get_match_data() to get match da=
ta
      drm/rockchip: dw_hdmi: Use local dev variable consistently in bind()
      drm/rockchip: dw_hdmi: Use drmres helpers for encoder resources
      drm/rockchip: dw_hdmi: Inline resource lookup into bind()
      drm/rockchip: dw_hdmi: Hold a reference to the dw-hdmi bridge
      drm/rockchip: dw_hdmi: Remove empty encoder helper funcs
      drm/rockchip: dw_hdmi: Clean up whitespace
      drm/rockchip: dw_hdmi: Set output_port for RK3568/RK3566
      drm/rockchip: dw_hdmi: Configure HDMI PHY in atomic_mode_set()
      drm/rockchip: dw_hdmi: Propagate bus format to display driver
      drm/rockchip: dw_hdmi: Use resume_early pm ops for system suspend

Jonathan Marek (1):
      drm/msm/dsi: support DSC configurations with slice_per_pkt > 1

Karol Wachowski (3):
      accel/ivpu: Use threaded IRQ for IPC callback processing
      accel/ivpu: use kmem_cache for IPC rx_msg allocations
      accel/ivpu: Drop IRQF_ONESHOT to allow IPC IRQ threading on PREEMPT_RT

Konrad Dybcio (1):
      dt-bindings: display: panel: samsung,atna33xc20: Add ATNA40HQ08-0

Laura Nao (1):
      drm: Remove DRIVER_GEM_GPUVA feature flag

Lizhi Hou (1):
      accel/amdxdna: Disable device buffer exporting

Marco Crivellari (1):
      drm/gm12u320: Replace system_long_wq with system_dfl_long_wq

Marco Pagani (1):
      drm/sched: Add test suite for concurrent job submissions

Matthew Brost (3):
      drm/ttm: Issue direct reclaim at beneficial_order
      drm/ttm/pool: Try harder for beneficial orders
      drm/ttm: Drop tt->restore after successful restore

Maxime Ripard (19):
      drm/atomic: Document atomic commit lifetime
      drm/colorop: Fix typos in the doc
      drm/atomic: Drop drm_private_obj.state assignment from create_state
      drm/atomic: Expand atomic_create_state expectations for drm_private_o=
bj
      drm/mode-config: Document drm_private_obj exclusion from drm_mode_con=
fig_reset()
      drm/colorop: Rename __drm_colorop_state_reset()
      drm/colorop: Create drm_atomic_helper_colorop_create_state()
      drm/atomic-state-helper: Fix __drm_atomic_helper_plane_reset() doc ty=
po
      drm/atomic-state-helper: Rename __drm_atomic_helper_plane_state_reset=
()
      drm/plane: Add new atomic_create_state callback
      drm/atomic-state-helper: Rename __drm_atomic_helper_crtc_state_reset()
      drm/crtc: Add new atomic_create_state callback
      drm/atomic-state-helper: Rename __drm_atomic_helper_connector_state_r=
eset()
      drm/hdmi: Rename __drm_atomic_helper_connector_hdmi_reset()
      drm/connector: Add new atomic_create_state callback
      drm/mode-config: Create drm_mode_config_create_initial_state()
      drm/drv: Switch skeleton to drm_mode_config_create_initial_state()
      drm/tidss: Convert to atomic_create_state
      drm/bridge_connector: Convert to atomic_create_state

Ma=C3=ADra Canal (16):
      dma-fence: Clarify external lock use case in dma_fence_init() docs
      drm/v3d: Reduce PM runtime autosuspend delay
      accel: ethosu: Remove redundant job_lock
      drm/v3d: Drop unused drm_encoder.h include from v3d_drv.h
      drm/v3d: Clear queue->active_job when v3d_fence_create() fails
      drm/v3d: Extract v3d_job_add_syncobjs() helper
      drm/v3d: Reject invalid syncobj handles in submit ioctls
      drm/v3d: Migrate BO reservation locking to DRM exec
      drm/v3d: Introduce struct v3d_submit and convert CL/TFU/CSD ioctls
      drm/v3d: Make v3d_get_cpu_indirect_csd_params() a pure parser
      drm/v3d: Convert submit helpers to operate on struct v3d_submit
      drm/v3d: Refactor CPU ioctl into unified submission chain
      drm/v3d: Split BO fence attach from syncobj output handling
      drm/v3d: Reject invalid out_sync handles in submit ioctls
      drm/v3d: Ensure atomic submissions in v3d_submit_jobs()
      drm/v3d: Deprecate V3D 3.3 and 4.1 support

Michael Kelley (1):
      drm/hyperv: Use "hv_drm_" as symbol name prefix

Micha=C5=82 Grzelak (2):
      drm/print: describe 6th & 9th bit of drm.debug
      drm/managed: fix drmm_add_action() kernel-doc

Nicolas Frattaroli (24):
      drm/display: hdmi-state-helper: Use default case for unsupported form=
ats
      drm: Add new general DRM property "color format"
      drm/connector: Let connectors have a say in their color format
      drm/display: bridge_connector: Use HDMI color format for HDMI conns
      drm/bridge: Act on the DRM color format property
      drm/atomic-helper: Add HDMI bridge output bus formats helper
      drm/display: hdmi-state-helper: Act on color format DRM property
      drm/display: hdmi-state-helper: Try subsampling in mode_valid
      drm/amdgpu: Implement "color format" DRM property
      drm/rockchip: Add YUV422 output mode constants for VOP2
      drm/rockchip: vop2: Add RK3576 to the RG swap special case
      drm/rockchip: vop2: Recognise 10-bit YUV422 as YUV format
      drm/rockchip: vop2: Set correct output format for RK3576 YUV422
      drm/bridge: dw-hdmi-qp: Use common HDMI output bus fmts helper
      drm/rockchip: dw_hdmi_qp: Implement "color format" DRM property
      drm/rockchip: dw_hdmi_qp: Set supported_formats platdata
      drm/connector: Register color format property on HDMI connectors
      drm/tests: hdmi: Add tests for the color_format property
      drm/tests: hdmi: Add tests for HDMI helper's mode_valid
      drm/tests: bridge: Add KUnit tests for bridge chain format selection
      drm/tests: bridge: Add test for HDMI output bus formats helper
      drm/bridge: Document bridge chain format selection
      drm/connector: Update docs of "colorspace" for color format prop
      drm/tests: Move test EDID data to separate .c file

Paul Kocialkowski (2):
      drm: lcdif: Set undocumented bit to clear FIFO at vsync
      drm: lcdif: Wait for vblank before disabling DMA

Philipp Stanner (1):
      Documentation: drm: Add entry for removing spsc_queue to TODO list

Rob Herring (Arm) (1):
      accel: ethosu: Add performance counter support

Ryosuke Yasuoka (1):
      drm/virtio: abort virtqueue wait on device removal to avoid hung task

Sudarshan Shetty (1):
      drm: bridge: ti-sn65dsi83: Remove NO_HFP and NO_HBP mode flags for LV=
DS stability

Svyatoslav Ryhel (2):
      drm/tegra: dsi: Add support for Tegra20/Tegra30
      drm/tegra: dsi: Re-add clear enable register if DSI was powered by bo=
otloader

Teguh Sobirin (1):
      drm/panel: Add panel driver for Chipone ICNA35XX based panels

Terry Hsiao (2):
      drm/panel-edp: Add AUO B116XAT04.3, CMN N116BCP-EA2, CSW MNB601LS1-8
      drm/panel-edp: Add BOE NV116WH2-M30, BOE NT116WHM-N21, BOE NV116FH1-M=
31, BOE NV116FH1-M30

Thadeu Lima de Souza Cascardo (1):
      cgroup/dmem: introduce a peak file

Thomas Zimmermann (4):
      lib/fonts: Look up glyph data with font_data_glyph_buf()
      drm/client: log: Look up glyph shape with font helper
      drm/panic: Look up glyph shape with font helper
      drm/draw: Remove unused helper drm_draw_get_char_bitmap()

Thorsten Blum (2):
      dma-buf: heaps: use max3 in dma_heap_ioctl
      drm/bridge: sii902x: inline i2c_check_functionality check

Tvrtko Ursulin (1):
      drm/sched: Remove redundant entity->rq initialization and checks

Uwe Kleine-K=C3=B6nig (The Capable Hub) (1):
      drm: Consistently define pci_device_ids using named initializers

Vitor Soares (1):
      dt-bindings: vendor-prefixes: Add Riverdi

Werner Sembach (1):
      drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check

Xilin Wu (1):
      dt-bindings: vendor-prefixes: Add AYN Technologies

Yicong Hui (1):
      drm: Remove unused header in drm_dumb_buffers.c

 Documentation/admin-guide/cgroup-v2.rst            |   6 +
 .../bindings/display/panel/anbernic,td4310.yaml    |  66 ++
 .../bindings/display/panel/chipone,icna3512.yaml   |  79 ++
 .../bindings/display/panel/himax,hx83121a.yaml     |   3 +
 .../bindings/display/panel/ilitek,ili9488.yaml     |  63 ++
 .../bindings/display/panel/samsung,atna33xc20.yaml |   2 +
 .../display/rockchip/rockchip,analogix-dp.yaml     |  47 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   6 +
 Documentation/gpu/automated_testing.rst            |   3 +-
 Documentation/gpu/drm-kms-helpers.rst              |   6 +
 Documentation/gpu/drm-kms.rst                      |  12 +
 Documentation/gpu/drm-uapi.rst                     |   2 +-
 Documentation/gpu/todo.rst                         |  43 +-
 MAINTAINERS                                        |   6 +
 drivers/accel/amdxdna/amdxdna_gem.c                |   6 +
 drivers/accel/ethosu/Makefile                      |   2 +-
 drivers/accel/ethosu/ethosu_device.h               |  35 +-
 drivers/accel/ethosu/ethosu_drv.c                  |  23 +-
 drivers/accel/ethosu/ethosu_drv.h                  |  61 +-
 drivers/accel/ethosu/ethosu_job.c                  |  61 +-
 drivers/accel/ethosu/ethosu_job.h                  |   2 +
 drivers/accel/ethosu/ethosu_perfmon.c              | 301 +++++++
 drivers/accel/ivpu/ivpu_drv.c                      |  28 +-
 drivers/accel/ivpu/ivpu_drv.h                      |   5 +-
 drivers/accel/ivpu/ivpu_hw.c                       |   4 +
 drivers/accel/ivpu/ivpu_ipc.c                      |  25 +-
 drivers/accel/ivpu/ivpu_ipc.h                      |   3 +-
 drivers/accel/ivpu/ivpu_job.c                      |  59 +-
 drivers/accel/ivpu/ivpu_job.h                      |   7 +-
 drivers/dma-buf/dma-fence.c                        |  14 +-
 drivers/dma-buf/dma-heap.c                         |   3 +-
 drivers/gpu/buddy.c                                | 105 ++-
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  91 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   7 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.h |   4 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c  |  32 +-
 drivers/gpu/drm/bridge/display-connector.c         |  36 +
 drivers/gpu/drm/bridge/sii902x.c                   |   4 +-
 drivers/gpu/drm/bridge/synopsys/dw-dp.c            |   6 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |   1 +
 drivers/gpu/drm/bridge/ti-sn65dsi83.c              |   1 -
 drivers/gpu/drm/clients/drm_log.c                  |  10 +-
 drivers/gpu/drm/display/drm_bridge_connector.c     |  41 +-
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  68 +-
 drivers/gpu/drm/drm_atomic.c                       |  80 ++
 drivers/gpu/drm/drm_atomic_helper.c                |  86 ++
 drivers/gpu/drm/drm_atomic_state_helper.c          | 114 ++-
 drivers/gpu/drm/drm_atomic_uapi.c                  |   4 +
 drivers/gpu/drm/drm_bridge.c                       | 120 ++-
 drivers/gpu/drm/drm_buddy.c                        |  30 +-
 drivers/gpu/drm/drm_colorop.c                      |  41 +-
 drivers/gpu/drm/drm_connector.c                    | 189 +++-
 drivers/gpu/drm/drm_draw_internal.h                |   7 -
 drivers/gpu/drm/drm_drv.c                          |   4 +-
 drivers/gpu/drm/drm_dumb_buffers.c                 |   1 -
 drivers/gpu/drm/drm_gem.c                          |   3 +-
 drivers/gpu/drm/drm_mode_config.c                  | 189 +++-
 drivers/gpu/drm/drm_panic.c                        |   6 +-
 drivers/gpu/drm/drm_print.c                        |   4 +-
 drivers/gpu/drm/drm_writeback.c                    |   6 +
 drivers/gpu/drm/gma500/psb_drv.c                   |  56 +-
 drivers/gpu/drm/hyperv/hyperv_drm.h                |  16 +-
 drivers/gpu/drm/hyperv/hyperv_drm_drv.c            |  92 +-
 drivers/gpu/drm/hyperv/hyperv_drm_modeset.c        | 110 +--
 drivers/gpu/drm/hyperv/hyperv_drm_proto.c          |  70 +-
 drivers/gpu/drm/i915/display/intel_crtc.c          |   2 +-
 drivers/gpu/drm/i915/display/intel_plane.c         |   2 +-
 drivers/gpu/drm/imagination/pvr_drv.c              |   2 +-
 drivers/gpu/drm/loongson/lsdc_drv.c                |   4 +-
 drivers/gpu/drm/mgag200/mgag200_drv.c              |  24 +-
 drivers/gpu/drm/msm/dsi/dsi_host.c                 |  25 +-
 drivers/gpu/drm/msm/msm_drv.c                      |   2 -
 drivers/gpu/drm/mxsfb/lcdif_kms.c                  |  18 +-
 drivers/gpu/drm/mxsfb/lcdif_regs.h                 |   1 +
 drivers/gpu/drm/nouveau/nouveau_drm.c              |   1 -
 drivers/gpu/drm/panel/Kconfig                      |  30 +
 drivers/gpu/drm/panel/Makefile                     |   3 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c      | 257 ++++++
 drivers/gpu/drm/panel/panel-chipone-icna35xx.c     | 422 +++++++++
 drivers/gpu/drm/panel/panel-edp.c                  |  17 +
 drivers/gpu/drm/panel/panel-himax-hx83121a.c       |  39 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9488.c       | 289 ++++++
 drivers/gpu/drm/panel/panel-novatek-nt36672a.c     | 522 ++++-------
 drivers/gpu/drm/panthor/panthor_device.h           |   3 +
 drivers/gpu/drm/panthor/panthor_drv.c              |  14 +-
 drivers/gpu/drm/panthor/panthor_gem.c              |  18 +
 drivers/gpu/drm/panthor/panthor_gem.h              |   2 +
 drivers/gpu/drm/panthor/panthor_mmu.c              | 237 ++++-
 drivers/gpu/drm/qxl/qxl_drv.c                      |  15 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_drv.c      |  20 +-
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |  31 +-
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c          |  15 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 227 +++--
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 111 ++-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |   4 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       | 176 +++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h       |   2 +-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c       |  46 +-
 drivers/gpu/drm/scheduler/sched_entity.c           |  11 +-
 drivers/gpu/drm/scheduler/sched_main.c             |   9 -
 drivers/gpu/drm/scheduler/tests/tests_basic.c      | 359 ++++++++
 drivers/gpu/drm/scheduler/tests/tests_scheduler.c  |   2 +-
 drivers/gpu/drm/solomon/ssd130x.c                  | 346 +++----
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |   2 +-
 drivers/gpu/drm/tegra/drm.c                        |   2 +
 drivers/gpu/drm/tegra/dsi.c                        | 126 ++-
 drivers/gpu/drm/tegra/dsi.h                        |  10 +
 drivers/gpu/drm/tests/Makefile                     |   3 +-
 drivers/gpu/drm/tests/drm_bridge_test.c            | 971 +++++++++++++++++=
+++
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 347 ++++++-
 drivers/gpu/drm/tests/drm_kunit_edid.c             | 995 +++++++++++++++++=
++++
 drivers/gpu/drm/tests/drm_kunit_edid.h             | 985 +----------------=
---
 drivers/gpu/drm/tidss/tidss_crtc.c                 |  17 +-
 drivers/gpu/drm/tidss/tidss_plane.c                |   2 +-
 drivers/gpu/drm/tiny/gm12u320.c                    |   5 +-
 drivers/gpu/drm/ttm/ttm_pool.c                     |  24 +-
 drivers/gpu/drm/v3d/Kconfig                        |   1 +
 drivers/gpu/drm/v3d/v3d_drv.c                      |  20 +-
 drivers/gpu/drm/v3d/v3d_drv.h                      |  36 +-
 drivers/gpu/drm/v3d/v3d_sched.c                    |  66 +-
 drivers/gpu/drm/v3d/v3d_submit.c                   | 770 ++++++++--------
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |   2 +-
 drivers/gpu/drm/virtio/virtgpu_drv.c               | 101 ++-
 drivers/gpu/drm/virtio/virtgpu_drv.h               |  26 +-
 drivers/gpu/drm/virtio/virtgpu_kms.c               |  61 +-
 drivers/gpu/drm/virtio/virtgpu_object.c            |  90 +-
 drivers/gpu/drm/virtio/virtgpu_prime.c             |  45 +-
 drivers/gpu/drm/virtio/virtgpu_vq.c                |  50 +-
 drivers/gpu/drm/virtio/virtgpu_vram.c              |   5 +-
 drivers/gpu/drm/xe/xe_device.c                     |   4 +-
 include/drm/bridge/analogix_dp.h                   |  13 +-
 include/drm/bridge/dw_dp.h                         |   1 +
 include/drm/display/drm_hdmi_state_helper.h        |   4 +-
 include/drm/drm_atomic.h                           |   5 +-
 include/drm/drm_atomic_helper.h                    |   7 +
 include/drm/drm_atomic_state_helper.h              |  12 +-
 include/drm/drm_bridge.h                           |   4 +
 include/drm/drm_colorop.h                          |   2 +
 include/drm/drm_connector.h                        | 112 +++
 include/drm/drm_crtc.h                             |  16 +
 include/drm/drm_debugfs.h                          |   2 +-
 include/drm/drm_drv.h                              |   6 -
 include/drm/drm_gem.h                              |   3 -
 include/drm/drm_managed.h                          |   2 +-
 include/drm/drm_mipi_dsi.h                         |   2 +
 include/drm/drm_mode_config.h                      |   1 +
 include/drm/drm_plane.h                            |  16 +
 include/drm/drm_print.h                            |   2 +-
 include/linux/font.h                               |   3 +
 include/linux/gpu_buddy.h                          |  15 +
 include/linux/sysfb.h                              |   4 +-
 include/uapi/drm/ethosu_accel.h                    |  60 +-
 include/uapi/drm/panthor_drm.h                     |  26 +-
 kernel/cgroup/dmem.c                               |  15 +
 lib/fonts/fonts.c                                  |  31 +
 155 files changed, 8310 insertions(+), 2745 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anberni=
c,td4310.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/chipone=
,icna3512.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,=
ili9488.yaml
 create mode 100644 drivers/accel/ethosu/ethosu_perfmon.c
 create mode 100644 drivers/gpu/drm/panel/panel-anbernic-td4310.c
 create mode 100644 drivers/gpu/drm/panel/panel-chipone-icna35xx.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9488.c
 create mode 100644 drivers/gpu/drm/tests/drm_kunit_edid.c

--2lw3goeh7zomq6d7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCajUJNwAKCRAnX84Zoj2+
doNzAXsEnqkEidlYrMlmlDc32f+D0h4mKetC8XDNVmtUXAKmpUfbNiyBQOSVye0b
waZ7D3cBgJLdxjxgHC2JA6udQkaULZT0T04ZpY00osI4mahmo+i4bdKUYab/gqSi
fF/IsoLoew==
=wD/v
-----END PGP SIGNATURE-----

--2lw3goeh7zomq6d7--

