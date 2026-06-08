Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5m4LNuIXJ2omrgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8563665A0D9
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 21:28:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JAuORoRu;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DF910F91B;
	Mon,  8 Jun 2026 19:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C30810F90F;
 Mon,  8 Jun 2026 19:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780946911; x=1812482911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BUZVVyjSia4b+SZzkxv0KdBwgOyAi6L4Y2TTZPLEUY0=;
 b=JAuORoRudMDBpnnsyMBcmOJZbxHdGC5fnDyTPT0QXlevfPth31c2kN8R
 DFFo+fPrDCtbfIFSCRDjlrq8RAIhxGxo343wppmAH6/yA7Aw5g9Q5o6GE
 46Xb0pT50bvJP0nSPF+FfCBDMGS58gLthGRkyNlTtiYD/+lecByu1BCcO
 0c/0qIr6doB+fgymyzkDFHCb28PZ+O9zxNM0tEO/beYbbIUV0LrdexbIj
 asgScdAXFE5omucwTBBttvLwquGkPRL7EVt8q0JDFBI2zyUoZK2CjA71m
 Sqpnuoa2/l90JSeiy5DPg+Pp9z2B5allW7EoG8qgg5vTvK+GEHfZI2BrP A==;
X-CSE-ConnectionGUID: huPK7UxsQEmn1hlCi6tG6Q==
X-CSE-MsgGUID: hHDN9wcKSEm/fY9La9o1yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="85324017"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85324017"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 12:28:31 -0700
X-CSE-ConnectionGUID: 5VVUntdBRz20zEw+MStsCw==
X-CSE-MsgGUID: AHdzB+tYSeKYxbNj1ygT6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="244513585"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 08 Jun 2026 12:28:30 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v7 4/8] drm/i915/bios: de/allocate VS/PE-O buffer for each port
Date: Mon,  8 Jun 2026 21:28:17 +0200
Message-ID: <20260608192821.3414590-5-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 8563665A0D9

Every devdata needs a separate intel_ddi_buf_trans since each port can
request an override. Add buffer's pointer into intel_bios_encoder_data.

Allocate struct intel_ddi_buf_trans for the port if VS/PE-O was
requested and is supported. At the same time, allocate struct
intel_ddi_buf_trans_entry and store it inside struct
intel_ddi_buf_trans.

Deallocate the buffer as well as entries if the request is supported.

v4->v5
- set devdata->vspeo->num_entries in intel_bios.c

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 32 +++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 70467344f08e..3d8864374cac 100644
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
@@ -2628,6 +2630,30 @@ static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
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
+	devdata->vspeo->num_entries = num_rows;
+}
+
 static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 				      enum port port)
 {
@@ -2846,6 +2872,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	sanitize_dedicated_external(devdata, port);
 	sanitize_device_type(devdata, port);
 	sanitize_hdmi_level_shift(devdata, port);
+	allocate_vswing_preemph_override(devdata);
 }
 
 static bool has_ddi_port_info(struct intel_display *display)
@@ -3383,6 +3410,11 @@ void intel_bios_driver_remove(struct intel_display *display)
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

