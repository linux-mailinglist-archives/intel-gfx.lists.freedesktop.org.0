Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDwhBKrc8WnKkwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:25:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D59F9492D0E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:25:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5433C10EF62;
	Wed, 29 Apr 2026 10:25:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLHHwzVd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A385C10EF62;
 Wed, 29 Apr 2026 10:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777458343; x=1808994343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ec+yDon4dp/8QZ35haMc+c5gH8WWBMbodI2k5lmL5I4=;
 b=kLHHwzVda+a3E3WoztSm67PbJUsRnOXvvkPpDgrIPluaVyNdg8xl34ti
 4ObD1aprVJiiTXyCE3g+IoP2qvBdgA9qY1E1pk5cCVjkpggY77IOniLGY
 /2GyU/tajBGBmRMzbTrCkv3yzozmtPnCR183jKUPcMrI3cfk5N3ETYfu1
 TcloJ/rm9GdIKztOdAU3Lr/SAkFVQD9wMqk6Ahzutc7s6GwDugfd6AQLp
 XWluLutde9KfIs1BeHtcWFIBA7P4/5ZP3Ut4UMkHjpPI2pQKfn3GlzPWw
 sGK0tzM9kMMu7EkC+fhJaIeZ/SSiTF2+VL21f9byU08WLF1PT7/p6b1z9 g==;
X-CSE-ConnectionGUID: Eq0XycRDTQCCgo8+pJK5Dw==
X-CSE-MsgGUID: 1UmeB+fVTMm+DiWYLxL1MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="103838184"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="103838184"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:43 -0700
X-CSE-ConnectionGUID: Jt/DThmiS9mqqh8lFDfvuw==
X-CSE-MsgGUID: THfRAY74T4iS6AGih8JfXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="257784030"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/15] drm/i915/irq: move VLV/CHV LPE irq handler call after
 irq acks
Date: Wed, 29 Apr 2026 13:24:50 +0300
Message-ID: <8932c31b9fec5c50f64dbb5d9f2e682b1e6d3d5c.1777458161.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777458161.git.jani.nikula@intel.com>
References: <cover.1777458161.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: D59F9492D0E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

The location of the intel_lpe_audio_irq_handler() call seems too
early. Group the handler calls together slightly later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ef9eadf38a53..1c87f56d668d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -282,10 +282,6 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
 
-		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
-			   I915_LPE_PIPE_B_INTERRUPT))
-			intel_lpe_audio_irq_handler(display);
-
 		/*
 		 * VLV_IIR is single buffered, and reflects the level
 		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
@@ -301,6 +297,10 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		if (pm_iir)
 			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
 
+		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
+			   I915_LPE_PIPE_B_INTERRUPT))
+			intel_lpe_audio_irq_handler(display);
+
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(display, hotplug_status);
 
@@ -372,11 +372,6 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		 * signalled in IIR */
 		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
 
-		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
-			   I915_LPE_PIPE_B_INTERRUPT |
-			   I915_LPE_PIPE_C_INTERRUPT))
-			intel_lpe_audio_irq_handler(display);
-
 		/*
 		 * VLV_IIR is single buffered, and reflects the level
 		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
@@ -387,6 +382,11 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
 		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 
+		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
+			   I915_LPE_PIPE_B_INTERRUPT |
+			   I915_LPE_PIPE_C_INTERRUPT))
+			intel_lpe_audio_irq_handler(display);
+
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(display, hotplug_status);
 
-- 
2.47.3

