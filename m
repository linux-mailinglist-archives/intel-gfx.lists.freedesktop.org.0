Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ao4fNRwMRmolIQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:58:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6CB6F3F80
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:58:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=beE8IrSx;
	dkim=pass header.d=redhat.com header.s=google header.b=qCmCYn1X;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=redhat.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28E810F177;
	Thu,  2 Jul 2026 06:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D57C10F162
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2026 06:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1782975512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=R2Ka6VpxpaFN1iCunEIxE32RQ011hG067u8Zzp7VbKQ=;
 b=beE8IrSxiVa/B/hCpU1klEg9IG+YyzCSolVff+CBj8DgW3v/RtR9ZWDIc0DFsZwW+yof2a
 /vhwjDnliIYj37N8nTP0/5XWYCA0zZOz1aBBbISxFqZGlldjTmJYjDzw84xFCZzL8Empag
 Lk2efVIONpKTzU4uUAj2HzGJK3M/31A=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-55-TIs5c2lhOmmCH9RYLeAx3g-1; Thu, 02 Jul 2026 02:58:28 -0400
X-MC-Unique: TIs5c2lhOmmCH9RYLeAx3g-1
X-Mimecast-MFC-AGG-ID: TIs5c2lhOmmCH9RYLeAx3g_1782975507
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-475eba52438so1340002f8f.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jul 2026 23:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1782975507; x=1783580307; darn=lists.freedesktop.org;
 h=content-disposition:content-type:mime-version:message-id:subject:cc
 :to:from:date:from:to:cc:subject:date:message-id:reply-to
 :content-type; bh=R2Ka6VpxpaFN1iCunEIxE32RQ011hG067u8Zzp7VbKQ=;
 b=qCmCYn1Xck4p77HjSFVyADDAN+zhjukQO2n3snnXX8O87ts2NxjouShk2fqmn8yzFc
 ikD27BLpMTCaxCuvbUWA7uoD6MJ9Q+kyJ+pKgSuG2TX5zMdKjReuF+JSiph4XZ/6P+cc
 zR4aHLvmB8Aka22QNgp9gRQWBSWH+xTRhjx2gNLbotQh5k7pJiM/3Srcax+cu+sMz9+c
 CCgnSR76K8P7JsWXjoU++/eUvHFZEZ6rpNUgzTCVeTA7ZyLNzinyc/PkV2DyXKnJNJ2K
 Q6X/euvYC84ARjGJrVVc3/ewQI4heP32BXcCnqiUzqTjWz6LDsKquGU9W5aHahs615Mw
 U0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782975507; x=1783580307;
 h=content-disposition:content-type:mime-version:message-id:subject:cc
 :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=R2Ka6VpxpaFN1iCunEIxE32RQ011hG067u8Zzp7VbKQ=;
 b=RGK/cGr9vj5b9TNct7WDr/VTLW8nnmwm4PHb5p1jTsFG+yxYKXmGGYDcdsvxKJvaiH
 o6kFJ+tW9buMVZ1FPeGKhVhxS+JskpyHu7IaIGj38o+RNDivD+cKIzAvDd40gpplhiHx
 Kqj50+ugOTupCaKF7UGdApSZPGFBzNmF2S7GDAL98WMURc3y6YOQEQltu7Wr45IRLSH/
 YUy2GGPb9uubsXtsVRCdLYwSgGsBXIgEQHnAy5ld0FHLlo/luuq9g/RR7yEoAStwSx7n
 MyhNnXV7d88Zu/yTYgFIvo3xgKZsH8nzb2ISaCCnpPPAfqWM/miASHCRNBJKmIAZeYqB
 F66Q==
X-Forwarded-Encrypted: i=1;
 AHgh+RqA0Sz/cPS8gg8aBPYOQ6lUOZIJrKu5oH0qI0BLwYBXzvoOWV9mFRMhhfTU/DZHmIts/dcfXAFL52M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwW+DsYnZRESoK7du4WYXHdf8Y81wE0e9S1lCpv82fR37f4XFry
 vXTIKQrTuwLFfw3hkBXsl4pFEqpfqbM3BZObIeDZGyen2+iWdfaxyzAIeR+t7vJPV4ez53+Olkq
 vdUYJ9Q3KE/3xcqn7COx7XjXw7JjiAHc0YDHgeKDZbYANFgKgpRUYLCr8q5FZf5lAjtGHvQ==
