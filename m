Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPGeOsYTzGkvOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CE0370076
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BE410EB17;
	Tue, 31 Mar 2026 18:34:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KzKq9Rei";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815E310EB62;
 Tue, 31 Mar 2026 18:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982084; x=1806518084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Od0D1Tyo7F2jCotEsZ1WhvgEtNG5Zk+1Z6xkSDyW82o=;
 b=KzKq9ReiWMtFLducga+JPNSrulSUk73LaSTBcBxssAey/D1ArnPUtFDS
 0tKXzCZycRGT28nEemSk9TkCvPB8JqYZTsXtOKyrKOwkbCNJIUCw/LY2d
 ubN4BKlKjARt1TjCnOU2sHOw0lvChjy2Fxue8b+C8M4K/oHEEwMMAxSrh
 4a4CZ57IWBfgTvqJngAbfELDzKEdOO2MCTTkYUwd3+1YKPjTKJxZ6Q6AH
 7ci0bRyWUO7+kIVUd5WaMTHdtqr/mtN1hXrJFMy5kd5zqHmL3FuLJYMuF
 zUl8Uy14O3+YjAaW8OosIH3yvR6Auq/9sEbR+a103IcffZpsx+n+kgvi+ g==;
X-CSE-ConnectionGUID: Ym2JUhrwR4CyY3QLU5aC2A==
X-CSE-MsgGUID: WjJalE+DS1WW+NIBU/eBsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705191"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705191"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:43 -0700
X-CSE-ConnectionGUID: bOOC0qVQRQOVPoWmNnFdKQ==
X-CSE-MsgGUID: Q1ekhwb1TxC1QOvJK6DD9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944510"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:43 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 11/16] drm/i915/buf_trans: override encoder->get_buf_trans
 when asked
Date: Tue, 31 Mar 2026 20:33:27 +0200
Message-ID: <20260331183332.1773886-12-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 86CE0370076
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Overwrite encoder->get_buf_trans with override_buf_trans() hook when
port asks to override default Vswing / Preemphasis tables.

Overriding proper consists of:
1) getting buffers' table via cached pointer in intel_encoder;
2) checking if the index to the table has already been computed;
3) computing & storing the most appropriate index;
4) accessing desired buf_trans with the index;
5) pointing allocated buf_trans_entry to the accessed buf_trans.

Assume 0 as the default index when finding the most specific index
failed.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

vswing_preemph_compute_index() feels like should be done in
override_vswing_preemph() during parse_ddi_ports() from intel_bios.c
instead of override_buf_trans(). Points 2) & 3) then could be omitted
from override_buf_trans(). In reality it is not trivial because index
computation depends on port_clock properties from crtc_state. Checking
those in intel_bios.c is out of my idea as of now.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index de5f6f89374e..06c2869d3e7a 100644
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
@@ -1784,6 +1786,56 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static union ddi_vswing_preemph_index
+vswing_preemph_compute_index(struct intel_encoder *encoder,
+			     const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	union ddi_vswing_preemph_index index;
+
+	drm_dbg_kms(display->drm, "using default VS/PE Override index");
+	index = (union ddi_vswing_preemph_index) 0;
+
+	return index;
+}
+
+static int
+vswing_preemph_cast_index(struct intel_display *display,
+			   union ddi_vswing_preemph_index index)
+{
+	return 0;
+}
+
+static const struct intel_ddi_buf_trans *
+override_buf_trans(struct intel_encoder *encoder,
+		   const struct intel_crtc_state *crtc_state,
+		   int *n_entries)
+{
+	struct intel_display *display = to_intel_display(encoder);
+
+	struct intel_ddi_buf_trans *buf_trans;
+	struct ddi_vswing_preemph *vswing_preemph;
+	union ddi_vswing_preemph_index index;
+	u32 idx;
+
+	index = encoder->vswing_preemph->index;
+	idx = vswing_preemph_cast_index(display, index);
+
+	if (idx < 0) {
+		index = vswing_preemph_compute_index(encoder, crtc_state);
+		vswing_preemph = (void *) encoder->vswing_preemph;
+		vswing_preemph->index = index;
+		idx = vswing_preemph_cast_index(display, index);
+	}
+
+	buf_trans = (void *) encoder->vswing_preemph->buf_trans;
+
+	buf_trans->entries = display->vbt.vswing_preemph.bufs_table[idx];
+	buf_trans->num_entries = display->vbt.vswing_preemph.num_rows;
+
+	return intel_get_buf_trans(buf_trans, n_entries);
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -1851,4 +1903,7 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 
 		MISSING_CASE(pdev->device);
 	}
+
+	if (encoder->vswing_preemph->buf_trans)
+		encoder->get_buf_trans = override_buf_trans;
 }
-- 
2.45.2

