Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOm7HIAj4GmbcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD224090C2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A3610E7CC;
	Wed, 15 Apr 2026 23:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2G6N9bg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CE4810E7CC;
 Wed, 15 Apr 2026 23:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296829; x=1807832829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pbFGEb9UisNDAzp4PAfr5BSoZdqqJs0G1vXB9G/rzm0=;
 b=X2G6N9bgUdPTvuJzEOq9/vRucgV1/e2KFP0zjLzMrOHh+H0VOcay6X2v
 XCTy00wlzSZzS4LmVQSFq/FBxJbh+cniRWxmUVrnhepUO+iaIgtuRiYB6
 QBS4ouvTqk24epHusG3YK5TQc4Op+G3l7AtohNSpXROtisHqzhO/g9o+P
 SDd9KGpCC4Jclb28W0ZRWcWcLGdHHWFzePRibfe+LsPdl2ZOc+xRbe87R
 YLw5MTal9jwutRf2Y8NI7evyRMkPHpTNBDjHLD25XIm4zOOfjthadxt0o
 cgm0MsvAFifUWIp693P9hfZhn+98nmhDdCL8/9QBHKIigwUN42Jeb2vRf g==;
X-CSE-ConnectionGUID: rZYLOtJNRCWCqs1bl9Px4Q==
X-CSE-MsgGUID: jJ4op70xSPi6Hr0LsoG5kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403498"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403498"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:09 -0700
X-CSE-ConnectionGUID: rxlf4wJOR9ethllpJZ16RQ==
X-CSE-MsgGUID: gXo5V4fSSHOcjDVk8EQ9YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511177"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:08 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 12/32] drm/i915/ddi: expose VS/PE-O buffers to intel_encoder
Date: Thu, 16 Apr 2026 01:46:19 +0200
Message-ID: <20260415234639.3577774-13-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260415234639.3577774-1-michal.grzelak@intel.com>
References: <20260415234639.3577774-1-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1CD224090C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 4f70b7bfdf033..55293ed39d940 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3853,6 +3853,12 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
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
index 178074316a2c5..54727b8593cfd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5249,6 +5249,7 @@ void intel_ddi_init(struct intel_display *display,
 
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
+	encoder->vspeo = intel_bios_encoder_extract_vswing(devdata);
 
 	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
 			 DRM_MODE_ENCODER_TMDS, "%s",
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c819167618502..e1a6b6692b5f2 100644
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

