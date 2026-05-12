Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDjPH8wlA2oF1AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:06:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0E3520A87
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:06:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A39410EA91;
	Tue, 12 May 2026 13:06:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="A3G7WWRW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACAF710EA90;
 Tue, 12 May 2026 13:06:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DC5FA6012A;
 Tue, 12 May 2026 13:06:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 129ECC2BCF6;
 Tue, 12 May 2026 13:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1778591174;
 bh=mxkddz9BDuQCHvOCbUUJ90eg8pjGZVnjyCNE9GmxaFA=;
 h=From:Subject:Date:To:Cc:From;
 b=A3G7WWRWS4rMEE3kgvcztzYc4Vp0UwFUvGZuWuuBEL2U90x/52C786k9rldo6PuIm
 OeO9JsWgkXiP5kf1qb88sPJfzb/Zinr+6PMcGTJL04eIGFI7OHWciyqfxLk+wvZ1Vs
 YqA8s/Gq5r/4d8cdTyoUobaYwPRGhryzG6V/zcahueM6Q54YCNbpJWpT1eftT65Uxe
 gZX91C5wEygAJTd5eMI0ERK3YQM0R/6RAPkF9GRHYJCYHuET91NpsAFTWLEunJ1DRV
 8kyRi6eNuodqdRW4pUXJRNsse931/+cRWYHlRsrzvCIEhgOFdhbEBmIeit8gfdq3Yg
 ZWv8uSKTtfEpQ==
From: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v4 00/20] drm/atomic: Rework initial state allocation
Date: Tue, 12 May 2026 15:05:58 +0200
Message-Id: <20260512-drm-mode-config-init-v4-0-591dfdcc1bf9@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/33OTW7DIBAF4KtYrEvFn22SVe9RdRFgcEapIQVqp
 Yp89xKySKoqWb4ZvW/mTDIkhEy23ZkkWDBjDDWol47Y/S5MQNHVTAQTA5OcUZdmOkcH1MbgcaI
 YsFAO3PfCjKp3jNTqMYHHU2PfP645wdd31ct1SMwuX4h5xrLtApwKbRd6psmlsMdcYvppby28N
 Z5/sHBaNzDKzWg1cOvfDpACfL7GNDVxEXeKeKSIqthBes6lgnGw/xR5U5RQDxRZFW0G7TbOMKf
 NH2Vd119lfOmOdgEAAA==
X-Change-ID: 20260310-drm-mode-config-init-1e1f52b745d0
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Jyri Sarha <jyri.sarha@iki.fi>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Simon Ser <contact@emersion.fr>, Harry Wentland <harry.wentland@amd.com>, 
 Melissa Wen <mwen@igalia.com>, Sebastian Wick <sebastian.wick@redhat.com>, 
 Alex Hung <alex.hung@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5534; i=mripard@kernel.org;
 h=from:subject:message-id; bh=mxkddz9BDuQCHvOCbUUJ90eg8pjGZVnjyCNE9GmxaFA=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFnMqjvXLZf6dyeu1XHP/u9HBWbVRZtfjGu+6rvorGIN9
 4HbT29odkxlYRDmZJAVU2R5IhN2enn74ioH+5U/YOawMoEMYeDiFICJ2K5nrI/Or+nKbkyvvMLX
 5DWlY4Ga9c7kmUs3fi0wTKyd5hP1OPy+l+qnPF6n/nv7bkv2xngcYazh3FwsuI8v/dxi/i0r3Za
 eF99arPP1j7ZmWlFQ05cvS9Wmh2bFSSh08T1iZq+buetWmTcA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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
X-Rspamd-Queue-Id: 2F0E3520A87
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[40];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Hi,

This series started from my work on the hardware state readout[1], and
more specifically a discussion with Thomas[2].

This series expands the work that has been merged recently to make
drm_private_obj and drm_private_state allocation a bit more consistent
and ended up creating a new atomic_create_state callback to allocate a
new state with no side effect.

The first patches document the existing behaviour and fix a few
cleanups and typos.

Then, __drm_*_state_reset() helpers are renamed to
__drm_*_state_init() to clarify that they initialize rather than
reset state, and we add the new atomic_create_state callback to
every other DRM object (planes, CRTCs, connectors, colorops).

Next, we leverage those new callbacks to create a new helper,
drm_mode_config_create_initial_state(), to create the initial state
for all the objects of a driver, and update the driver skeleton to
recommend it.

Finally, we convert the tidss driver and the bridge_connector to the
new pattern.

