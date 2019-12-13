Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E6911DAFC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 01:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBDC89C07;
	Fri, 13 Dec 2019 00:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEF989BAC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 00:15:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 16:15:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="220804471"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2019 16:15:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 16:15:10 -0800
Message-Id: <20191213001511.678070-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213001511.678070-1-matthew.d.roper@intel.com>
References: <20191213001511.678070-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/tgl: Drop Wa#1178
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The TGL workaround database no longer shows Wa #1178 (or anything
similar under different workaround names/numbers) so we should be able
to drop it.  In fact Swati just discovered that applying this workaround
is the root cause of some power well enable failures we've been seeing
in CI (gitlab issue 498).

Once we stop applying this WA, TGL no longer utilizes any of the special
handling provided by icl_combo_phy_aux_power_well_ops so we can just
drop back to using the standard hsw-style power well ops instead.

v3: Drop now-unused _TGL_AUX_ANAOVRD1_C definition too.  (Lucas)

Closes: https://gitlab.freedesktop.org/drm/intel/issues/498
Fixes: deea06b47574 ("drm/i915/tgl: apply Display WA #1178 to fix type C dongles")
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>  # v1
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
 drivers/gpu/drm/i915/i915_reg.h                    | 4 +---
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index cf34427cc840..52f2332e0ab8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -3977,7 +3977,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 	{
 		.name = "AUX A",
 		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
-		.ops = &icl_combo_phy_aux_power_well_ops,
+		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.regs = &icl_aux_power_well_regs,
@@ -3987,7 +3987,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 	{
 		.name = "AUX B",
 		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
-		.ops = &icl_combo_phy_aux_power_well_ops,
+		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.regs = &icl_aux_power_well_regs,
@@ -3997,7 +3997,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 	{
 		.name = "AUX C",
 		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
-		.ops = &icl_combo_phy_aux_power_well_ops,
+		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.regs = &icl_aux_power_well_regs,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 17f9dd3bda72..cbb4689af432 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9437,11 +9437,9 @@ enum skl_power_gate {
 #define _ICL_AUX_REG_IDX(pw_idx)	((pw_idx) - ICL_PW_CTL_IDX_AUX_A)
 #define _ICL_AUX_ANAOVRD1_A		0x162398
 #define _ICL_AUX_ANAOVRD1_B		0x6C398
-#define _TGL_AUX_ANAOVRD1_C		0x160398
 #define ICL_AUX_ANAOVRD1(pw_idx)	_MMIO(_PICK(_ICL_AUX_REG_IDX(pw_idx), \
 						    _ICL_AUX_ANAOVRD1_A, \
-						    _ICL_AUX_ANAOVRD1_B, \
-						    _TGL_AUX_ANAOVRD1_C))
+						    _ICL_AUX_ANAOVRD1_B))
 #define   ICL_AUX_ANAOVRD1_LDO_BYPASS	(1 << 7)
 #define   ICL_AUX_ANAOVRD1_ENABLE	(1 << 0)
 
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
