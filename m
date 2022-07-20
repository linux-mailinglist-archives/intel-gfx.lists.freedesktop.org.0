Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B30E57B630
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 14:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABA012A2DE;
	Wed, 20 Jul 2022 12:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754B914A538;
 Wed, 20 Jul 2022 12:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658319342; x=1689855342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1QhT6jQXOf5LANxgn9whzxYWaxnwk7I0tnGhga3K4lI=;
 b=CUl1xDuvg726SCd7BHPpBgfwV8NC7u7MIR3SGLEYm+9JEYgCSUDkz3mx
 vJKuEN/tYQqzEOg/mgBWMGE7w1hme3OeWCldmSXF4RWq7M+8DXk9t3Q9Z
 NctjNaUNzhF0+pgop81aoFY7foc1ZKdnstkiHN98NOuM20rV/tIx1vHdO
 kt8veUvyfzYd6pgFUf1taiXnjrXyYPoh3KvgBzY23gOhWdAn3RrLDSjiL
 Kgk0mD5vMgvvfw2xXg/D6m/gwWnSc4KhsJchOACH9Y/fKsJgCcFWBRTeW
 IV8Nq9qC/SL5W0Pp91rmqXR5vNH/NA55YGj+gqMO03dujQEcpPDTNUjv+ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="273598871"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="273598871"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 05:15:42 -0700
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="573280093"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 05:15:39 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Date: Wed, 20 Jul 2022 14:15:06 +0200
Message-Id: <20220720121508.1202750-2-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220720121508.1202750-1-andrzej.hajda@intel.com>
References: <20220720121508.1202750-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/3] drm/i915/hpd: postpone HPD cancel work
 after last user suspension
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915->hotplug.dig_port_work can be queued from intel_hpd_irq_handler
called by IRQ handler or by intel_hpd_trigger_irq called from dp_mst.
Since dp_mst is suspended after irq handler uninstall, a cleaner approach
is to cancel hpd work after intel_dp_mst_suspend, otherwise we risk
use-after-free.

It should fix following WARNINGS:
[283.405824] cpu_latency_qos_update_request called for unknown object
[283.405866] WARNING: CPU: 2 PID: 240 at kernel/power/qos.c:296 cpu_latency_qos_update_request+0x2d/0x100
[283.405912] CPU: 2 PID: 240 Comm: kworker/u64:9 Not tainted 5.18.0-rc6-Patchwork_103738v3-g1672d1c43e43+ #1
[283.405915] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.2397.A01.2109300731 09/30/2021
[283.405916] Workqueue: i915-dp i915_digport_work_func [i915]
[283.406020] RIP: 0010:cpu_latency_qos_update_request+0x2d/0x100
...
[283.406040] Call Trace:
[283.406041]  <TASK>
[283.406044]  intel_dp_aux_xfer+0x60e/0x8e0 [i915]
[283.406131]  ? finish_swait+0x80/0x80
[283.406139]  intel_dp_aux_transfer+0xc5/0x2b0 [i915]
[283.406218]  drm_dp_dpcd_access+0x79/0x130 [drm_display_helper]
[283.406227]  drm_dp_dpcd_read+0xe2/0xf0 [drm_display_helper]
[283.406233]  intel_dp_hpd_pulse+0x134/0x570 [i915]
[283.406308]  ? __down_killable+0x70/0x140
[283.406313]  i915_digport_work_func+0xba/0x150 [i915]

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4586
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5558
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 drivers/gpu/drm/i915/i915_irq.c              | 1 -
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 903226e2a6260d..ec8e59b3adaea7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9007,6 +9007,9 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 	 */
 	intel_dp_mst_suspend(i915);
 
+	/* MST is the last user of HPD work */
+	intel_hpd_cancel_work(i915);
+
 	/* poll work can call into fbdev, hence clean that up afterwards */
 	intel_fbdev_fini(i915);
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 73cebc6aa65072..db14787aef95dd 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4597,7 +4597,6 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 
 	free_irq(irq, dev_priv);
 
-	intel_hpd_cancel_work(dev_priv);
 	dev_priv->runtime_pm.irqs_enabled = false;
 }
 
-- 
2.25.1