This was tested on a TI SK-AM62, with the tidss driver.

Let me know what you think,
Maxime

1: https://lore.kernel.org/dri-devel/20250902-drm-state-readout-v1-0-14ad5315da3f@kernel.org/
2: https://lore.kernel.org/dri-devel/5920ffe5-b6b1-484b-b320-332b9eb9db82@suse.de/

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
Changes in v4:
- Rebased on current drm-misc-next
- Update drm_atomic_state to drm_atomic_commit
- Various doc impromvements
- Don't call drm_crtc_vblank_reset in create_state
- Prevent mem leak if states already have a state when
  drm_mode_config_reset or _create_initial_state are called
- Link to v3: https://lore.kernel.org/r/20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org

Changes in v3:
- Reintroduce state documentation that was dropped by accident
- Change name to drm_mode_config_create_initial_state()
- Don't call drm_mode_config_create_initial_state() in drm_dev_register
  anymore
- Drop __drm_atomic_helper_*_create_state
- Improve documentation and commit messages where necessary
- Collected tags
- Link to v2: https://lore.kernel.org/r/20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org

Changes in v2:
- Change the _state_reset function names to _state_init
- Change the colorop too
- Various doc improvements
- Link to v1: https://lore.kernel.org/r/20260310-drm-mode-config-init-v1-0-de7397c8e1cf@kernel.org

---
Maxime Ripard (20):
      drm/atomic: Document atomic commit lifetime
      drm/colorop: Fix typos in the doc
      drm/atomic: Drop drm_private_obj.state assignment from create_state
      drm/atomic: Expand atomic_create_state expectations for drm_private_obj
      drm/mode-config: Document drm_private_obj exclusion from drm_mode_config_reset()
      drm/colorop: Rename __drm_colorop_state_reset()
      drm/colorop: Create drm_atomic_helper_colorop_create_state()
      drm/atomic-state-helper: Fix __drm_atomic_helper_plane_reset() doc typo
      drm/atomic-state-helper: Rename __drm_atomic_helper_plane_state_reset()
      drm/plane: Add new atomic_create_state callback
      drm/atomic-state-helper: Rename __drm_atomic_helper_crtc_state_reset()
      drm/crtc: Add new atomic_create_state callback
      drm/atomic-state-helper: Rename __drm_atomic_helper_connector_state_reset()
      drm/hdmi: Rename __drm_atomic_helper_connector_hdmi_reset()
      drm/connector: Add new atomic_create_state callback
      drm/mode-config: Create drm_mode_config_create_initial_state()
      drm/drv: Switch skeleton to drm_mode_config_create_initial_state()
      drm/tidss: Switch to drm_mode_config_create_initial_state()
      drm/tidss: Convert to atomic_create_state
      drm/bridge_connector: Convert to atomic_create_state

 Documentation/gpu/drm-kms.rst                      |   6 +
 drivers/gpu/drm/display/drm_bridge_connector.c     |  17 +-
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  15 +-
 drivers/gpu/drm/drm_atomic.c                       |  66 ++++++++
 drivers/gpu/drm/drm_atomic_state_helper.c          | 114 ++++++++++---
 drivers/gpu/drm/drm_colorop.c                      |  41 ++++-
 drivers/gpu/drm/drm_drv.c                          |   4 +-
 drivers/gpu/drm/drm_mode_config.c                  | 187 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_crtc.c          |   2 +-
 drivers/gpu/drm/i915/display/intel_plane.c         |   2 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |   2 +-
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |   2 +-
 drivers/gpu/drm/tidss/tidss_crtc.c                 |  17 +-
 drivers/gpu/drm/tidss/tidss_drv.c                  |   6 +-
 drivers/gpu/drm/tidss/tidss_plane.c                |   2 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |   2 +-
 include/drm/display/drm_hdmi_state_helper.h        |   4 +-
 include/drm/drm_atomic.h                           |   5 +-
 include/drm/drm_atomic_state_helper.h              |  12 +-
 include/drm/drm_colorop.h                          |   2 +
 include/drm/drm_connector.h                        |  16 ++
 include/drm/drm_crtc.h                             |  16 ++
 include/drm/drm_mode_config.h                      |   1 +
 include/drm/drm_plane.h                            |  16 ++
 24 files changed, 489 insertions(+), 68 deletions(-)
---
base-commit: b462608de92a7cac450781f9d8d4c7cf3ccf82db
change-id: 20260310-drm-mode-config-init-1e1f52b745d0

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

