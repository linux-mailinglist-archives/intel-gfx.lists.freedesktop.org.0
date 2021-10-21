Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C93436311
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 15:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0295A6EC6C;
	Thu, 21 Oct 2021 13:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 397866EC6C
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 13:34:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="226491408"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="226491408"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 06:34:15 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495151194"
Received: from ssuryana-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.45.34])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 06:34:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Thu, 21 Oct 2021 16:34:08 +0300
Message-Id: <20211021133408.32166-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/cdclk: put the cdclk vtables in const
 data
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

Add the const that was accidentally left out from the vtables.

Fixes: 6b4cd9cba620 ("drm/i915: constify the cdclk vtable")
Cc: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 44 +++++++++++-----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9e466d829019..868dd43a7542 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2885,7 +2885,7 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 	return freq;
 }
 
-static struct intel_cdclk_funcs tgl_cdclk_funcs = {
+static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
 	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
@@ -2893,7 +2893,7 @@ static struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.calc_voltage_level = tgl_calc_voltage_level,
 };
 
-static struct intel_cdclk_funcs ehl_cdclk_funcs = {
+static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
 	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
@@ -2901,7 +2901,7 @@ static struct intel_cdclk_funcs ehl_cdclk_funcs = {
 	.calc_voltage_level = ehl_calc_voltage_level,
 };
 
-static struct intel_cdclk_funcs icl_cdclk_funcs = {
+static const struct intel_cdclk_funcs icl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
 	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
@@ -2909,7 +2909,7 @@ static struct intel_cdclk_funcs icl_cdclk_funcs = {
 	.calc_voltage_level = icl_calc_voltage_level,
 };
 
-static struct intel_cdclk_funcs bxt_cdclk_funcs = {
+static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
 	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
@@ -2917,54 +2917,54 @@ static struct intel_cdclk_funcs bxt_cdclk_funcs = {
 	.calc_voltage_level = bxt_calc_voltage_level,
 };
 
-static struct intel_cdclk_funcs skl_cdclk_funcs = {
+static const struct intel_cdclk_funcs skl_cdclk_funcs = {
 	.get_cdclk = skl_get_cdclk,
 	.set_cdclk = skl_set_cdclk,
 	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = skl_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs bdw_cdclk_funcs = {
+static const struct intel_cdclk_funcs bdw_cdclk_funcs = {
 	.get_cdclk = bdw_get_cdclk,
 	.set_cdclk = bdw_set_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = bdw_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs chv_cdclk_funcs = {
+static const struct intel_cdclk_funcs chv_cdclk_funcs = {
 	.get_cdclk = vlv_get_cdclk,
 	.set_cdclk = chv_set_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs vlv_cdclk_funcs = {
+static const struct intel_cdclk_funcs vlv_cdclk_funcs = {
 	.get_cdclk = vlv_get_cdclk,
 	.set_cdclk = vlv_set_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs hsw_cdclk_funcs = {
+static const struct intel_cdclk_funcs hsw_cdclk_funcs = {
 	.get_cdclk = hsw_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
 /* SNB, IVB, 965G, 945G */
-static struct intel_cdclk_funcs fixed_400mhz_cdclk_funcs = {
+static const struct intel_cdclk_funcs fixed_400mhz_cdclk_funcs = {
 	.get_cdclk = fixed_400mhz_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs ilk_cdclk_funcs = {
+static const struct intel_cdclk_funcs ilk_cdclk_funcs = {
 	.get_cdclk = fixed_450mhz_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs gm45_cdclk_funcs = {
+static const struct intel_cdclk_funcs gm45_cdclk_funcs = {
 	.get_cdclk = gm45_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
@@ -2972,7 +2972,7 @@ static struct intel_cdclk_funcs gm45_cdclk_funcs = {
 
 /* G45 uses G33 */
 
-static struct intel_cdclk_funcs i965gm_cdclk_funcs = {
+static const struct intel_cdclk_funcs i965gm_cdclk_funcs = {
 	.get_cdclk = i965gm_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
@@ -2980,19 +2980,19 @@ static struct intel_cdclk_funcs i965gm_cdclk_funcs = {
 
 /* i965G uses fixed 400 */
 
-static struct intel_cdclk_funcs pnv_cdclk_funcs = {
+static const struct intel_cdclk_funcs pnv_cdclk_funcs = {
 	.get_cdclk = pnv_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs g33_cdclk_funcs = {
+static const struct intel_cdclk_funcs g33_cdclk_funcs = {
 	.get_cdclk = g33_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs i945gm_cdclk_funcs = {
+static const struct intel_cdclk_funcs i945gm_cdclk_funcs = {
 	.get_cdclk = i945gm_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
@@ -3000,37 +3000,37 @@ static struct intel_cdclk_funcs i945gm_cdclk_funcs = {
 
 /* i945G uses fixed 400 */
 
-static struct intel_cdclk_funcs i915gm_cdclk_funcs = {
+static const struct intel_cdclk_funcs i915gm_cdclk_funcs = {
 	.get_cdclk = i915gm_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs i915g_cdclk_funcs = {
+static const struct intel_cdclk_funcs i915g_cdclk_funcs = {
 	.get_cdclk = fixed_333mhz_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs i865g_cdclk_funcs = {
+static const struct intel_cdclk_funcs i865g_cdclk_funcs = {
 	.get_cdclk = fixed_266mhz_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs i85x_cdclk_funcs = {
+static const struct intel_cdclk_funcs i85x_cdclk_funcs = {
 	.get_cdclk = i85x_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs i845g_cdclk_funcs = {
+static const struct intel_cdclk_funcs i845g_cdclk_funcs = {
 	.get_cdclk = fixed_200mhz_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
 };
 
-static struct intel_cdclk_funcs i830_cdclk_funcs = {
+static const struct intel_cdclk_funcs i830_cdclk_funcs = {
 	.get_cdclk = fixed_133mhz_get_cdclk,
 	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
 	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
-- 
2.30.2

