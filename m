Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0K4sNpLr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDE54E1F7C
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3206110EF3E;
	Thu,  7 May 2026 01:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UmGJ6l2m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D60710EF3B;
 Thu,  7 May 2026 01:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117519; x=1809653519;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8fl4WD7/1C2TVNAnCCj31Ea0zAhQaXM9hWBFoGJQ4rk=;
 b=UmGJ6l2m5zE6GqqkjSHMVLwdN+CyYAlBJd3gNznLOcOBEc55WxgV7IyD
 NwLEx1VHzSegbz37N0iQsy4La8+fgJFFDEQr+H7Lun4QQf3GtklqeFQe2
 /vVsmcXS99qMyxYleXAaPXdgGMTKNIgg217CX0dYp3s5KSOBXu/atgp8T
 /Fg+0BCPGXdrNzdhjGpFmVztauH4uX1f+c8x2g+ywbOEESBf2JsenYsNG
 Q8H0h6S605dOD7RxljKanulH130cC361HdrE304MeaK1gAqiI4tTOFWlm
 OGPRThCMVQCbiMEazeekNkEGnJmV3yJRv6M7TZHggUoofzKOJC0KuxMrh w==;
X-CSE-ConnectionGUID: bCuvj8qUSMyhCSJZeehF/Q==
X-CSE-MsgGUID: sJnE1/ZaQMWhtuNgmA1TwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089023"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089023"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:31:59 -0700
X-CSE-ConnectionGUID: d8C9z0nJQQSy9xpVcsqXxg==
X-CSE-MsgGUID: 1yuPKeE0RCed/rpDyIsCdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692760"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:31:59 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 07/31] drm/i915/bios: add buf_trans for each bios_encoder
Date: Thu,  7 May 2026 03:31:13 +0200
Message-ID: <20260507013137.527510-8-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260507013137.527510-1-michal.grzelak@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: AFDE54E1F7C
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Every devdata needs a separate intel_ddi_buf_trans since each port can
request an override. Add buffer's pointer into intel_bios_encoder_data.

Initialize the pointer to NULL when no VBT was provided.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 6ac8dd16ea7b8..a3f0334c3a582 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -73,6 +73,7 @@
 struct intel_bios_encoder_data {
 	struct intel_display *display;
 
+	struct intel_ddi_buf_trans *buf_trans;
 	struct child_device_config child;
 	struct dsc_compression_parameters_entry *dsc;
 	struct list_head node;
@@ -2656,6 +2657,11 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 	}
 }
 
+static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
+{
+	devdata->buf_trans = NULL;
+}
+
 static bool
 intel_bios_encoder_supports_crt(const struct intel_bios_encoder_data *devdata)
 {
@@ -2847,6 +2853,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	sanitize_dedicated_external(devdata, port);
 	sanitize_device_type(devdata, port);
 	sanitize_hdmi_level_shift(devdata, port);
+	override_vswing_preemph(devdata);
 }
 
 static bool has_ddi_port_info(struct intel_display *display)
@@ -3057,6 +3064,7 @@ init_vbt_missing_defaults(struct intel_display *display)
 			break;
 
 		devdata->display = display;
+		devdata->buf_trans = NULL;
 		child = &devdata->child;
 
 		if (port == PORT_F)
-- 
2.45.2

