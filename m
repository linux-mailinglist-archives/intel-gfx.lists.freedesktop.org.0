Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 92LcIkyBOmoP+gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 14:51:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A876B7386
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 14:51:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=CqIksUFA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6874E10EB24;
	Tue, 23 Jun 2026 12:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C35B10EB26;
 Tue, 23 Jun 2026 12:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782219082; x=1813755082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RdjN7KHB2mcazyCo6F3VWPrM55qMSOrJSjCQ8CEfu0g=;
 b=CqIksUFA+6RufqIMQJ+f8RMF/UhN32iTrOSehmlKsptfuzckqcfPQ5zP
 dXyCAXjXGA4XYiN4rYuZ73BpNZuggUGQneVGYVyinPH+F+QkG3RaSxxPn
 Z4yMluW8a5PKTpeq1P6XT1xLbONr6jkRHnw+3s56z2NNM1V19a4CtBSvb
 4QiIC/BQpy6N+vTWQIECvHvYF5gi483Eh2RfgN+ENuFPxG3h3w6bQr9U8
 u0nWSxpO67qAA43yILjh4ZJzDH4iSTINd8lmn359rpLYhlqbg5gOhtt5y
 JCg3c74WKyzyCPi94no/bQS6MK25oaGyUMpaVHb3f0R7Bsq5qfgHXHkdf g==;
