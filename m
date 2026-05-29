Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAfsKBjpGWpazwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59897607DC8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 21:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD50D11246B;
	Fri, 29 May 2026 19:29:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PH3uqFMt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26AC112465;
 Fri, 29 May 2026 19:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780082962; x=1811618962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ga/B/8MJWwcNYcq7DuVHgNEfkqp7rY5sgU3w1ejQ1Zw=;
 b=PH3uqFMtilPxfYx59bteh4d+Xobu3o0MCwWs2rbK45dLhoImHQauh1UH
 3wvqlI8UT+1ExhFVoOu/s85173zMRekivrnHeHphopbeLN4pql2OosEH+
 RMxt8jtWDKhsjFifENWq8yUnc1z17VhU792Po7DMJ1/fMpQWjJIEA/a4X
 ztcummWYTOO3mBGrZzDtcVE7zJCJHPn72MViYVXqpnNUm+lxztjxq/E4r
 OoEnXb3mcb1DFSTLRmGHAziL9lodDOVUGaJ2WLg+VPxaehxX4EiMBkIzZ
 xgosiWkHM4PEK6fVvmTcdMME7VPDvo78mf38qJFH8RUGdzE+S3lycYkGV w==;
X-CSE-ConnectionGUID: j+28a0RaQOiCfmkEUx8E5A==
X-CSE-MsgGUID: BdKuzcqwRsSJOjqQIiy/ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="103611807"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="103611807"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 12:29:22 -0700
X-CSE-ConnectionGUID: 96Rxx1AKSOqRPRy5caanlQ==
X-CSE-MsgGUID: FE3q5iHYS0mVZSyd/bbavw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240393489"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 29 May 2026 12:29:20 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v4 05/10] drm/i915/bios: de/allocate VS/PE-O buffer for each
 port
Date: Fri, 29 May 2026 21:28:54 +0200
Message-ID: <20260529192859.4172376-6-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260529192859.4172376-1-michal.grzelak@intel.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 59897607DC8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Every devdata needs a separate intel_ddi_buf_trans since each port can
request an override. Add buffer's pointer into intel_bios_encoder_data.

Allocate struct intel_ddi_buf_trans for the port if VS/PE-O was
requested and is supported. At the same time, allocate struct
intel_ddi_buf_trans_entry and store it inside struct
intel_ddi_buf_trans.

Deallocate the buffer as well as entries if the request is supported.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 31 +++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 204176088a7c..e47ac169271f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -34,6 +34,7 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
+#include "intel_ddi_buf_trans.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
@@ -72,6 +73,7 @@
 struct intel_bios_encoder_data {
 	struct intel_display *display;
 
+	struct intel_ddi_buf_trans *vspeo;
 	struct child_device_config child;
 	struct dsc_compression_parameters_entry *dsc;
 	struct list_head node;
@@ -2628,6 +2630,29 @@ static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 	devdata->child.device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
 }
 
+static void allocate_vswing_preemph_override(struct intel_bios_encoder_data *devdata)
+{
+	int num_rows = devdata->display->vbt.vspeo.num_rows;
+	union intel_ddi_buf_trans_entry *entries;
+	struct intel_ddi_buf_trans *vspeo;
+
+	if (!intel_bios_encoder_requests_vspeo(devdata))
+		return;
+
+	vspeo = kzalloc_obj(*vspeo);
+	if (!vspeo)
+		return;
+
+	entries = kzalloc_objs(*entries, num_rows);
+	if (!entries) {
+		kfree(vspeo);
+		return;
+	}
+
+	devdata->vspeo = vspeo;
+	devdata->vspeo->entries = entries;
+}
+
 static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 				      enum port port)
 {
@@ -2846,6 +2871,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	sanitize_dedicated_external(devdata, port);
 	sanitize_device_type(devdata, port);
 	sanitize_hdmi_level_shift(devdata, port);
+	allocate_vswing_preemph_override(devdata);
 }
 
 static bool has_ddi_port_info(struct intel_display *display)
@@ -3383,6 +3409,11 @@ void intel_bios_driver_remove(struct intel_display *display)
 	list_for_each_entry_safe(devdata, nd, &display->vbt.display_devices,
 				 node) {
 		list_del(&devdata->node);
+
+		if (devdata->vspeo)
+			kfree(devdata->vspeo->entries);
+
+		kfree(devdata->vspeo);
 		kfree(devdata->dsc);
 		kfree(devdata);
 	}
-- 
2.45.2

