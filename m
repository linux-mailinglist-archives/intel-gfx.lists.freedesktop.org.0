Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAkPKILLAWqgjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780C550DC08
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE3010E727;
	Mon, 11 May 2026 12:28:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LF5sv/oA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E668410E72B;
 Mon, 11 May 2026 12:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778502528; x=1810038528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VaffpnR1wKBQVceDOaPZvQdBX5tKRamVllC4nCXWZHY=;
 b=LF5sv/oAI6BtE7xNgXeNe5Sj0MbMcaG1+5Cy7O0EjLB7hnpeMthACVjS
 Z1iJspAD+84VcN+IHnA830cTT9SMC7ifz3T3P/9xIuy3Z5+OwK8yzdvWG
 MRPe1c+rCnbynW6IsJrhEqSc3h5PuPfCtRejiDGpBtC5GschS1fZ1STNt
 uC8fsN+7ZHKsLHP3a8QE+5pG9WhKgylvD8T38Tf3uCZ90//dQnCY1V0jE
 9X4vSTqx3CI8gv3hD8S7s31FPUFeDCiwL7vEfPkslAQPV/L9kW5eh9xVX
 vf9teT8DAWbRhN+6mkvvYy+9IMGwSmjC9W5YPptn/18ce6xoNdyhrAq8H Q==;
X-CSE-ConnectionGUID: Foc+r/cxQiSF8Mjv2Nu3kA==
X-CSE-MsgGUID: kn3+tbU3Q1uNcZLFQ6HVxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90762778"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90762778"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:48 -0700
X-CSE-ConnectionGUID: Ap66MR/OTtmTaXXUIo70ow==
X-CSE-MsgGUID: EKBoAPiKS3S2Q8S7/cnYLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267801440"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.16])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:28:46 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 05/11] drm/i915/bw: sort the qgv points based on the dclk
Date: Mon, 11 May 2026 15:28:10 +0300
Message-ID: <20260511122816.1235478-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
References: <20260511122816.1235478-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Rspamd-Queue-Id: 780C550DC08
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

QGV points reported from BIOS are not in any sorted order. But the
this order cannot be modified as the pcode was expecting the qgv
point index on pre display 14 versions. But after the introduction
of pmdemand, pcode is expecting the peak bw of the selected qgv
point. But because this point is not sorted, we would have to go
through all of these points to find any exact match. So sort the
qgv point based on the dclk and this sorted order will benefit
in all calculations which need to find appropriate qgv point.

Assisted-by: Copilot:claude-sonnet-4.6
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index e9cfa3edd09e..7b8801a88cb2 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -7,6 +7,8 @@
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
 
+#include <linux/sort.h>
+
 #include "intel_bw.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -317,6 +319,20 @@ static int icl_init_qgv_info(struct intel_display *display,
 	return 0;
 }
 
+static int qgv_point_cmp(const void *a, const void *b)
+{
+	const struct intel_qgv_point *pa = a;
+	const struct intel_qgv_point *pb = b;
+
+	return pa->dclk - pb->dclk;
+}
+
+static void intel_sort_qgv_points(struct intel_qgv_info *qi)
+{
+	sort(qi->points, qi->num_points, sizeof(*qi->points),
+	     qgv_point_cmp, NULL);
+}
+
 static int icl_get_qgv_points(struct intel_display *display,
 			      const struct dram_info *dram_info,
 			      struct intel_qgv_info *qi,
@@ -346,6 +362,9 @@ static int icl_get_qgv_points(struct intel_display *display,
 			    sp->t_rcd, sp->t_rc);
 	}
 
+	if (HAS_PMDEMAND(display))
+		intel_sort_qgv_points(qi);
+
 	if (qi->num_psf_points > 0) {
 		ret = adls_pcode_read_psf_gv_point_info(display, qi->psf_points);
 		if (ret) {
-- 
2.43.0

