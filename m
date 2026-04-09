Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NOhNe3g3GmKXwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACA33EBEF9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FFEA10E42A;
	Mon, 13 Apr 2026 12:26:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="hxpi7Dsx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0183A10E011
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 17:08:53 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 4AD721A324E;
 Thu,  9 Apr 2026 17:08:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 00587603E4;
 Thu,  9 Apr 2026 17:08:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id B8770104500F2; 
 Thu,  9 Apr 2026 19:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1775754530; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding; bh=vkWOcKx6uUnLGWEeSpSMD8GMbN5TDhNOCyHUzp+VpLg=;
 b=hxpi7DsxOvnrGkGEMd+Aa5L7+cTR44o6q+DIIYM+E88DF08NNiyGSA36Z9B4uTkPe9PTf3
 Y1Mk2/KNjvIiSUnjp+GTl2o32jI/r0soNWm+SBkJliCgN3BwZxRrxdFL58Hk5UBNyxxU66
 o+th6eHU1A4yNEroonMDElx+4JgdLv68aWDmEACMzOD1Xf7fT9k/ovMBns/p6sTn+D53D5
 l7gP3O7x9X7kwvGIhScbDAZh4NjOCoYvale6z4mrsLdOhSQuGo7Ka7dpGxuFmJhyLYlxXv
 2XEYp9Ki+p27ZZgvpeUgFNv70GwDkdOH64xkmoWbfBfPWMfBPLAuprjOnPcl3g==
From: Kory Maincent <kory.maincent@bootlin.com>
Subject: [PATCH RFC 00/12] Add support for DisplayPort link training
 information report