X-Gm-Gg: AfdE7cmKyESRItWyVUrkLew4cvxXkOhUr2MirJypHhA1SKOEEdfr1CSw6bpZuIaRH6a
 HDcUuc2HbAIMO2AgYbqv/Y2gqFsIzw/gBbzwcAkaCQ/Mz/CLqomSDCloFmPqVln1OBeG+oDWay3
 ZRXfCBiviIrRaooPox0+RgXPufqtXk1/83uqwU9kFZL1Zke9R97K9GlqK4Qt2LrHc1UlOONd5Ol
 WxNHFgXe5T9bpNztSwOSy/iHZGVPCl07c6UZayBzLaaaLcHqu+HiH0l8PyoYDjse7ZBEz9oVy//
 e1rShSJ94J424LcyDpjRVRgnHJQOkvlVrZkA6qYJ05jOSVD4/UNl9dKkMzd2ib+GLEgNwYtkWlL
 45V95896j
X-Received: by 2002:a5d:64c2:0:b0:474:6a5b:85f5 with SMTP id
 ffacd0b85a97d-477b34b0394mr4927316f8f.3.1782975506960; 
 Wed, 01 Jul 2026 23:58:26 -0700 (PDT)
X-Received: by 2002:a5d:64c2:0:b0:474:6a5b:85f5 with SMTP id
 ffacd0b85a97d-477b34b0394mr4927258f8f.3.1782975506180; 
 Wed, 01 Jul 2026 23:58:26 -0700 (PDT)
Received: from localhost ([2a01:e0a:a99:9822:ca7f:54ff:fe01:374c])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-477db8a4b73sm6282451f8f.15.2026.07.01.23.58.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2026 23:58:25 -0700 (PDT)
Date: Thu, 2 Jul 2026 08:58:24 +0200
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
Message-ID: <20260702-powerful-successful-raptor-eded34@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="nqhr4gt2rghpsda6"
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,houat:mid,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A6CB6F3F80


--nqhr4gt2rghpsda6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-next
MIME-Version: 1.0

Hi,

Here's the drm-misc-next PR. The diffstat is scarier than it looks in
the tag because of the early PR I sent and wasn't merged yet:
https://lore.kernel.org/dri-devel/20260619-burgundy-termite-of-whirlwind-f7=
a4dd@houat/

Thanks!
Maxime

drm-misc-next-2026-07-02:
drm-misc-next for 7.3:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
- bridge: Add atomic_create_state callback and helpers, drop atomic_reset
- dp: Add support for DSC max delta BPP
- edid: Parse panel type from DisplayID 2.x Display Parameters
- sysfb: Improve panel, stride and framebuffer size validation

Driver Changes:
- hibmc: Improvements to the plane formats handling, switch to gem-shmem
- nouveau: race fixes, misc improvements

- bridges:
  - Convert all bridges to atomic_create_state

- panels:
  - panel-edp: New quirks for BOE NE160QDM-NY1, MB116AS01
The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:

  Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-202=
6-07-02

for you to fetch changes up to cff96362794a5c1f3adb013b4a46c7233149a629:

  drm/mxsfb/lcdif: don't hide lcdif_attach_bridge() deferral messages (2026=
-07-01 19:04:55 +0200)

----------------------------------------------------------------
drm-misc-next for 7.3:

UAPI Changes:

Cross-subsystem Changes:

Core Changes:
- bridge: Add atomic_create_state callback and helpers, drop atomic_reset
- dp: Add support for DSC max delta BPP
- edid: Parse panel type from DisplayID 2.x Display Parameters
- sysfb: Improve panel, stride and framebuffer size validation

Driver Changes:
- hibmc: Improvements to the plane formats handling, switch to gem-shmem
- nouveau: race fixes, misc improvements

- bridges:
  - Convert all bridges to atomic_create_state

- panels:
  - panel-edp: New quirks for BOE NE160QDM-NY1, MB116AS01

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

Akash Goel (1):
      drm/panthor: Fix NPD issue on partial unmap of an evicted BO

Alberto Ruiz (4):
      drm/solomon: add ssd130x_run_cmd_seq() for batch command execution
      drm/solomon: use ssd130x_run_cmd_seq() in ssd130x_init()
      drm/solomon: use ssd130x_run_cmd_seq() in ssd132x_init()
      drm/solomon: use ssd130x_run_cmd_seq() in ssd133x_init()

Alexander Koskovich (1):
      drm/mipi-dsi: add flag for sending all DSC slices in one packet

