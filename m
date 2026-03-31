Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKe6B9QTzGmGOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:35:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AF13700BA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C85010EB9F;
	Tue, 31 Mar 2026 18:34:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bkwPiVpO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5692310EB22;
 Tue, 31 Mar 2026 18:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982079; x=1806518079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VK7wbXxBzgQ7PIPjVfmc8i9ZP0d98S7LGny+Hn+cb1w=;
 b=bkwPiVpOOv/tCnQA2dWdt+oM/ssyBEd52uB/v8U6M8wYh2DqbKx/uXdm
 kRvbMwfO6g4q+GXehklWbd362d2E7glgYwY1ymIMJ0cXXTt/bGRksj1+x
 gblqQCNwd2Q0K7Ko0Zq9Y4dAf2qmcxCzTCnOzOJ9EDGhtJwG0suAKUfs0
 piqWSMRadRJFlfzTkJtpxwZGjv3rowwivkfqd0VhzqfvBNRqHjIESKmnR
 waLZ6OCs2urzGuyQbsHMqAXH/62N8X2XpKepkNTSTIoHqpVCWAjb8DHkQ
 j8G+8Sl1XkE2mGOeJcrAyE7AMLESrEtNsYiMtmOTSLSLP6cXTWbTewpV7 w==;
X-CSE-ConnectionGUID: jxAKGzYCR1+1mdTnddJmbQ==
X-CSE-MsgGUID: sUvD33IQReeccD8C5F1zxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705180"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705180"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:39 -0700
X-CSE-ConnectionGUID: 3OIq6l8KT7Oxr7XaKgIPbw==
X-CSE-MsgGUID: 4OMNmV8LRDOCui+fO+6V3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944489"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:38 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 08/16] drm/i915/bios: support VS/PE Override per each ddi
 port
Date: Tue, 31 Mar 2026 20:33:24 +0200
Message-ID: <20260331183332.1773886-9-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: C0AF13700BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add helper function to check if port asks for overriding default VS/PE
tables.

Add ddi_vswing_preemph into bios_encoder_data. This is required because
every devdata needs a separate intel_ddi_buf_trans since each port can
request an override. Store buffer's pointer in ddi_vswing_preemph. Treat
setting .buf_trans to NULL as if the request was invalid.

Initialize port's buffer pointer to NULL when no VBT was provided.

Allocate intel_ddi_buf_trans buffer per port if the request is valid.
Defer index computing to occur later during override_buf_trans(). Set
the index to being not yet computed.

Deallocate buffer on driver removal when port asked for an allocation.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 29 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  1 +
 2 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f2f1a57dbdbc..016696de2870 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -77,6 +77,7 @@
 struct intel_bios_encoder_data {
 	struct intel_display *display;
 
+	struct ddi_vswing_preemph vswing_preemph;
 	struct child_device_config child;
 	struct dsc_compression_parameters_entry *dsc;
 	struct list_head node;
@@ -2758,6 +2759,20 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 	}
 }
 
+static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
+{
+	struct intel_ddi_buf_trans *buf_trans;
+
+	devdata->vswing_preemph.buf_trans = NULL;
+	devdata->vswing_preemph.index = (union ddi_vswing_preemph_index) -1;
+
+	if (!intel_bios_encoder_overrides_vswing(devdata))
+		return;
+
+	buf_trans = kzalloc(sizeof(*buf_trans), GFP_KERNEL);
+	devdata->vswing_preemph.buf_trans = buf_trans;
+}
+
 static bool
 intel_bios_encoder_supports_crt(const struct intel_bios_encoder_data *devdata)
 {
@@ -2949,6 +2964,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	sanitize_dedicated_external(devdata, port);
 	sanitize_device_type(devdata, port);
 	sanitize_hdmi_level_shift(devdata, port);
+	override_vswing_preemph(devdata);
 }
 
 static bool has_ddi_port_info(struct intel_display *display)
@@ -3157,6 +3173,9 @@ init_vbt_missing_defaults(struct intel_display *display)
 			break;
 
 		devdata->display = display;
+		devdata->vswing_preemph.buf_trans = NULL;
+		devdata->vswing_preemph.index =
+			(union ddi_vswing_preemph_index) -1;
 		child = &devdata->child;
 
 		if (port == PORT_F)
@@ -3490,6 +3509,10 @@ void intel_bios_driver_remove(struct intel_display *display)
 				 node) {
 		list_del(&devdata->node);
 		kfree(devdata->dsc);
+
+		if (devdata->vswing_preemph.buf_trans)
+			kfree(devdata->vswing_preemph.buf_trans);
+
 		kfree(devdata);
 	}
 
@@ -3937,6 +3960,12 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
 }
 
+bool intel_bios_encoder_overrides_vswing(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata->display->vbt.version >= 218 &&
+		devdata->child.use_vbt_vswing;
+}
+
 bool intel_bios_encoder_is_dedicated_external(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 264 &&
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 75dff27b4228..50c8fc91fbe8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -73,6 +73,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 
+bool intel_bios_encoder_overrides_vswing(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata);
-- 
2.45.2

