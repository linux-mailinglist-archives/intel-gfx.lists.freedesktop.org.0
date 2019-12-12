Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D55A11D97C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 23:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D3C6E221;
	Thu, 12 Dec 2019 22:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A176E221
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 22:37:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 14:37:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="245907421"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2019 14:37:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:37:34 -0800
Message-Id: <20191212223735.666014-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191212223735.666014-1-matthew.d.roper@intel.com>
References: <20191212223735.666014-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Drop Wa#1178
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

Closes: https://gitlab.freedesktop.org/drm/intel/issues/498
Fixes: deea06b47574 ("drm/i915/tgl: apply Display WA #1178 to fix type C dongles")
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

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
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