Chenyu Chen (3):
      drm/edid: extract base section header processing into helper
      drm/edid: parse panel type from DisplayID 2.x Display Parameters
      drm/amd/display: use DisplayID panel type in dm_set_panel_type

Chintan Patel (1):
      drm/panel: novatek-nt36672a: Inline panel init sequences

Chris Morgan (2):
      dt-bindings: display: panel: Add Anbernic TD4310 panel
      drm/panel: anbernic-td4310: Add RG Vita Pro panel

Christian K=C3=B6nig (2):
      drm/todo: clarify drm_syncobj error TODOs
      dma-buf: rename dma_fence_enable_sw_signaling

Colin Ian King (1):
      drm/sched: Fix spelling mistake "sumission" -> "submission"

Cristian Ciocaltea (11):
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
      drm/fb-helper: Remove unused local variable in hotplug_event()

Damon Ding (11):
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
      drm/bridge: of-display-mode-bridge: Fix missing static const for the =
bridge funcs
      drm/panel-edp: Add BOE NE160QDM-NY1 panel

Dave Airlie (2):
      nouveau/gem: reserve the bo in the info ioctl around the vma lookup
      nouveau/vmm: fix another SPT/LPT race

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

Haikun Zhou (2):
      drm/panel-edp: Support NV140FHM-N5B and TM156VDXP25
      drm/panel-edp: Support MB116AS01'3 edp panel

Henrik Grimler (1):
      drm/lima: call drm_mm_init() with a valid allocation range

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

Luca Ceresoli (1):
      drm/mxsfb/lcdif: don't hide lcdif_attach_bridge() deferral messages

Lyude Paul (1):
      drm/nouveau/disp/r535: Add scanline position support + head state sup=
port

Marco Crivellari (1):
      drm/gm12u320: Replace system_long_wq with system_dfl_long_wq

Marco Pagani (1):
      drm/sched: Add test suite for concurrent job submissions

Mario Limonciello (1):
      ttm/pool: Use sentinels in debugfs

Matt Coster (5):
      MAINTAINERS: Update imagination details
      MAINTAINERS: Update imagination maintainers
      dt-bindings: gpu: img,powervr-*: Add maintainer entries
      MAINTAINERS, mailmap: Update address for Matt Coster
      dt-bindings: gpu: img,powervr-*: Remove Matt Coster as maintainer

Matthew Brost (3):
      drm/ttm: Issue direct reclaim at beneficial_order
      drm/ttm/pool: Try harder for beneficial orders
      drm/ttm: Drop tt->restore after successful restore

Maxime Ripard (97):
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
      drm/bridge: cdns-dsi: Return an error pointer on allocation failure
      drm/bridge: cdns-mhdp8546: Return an error pointer on allocation fail=
ure
      drm/atomic-state-helper: Rename __drm_atomic_helper_bridge_reset()
      drm/atomic-state-helper: Reorder __drm_atomic_helper_bridge_state_ini=
t() arguments
      drm/atomic-state-helper: Drop memset from __drm_atomic_helper_bridge_=
