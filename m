Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D8359E400
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 15:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEBA1130E5;
	Tue, 23 Aug 2022 13:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28C3510FBAF
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 13:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661259841; x=1692795841;
 h=resent-from:resent-date:resent-message-id:resent-to:from:
 to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=unNDhrucV4hmjx+3zBANYrN+YM/7wcvIbgTqNEmeFSg=;
 b=gOL6yP3+4ih1fq1hX6Ii1dKQijb62H7/b8YPy2yYvdKD1s5eVNqmbs07
 kY6mZPpr+fhrnO3Yzr1/4zpRFjCvVGCZvfp4Qj3cu1ltXocrB9g9Ukhvp
 tzh90VhouEm3Mzs3N+macWrG6CgBxak9UKhxh2/ac7JZB2WE05OfTkaC1
 Bk3x5pj95HMSkaBEetnrebRkNWN5L4mnT4Gv5kLhnuErpz/rJtcg8GGUY
 t5Tjzsu09UpSVp4S32FHwcbdv9TNZSqv/RGSfHaUYhzhsrDnIK0IMslZV
 zOmql82nYU0K0aD2jl4HUnUHOycfobByf5OWBgHdwvY73cnyhgRRXZ406 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="273433176"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="273433176"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 06:04:00 -0700
X-ExtLoopCount2: 2 from 10.237.72.59
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="712599305"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by fmsmga002.fm.intel.com with SMTP; 23 Aug 2022 06:03:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Aug 2022 16:03:57 +0300
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Tue, 23 Aug 2022 16:03:57 +0300
Resent-Message-ID: <YwTQPbUP5Wx8O0Uw@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.stink.local with IMAP (fetchmail-6.4.27)
 for <vsyrjala@localhost> (single-drop); Mon, 22 Aug 2022 09:48:01 +0300 (EEST)
Received: from mta01.ostc.intel.com (unknown [10.54.63.101])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 62A2B58209C
 for <ville.syrjala@linux.intel.com>; Sun, 21 Aug 2022 23:17:15 -0700 (PDT)
Received: from fmsmga008.fm.intel.com (fmsmga008.fm.intel.com [10.253.24.58])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mta01.ostc.intel.com (Postfix) with ESMTPS id 51F021154F2
 for <ville.syrjala@linux.intel.com>; Fri, 19 Aug 2022 02:28:31 -0700 (PDT)
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="668508558"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by fmsmga008.fm.intel.com with SMTP; 19 Aug 2022 02:27:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Aug 2022 12:27:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 19 Aug 2022 12:27:28 +0300
Message-Id: <20220819092728.14753-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/edid: Handle EDID 1.4 range descriptor
 h/vfreq offsets
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

EDID 1.4 introduced some extra flags in the range
descriptor to support min/max h/vfreq >= 255. Consult them
to correctly parse the vfreq limits.

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6519
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 24 ++++++++++++++++++------
 include/drm/drm_edid.h     |  5 +++++
 2 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 90a5e26eafa8..4005dab6147d 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -6020,12 +6020,14 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
 }
 
 static
-void get_monitor_range(const struct detailed_timing *timing,
-		       void *info_monitor_range)
+void get_monitor_range(const struct detailed_timing *timing, void *c)
 {
-	struct drm_monitor_range_info *monitor_range = info_monitor_range;
+	struct detailed_mode_closure *closure = c;
+	struct drm_display_info *info = &closure->connector->display_info;
+	struct drm_monitor_range_info *monitor_range = &info->monitor_range;
 	const struct detailed_non_pixel *data = &timing->data.other_data;
 	const struct detailed_data_monitor_range *range = &data->data.range;
+	const struct edid *edid = closure->drm_edid->edid;
 
 	if (!is_display_descriptor(timing, EDID_DETAIL_MONITOR_RANGE))
 		return;
@@ -6041,18 +6043,28 @@ void get_monitor_range(const struct detailed_timing *timing,
 
 	monitor_range->min_vfreq = range->min_vfreq;
 	monitor_range->max_vfreq = range->max_vfreq;
+
+	if (edid->revision >= 4) {
+		if (data->pad2 & DRM_EDID_RANGE_OFFSET_MIN_VFREQ)
+			monitor_range->min_vfreq += 255;
+		if (data->pad2 & DRM_EDID_RANGE_OFFSET_MAX_VFREQ)
+			monitor_range->max_vfreq += 255;
+	}
 }
 
 static void drm_get_monitor_range(struct drm_connector *connector,
 				  const struct drm_edid *drm_edid)
 {
-	struct drm_display_info *info = &connector->display_info;
+	const struct drm_display_info *info = &connector->display_info;
+	struct detailed_mode_closure closure = {
+		.connector = connector,
+		.drm_edid = drm_edid,
+	};
 
 	if (!version_greater(drm_edid, 1, 1))
 		return;
 
-	drm_for_each_detailed_block(drm_edid, get_monitor_range,
-				    &info->monitor_range);
+	drm_for_each_detailed_block(drm_edid, get_monitor_range, &closure);
 
 	DRM_DEBUG_KMS("Supported Monitor Refresh rate range is %d Hz - %d Hz\n",
 		      info->monitor_range.min_vfreq,
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 2181977ae683..d81da97cad6e 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -92,6 +92,11 @@ struct detailed_data_string {
 	u8 str[13];
 } __attribute__((packed));
 
+#define DRM_EDID_RANGE_OFFSET_MIN_VFREQ (1 << 0)
+#define DRM_EDID_RANGE_OFFSET_MAX_VFREQ (1 << 1)
+#define DRM_EDID_RANGE_OFFSET_MIN_HFREQ (1 << 2)
+#define DRM_EDID_RANGE_OFFSET_MAX_HFREQ (1 << 3)
+
 #define DRM_EDID_DEFAULT_GTF_SUPPORT_FLAG   0x00
 #define DRM_EDID_RANGE_LIMITS_ONLY_FLAG     0x01
 #define DRM_EDID_SECONDARY_GTF_SUPPORT_FLAG 0x02
-- 
2.35.1
