Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9KBGLeAXJ2olrgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6145E65A0D4
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gd4gNx5S;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E076110F913;
	Mon,  8 Jun 2026 19:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 926FE10F90F;
 Mon,  8 Jun 2026 19:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780946910; x=1812482910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BJGoaPwnyhwhzmqYjyoKB39qsfcl64o5u70DJTcRUoE=;
 b=gd4gNx5SaZLmHdtbU7py/F76fK3gGlwG71acoNsNaImmx1qh8B6FoTXT
 RavzOfgoGv/55YKL5GtGTM8cEMEeyM+Aqou0NPiO+1CtOthOrD5hRa/A6
 0r9gVCLEWv/dnYDfGiv6yqO3uoRxzMslxny8VhRYWwRJofRb6twoiN+J9
 I/FOJUZxmuOCyv8IPxy2ARBYaZsFp4qN50klZALdDdIi0TAcSkPhtpVeY
 ZqyVYwXAkJXTzXzrZP8QmW8Kip80ioU0LCG3nMr3IU/7wdhdR+KFEoWno
 w6LJLZmygcJF0lJA6rOxcmTu2DqqWbuegPvS0X0yTOdtXQszJSil7688C A==;
X-CSE-ConnectionGUID: 3iQl7UAFStG+T32uzaHB5g==
X-CSE-MsgGUID: PJFjdMVEQdqRTtX6SOHaUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85324015"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85324015"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 12:28:29 -0700
X-CSE-ConnectionGUID: FeJPTRoKTBCtyUW3A8b81Q==
X-CSE-MsgGUID: oU7GfZ+qRI+miS+Jqig09Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="244513581"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 08 Jun 2026 12:28:28 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v7 3/8] drm/i915/bios: print VS/PE-O port info
Date: Mon,  8 Jun 2026 21:28:16 +0200
Message-ID: <20260608192821.3414590-4-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260608192821.3414590-1-michal.grzelak@intel.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6145E65A0D4

Issue a debug message when port asks to override default Vswing /
Preemphasis tables.

Add helper intel_bios_encoder_requests_vspeo() to check if port
requests for overriding default VS/PE tables.

v6->v7
- expand VS/PE-O acronym in debug logging (Jani)

v3->v4
- change debug message when requesting VS/PE-O (Suraj)

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 6c22853b535f..70467344f08e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2781,6 +2781,11 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 			    "Port %c supports dynamic DDI allocation in TCSS\n",
 			    port_name(port));
 
+	if (intel_bios_encoder_requests_vspeo(devdata))
+		drm_dbg_kms(display->drm,
+			    "Port %c requests vswing/pre-emphasis override\n",
+			    port_name(port));
+
 	hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
 	if (hdmi_level_shift >= 0) {
 		drm_dbg_kms(display->drm,
@@ -3809,6 +3814,11 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
 	return map_ddc_pin(devdata->display, devdata->child.ddc_pin);
 }
 
+bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata->display->vbt.version >= 218 && devdata->child.use_vbt_vswing;
+}
+
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 195 && devdata->child.dp_usb_type_c;
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 75dff27b4228..7a50a272cd27 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -73,6 +73,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 
+bool intel_bios_encoder_requests_vspeo(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata);
-- 
2.45.2

