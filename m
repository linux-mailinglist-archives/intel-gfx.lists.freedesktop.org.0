Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0HtEG5AOP2omOgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E116D0905
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HcaXpXwj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9640710E0E6;
	Fri, 26 Jun 2026 23:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F1010F744;
 Fri, 26 Jun 2026 23:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782517389; x=1814053389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+q8trtOHfaU+x8vWjKZSFexLO0vnpw6K5MgtN8cq3dI=;
 b=HcaXpXwjBYBLgCYeLeR8jHR4Rto6RNo0qB003EwONEZ1E31sRSfrjsF/
 kLuJ2ehw7tucARnS1ugAIgEhKOy4axniEX2DTO5iI0b/lvAII/BWDPqB6
 GEj/+ni5x96wdexPq6obgCc/imEpaEwteH4NiH3Z5v5GTfDDbXZ5ZE05d
 3LW3d1XOPTvaB6kBBM+N106E+rInA4/QvEevhulSR8JcVtlHzLFmtNShH
 6f6MRE8TVgm8Noxbb62CfBMfLQSTie05hM+T38FSLBw/oewB/mCB7WX2W
 bfv9/63ZMHnZHwSw62l5YcPfiZ6WOp1dd8nPz2+R59BkgHt9JG3dPpT/6 w==;
X-CSE-ConnectionGUID: 5x2nYMLbTnaz+gef6LmYNw==
X-CSE-MsgGUID: wlx47nU4RlylFCHm54t2/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="85861099"
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="85861099"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 16:43:09 -0700
X-CSE-ConnectionGUID: Na4JCMXtRaur48iCGCipng==
X-CSE-MsgGUID: lWW3n9rJQl2LLnYPyUnRKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="248073770"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP; 26 Jun 2026 16:43:08 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v9 8/8] drm/i915/bios: remove VS/PE-O warning
Date: Sat, 27 Jun 2026 01:42:46 +0200
Message-ID: <20260626234246.2446451-9-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260626234246.2446451-1-michal.grzelak@intel.com>
References: <20260626234246.2446451-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 23E116D0905

There is not much use of warning when port asks to override default
VS/PE since it is already logged. Remove drm_WARN() and child_device
from print_ddi_port() since drm_WARN() was the only user of it.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> # v4
---
 drivers/gpu/drm/i915/display/intel_bios.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c5265a532dfd6..9738a2c7f49f7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2770,7 +2770,6 @@ static bool is_port_valid(struct intel_display *display, enum port port)
 static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 {
 	struct intel_display *display = devdata->display;
-	const struct child_device_config *child = &devdata->child;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
 	enum port port;
@@ -2843,14 +2842,6 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 		drm_dbg_kms(display->drm,
 			    "Port %c VBT DP max link rate: %d\n",
 			    port_name(port), dp_max_link_rate);
-
-	/*
-	 * FIXME need to implement support for VBT
-	 * vswing/preemph tables should this ever trigger.
-	 */
-	drm_WARN(display->drm, child->use_vbt_vswing,
-		 "Port %c asks to use VBT vswing/preemph tables\n",
-		 port_name(port));
 }
 
 static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
-- 
2.45.2

