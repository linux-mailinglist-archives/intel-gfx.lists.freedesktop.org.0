Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A109F718401
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 15:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECFAC10E4CA;
	Wed, 31 May 2023 13:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0E0610E4CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 13:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685541389; x=1717077389;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NocyHY64pgeXcybgwr3QURguLtAQN+W7x3xSDJT15GU=;
 b=Pc6fvMLjeaUcqNg7sBWIGP/wBocVrGuoYgb9Ra8/nSBvttcu+r3Pgt0V
 AWFvH1yBbzBDy8a3c8lBiffrpIJDkj76vxCvFF3sy92xv/+01RQmyfGAQ
 g0ZFIKB/78OCaFszH1Fqr2WxnhTNzInIakIcS5SwEe9S6pRluhzNxZmDK
 nyk6CSwcB+UVCIy3MN2jWFpeA6KYKV4HrJUauNr0b+ePldHOtoJ12Z5wF
 9eKTukbUzD65h9uZpVA3CqN5QMEhkxXzrT37OpGGGYQrtpqGfTdat6deZ
 IV46yx5tXlvY1Pwpwdkvy/C/aoQfL0M0tNrWEU+1yp/TGWcEQrfCs2CwJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="441599199"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="441599199"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 06:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="736683653"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="736683653"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 31 May 2023 06:56:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 May 2023 16:56:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:56:25 +0300
Message-Id: <20230531135625.3467-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: No 10bit gamma on desktop gen3
 parts
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently desktop gen3 parts don't support the
10bit gamma mode at all. Stop claiming otherwise.

As is the case with pipe A on gen3 mobile parts, the
PIPECONF gamma mode bit can be set but it has no
effect on the output.

PNV seems to be the only slight exception, but generally
the desktop PNV variant looks more like a mobile part so
this is not entirely surprising.

Fixes: 67630bacae23 ("drm/i915: Add 10bit gamma mode for gen2/3")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.c  | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a513ac8f71a3..7e1af980e8ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -219,7 +219,6 @@ static const struct intel_display_device_info i865g_display = {
 	.has_overlay = 1, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
-	I9XX_COLORS, \
 	\
 	.__runtime_defaults.ip.ver = 3, \
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
@@ -228,12 +227,14 @@ static const struct intel_display_device_info i865g_display = {
 
 static const struct intel_display_device_info i915g_display = {
 	GEN3_DISPLAY,
+	I845_COLORS,
 	.cursor_needs_physical = 1,
 	.overlay_needs_physical = 1,
 };
 
 static const struct intel_display_device_info i915gm_display = {
 	GEN3_DISPLAY,
+	I9XX_COLORS,
 	.cursor_needs_physical = 1,
 	.overlay_needs_physical = 1,
 	.supports_tv = 1,
@@ -243,6 +244,7 @@ static const struct intel_display_device_info i915gm_display = {
 
 static const struct intel_display_device_info i945g_display = {
 	GEN3_DISPLAY,
+	I845_COLORS,
 	.has_hotplug = 1,
 	.cursor_needs_physical = 1,
 	.overlay_needs_physical = 1,
@@ -250,6 +252,7 @@ static const struct intel_display_device_info i945g_display = {
 
 static const struct intel_display_device_info i945gm_display = {
 	GEN3_DISPLAY,
+	I9XX_COLORS,
 	.has_hotplug = 1,
 	.cursor_needs_physical = 1,
 	.overlay_needs_physical = 1,
@@ -260,6 +263,13 @@ static const struct intel_display_device_info i945gm_display = {
 
 static const struct intel_display_device_info g33_display = {
 	GEN3_DISPLAY,
+	I845_COLORS,
+	.has_hotplug = 1,
+};
+
+static const struct intel_display_device_info pnv_display = {
+	GEN3_DISPLAY,
+	I9XX_COLORS,
 	.has_hotplug = 1,
 };
 
@@ -672,8 +682,8 @@ static const struct {
 	INTEL_I965GM_IDS(&i965gm_display),
 	INTEL_GM45_IDS(&gm45_display),
 	INTEL_G45_IDS(&g45_display),
-	INTEL_PINEVIEW_G_IDS(&g33_display),
-	INTEL_PINEVIEW_M_IDS(&g33_display),
+	INTEL_PINEVIEW_G_IDS(&pnv_display),
+	INTEL_PINEVIEW_M_IDS(&pnv_display),
 	INTEL_IRONLAKE_D_IDS(&ilk_d_display),
 	INTEL_IRONLAKE_M_IDS(&ilk_m_display),
 	INTEL_SNB_D_IDS(&snb_display),
-- 
2.39.3

