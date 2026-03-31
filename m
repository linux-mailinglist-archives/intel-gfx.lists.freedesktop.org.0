Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iArwNo7ry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9BF36BED2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1641210EA3D;
	Tue, 31 Mar 2026 15:43:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lszWAdQp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D1D10EA3D;
 Tue, 31 Mar 2026 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971788; x=1806507788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3pZpK/bnwuBz/52sFXgtW72jSnrt/vUJdH6pLM72tXg=;
 b=lszWAdQpADWWLBE2RcQopZCPipB3YwsRBgIftorStTLY74GUPxbsZElT
 XRg3kU9E0CBOgy7wZ3UWEPfDGztRvefQA1VqDygV3JLOWaIcwOKpQ8Eui
 G95lwbP6yyLwJ17OkGM1gQDRKvnwZ3E7JIdQN6wwAD9HDifxC2twvV54d
 2YSUyM1hg5mipmmYgnCWGzNRUD3LSFDBDXaaJcBEAhXpVbTrkGfQ6u5Zz
 vdR1cIwOtP6TjJbFe7mXjLP/GBoThCHk/DjOXQe8fIxuDs068TXl7fLvu
 co5HukYdkrIUQ0r6SJ7ZPNyWTPludKF0HokvA+Mq/95bvQCu+Q3xbz5jG A==;
X-CSE-ConnectionGUID: sYOeQPciTsOlU+XlNZ770Q==
X-CSE-MsgGUID: zdb6qe6jSuemN4062VZTUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75884109"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75884109"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:08 -0700
X-CSE-ConnectionGUID: MCPpHFlGQzm9uhx9BVSX6w==
X-CSE-MsgGUID: rtRss9KKTu+2VOrxeFcJeQ==
X-ExtLoop1: 1
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:06 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/12] drm/i915/qgv: Use intel_de_read() for
 MTL_MEM_SS_INFO* reads
Date: Tue, 31 Mar 2026 18:42:48 +0300
Message-ID: <20260331154259.24600-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 8C9BF36BED2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The MTL_MEM_SS_INFO* are just regular display registers. Use
intel_de_read() to access them.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c   | 6 +++---
 drivers/gpu/drm/i915/display/intel_dram.c | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 07b4531a4376..18b80147ddc7 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -9,6 +9,7 @@
 
 #include "intel_bw.h"
 #include "intel_crtc.h"
+#include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -211,12 +212,11 @@ static int icl_pcode_restrict_qgv_points(struct intel_display *display,
 static int mtl_read_qgv_point_info(struct intel_display *display,
 				   struct intel_qgv_point *sp, int point)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 val, val2;
 	u16 dclk;
 
-	val = intel_uncore_read(uncore, MTL_MEM_SS_INFO_QGV_POINT_LOW(point));
-	val2 = intel_uncore_read(uncore, MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
+	val = intel_de_read(display, MTL_MEM_SS_INFO_QGV_POINT_LOW(point));
+	val2 = intel_de_read(display, MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
 	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
 	sp->dclk = DIV_ROUND_CLOSEST(16667 * dclk, 1000);
 	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index bd281d4b4c05..f05796417485 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -9,6 +9,7 @@
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
 
+#include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_utils.h"
 #include "intel_display_regs.h"
@@ -767,8 +768,7 @@ static int gen12_get_dram_info(struct intel_display *display, struct dram_info *
 
 static int xelpdp_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-	u32 val = intel_uncore_read(uncore, MTL_MEM_SS_INFO_GLOBAL);
+	u32 val = intel_de_read(display, MTL_MEM_SS_INFO_GLOBAL);
 
 	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
 	case 0:
-- 
2.52.0

