Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PTAC4Mj4GmbcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DC14090D7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5879C10E7B1;
	Wed, 15 Apr 2026 23:47:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GEtE0py3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D3E10E7D2;
 Wed, 15 Apr 2026 23:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296832; x=1807832832;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IiPnDtpDICor4P9GWxCFrQB948cLy++hHzQpj109yhc=;
 b=GEtE0py3Ai0QOiWY4lVfpjQNemaZsm3kPiM3/a5rc2SzCeXBTgqZhxAq
 bThsRJrECgtwPY8WpUVz2uUxfpzwn90Qfu7ksLTgrKpJW3zKOdEcyujTE
 oPEW9UXaNluVpGZ2S4OIdYNNg8msp2Z/QAs/z2zUROsgebHpLXdQfvJmQ
 a35l8J+zGYux49Gf8fguBPoOHjzqJ/wMtiCqZRrSbqoeU1x6ga7PIqJCf
 DcQpkjsUW2woLaPllGR4oxp36jDvNg+CC2LhcSyeMsdKrEnrOqTzAHyBV
 v1tBykV3hzqvs+GJfWyROSBKemJhuR1DkRXFAm9+jCigZkkzZJuH5WfX3 g==;
X-CSE-ConnectionGUID: j2sp4pqlS+Sqg9RBlPF5zA==
X-CSE-MsgGUID: wzpC4F6sRJWThbTnkvltZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403500"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403500"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:12 -0700
X-CSE-ConnectionGUID: LJIuHCGJTD+Nm7KsZ1mRXQ==
X-CSE-MsgGUID: ucGmiaT7Q0KDtcD03VQ/Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511183"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:11 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 14/32] drm/i915/buf_trans: override VS/PE-O when requested
Date: Thu, 16 Apr 2026 01:46:21 +0200
Message-ID: <20260415234639.3577774-15-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: D0DC14090D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Check if corresponding port asks to override default Vswing /
Preemphasis tables. Overwrite encoder->get_buf_trans with
override_buf_trans() hook if it is the case. Do not override when not
requested, hence when port's buffer's pointer is set to NULL.

Assume 0 as the default index for choosing VS/PE-O table. Log when using
default instead of computing platform-specific index.

Fill encoder's VS/PE-O buffer with chosen table when overriding
defaults. Return the buffer likewise other _get_buf_trans() hooks.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

With current implementation there is no way for rollback from
override_buf_trans() if request was done on platform without the support
for VS/PE-O parsing. In this situation using any index, including 0,
will result in using zeroed tables instead of the defaults.

Therefore add a workaround: check VS/PE-O parsing availability for the
platform during DDI parsing. If check fails, do not allocate buffer, and
hence do not overwrite encoder->get_buf_trans.

Workaround will be removed after all platforms with VS/PE-O tables are
able to parse them.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 4 ++++
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 5 +++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 55293ed39d940..7d70e42188aa5 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2660,12 +2660,16 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
 static void override_vswing_preemph(struct intel_bios_encoder_data *devdata)
 {
 	struct intel_ddi_buf_trans *buf_trans;
+	bool parseable = false;
 
 	devdata->buf_trans = NULL;
 
 	if (!intel_bios_encoder_overrides_vswing(devdata))
 		return;
 
+	if (!parseable)
+		return;
+
 	buf_trans = kzalloc(sizeof(*buf_trans), GFP_KERNEL);
 	devdata->buf_trans = buf_trans;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index eefac4bc4eb7c..e83093b683ddc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <drm/drm_print.h>
+
 #include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
@@ -1857,5 +1859,8 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 							  const struct intel_crtc_state *crtc_state,
 							  int *n_entries)
 {
+	if (encoder->vspeo)
+		drm_dbg_kms(to_intel_display(encoder)->drm, "VS/PE-O unsupported, using default VS/PE tables");
+
 	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
 }
-- 
2.45.2

