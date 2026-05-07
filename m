Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMxlKJvr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 543404E1FA6
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BF110EF2E;
	Thu,  7 May 2026 01:32:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LPKm0xHV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDBAD10EF47;
 Thu,  7 May 2026 01:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117529; x=1809653529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wcMJl9LDanRZCzO2gNXh0QBtc3VhqZfhj1HaPpWTJ5k=;
 b=LPKm0xHVnLbpiWg3qCKsaRN4KfVzAhlLU/fTBnSEi1SGPVccGwnP34fh
 LvzyItm80CaNZNT4tpPZstSoZOaZEvy6vLEEjRVQRm6tfLB/Uh5odFwvR
 tEHuD5VDjy2z+/AqYsSnsBhsuIqV6q0a11+w3y3B0ArS3k5bUDduR2iSc
 wSdgsm4H2Bcg4X133q7iu8Y2B1XjuWJlj+RVWkQ+XZHs/MzY/qe66z/hz
 R/ESn4+sSMnb3oargElh3qQ2c/YH3SHVv2/Y8oXCNwcRGfLML15qA/iRV
 NohEOtWiFJpCh5xxDirxMGnoektYIUNXs8B5gU6ZTT7B4YOaj7Y2yBXjU Q==;
X-CSE-ConnectionGUID: yj10iCFnS6+WUVX7rfo9Bw==
X-CSE-MsgGUID: 3FJLQO2bSFy+xvLayfuLMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089032"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089032"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:08 -0700
X-CSE-ConnectionGUID: 8aSSajZ1Q5qiHT1+WChi/Q==
X-CSE-MsgGUID: 4ZTfbq6VTeeBHqjQ+u7ysQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692787"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:08 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 13/31] drm/i915/buf_trans: override VS/PE-O when requested
Date: Thu,  7 May 2026 03:31:19 +0200
Message-ID: <20260507013137.527510-14-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 543404E1FA6
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

Check if corresponding port asks to override default Vswing /
Preemphasis tables. As of now issue a debug message if it is the case.
Do not override when not requested, hence when port's buffer's pointer
is set to NULL.

With current implementation there is no way for proper rollback from
intel_ddi_buf_trans_get() if request was done on platform without the
support for VS/PE-O parsing. In this situation using any index will
result in using zeroed tables instead of the defaults.

Therefore add a workaround: check VS/PE-O parsing availability for the
platform during DDI parsing. If check fails, do not allocate buffer, and
hence use default encoder->get_buf_trans().

Workaround will be removed after all platforms with VS/PE-O tables are
able to parse them.

v2->v3
- break logging into two lines

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 4 ++++
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 6893aa9f01aec..b2ee556e9d1f3 100644
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
 	buf_trans = kzalloc_obj(*buf_trans);
 	devdata->buf_trans = buf_trans;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 908577b04a14e..38f2a030c018d 100644
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
@@ -1857,5 +1859,9 @@ const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *
 							  const struct intel_crtc_state *crtc_state,
 							  int *n_entries)
 {
+	if (encoder->vspeo)
+		drm_dbg_kms(to_intel_display(encoder)->drm,
+			    "VS/PE-O unsupported, using default VS/PE tables");
+
 	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
 }
-- 
2.45.2

