Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNt8OZnr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1824E1F9F
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14CC610EF46;
	Thu,  7 May 2026 01:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dRZcJShJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A3F10EF42;
 Thu,  7 May 2026 01:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117527; x=1809653527;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MMcMp70eCKb+4OVBkoUABN/f199BxPL/9zZQDYGWZeU=;
 b=dRZcJShJEh8QMCyyCh4BW+qAF1t+6LA1MOrBuTvsEtz4HQEBDpRSELeF
 1D0DxHwACJBeOuDWXNCAN6GrExLun09V1Y0HF2EOGPFo6gaWrJd32CoeX
 qZlaROt59Gf+oh/8syQIWfjBWFZZI4Y3QBWNK1uv+9631S0WhpXhVKdvT
 6etAx3Z+AwN8q6n0ih7pG6IZSLLJGjAkGP7zOU8J84kO/cfoXz7ygueqq
 rxHjHgwbycIC4KtR+Ff8h3WBPFOfyvovL1vSU3BQzghjyoo+pppcu96nY
 /edDA3mBVud1wcmlhCyGHmrZpkF5JN6ojkYkca7vMhog4p3psEzzcrEPN Q==;
X-CSE-ConnectionGUID: DAGRYFGvT8aXoQ0ZwYdzpw==
X-CSE-MsgGUID: smB+NRHVQyCnE+smI2JfRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089029"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089029"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:07 -0700
X-CSE-ConnectionGUID: gc2bINV6QmG3eRfYQnLTDA==
X-CSE-MsgGUID: LrE/2T7fSRqZvzJ1nJav1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692783"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:06 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 12/31] drm/i915/ddi: expose VS/PE-O buffers to intel_encoder
Date: Thu,  7 May 2026 03:31:18 +0200
Message-ID: <20260507013137.527510-13-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 9B1824E1F9F
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

Add into intel_encoder constant pointer to intel_ddi_buf_trans. Track
with it VS/PE-O buffer from corresponding BIOS encoder.

Add helper function into intel_bios.[ch] to extract port's
intel_ddi_buf_trans pointer. Cache the pointer by default into each
intel_encoder during intel_ddi_init().

This is needed as devdata->buf_trans has been allocated per each port
during parsing DDI ports in intel_bios.c. Meanwhile every encoder will
need to know if VS/PE overriding is requested during
intel_ddi_buf_trans_init().

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 6 ++++++
 drivers/gpu/drm/i915/display/intel_bios.h          | 2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c           | 1 +
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 4 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1b813a3dff245..6893aa9f01aec 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3851,6 +3851,12 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 	return devdata->display->vbt.version >= 209 && devdata->child.tbt;
 }
 
+const struct intel_ddi_buf_trans *
+intel_bios_encoder_extract_vswing(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata->buf_trans;
+}
+
 bool intel_bios_encoder_overrides_vswing(const struct intel_bios_encoder_data *devdata)
 {
 	return devdata->display->vbt.version >= 218 &&
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 50c8fc91fbe85..cf040b9b7915b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -73,6 +73,8 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct intel_display *display, enum port port);
 
+const struct intel_ddi_buf_trans *
+intel_bios_encoder_extract_vswing(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_overrides_vswing(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2681940a5cfe3..eb188b27ec96b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5249,6 +5249,7 @@ void intel_ddi_init(struct intel_display *display,
 
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
+	encoder->vspeo = intel_bios_encoder_extract_vswing(devdata);
 
 	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
 			 DRM_MODE_ENCODER_TMDS, "%s",
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 26e59110e7435..0f27bcfb69223 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -297,6 +297,7 @@ struct intel_encoder {
 
 	/* VBT information for this encoder (may be NULL for older platforms) */
 	const struct intel_bios_encoder_data *devdata;
+	const struct intel_ddi_buf_trans *vspeo;
 };
 
 struct intel_panel_bl_funcs {
-- 
2.45.2

