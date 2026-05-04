Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOJ2FhQd+WlB5wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 00:26:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E24494C45E1
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 00:26:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DCF10E41B;
	Mon,  4 May 2026 22:26:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hRFN9tGe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED82810E3F1;
 Mon,  4 May 2026 22:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777933585; x=1809469585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kKis4wOia3Y7LMA1Y6LRKN/sWwmPb8vEl/yEJq1Js7Y=;
 b=hRFN9tGeA32hpc2qAwe/FNnvxlP7VoD12wbriLpMJaRDs2TUjldablPM
 yBEO77X/uIoz+9j5cdbmDmzNJVHgVVBZm2KlCFifGiqIQOKcyCLu6gmuD
 1LVoTobBoMSLN7fG3wonLfi6G7BZLO94A43L3AQl3wQavDBKeLkCBbbbC
 kwYUm2qY/Q4BBgYuTj3Rdwmv4JyCtasS1ywv0HCCA6ForfQvppmh+44z+
 zp6gOWkP40Zt3+BHgBBsZcDdKaDDOZK2B2lzJbY60p4ZwW8mfpsw1Uhlh
 z2eIN95SofmnIGHwnqk8DD8/PXdYPjwSDggHPer1iM68tX7nk1rzGa2s3 A==;
X-CSE-ConnectionGUID: mnjawJz2SVKMJQbhaKvHsA==
X-CSE-MsgGUID: VZ76v9MjRuG+AQ0C++tnLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="77820271"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="77820271"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:26:24 -0700
X-CSE-ConnectionGUID: C4Q7QErGQ2+n4MMbEWGCMg==
X-CSE-MsgGUID: 4KW5aX7NQQWSRvZG/tOcGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="235509337"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.157])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:26:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/6] drm/i915/irq: deduplicate dg1_de_irq_postinstall() and
 gen11_de_irq_postinstall()
Date: Tue,  5 May 2026 01:26:08 +0300
Message-ID: <6b37c63a0475ebeaca6ba37bc5f3a48bdcecf568.1777933454.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777933454.git.jani.nikula@intel.com>
References: <cover.1777933454.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: E24494C45E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

dg1_de_irq_postinstall() and gen11_de_irq_postinstall() are exactly the
same. Remove dg1_de_irq_postinstall() and call
gen11_de_irq_postinstall() instead.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 9 ---------
 drivers/gpu/drm/i915/display/intel_display_irq.h | 1 -
 drivers/gpu/drm/i915/i915_irq.c                  | 2 +-
 3 files changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index b5bfdebc66ca..bf4b5e7b6011 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -2449,15 +2449,6 @@ void gen11_de_irq_postinstall(struct intel_display *display)
 	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
 }
 
-void dg1_de_irq_postinstall(struct intel_display *display)
-{
-	if (!HAS_DISPLAY(display))
-		return;
-
-	gen8_de_irq_postinstall(display);
-	intel_de_write(display, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
-}
-
 struct intel_display_irq_funcs {
 	void (*reset)(struct intel_display *display);
 };
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index b25d180254d7..e2b1674fae06 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -71,7 +71,6 @@ void vlv_display_irq_postinstall(struct intel_display *display);
 void ilk_de_irq_postinstall(struct intel_display *display);
 void gen8_de_irq_postinstall(struct intel_display *display);
 void gen11_de_irq_postinstall(struct intel_display *display);
-void dg1_de_irq_postinstall(struct intel_display *display);
 
 u32 i915_pipestat_enable_mask(struct intel_display *display, enum pipe pipe);
 void i915_enable_pipestat(struct intel_display *display, enum pipe pipe, u32 status_mask);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d4d8dd0a4174..ef9eadf38a53 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -778,7 +778,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	gen2_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
 
-	dg1_de_irq_postinstall(display);
+	gen11_de_irq_postinstall(display);
 
 	dg1_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
-- 
2.47.3

