Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6624E735C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5B210E324;
	Fri, 25 Mar 2022 12:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F7710E311;
 Fri, 25 Mar 2022 12:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211148; x=1679747148;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/0rn1Gf7QkcwdsT5l7h5jfjNo/ZRtuCI+gEMaCmjtRY=;
 b=haPomC3RCcPeaMY9onBPBiYeq256R+YCL+mS5cdKsZRMAll/jB9/h9z0
 U6gNv3VJN47kQdOHHUzuqRjBUvkVkkI2MiPHOsAGJ9VWM0L9fOD7NBF0R
 nvLqx7BPUeLfTzsVVwJOgBXyRR6TvuxS2VdiSmtf90gcpt25c0rYuwcxi
 xyADQjBxRhjDRuMtrzIiNgGs8lxLRJKBKMs4OMXJPPUHwkE06cErgpIJl
 enL7HQ4ditOHVobAUbJJcmQdb0F6kW7WYE8kG0hQXGOFPpJLHVtO1QNUo
 WWF/Tesr01Kh+yvBgLP4pyFsYtrBnWQ6LnZTaHPQ5mBHxj3LsVirPu5Ms Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="240778024"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="240778024"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:25:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="718192849"
Received: from avgorshk-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.35.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:25:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:25:24 +0200
Message-Id: <7752b5a00e96b9b6719402487185211937c62c7d.1648210803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1648210803.git.jani.nikula@intel.com>
References: <cover.1648210803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/edid: pass a timing pointer to
 is_display_descriptor()
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use struct member access instead of direct offsets to avoid lots of
casts all over the place.

Use BUILD_BUG_ON() for sanity check.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 1b552fe54f38..48707eef1dc2 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2331,10 +2331,14 @@ struct drm_display_mode *drm_mode_find_dmt(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_mode_find_dmt);
 
-static bool is_display_descriptor(const u8 d[18], u8 tag)
+static bool is_display_descriptor(const struct detailed_timing *timing, u8 type)
 {
-	return d[0] == 0x00 && d[1] == 0x00 &&
-		d[2] == 0x00 && d[3] == tag;
+	BUILD_BUG_ON(offsetof(typeof(*timing), pixel_clock) != 0);
+	BUILD_BUG_ON(offsetof(typeof(*timing), data.other_data.pad1) != 2);
+	BUILD_BUG_ON(offsetof(typeof(*timing), data.other_data.type) != 3);
+
+	return timing->pixel_clock == 0 && timing->data.other_data.pad1 == 0 &&
+		timing->data.other_data.type == type;
 }
 
 static bool is_detailed_timing_descriptor(const u8 d[18])
@@ -2405,7 +2409,7 @@ is_rb(struct detailed_timing *t, void *data)
 {
 	u8 *r = (u8 *)t;
 
-	if (!is_display_descriptor(r, EDID_DETAIL_MONITOR_RANGE))
+	if (!is_display_descriptor(t, EDID_DETAIL_MONITOR_RANGE))
 		return;
 
 	if (r[15] & 0x10)
@@ -2431,7 +2435,7 @@ find_gtf2(struct detailed_timing *t, void *data)
 {
 	u8 *r = (u8 *)t;
 
-	if (!is_display_descriptor(r, EDID_DETAIL_MONITOR_RANGE))
+	if (!is_display_descriptor(t, EDID_DETAIL_MONITOR_RANGE))
 		return;
 
 	if (r[10] == 0x02)
@@ -2987,7 +2991,7 @@ do_inferred_modes(struct detailed_timing *timing, void *c)
 	struct detailed_non_pixel *data = &timing->data.other_data;
 	struct detailed_data_monitor_range *range = &data->data.range;
 
-	if (!is_display_descriptor((const u8 *)timing, EDID_DETAIL_MONITOR_RANGE))
+	if (!is_display_descriptor(timing, EDID_DETAIL_MONITOR_RANGE))
 		return;
 
 	closure->modes += drm_dmt_modes_for_range(closure->connector,
@@ -3067,7 +3071,7 @@ do_established_modes(struct detailed_timing *timing, void *c)
 {
 	struct detailed_mode_closure *closure = c;
 
-	if (!is_display_descriptor((const u8 *)timing, EDID_DETAIL_EST_TIMINGS))
+	if (!is_display_descriptor(timing, EDID_DETAIL_EST_TIMINGS))
 		return;
 
 	closure->modes += drm_est3_modes(closure->connector, timing);
@@ -3122,7 +3126,7 @@ do_standard_modes(struct detailed_timing *timing, void *c)
 	struct edid *edid = closure->edid;
 	int i;
 
-	if (!is_display_descriptor((const u8 *)timing, EDID_DETAIL_STD_MODES))
+	if (!is_display_descriptor(timing, EDID_DETAIL_STD_MODES))
 		return;
 
 	for (i = 0; i < 6; i++) {
@@ -3231,7 +3235,7 @@ do_cvt_mode(struct detailed_timing *timing, void *c)
 {
 	struct detailed_mode_closure *closure = c;
 
-	if (!is_display_descriptor((const u8 *)timing, EDID_DETAIL_CVT_3BYTE))
+	if (!is_display_descriptor(timing, EDID_DETAIL_CVT_3BYTE))
 		return;
 
 	closure->modes += drm_cvt_modes(closure->connector, timing);
@@ -4491,7 +4495,7 @@ drm_parse_hdmi_vsdb_audio(struct drm_connector *connector, const u8 *db)
 static void
 monitor_name(struct detailed_timing *t, void *data)
 {
-	if (!is_display_descriptor((const u8 *)t, EDID_DETAIL_MONITOR_NAME))
+	if (!is_display_descriptor(t, EDID_DETAIL_MONITOR_NAME))
 		return;
 
 	*(u8 **)data = t->data.other_data.data.str.str;
@@ -5226,7 +5230,7 @@ void get_monitor_range(struct detailed_timing *timing,
 	const struct detailed_non_pixel *data = &timing->data.other_data;
 	const struct detailed_data_monitor_range *range = &data->data.range;
 
-	if (!is_display_descriptor((const u8 *)timing, EDID_DETAIL_MONITOR_RANGE))
+	if (!is_display_descriptor(timing, EDID_DETAIL_MONITOR_RANGE))
 		return;
 
 	/*
-- 
2.30.2

