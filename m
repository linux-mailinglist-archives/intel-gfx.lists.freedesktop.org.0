Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zZPHBXxNNWr+rwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 16:09:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B31A36A6474
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 16:08:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=dH0ACJym;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DC5A10F61A;
	Fri, 19 Jun 2026 14:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A9310F616
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2026 14:08:55 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id C84D0C06CD9;
 Fri, 19 Jun 2026 14:08:59 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id C20C9601AD;
 Fri, 19 Jun 2026 14:08:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 6A8E2106C8254; 
 Fri, 19 Jun 2026 16:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1781878132; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding; bh=XDkYpT+SCUd0m5Nj+gLnQpV+dZe6iTEpcMwnamD4vLs=;
 b=dH0ACJymmzk11uAEx0D/J4vHZvgWP2WRKaYt4kTgXxDW2J3XCzlxS87GEGm1sUB0RVH2tG
 d7UUkCyA8yhn0Rf9PkBvbtQcy8/paxGCX2NvAEY/vg2ovUkBmhEKPzHK9awWaFYFMuS9u5
 +7fERE7deqvf++LWoXM5rX6Pw1gCnm2PtMSZgCzd4s5LZRGjnzkyCjCPjdMABUf7xe5FvR
 CoONM4e3FywLalg4CkKyQnTQew9N6yIxOu9KbsYyCGBpRYXMt17LEJ3iIcKemJFv9fzeZt
 2Rw2CsviOe+YdT7MHWmGJAaEmMaBTWaTKQK1hBaw+Tm2XwSXBsiugUbFOwcRVA==
From: Kory Maincent <kory.maincent@bootlin.com>
Subject: [PATCH RFC v2 0/4] Add support for DisplayPort link training
 information report
Date: Fri, 19 Jun 2026 16:08:42 +0200
Message-Id: <20260619-feat_link_cap-v2-0-a3dec4c02ad9@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAGpNNWoC/12NwQrCMBBEf6Xs2chmLdF4EgQ/wKuU0qZbXdSmJ
 KUopf9uyNHjzGPeLBA5CEc4FgsEniWKH1KgTQHu0Qx3VtKlDIRkkMionpupfsnwrF0zKkLXtqb
 f6a5ESJsxcC+f7LvB9XKGKpUPiZMP3/wx64yyrkT7p5u1QrVHY/mgrXVMp9b7KeGt82+o1nX9A
 biHlSaxAAAA
X-Change-ID: 20260226-feat_link_cap-20cbb6f31d40
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Daniel Stone <daniels@collabora.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 Manasi Navare <navaremanasi@google.com>, 
 Drew Davenport <ddavenport@google.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Kory Maincent <kory.maincent@bootlin.com>
X-Mailer: b4 0.15.0
X-Last-TLS-Session-Version: TLSv1.3
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lumag@kernel.org,m:daniels@collabora.com,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:navaremanasi@google.com,m:ddavenport@google.com,m:louis.chauvet@bootlin.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:kory.maincent@bootlin.com,m:jernejskrabec@gmail.com,m:matthiasbgg@gmai
 l.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com,pengutronix.de,collabora.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B31A36A6474

DisplayPort link training negotiates the physical-layer parameters needed
for a reliable connection: lane count, link rate, and optionally Display
Stream Compression (DSC). Currently, each driver exposes this state in
its own way, often through driver-specific debugfs entries, with no
standard interface for userspace diagnostic and monitoring tools.

This series introduces generic, managed and unmanaged DisplayPort
connector initialization helpers, for exposing DP link capabilities and
state as standard sysfs entries, modeled after the existing HDMI helper
drmm_connector_hdmi_init().

The aim of such development is to guide users to select the most suitable
DisplayPort connector for their needs. For example, if you have a USB-C
hub with lesser capabilities than your computer’s native DisplayPort
connector (such as HBR2 versus HBR3 support), the system could recommend
connecting high-resolution displays directly to the computer’s port
instead of through the hub to ensure optimal performance.

These new drmm_connector_dp_init() and drm_connector_dp_init_with_ddc()
helpers initialize a DP connector and expose link training capabilities
and state to userspace via sysfs attributes under dp_link.

Additional helpers are provided to manage link capabilities and parameters
at runtime.

Two drivers are updated as reference implementations: i915 (direct
connector path) and MediaTek (via the bridge connector framework using a
new DRM_BRIDGE_OP_DP flag).

The changes updating the i915 driver to use DRM managed resources have been
removed due to cleanup path issues. The core problem is that some functions
do not consistently propagate errors through their call paths (whether this
is intentional or not) making it difficult to properly handle cleanup of
DRM objects (planes, encoders, connectors). A potential solution would be
to implement something similar to devres_group for each DRM object type,
but this represents a substantial undertaking that falls outside the scope
of this patch series.

The MST case in i915 driver is not supported yet.

Patch 1: Introduce the core drmm_connector_dp_init() framework
Patch 2: Wire the i915 DP connector to use the new helpers
Patch 3: Introduce DRM_BRIDGE_OP_DP and wire bridge connectors
Patch 4: Wire the MediaTek DP bridge to the new helpers [untested]

Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
---
Changes in v2:
- Removed work converting i915 to DRM managed resource
- Remove voltage swing and pre-emphasis properties
- Expose link training state via sysfs dp_link/ group instead of
  connector properties
- Add comprehensive sysfs attributes for both source and sink capabilities
- Add new helpers for managing sink capabilities and for current link
  parameters
- Link to v1: https://lore.kernel.org/r/20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com

---
Kory Maincent (4):
      drm: Introduce DisplayPort connector helpers with link training state
      drm/i915/display/dp: Adopt dp_connector helpers to expose link training state
      drm/bridge: Wire drmm_connector_dp_init() via new DRM_BRIDGE_OP_DP flag
      drm/mediatek: Use dp_connector helpers to report link training state

 drivers/gpu/drm/display/drm_bridge_connector.c     |  24 ++++
 drivers/gpu/drm/display/drm_dp_helper.c            | 144 +++++++++++++++++++++
 drivers/gpu/drm/drm_connector.c                    | 122 +++++++++++++++++
 drivers/gpu/drm/drm_sysfs.c                        | 100 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c            |  26 +++-
 .../gpu/drm/i915/display/intel_dp_link_training.c  |  17 +++
 drivers/gpu/drm/mediatek/mtk_dp.c                  |  23 ++++
 include/drm/display/drm_dp_helper.h                |   7 +
 include/drm/drm_bridge.h                           |  13 ++
 include/drm/drm_connector.h                        | 105 +++++++++++++++
 10 files changed, 577 insertions(+), 4 deletions(-)
---
base-commit: 4d75f8bd845c10f126e0e66bcdd264e1f9772bde
change-id: 20260226-feat_link_cap-20cbb6f31d40

Best regards,
--  
Köry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