Date: Thu, 09 Apr 2026 19:08:16 +0200
Message-Id: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAADd12kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIyMz3bTUxJL4nMy87PjkxAJdI4PkpCSzNGPDFBMDJaCegqLUtMwKsHn
 RSkFuzkqxtbUAHOP6R2QAAAA=
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Dave Airlie <airlied@redhat.com>, 
 Jesse Barnes <jbarnes@virtuousgeek.org>, Eric Anholt <eric@anholt.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chris Wilson <chris@chris-wilson.co.uk>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Simona Vetter <simona.vetter@ffwll.ch>, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.14-dev-d4707
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Approved-At: Mon, 13 Apr 2026 12:26:15 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[91];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:airlied@redhat.com,m:jbarnes@virtuousgeek.org,m:eric@anholt.net,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chris@chris-wilson.co.uk,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:louis.chauvet@bootlin.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:simona.vetter@ffwll.ch,m:kory.maincent@bootlin.com,m:jernejskrabec@gmail.com,m:matthiasbgg@gmail.c
 om,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_SENDER(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,bootlin.com:email,bootlin.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8ACA33EBEF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DisplayPort link training negotiates the physical-layer parameters needed
for a reliable connection: lane count, link rate, voltage swing,
pre-emphasis, and optionally Display Stream Compression (DSC). Currently,
each driver exposes this state in its own way, often through
driver-specific debugfs entries, with no standard interface for userspace
diagnostic and monitoring tools.

This series introduces a generic, DRM-managed framework for exposing DP
link training state as standard connector properties, modeled after the
existing HDMI helper drmm_connector_hdmi_init().

The new drmm_connector_dp_init() helper initializes a DP connector and
registers the following connector properties to expose the negotiated link
state to userspace:

- num_lanes:      negotiated lane count (1, 2 or 4)
- link_rate:      negotiated link rate
- dsc_en:         whether Display Stream Compression is active
- voltage_swingN: per-lane voltage swing level (lanes 0-3)
- pre_emphasisN:  per-lane pre-emphasis level (lanes 0-3)

Two runtime helpers update and clear these properties when link training
completes or the link goes down:
- drm_connector_dp_set_link_train_properties()
- drm_connector_dp_reset_link_train_properties()

Two drivers are updated as reference implementations: i915 (direct
connector path) and MediaTek (via the bridge connector framework using a
new DRM_BRIDGE_OP_DP flag). The i915 patches are preceded by a series of
conversions to DRM managed resources, which are required before adopting
drmm_connector_dp_init().

The MST case in i915 driver is not supported yet.

Patches 1-3:  Fix two error-path cleanup bugs in i915 sdvo and lvds
[Will probably be sent standalone]
Patches 4-8: Convert i915 display resources to DRM managed lifetime
Patch 9: Introduce the core drmm_connector_dp_init() framework
Patch 10: Wire the i915 DP connector to use the new helpers
Patch 11: Introduce DRM_BRIDGE_OP_DP and wire bridge connectors
Patch 12: Wire the MediaTek DP bridge to the new helpers [untested]

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
Kory Maincent (12):
      drm/i915/display/intel_sdvo: Fix double connector destroy in error paths
      drm/i915/display/intel_lvds: Drop redundant manual cleanup on init failure
      drm/i915/display/intel_dp: Drop redundant intel_dp_aux_fini() on init failure
      drm/i915/display: Switch to drmm_mode_config_init() and drop manual cleanup
      drm/i915/display: Switch to managed for crtc
      drm/i915/display: Switch to managed for plane
      drm/i915/display: Switch to managed for encoder
      drm/i915/display: Switch to managed for connector
      drm: Introduce drmm_connector_dp_init() with link training state properties
      drm/i915/display/dp: Adopt dp_connector helpers to expose link training state
      drm/bridge: Wire drmm_connector_dp_init() via new DRM_BRIDGE_OP_DP flag
      drm/mediatek: Use dp_connector helpers to report link training state

 drivers/gpu/drm/Makefile                           |   1 +
 drivers/gpu/drm/display/drm_bridge_connector.c     |  26 +-
 drivers/gpu/drm/drm_dp_connector.c                 | 344 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/g4x_dp.c              |  39 +--
 drivers/gpu/drm/i915/display/g4x_hdmi.c            |  27 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  97 +++---
 drivers/gpu/drm/i915/display/icl_dsi.c             |  50 ++-
 drivers/gpu/drm/i915/display/intel_connector.c     |  26 +-
 drivers/gpu/drm/i915/display/intel_connector.h     |   5 +-
 drivers/gpu/drm/i915/display/intel_crt.c           |  28 +-
 drivers/gpu/drm/i915/display/intel_crtc.c          | 102 +++---
 drivers/gpu/drm/i915/display/intel_cursor.c        |  41 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  64 ++--
 drivers/gpu/drm/i915/display/intel_display.c       |   8 -
 drivers/gpu/drm/i915/display/intel_display.h       |   1 -
 .../gpu/drm/i915/display/intel_display_driver.c    |  37 ++-
 drivers/gpu/drm/i915/display/intel_dp.c            |  43 ++-
 .../gpu/drm/i915/display/intel_dp_link_training.c  |  25 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |  33 +-
 drivers/gpu/drm/i915/display/intel_dvo.c           |  43 +--
 drivers/gpu/drm/i915/display/intel_encoder.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_encoder.h       |   3 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          |  15 +-
 drivers/gpu/drm/i915/display/intel_lvds.c          |  45 ++-
 drivers/gpu/drm/i915/display/intel_plane.c         |  45 +--
 drivers/gpu/drm/i915/display/intel_plane.h         |   5 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c          | 134 +++-----
 drivers/gpu/drm/i915/display/intel_sprite.c        | 119 ++++---
 drivers/gpu/drm/i915/display/intel_tv.c            |  26 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 102 +++---
 drivers/gpu/drm/i915/display/vlv_dsi.c             |  42 +--
 drivers/gpu/drm/mediatek/mtk_dp.c                  |  34 +-
 include/drm/drm_bridge.h                           |  13 +
 include/drm/drm_connector.h                        |  38 +++
 include/drm/drm_dp_connector.h                     | 109 +++++++
 35 files changed, 1125 insertions(+), 651 deletions(-)
---
base-commit: db5a75cfd29766536be62aece9f19c6e7a858fa6
change-id: 20260226-feat_link_cap-20cbb6f31d40

Best regards,
-- 
Köry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