state_init()
      drm/bridge: Add new atomic_create_state callback
      drm/atomic-state-helper: Add drm_atomic_helper_bridge_create_state()
      drm/bridge: adv7511: Switch to atomic_create_state
      drm/bridge: analogix_dp: Switch to atomic_create_state
      drm/bridge: anx7625: Switch to atomic_create_state
      drm/bridge: chipone-icn6211: Switch to atomic_create_state
      drm/bridge: display-connector: Switch to atomic_create_state
      drm/bridge: fsl-ldb: Switch to atomic_create_state
      drm/bridge: imx8mp-hdmi-pvi: Switch to atomic_create_state
      drm/bridge: imx8qm-ldb: Switch to atomic_create_state
      drm/bridge: imx8qxp-ldb: Switch to atomic_create_state
      drm/bridge: imx8qxp-pixel-combiner: Switch to atomic_create_state
      drm/bridge: imx8qxp-pixel-link: Switch to atomic_create_state
      drm/bridge: imx8qxp-pxl2dpi: Switch to atomic_create_state
      drm/bridge: inno-hdmi: Switch to atomic_create_state
      drm/bridge: ite-it6263: Switch to atomic_create_state
      drm/bridge: ite-it6505: Switch to atomic_create_state
      drm/bridge: ite-it66121: Switch to atomic_create_state
      drm/bridge: lontium-lt9211: Switch to atomic_create_state
      drm/bridge: lontium-lt9611: Switch to atomic_create_state
      drm/bridge: lvds-codec: Switch to atomic_create_state
      drm/bridge: nwl-dsi: Switch to atomic_create_state
      drm/bridge: panel: Switch to atomic_create_state
      drm/bridge: parade-ps8640: Switch to atomic_create_state
      drm/bridge: samsung-dsim: Switch to atomic_create_state
      drm/bridge: sii902x: Switch to atomic_create_state
      drm/bridge: ssd2825: Switch to atomic_create_state
      drm/bridge: dw-dp: Switch to atomic_create_state
      drm/bridge: dw-hdmi-qp: Switch to atomic_create_state
      drm/bridge: dw-hdmi: Switch to atomic_create_state
      drm/bridge: dw-mipi-dsi: Switch to atomic_create_state
      drm/bridge: dw-mipi-dsi2: Switch to atomic_create_state
      drm/bridge: tc358762: Switch to atomic_create_state
      drm/bridge: tc358767: Switch to atomic_create_state
      drm/bridge: tc358768: Switch to atomic_create_state
      drm/bridge: tc358775: Switch to atomic_create_state
      drm/bridge: ti-dlpc3433: Switch to atomic_create_state
      drm/bridge: ti-sn65dsi83: Switch to atomic_create_state
      drm/bridge: ti-sn65dsi86: Switch to atomic_create_state
      drm/bridge: ti-tdp158: Switch to atomic_create_state
      drm/bridge: ti-tfp410: Switch to atomic_create_state
      drm/imx: parallel-display: Switch to atomic_create_state
      drm/ingenic: Switch to atomic_create_state
      drm/mediatek: dp: Switch to atomic_create_state
      drm/mediatek: dpi: Switch to atomic_create_state
      drm/mediatek: dsi: Switch to atomic_create_state
      drm/mediatek: hdmi: Switch to atomic_create_state
      drm/mediatek: hdmi_v2: Switch to atomic_create_state
      drm/meson: encoder_cvbs: Switch to atomic_create_state
      drm/meson: encoder_dsi: Switch to atomic_create_state
      drm/meson: encoder_hdmi: Switch to atomic_create_state
      drm/msm: dp: Switch to atomic_create_state
      drm/msm: hdmi: Switch to atomic_create_state
      drm/omap: hdmi4: Switch to atomic_create_state
      drm/omap: hdmi5: Switch to atomic_create_state
      drm/renesas: rcar-du: lvds: Switch to atomic_create_state
      drm/renesas: rcar-du: mipi_dsi: Switch to atomic_create_state
      drm/renesas: rz-du: mipi_dsi: Switch to atomic_create_state
      drm/rockchip: cdn-dp: Switch to atomic_create_state
      drm/rockchip: rk3066_hdmi: Switch to atomic_create_state
      drm/rockchip: lvds: Switch to atomic_create_state
      drm/stm: lvds: Switch to atomic_create_state
      drm/tests: bridge: Switch to atomic_create_state
      drm/tidss: encoder: Switch to atomic_create_state
      drm/tidss: oldi: Switch to atomic_create_state
      drm/vc4: dsi: Switch to atomic_create_state
      drm/verisilicon: Switch to atomic_create_state
      drm/xlnx: zynqmp_dp: Switch to atomic_create_state
      drm/atomic-state-helper: Remove drm_atomic_helper_bridge_reset()
      drm/bridge: cdns-dsi: Use __drm_atomic_helper_bridge_state_init()
      drm/bridge: cdns-dsi: Switch to atomic_create_state
      drm/bridge: cdns-mhdp8546: Switch to atomic_create_state
      drm/bridge: Remove atomic_reset support

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

Nemesa Garg (4):
      drm/dp: Add DP_DSC_MAX_BPP_DELTA register
      drm/dp: Rename YCbCr420 bpp delta mask to native
      drm/dp: Add max bpp delta computation constants
      drm/i915/dp: Decode dsc max delta bpp from sink dpcd

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

Pengpeng Hou (1):
      drm/virtio: fail init on display-info timeout

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

Thomas Zimmermann (17):
      lib/fonts: Look up glyph data with font_data_glyph_buf()
      drm/client: log: Look up glyph shape with font helper
      drm/panic: Look up glyph shape with font helper
      drm/draw: Remove unused helper drm_draw_get_char_bitmap()
      drm/hibmc: Use drm_atomic_helper_check_plane_state()
      drm/hibmc: Fix list of formats on the primary plane
      drm/hibmc: Store fb in variable in atomic_update
      drm/hibmc: Do not use cpp from struct drm_format_info
      drm/hibmc: Verify the framebuffer pitch to be a multiple of 128
      drm/hibmc: Use gem-shmem with shadow-plane helpers for memory managem=
