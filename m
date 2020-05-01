Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDC81C1B31
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DCA6ECED;
	Fri,  1 May 2020 17:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B7496ECFD
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:08:01 +0000 (UTC)
IronPort-SDR: GMA1QXUxJxDGp5t7MfYHf/RWDcLUZgwBxZYLSz4qnAZAXoL7ydsByC9H/MOXltI1XPjMNm1Lig
 +/TfQdqQ/M1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:08:00 -0700
IronPort-SDR: 4qxelrkusFIB+KBkkvCfVl3x+BfcAOQlJnAdx6tVRQLTaz+SYGvaXw/qiYedAplQX/zFqd49Q6
 dQByn1jUiw4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250062152"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:07:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 10:07:42 -0700
Message-Id: <20200501170748.358135-18-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/23] drm/i915/rkl: Don't try to access
 transcoder D
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are a couple places in our driver that loop over transcoders A..D
for gen11+; since RKL only has three pipes/transcoders, this can lead to
unclaimed register reads/writes.  We should add checks for transcoder
existence where appropriate.

Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 drivers/gpu/drm/i915/i915_irq.c              | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1ed6bb03379b..39d95dc14546 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11007,6 +11007,9 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 		else
 			cpu_transcoder = TRANSCODER_DSI_C;
 
+		if (!HAS_TRANSCODER(dev_priv, cpu_transcoder))
+			continue;
+
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 		drm_WARN_ON(dev, *power_domain_mask & BIT_ULL(power_domain));
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 622986759ec6..1381cb530c2f 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2849,6 +2849,9 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 		for (trans = TRANSCODER_A; trans <= TRANSCODER_D; trans++) {
 			enum intel_display_power_domain domain;
 
+			if (!HAS_TRANSCODER(dev_priv, trans))
+				continue;
+
 			domain = POWER_DOMAIN_TRANSCODER(trans);
 			if (!intel_display_power_is_enabled(dev_priv, domain))
 				continue;
@@ -3399,6 +3402,9 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 		for (trans = TRANSCODER_A; trans <= TRANSCODER_D; trans++) {
 			enum intel_display_power_domain domain;
 
+			if (!HAS_TRANSCODER(dev_priv, trans))
+				continue;
+
 			domain = POWER_DOMAIN_TRANSCODER(trans);
 			if (!intel_display_power_is_enabled(dev_priv, domain))
 				continue;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