X-CSE-ConnectionGUID: 4VSpT1uLTei1woB7Du+C8w==
X-CSE-MsgGUID: az92d8M0TqSu3xkhwnyWlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100387493"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="100387493"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 05:51:21 -0700
X-CSE-ConnectionGUID: ZqnM4pIvTqq+qxV18TH5sw==
X-CSE-MsgGUID: EaxnHeK+TZW0BTJxBxnDww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="249624909"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 05:51:20 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915/gmbus: Rename GPIO pins
Date: Tue, 23 Jun 2026 15:51:06 +0300
Message-ID: <20260623125111.6632-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
References: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04A876B7386

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the alphabetical GPIOA,GPIOB,... with numeric
GPIO_0,GPIO_1,... This makes the naming scheme agree with
BSpec. No idea why the alphabetical naming was originally
chosen as BSpec never used that convention for the GPIO pins.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 124 ++++++++++-----------
 1 file changed, 62 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 049157c41fe2..9990e6391b03 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -54,21 +54,21 @@ struct intel_gmbus {
 };
 
 enum gmbus_gpio {
-	GPIOA,
-	GPIOB,
-	GPIOC,
-	GPIOD,
-	GPIOE,
-	GPIOF,
-	GPIOG,
-	GPIOH,
-	__GPIOI_UNUSED,
-	GPIOJ,
-	GPIOK,
-	GPIOL,
-	GPIOM,
-	GPION,
-	GPIOO,
+	GPIO_0,
+	GPIO_1,
+	GPIO_2,
+	GPIO_3,
+	GPIO_4,
+	GPIO_5,
+	GPIO_6,
+	GPIO_7,
+	GPIO_8,
+	GPIO_9,
+	GPIO_10,
+	GPIO_11,
+	GPIO_12,
+	GPIO_13,
+	GPIO_14,
 };
 
 struct gmbus_pin {
@@ -78,77 +78,77 @@ struct gmbus_pin {
 
 /* Map gmbus pin pairs to names and registers. */
 static const struct gmbus_pin gmbus_pins[] = {
-	[GMBUS_PIN_SSC] = { "ssc", GPIOB },
-	[GMBUS_PIN_VGADDC] = { "vga", GPIOA },
-	[GMBUS_PIN_PANEL] = { "panel", GPIOC },
-	[GMBUS_PIN_DPC] = { "dpc", GPIOD },
-	[GMBUS_PIN_DPB] = { "dpb", GPIOE },
-	[GMBUS_PIN_DPD] = { "dpd", GPIOF },
+	[GMBUS_PIN_SSC] = { "ssc", GPIO_1 },
+	[GMBUS_PIN_VGADDC] = { "vga", GPIO_0 },
+	[GMBUS_PIN_PANEL] = { "panel", GPIO_2 },
+	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
+	[GMBUS_PIN_DPD] = { "dpd", GPIO_5 },
 };
 
 static const struct gmbus_pin gmbus_pins_bdw[] = {
-	[GMBUS_PIN_VGADDC] = { "vga", GPIOA },
-	[GMBUS_PIN_DPC] = { "dpc", GPIOD },
-	[GMBUS_PIN_DPB] = { "dpb", GPIOE },
-	[GMBUS_PIN_DPD] = { "dpd", GPIOF },
+	[GMBUS_PIN_VGADDC] = { "vga", GPIO_0 },
+	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
+	[GMBUS_PIN_DPD] = { "dpd", GPIO_5 },
 };
 
 static const struct gmbus_pin gmbus_pins_skl[] = {
-	[GMBUS_PIN_DPC] = { "dpc", GPIOD },
-	[GMBUS_PIN_DPB] = { "dpb", GPIOE },
-	[GMBUS_PIN_DPD] = { "dpd", GPIOF },
+	[GMBUS_PIN_DPC] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_DPB] = { "dpb", GPIO_4 },
+	[GMBUS_PIN_DPD] = { "dpd", GPIO_5 },
 };
 
 static const struct gmbus_pin gmbus_pins_bxt[] = {
-	[GMBUS_PIN_1_BXT] = { "dpb", GPIOB },
-	[GMBUS_PIN_2_BXT] = { "dpc", GPIOC },
-	[GMBUS_PIN_3_BXT] = { "misc", GPIOD },
+	[GMBUS_PIN_1_BXT] = { "dpb", GPIO_1 },
+	[GMBUS_PIN_2_BXT] = { "dpc", GPIO_2 },
+	[GMBUS_PIN_3_BXT] = { "misc", GPIO_3 },
 };
 
 static const struct gmbus_pin gmbus_pins_cnp[] = {
-	[GMBUS_PIN_1_BXT] = { "dpb", GPIOB },
-	[GMBUS_PIN_2_BXT] = { "dpc", GPIOC },
-	[GMBUS_PIN_3_BXT] = { "misc", GPIOD },
-	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
+	[GMBUS_PIN_1_BXT] = { "dpb", GPIO_1 },
+	[GMBUS_PIN_2_BXT] = { "dpc", GPIO_2 },
+	[GMBUS_PIN_3_BXT] = { "misc", GPIO_3 },
+	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
 };
 
 static const struct gmbus_pin gmbus_pins_icp[] = {
-	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
-	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
-	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
-	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
-	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIOK },
-	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIOL },
-	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIOM },
-	[GMBUS_PIN_13_TC5_TGP] = { "tc5", GPION },
-	[GMBUS_PIN_14_TC6_TGP] = { "tc6", GPIOO },
+	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
+	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
+	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
+	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIO_10 },
+	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIO_11 },
+	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIO_12 },
+	[GMBUS_PIN_13_TC5_TGP] = { "tc5", GPIO_13 },
+	[GMBUS_PIN_14_TC6_TGP] = { "tc6", GPIO_14 },
 };
 
 static const struct gmbus_pin gmbus_pins_dg1[] = {
-	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
-	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
-	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
-	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
+	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
+	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
+	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
 };
 
 static const struct gmbus_pin gmbus_pins_dg2[] = {
-	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
-	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
-	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
-	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
-	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
+	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
+	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
+	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
+	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
 };
 
 static const struct gmbus_pin gmbus_pins_mtp[] = {
-	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
-	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
-	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
-	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
-	[GMBUS_PIN_5_MTP] = { "dpe", GPIOF },
-	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
-	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIOK },
-	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIOL },
-	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIOM },
+	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
+	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
+	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
+	[GMBUS_PIN_5_MTP] = { "dpe", GPIO_5 },
+	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
+	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIO_10 },
+	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIO_11 },
+	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIO_12 },
 };
 
 static const struct gmbus_pin *get_gmbus_pin(struct intel_display *display,
-- 
2.53.0