ent
      Merge drm/drm-next into drm-misc-next
      firmware: sysfb: Mark CONFIG_SYSFB_SIMPLEFB as deprecated
      drm/sysfb: simpledrm: Improve framebuffer-size validation
      drm/sysfb: simpledrm: Improve panel-size validation
      drm/sysfb: simpledrm: Inline simplefb_get_validated_int()
      drm/sysfb: simpledrm: Improve stride validation
      drm/sysfb: simpledrm: Validate mmap size against framebuffer size

Thorsten Blum (2):
      dma-buf: heaps: use max3 in dma_heap_ioctl
      drm/bridge: sii902x: inline i2c_check_functionality check

Tvrtko Ursulin (2):
      drm/sched: Remove redundant entity->rq initialization and checks
      drm/nouveau: Simplify nouveau_cli_work

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

 .mailmap                                           |   1 +
 Documentation/admin-guide/cgroup-v2.rst            |   6 +
 .../bindings/display/panel/anbernic,td4310.yaml    |  66 ++
 .../bindings/display/panel/chipone,icna3512.yaml   |  79 ++
 .../bindings/display/panel/himax,hx83121a.yaml     |   3 +
 .../bindings/display/panel/ilitek,ili9488.yaml     |  63 ++
 .../bindings/display/panel/samsung,atna33xc20.yaml |   2 +
 .../display/rockchip/rockchip,analogix-dp.yaml     |  47 +-
 .../devicetree/bindings/gpu/img,powervr-rogue.yaml |   3 +-
 .../devicetree/bindings/gpu/img,powervr-sgx.yaml   |   3 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   6 +
 Documentation/gpu/automated_testing.rst            |   3 +-
 Documentation/gpu/drm-kms-helpers.rst              |   6 +
 Documentation/gpu/drm-kms.rst                      |  12 +
 Documentation/gpu/todo.rst                         |  50 +-
 MAINTAINERS                                        |  17 +-
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
 drivers/dma-buf/dma-fence.c                        |  22 +-
 drivers/dma-buf/dma-heap.c                         |   3 +-
 drivers/dma-buf/st-dma-fence-chain.c               |   4 +-
 drivers/dma-buf/st-dma-fence-unwrap.c              |  42 +-
 drivers/dma-buf/st-dma-fence.c                     |  16 +-
 drivers/dma-buf/st-dma-resv.c                      |  10 +-
 drivers/firmware/Kconfig                           |  28 +-
 drivers/gpu/buddy.c                                | 105 ++-
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  | 115 ++-
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |   2 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   9 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.h |   4 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c  |  32 +-
 drivers/gpu/drm/bridge/analogix/anx7625.c          |   2 +-
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c     |   9 +-
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.c    |   8 +-
 drivers/gpu/drm/bridge/chipone-icn6211.c           |   2 +-
 drivers/gpu/drm/bridge/display-connector.c         |  38 +-
 drivers/gpu/drm/bridge/fsl-ldb.c                   |   2 +-
 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c       |   2 +-
 drivers/gpu/drm/bridge/imx/imx8qm-ldb.c            |   2 +-
 drivers/gpu/drm/bridge/imx/imx8qxp-ldb.c           |   2 +-
 .../gpu/drm/bridge/imx/imx8qxp-pixel-combiner.c    |   2 +-
 drivers/gpu/drm/bridge/imx/imx8qxp-pixel-link.c    |   2 +-
 drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c       |   2 +-
 drivers/gpu/drm/bridge/inno-hdmi.c                 |   2 +-
 drivers/gpu/drm/bridge/ite-it6263.c                |   2 +-
 drivers/gpu/drm/bridge/ite-it6505.c                |   2 +-
 drivers/gpu/drm/bridge/ite-it66121.c               |   2 +-
 drivers/gpu/drm/bridge/lontium-lt9211.c            |   2 +-
 drivers/gpu/drm/bridge/lontium-lt9611.c            |   2 +-
 drivers/gpu/drm/bridge/lvds-codec.c                |   2 +-
 drivers/gpu/drm/bridge/nwl-dsi.c                   |   2 +-
 drivers/gpu/drm/bridge/of-display-mode-bridge.c    |   2 +-
 drivers/gpu/drm/bridge/panel.c                     |   2 +-
 drivers/gpu/drm/bridge/parade-ps8640.c             |   2 +-
 drivers/gpu/drm/bridge/samsung-dsim.c              |   2 +-
 drivers/gpu/drm/bridge/sii902x.c                   |   6 +-
 drivers/gpu/drm/bridge/ssd2825.c                   |   2 +-
 drivers/gpu/drm/bridge/synopsys/dw-dp.c            |   8 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |   3 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |   2 +-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c      |   2 +-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c     |   2 +-
 drivers/gpu/drm/bridge/tc358762.c                  |   2 +-
 drivers/gpu/drm/bridge/tc358767.c                  |   4 +-
 drivers/gpu/drm/bridge/tc358768.c                  |   2 +-
 drivers/gpu/drm/bridge/tc358775.c                  |   2 +-
 drivers/gpu/drm/bridge/ti-dlpc3433.c               |   2 +-
 drivers/gpu/drm/bridge/ti-sn65dsi83.c              |   3 +-
 drivers/gpu/drm/bridge/ti-sn65dsi86.c              |   2 +-
 drivers/gpu/drm/bridge/ti-tdp158.c                 |   2 +-
 drivers/gpu/drm/bridge/ti-tfp410.c                 |   2 +-
 drivers/gpu/drm/clients/drm_log.c                  |  10 +-
 drivers/gpu/drm/display/drm_bridge_connector.c     |  41 +-
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  68 +-
 drivers/gpu/drm/drm_atomic.c                       |  80 ++
 drivers/gpu/drm/drm_atomic_helper.c                |  86 ++
 drivers/gpu/drm/drm_atomic_state_helper.c          | 154 +++-
 drivers/gpu/drm/drm_atomic_uapi.c                  |   4 +
 drivers/gpu/drm/drm_bridge.c                       | 124 ++-
 drivers/gpu/drm/drm_buddy.c                        |  30 +-
 drivers/gpu/drm/drm_colorop.c                      |  41 +-
 drivers/gpu/drm/drm_connector.c                    | 192 +++-
 drivers/gpu/drm/drm_displayid_internal.h           |  24 +
 drivers/gpu/drm/drm_draw_internal.h                |   7 -
 drivers/gpu/drm/drm_drv.c                          |   4 +-
 drivers/gpu/drm/drm_dumb_buffers.c                 |   1 -
 drivers/gpu/drm/drm_edid.c                         |  80 +-
 drivers/gpu/drm/drm_fb_helper.c                    |  11 +-
 drivers/gpu/drm/drm_gem.c                          |   3 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c             |  22 +-
 drivers/gpu/drm/drm_mode_config.c                  | 189 +++-
 drivers/gpu/drm/drm_panic.c                        |   6 +-
 drivers/gpu/drm/drm_print.c                        |   4 +-
 drivers/gpu/drm/drm_writeback.c                    |   6 +
 drivers/gpu/drm/gma500/psb_drv.c                   |  56 +-
 drivers/gpu/drm/hisilicon/hibmc/Kconfig            |   4 +-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c     | 114 +--
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c    |  78 +-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.h    |   5 +
 drivers/gpu/drm/hyperv/hyperv_drm.h                |  16 +-
 drivers/gpu/drm/hyperv/hyperv_drm_drv.c            |  92 +-
 drivers/gpu/drm/hyperv/hyperv_drm_modeset.c        | 110 +--
 drivers/gpu/drm/hyperv/hyperv_drm_proto.c          |  70 +-
 drivers/gpu/drm/i915/display/intel_crtc.c          |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c            |  43 +-
 drivers/gpu/drm/i915/display/intel_plane.c         |   2 +-
 drivers/gpu/drm/i915/i915_active.c                 |   2 +-
 drivers/gpu/drm/imagination/pvr_drv.c              |   2 +-
 drivers/gpu/drm/imx/ipuv3/parallel-display.c       |   2 +-
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c          |   2 +-
 drivers/gpu/drm/lima/lima_device.c                 |  12 +-
 drivers/gpu/drm/loongson/lsdc_drv.c                |   4 +-
 drivers/gpu/drm/mediatek/mtk_dp.c                  |   2 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c                 |   2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c                |   2 +-
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c             |   2 +-
 drivers/gpu/drm/meson/meson_encoder_cvbs.c         |   2 +-
 drivers/gpu/drm/meson/meson_encoder_dsi.c          |   2 +-
 drivers/gpu/drm/meson/meson_encoder_hdmi.c         |   2 +-
 drivers/gpu/drm/mgag200/mgag200_drv.c              |  24 +-
 drivers/gpu/drm/msm/dp/dp_drm.c                    |   4 +-
 drivers/gpu/drm/msm/dsi/dsi_host.c                 |  25 +-
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c             |   2 +-
 drivers/gpu/drm/msm/msm_drv.c                      |   2 -
 drivers/gpu/drm/mxsfb/lcdif_drv.c                  |   2 +-
 drivers/gpu/drm/mxsfb/lcdif_kms.c                  |  18 +-
 drivers/gpu/drm/mxsfb/lcdif_regs.h                 |   1 +
 drivers/gpu/drm/nouveau/nouveau_drm.c              |  35 +-
 drivers/gpu/drm/nouveau/nouveau_gem.c              |  11 +-
 drivers/gpu/drm/nouveau/nvkm/engine/disp/gv100.c   |   4 +-
 drivers/gpu/drm/nouveau/nvkm/engine/disp/head.h    |   2 +
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/disp.c |   8 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c      |  31 +-
 drivers/gpu/drm/omapdrm/dss/hdmi4.c                |   2 +-
 drivers/gpu/drm/omapdrm/dss/hdmi5.c                |   2 +-
 drivers/gpu/drm/panel/Kconfig                      |  30 +
 drivers/gpu/drm/panel/Makefile                     |   3 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c      | 257 ++++++
 drivers/gpu/drm/panel/panel-chipone-icna35xx.c     | 422 +++++++++
 drivers/gpu/drm/panel/panel-edp.c                  |  19 +
 drivers/gpu/drm/panel/panel-himax-hx83121a.c       |  39 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9488.c       | 289 ++++++
 drivers/gpu/drm/panel/panel-novatek-nt36672a.c     | 522 ++++-------
 drivers/gpu/drm/panthor/panthor_device.h           |   3 +
 drivers/gpu/drm/panthor/panthor_drv.c              |  14 +-
 drivers/gpu/drm/panthor/panthor_gem.c              |  18 +
 drivers/gpu/drm/panthor/panthor_gem.h              |   2 +
 drivers/gpu/drm/panthor/panthor_mmu.c              | 259 ++++--
 drivers/gpu/drm/qxl/qxl_drv.c                      |  15 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_drv.c      |  20 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_lvds.c        |   2 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_mipi_dsi.c    |   2 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c     |   2 +-
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |  31 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.c             |   2 +-
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c          |  15 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 227 +++--
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 111 ++-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |   2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |   4 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       | 176 +++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h       |   2 +-
 drivers/gpu/drm/rockchip/rockchip_lvds.c           |   2 +-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c       |  46 +-
 drivers/gpu/drm/scheduler/sched_entity.c           |  11 +-
 drivers/gpu/drm/scheduler/sched_main.c             |   9 -
 drivers/gpu/drm/scheduler/tests/tests_basic.c      | 359 ++++++++
 drivers/gpu/drm/scheduler/tests/tests_scheduler.c  |   2 +-
 drivers/gpu/drm/solomon/ssd130x.c                  | 346 +++----
 drivers/gpu/drm/stm/lvds.c                         |   2 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |   2 +-
 drivers/gpu/drm/sysfb/Kconfig                      |   7 +-
 drivers/gpu/drm/sysfb/simpledrm.c                  | 109 ++-
 drivers/gpu/drm/tegra/drm.c                        |   2 +
 drivers/gpu/drm/tegra/dsi.c                        | 126 ++-
 drivers/gpu/drm/tegra/dsi.h                        |  10 +
 drivers/gpu/drm/tests/Makefile                     |   3 +-
 drivers/gpu/drm/tests/drm_bridge_test.c            | 973 +++++++++++++++++=
