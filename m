Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A5F48116B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Dec 2021 10:49:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469F410E965;
	Wed, 29 Dec 2021 09:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604C610E95D
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Dec 2021 09:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640771383; x=1672307383;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uZ2PsaO3Sow0PzZFGJfGVnUYXAL9VZqS8607njSZy6s=;
 b=NsHSRS33CNn8T50vfWK1eP4rBhmmNd+QNQvbfYfxOKKC/viLZbUewwhj
 A/MYJz/9Rz/tasgda0MEK88+hohpLX3sDqvjm7DIX/RVz3YniVNkyUaEg
 sYq9JDqffObU2ihPayLEDDd5h3ccIgbM4lXZm8C+3aghNtW1YxgANj/oY
 rAbjDPjS+8B3BJTys5c+eIsl3sXukjX5j80XcZR30mzOTOdAcPN86BbrL
 lEbSVfWROzFkkQtPsk5vHh1fASmuxLASCrPX7Sfy0PR7OilLUXSnr2ngI
 bQN7wPvwyYQoFxaDbVhUG/MeMwdHR6katKcRNDDlmL7uDc7/F5A61H3Z2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10211"; a="222166480"
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="222166480"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2021 01:49:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,244,1635231600"; d="scan'208";a="618992361"
Received: from jcurran1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.44])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2021 01:49:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Dec 2021 11:49:37 +0200
Message-Id: <20211229094937.733941-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: make intel_dp_pack_aux() static
 again
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The last user of intel_dp_pack_aux() outside intel_dp_aux.c got removed
in commit ad26451a7902 ("drm/i915/display: Drop PSR support from HSW and
BDW"). Make the function static again.

Rename the pack/unpack functions to follow the usual naming conventions
while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dp_aux.h | 4 ----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 5fbb767fcd63..2bc119374555 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -10,7 +10,7 @@
 #include "intel_pps.h"
 #include "intel_tc.h"
 
-u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
+static u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
 {
 	int i;
 	u32 v = 0;
@@ -22,7 +22,7 @@ u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
 	return v;
 }
 
-static void intel_dp_unpack_aux(u32 src, u8 *dst, int dst_bytes)
+static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
 {
 	int i;
 
@@ -267,7 +267,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			for (i = 0; i < send_bytes; i += 4)
 				intel_uncore_write(uncore,
 						   ch_data[i >> 2],
-						   intel_dp_pack_aux(send + i,
+						   intel_dp_aux_pack(send + i,
 								     send_bytes - i));
 
 			/* Send the command and wait for it to complete */
@@ -352,7 +352,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		recv_bytes = recv_size;
 
 	for (i = 0; i < recv_bytes; i += 4)
-		intel_dp_unpack_aux(intel_uncore_read(uncore, ch_data[i >> 2]),
+		intel_dp_aux_unpack(intel_uncore_read(uncore, ch_data[i >> 2]),
 				    recv + i, recv_bytes - i);
 
 	ret = recv_bytes;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 4afbe76217b9..738577537bc7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -6,12 +6,8 @@
 #ifndef __INTEL_DP_AUX_H__
 #define __INTEL_DP_AUX_H__
 
-#include <linux/types.h>
-
 struct intel_dp;
 
-u32 intel_dp_pack_aux(const u8 *src, int src_bytes);
-
 void intel_dp_aux_fini(struct intel_dp *intel_dp);
 void intel_dp_aux_init(struct intel_dp *intel_dp);
 
-- 
2.30.2

