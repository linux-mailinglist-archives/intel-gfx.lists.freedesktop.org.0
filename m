Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBD61C49D9
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 612056E4DE;
	Mon,  4 May 2020 22:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717036E4CF
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 22:52:43 +0000 (UTC)
IronPort-SDR: i6lRNeW1c5OMsTPmzEXX6/tPhO7VYi+jRn8QqGpFlEEb6XP42hYY9pKwB2hxVGgpsBoYOd0ixf
 INglyG5z2TBA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 15:52:43 -0700
IronPort-SDR: b2AMZXcCMnxWGXLNjzDDl2VjWx0urefC89tSf1uIr4ud3rEksiIb+jmtIp0AueX2EIsi4KJx5X
 7xR/TqMHTuYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295646746"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 15:52:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 15:52:21 -0700
Message-Id: <20200504225227.464666-17-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 16/22] drm/i915/rkl: Don't try to access
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
index fcfc3812ef28..2eeafda82188 100644
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