++-
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 347 ++++++-
 drivers/gpu/drm/tests/drm_kunit_edid.c             | 995 +++++++++++++++++=
++++
 drivers/gpu/drm/tests/drm_kunit_edid.h             | 985 +----------------=
---
 drivers/gpu/drm/tidss/tidss_crtc.c                 |  17 +-
 drivers/gpu/drm/tidss/tidss_encoder.c              |   2 +-
 drivers/gpu/drm/tidss/tidss_oldi.c                 |   2 +-
 drivers/gpu/drm/tidss/tidss_plane.c                |   2 +-
 drivers/gpu/drm/tiny/gm12u320.c                    |   5 +-
 drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c   |   2 +-
 drivers/gpu/drm/ttm/ttm_bo.c                       |   2 +-
 drivers/gpu/drm/ttm/ttm_pool.c                     |  37 +-
 drivers/gpu/drm/v3d/Kconfig                        |   1 +
 drivers/gpu/drm/v3d/v3d_drv.c                      |  20 +-
 drivers/gpu/drm/v3d/v3d_drv.h                      |  36 +-
 drivers/gpu/drm/v3d/v3d_sched.c                    |  66 +-
 drivers/gpu/drm/v3d/v3d_submit.c                   | 770 ++++++++--------
 drivers/gpu/drm/vc4/vc4_dsi.c                      |   2 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |   2 +-
 drivers/gpu/drm/verisilicon/vs_bridge.c            |   4 +-
 drivers/gpu/drm/virtio/virtgpu_drv.c               | 101 ++-
 drivers/gpu/drm/virtio/virtgpu_drv.h               |  26 +-
 drivers/gpu/drm/virtio/virtgpu_kms.c               |  71 +-
 drivers/gpu/drm/virtio/virtgpu_object.c            |  90 +-
 drivers/gpu/drm/virtio/virtgpu_prime.c             |  45 +-
 drivers/gpu/drm/virtio/virtgpu_vq.c                |  50 +-
 drivers/gpu/drm/virtio/virtgpu_vram.c              |   5 +-
 drivers/gpu/drm/xe/xe_bo.c                         |   2 +-
 drivers/gpu/drm/xe/xe_device.c                     |   4 +-
 drivers/gpu/drm/xe/xe_sched_job.c                  |   2 +-
 drivers/gpu/drm/xe/xe_svm.c                        |   2 +-
 drivers/gpu/drm/xe/xe_userptr.c                    |   2 +-
 drivers/gpu/drm/xe/xe_vm.c                         |   4 +-
 drivers/gpu/drm/xlnx/zynqmp_dp.c                   |   2 +-
 include/drm/bridge/analogix_dp.h                   |  13 +-
 include/drm/bridge/dw_dp.h                         |   1 +
 include/drm/display/drm_dp.h                       |  13 +-
 include/drm/display/drm_hdmi_state_helper.h        |   4 +-
 include/drm/drm_atomic.h                           |   5 +-
 include/drm/drm_atomic_helper.h                    |   7 +
 include/drm/drm_atomic_state_helper.h              |  18 +-
 include/drm/drm_bridge.h                           |  37 +-
 include/drm/drm_colorop.h                          |   2 +
 include/drm/drm_connector.h                        | 118 +++
 include/drm/drm_crtc.h                             |  16 +
 include/drm/drm_debugfs.h                          |   2 +-
 include/drm/drm_drv.h                              |   6 -
 include/drm/drm_gem.h                              |   3 -
 include/drm/drm_gem_shmem_helper.h                 |   4 +
 include/drm/drm_managed.h                          |   2 +-
 include/drm/drm_mipi_dsi.h                         |   2 +
 include/drm/drm_mode_config.h                      |   1 +
 include/drm/drm_plane.h                            |  16 +
 include/drm/drm_print.h                            |   2 +-
 include/linux/dma-fence.h                          |   4 +-
 include/linux/font.h                               |   3 +
 include/linux/gpu_buddy.h                          |  15 +
 include/linux/sysfb.h                              |   4 +-
 include/uapi/drm/drm_mode.h                        |   1 +
 include/uapi/drm/ethosu_accel.h                    |  60 +-
 include/uapi/drm/panthor_drm.h                     |  26 +-
 kernel/cgroup/dmem.c                               |  15 +
 lib/fonts/fonts.c                                  |  31 +
 254 files changed, 8982 insertions(+), 3165 deletions(-)
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

--nqhr4gt2rghpsda6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCakYMEAAKCRAnX84Zoj2+
dmxEAYDSmOdcq6UWHqS4zO8p2Y+UTUGNoLAs0i3OpITby6/5ZBaLeU7UnB/S9M18
dCWw6k4BfiU16qSXMoxUF542yF47+yW2shWj/OTYIxkF15JrnMOtlIhr46Q6N32W
8Jz6huPJ9g==
=2bAd
-----END PGP SIGNATURE-----

--nqhr4gt2rghpsda6--

