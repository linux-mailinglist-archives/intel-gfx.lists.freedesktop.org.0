Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AYcJtMTzGmGOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDA83700B3
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D37310EB97;
	Tue, 31 Mar 2026 18:34:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nktxsLzb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C4FF10EB73;
 Tue, 31 Mar 2026 18:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982091; x=1806518091;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z7cqDrzE8UHypfkxWJ4tr836NkZdYUBc2mZKbuO/xFI=;
 b=nktxsLzbQG81Gc/2xp+BZTD8l5rAEnvWvLPlZz9JMm5SZESBKVuI1uhU
 +q2xZlXVrVB87uUt1NFnUDX7zAXaRWc6bmzhXWAZUqZqRCTQVfpSvnCMH
 uzcYyefgf8GMOMdvGV2FvsnfghaDxS6M/6klz404QTMqZbOGcD8VDUEcv
 cr4biVKsYwunSxvtfRY0t6UgdQ9fRYn475dRXEEk7CfEdh1ksM2lTIayK
 k9RkUEfR2SE3MH5h5fdWFlwFpslD9zWeSa280oPioE3KyPp/VyF2fuuxC
 plEZKA9aBr60WpvxB4jGpEemWAxhacOV0ut2RNZMMQkQigfAUdTHto/6a g==;
X-CSE-ConnectionGUID: LTPHDFAwTR6ktFv3JHlB3w==
X-CSE-MsgGUID: Q/1w733QTOignxSZ1htjfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705205"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705205"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:50 -0700
X-CSE-ConnectionGUID: ABntyPzfRJK25IlgmuKyeQ==
X-CSE-MsgGUID: S4zCxQGZTleFOVW1/Lamdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944550"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:50 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 16/16] drm/i915/bios: remove VS/PE Override warning
Date: Tue, 31 Mar 2026 20:33:32 +0200
Message-ID: <20260331183332.1773886-17-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260331183332.1773886-1-michal.grzelak@intel.com>
References: <20260331183332.1773886-1-michal.grzelak@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6FDA83700B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There is not much use of drm_WARN() from print_ddi_port() since
searching for VBT #57 is switched on by default. Remove it and
child_device from print_ddi_port() since drm_WARN() was the only user of
it.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 89c479925f6d..78ae953e040a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2869,7 +2869,6 @@ static bool is_port_valid(struct intel_display *display, enum port port)
 static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
 {
 	struct intel_display *display = devdata->display;
-	const struct child_device_config *child = &devdata->child;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_dsi, is_crt, supports_typec_usb, supports_tbt;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
 	enum port port;
@@ -2942,14 +2941,6 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata)
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

