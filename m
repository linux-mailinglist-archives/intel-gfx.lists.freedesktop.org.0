Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FF11C7C1F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 23:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED43D6E8EE;
	Wed,  6 May 2020 21:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18A56E8EE
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 21:15:42 +0000 (UTC)
IronPort-SDR: FqnUh/InOH0N3HMHJj7uq0E6OT46/GSV06Q7JSMOk4bXyRSvNMVs0/ndt0cNj6yekRWKh1BV0p
 nBSfuG+c5pNg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 14:15:40 -0700
IronPort-SDR: Zz8pVHqFUgB+oZpyDPAFrboWwa+UD5LIAh8WFMaGYZfAYeh2mBPXZO4ujbS38lxQAxPZ4dRDzz
 4q5PWcMf22KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,360,1583222400"; d="scan'208";a="249888245"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 06 May 2020 14:15:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 May 2020 14:14:05 -0700
Message-Id: <20200506211405.816125-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-17-matthew.d.roper>
References: <20200504225227.464666-17-matthew.d.roper>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 16/22] drm/i915/rkl: Don't try to access
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

v2: Move one transcoder check that wound up in the wrong function after
    conflict resolution.  It belongs in bdw_get_trans_port_sync_config
    rather than bxt_get_dsi_transcoder_state.

Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 +++
 drivers/gpu/drm/i915/i915_irq.c          | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0ab03282c397..f93bc0661d00 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4131,6 +4131,9 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 		enum intel_display_power_domain power_domain;
 		intel_wakeref_t trans_wakeref;
 
+		if (!HAS_TRANSCODER(dev_priv, cpu_transcoder))
+			continue;
+
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 		trans_wakeref = intel_display_power_get_if_enabled(dev_priv,
 								   power_domain);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 3c3fb9d9df62..297d4cacfb6a 100644
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
@@ -3397,6 +3400,9 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
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
