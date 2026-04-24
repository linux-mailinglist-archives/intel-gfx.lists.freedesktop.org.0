Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC7BDJtD62nZKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:19:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A31645CD47
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D03810F4A5;
	Fri, 24 Apr 2026 10:19:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ktmbp0HM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84FD110F4A5;
 Fri, 24 Apr 2026 10:19:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3AF2A6001A;
 Fri, 24 Apr 2026 10:19:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65ABAC19425;
 Fri, 24 Apr 2026 10:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1777025940;
 bh=skKWtWqkXldvhuwp2U5Xxf4qnnjX9+jASZIFkxD8u5A=;
 h=From:Subject:Date:To:Cc:From;
 b=ktmbp0HMb1o1k4DysM7B9s5h1qZV0xna6q9YwN4vEAztRVoDL6VGwSWQYquevBe+o
 f99L+5orLNJsTzArL+0Dl6QZ7ITMcrjJcJLM5LXattMJ/+QVWaidln47K6Ee+QvOpu
 qSgkSZDedqM9+rtQeVKcYw9wXTE7YoisGFZOKhmXICJxBOYAsV0GDURSDBpB9HPoqd
 DkskDce8a86oOkWdG8LedWKfFafm4LvXU0JK17X6fCIz+pbBkd1G4DHVQhUnpRH+E4
 1LI3HMVhtqZF2qCgpoVYR0WXR/D+TIRgC/ns/RhuUzsf2o50a+ALXVoQzqd+uxZWgt
 SPaN7UhOfaQDQ==
From: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 00/20] drm/atomic: Rework initial state allocation
Date: Fri, 24 Apr 2026 12:18:40 +0200
Message-Id: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/33OTQ7CIBAF4Ks0rB3DT23VlfcwLlo61IkWFLDRm
 N5dihtd6Io8Ju+bebKAnjCwbfFkHkcK5GwKalEwfWxsj0BdykxyWXElOHR+gMF1CNpZQz2QpQg
 ChVnJti5XHWepevFo6J7Z/eGdPV5vSY/vT9Y2YSaGgeK2yCYFDRbvEeZVwMv0srl7pBCdf+QLR
 5HL/48ZBaQJ1mpT6zUKbXYn9BbPS+f7LI7yQ5G/FJkUXSkjhCqxrvSXMk3TC7IQmFY7AQAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5145; i=mripard@kernel.org;
 h=from:subject:message-id; bh=skKWtWqkXldvhuwp2U5Xxf4qnnjX9+jASZIFkxD8u5A=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJmvnTu+rKlNXrLrWm7gxtQ3TnEv/tYfzFj67KW2r+62V
 BM2Xs7qjqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjCRPV2MtTI7blaWPP/C94VD
 voAnwOTX7xWy1wOSBH9nrpqkyc3XZXwsZNsmoXdztms1KGV1H7gygbG+pEpn2f9TNlN/nD8zSXf
 1Xy/+6o7n8TqFky5bPek/nWJ8bcfprOrnxx7dual2Wf3rrBNvAA==
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
X-Rspamd-Queue-Id: 9A31645CD47
X-Rspamd-Action: no action
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

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
      drm/atomic: Document atomic state lifetime
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
 drivers/gpu/drm/display/drm_bridge_connector.c     |  17 ++-
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  13 +-
 drivers/gpu/drm/drm_atomic.c                       |  63 +++++++++
 drivers/gpu/drm/drm_atomic_state_helper.c          | 136 +++++++++++++++---
 drivers/gpu/drm/drm_colorop.c                      |  41 ++++--
 drivers/gpu/drm/drm_drv.c                          |   4 +-
 drivers/gpu/drm/drm_mode_config.c                  | 154 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_crtc.c          |   2 +-
 drivers/gpu/drm/i915/display/intel_plane.c         |   2 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |   2 +-
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |   2 +-
 drivers/gpu/drm/tidss/tidss_crtc.c                 |  17 +--
 drivers/gpu/drm/tidss/tidss_drv.c                  |   6 +-
 drivers/gpu/drm/tidss/tidss_plane.c                |   2 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |   2 +-
 include/drm/display/drm_hdmi_state_helper.h        |   4 +-
 include/drm/drm_atomic.h                           |   5 +-
 include/drm/drm_atomic_state_helper.h              |  14 +-
 include/drm/drm_colorop.h                          |   2 +
 include/drm/drm_connector.h                        |  16 +++
 include/drm/drm_crtc.h                             |  16 +++
 include/drm/drm_mode_config.h                      |   1 +
 include/drm/drm_plane.h                            |  16 +++
 24 files changed, 476 insertions(+), 67 deletions(-)
---
base-commit: ea61048876a7137897da26dac49ee234fb38a35a
change-id: 20260310-drm-mode-config-init-1e1f52b745d0

Best regards,
-- 
Maxime Ripard <mripard@kernel.org>

