Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 931F29BC6C4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 08:16:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCDD10E527;
	Tue,  5 Nov 2024 07:16:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gKTrQRo6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1125E10E547;
 Tue,  5 Nov 2024 07:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730791005; x=1762327005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HvyASHW5oWKjw8yQ/MmZ9O8lh+czAmR7+vxJHGP6F74=;
 b=gKTrQRo622HsAOwo2rvm3/rD6UqB/zRS4cUYqKD0kiTgA61RMktW4/Ij
 T2gfZ/1BFRihMhDOk6DiKJ+tSdvZSL+fwqgTqpiD6Kd1AtziTSaCvbtgm
 /ssJk/wpSFfEItntgrvt+6znT5XN4RB/mo4N33pXZKYhlMOVNU13vX06B
 nz+xHzTcvx5CvC/IP5sFQVRuNz1zJZIMsM8y0Mh+MekDxbQy5gArqcFH0
 tdQ2vokM4+QDbVxYvKp12JH6X7OrEVNTWRK612cFN/nHQUVBhMtnN5fUf
 972du62xL0D/G8O5iBXE/YDTFte0PIstRI1YoJLJgkYGXNM1p9sQJdb7t g==;
X-CSE-ConnectionGUID: wF+1h3NPQ4CDX3+pUjCt4Q==
X-CSE-MsgGUID: uS9TOgOrTZ+DLnqg4N+j1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34449554"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208,223";a="34449554"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:44 -0800
X-CSE-ConnectionGUID: JhpHQzWZQneHdo7zbAxg4Q==
X-CSE-MsgGUID: R/IAHinhQj27uShjuPshzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208,223";a="87835670"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO vgovind2-mobl3..)
 ([10.245.245.146])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:42 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH 8/8] drm/i915/debugfs: add dbuf alloc status as part of
 i915_ddb_info
Date: Tue,  5 Nov 2024 09:16:00 +0200
Message-Id: <20241105071600.235338-9-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241105071600.235338-1-vinod.govindapillai@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From xe3 onwards, there is a provision to define and
use min ddb and interim ddb allocations for async flip
use case. Add the dbuf allocation status as part of
i915_ddb_info as well to show if min or interim ddb
is being used.

Bspec: 72053
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 23 ++++++++++++++++---
 .../i915/display/skl_universal_plane_regs.h   |  1 +
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 11aff485d8fa..bce4a1ab05c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -39,6 +39,7 @@
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
+#include "skl_universal_plane_regs.h"
 #include "intel_vdsc.h"
 #include "intel_wm.h"
 
@@ -688,9 +689,24 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static u32 dbuf_alloc_status(struct intel_display *display,
+			     enum pipe pipe, enum plane_id plane_id)
+{
+	u32 val = 0;
+
+	if (DISPLAY_VER(display) >= 30) {
+		u32 reg = intel_de_read(display,
+					PLANE_MIN_BUF_CFG(pipe, plane_id));
+		val = REG_FIELD_GET(PLANE_DBUF_ALLOC_STATUS_MASK, reg);
+	}
+
+	return val;
+}
+
 static int i915_ddb_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct intel_display *display = &dev_priv->display;
 	struct skl_ddb_entry *entry;
 	struct intel_crtc *crtc;
 
@@ -699,7 +715,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 
 	drm_modeset_lock_all(&dev_priv->drm);
 
-	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
+	seq_printf(m, "%-15s%8s%8s%8s%16s\n", "", "Start", "End", "Size", "Alloc Status");
 
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
@@ -711,9 +727,10 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
 
 		for_each_plane_id_on_crtc(crtc, plane_id) {
 			entry = &crtc_state->wm.skl.plane_ddb[plane_id];
-			seq_printf(m, "  Plane%-8d%8u%8u%8u\n", plane_id + 1,
+			seq_printf(m, "  Plane%-8d%8u%8u%8u%8u\n", plane_id + 1,
 				   entry->start, entry->end,
-				   skl_ddb_entry_size(entry));
+				   skl_ddb_entry_size(entry),
+				   dbuf_alloc_status(display, pipe, plane_id));
 		}
 
 		entry = &crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 65a5482fae60..53550356430d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -390,6 +390,7 @@
 
 #define PLANE_AUTO_MIN_DBUF_EN			REG_BIT(31)
 #define PLANE_MIN_DDB_BLOCKS_MASK		REG_GENMASK(27, 16)
+#define PLANE_DBUF_ALLOC_STATUS_MASK		REG_GENMASK(15, 14)
 #define PLANE_INTERIM_DDB_BLOCKS_MASK		REG_GENMASK(11, 0)
 
 /* tgl+ */
-- 
2.34.1

