Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE0F707D62
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 11:56:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60DE10E4F8;
	Thu, 18 May 2023 09:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF8F10E503
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 09:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684403794; x=1715939794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ItXMgz9YAkwvbmsKOL7tEwaLhmR6kGeKQfZ5g+Tdo5c=;
 b=O/53tPUg/IMiQGRVqB8gVyv511w7Gra7MMYBJuXyHUiT+sfKrtBuUF1Q
 A+neGBMhQ/ilk7XQ7NP6+PAu9zPJOh4eKPmGBperKnjfCsOyVrI5gAS0D
 2uwkuvM/cJETexLkx8V/MnYG8mZnUrXLkHPj53B4pRkRk7IUydGK7Lbtu
 QwGG6pTW0IsuaXVV0J64GaV6sbMONmbIxkQpsbU4U1/yIErRGTgL7sSym
 ezNUJKUTLtLaWmZwT7hIj8Ue4m4HcLVSW/vY9LX6MzfkRxTVNAXNo1YNO
 kKKnx6C/QsOgIK+eia+c36AwJu75iEY51WJCr7rDzOJuBzhTijsqw80Ht w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438366677"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438366677"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 02:56:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="791897357"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="791897357"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2023 02:56:18 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 May 2023 15:19:15 +0530
Message-Id: <20230518094916.1142812-5-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230518094916.1142812-1-arun.r.murthy@intel.com>
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/display: crtc property for global
 hist selective fetch
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

User can provide the selective fetch co-ordinates for global histogram
using crtc blob property. This patch adds the crtc blob property.
The selective fetch can be done only on the y co-ordinate and cannot be
done on the x co-ordinate.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     | 45 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  3 ++
 2 files changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 501bcf732aba..2a9dcf3b1a19 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -236,6 +236,9 @@ int intel_crtc_get_property(struct drm_crtc *crtc,
 	else if (property == intel_crtc->global_hist_property)
 		*val = (intel_crtc_state->global_hist) ?
 			intel_crtc_state->global_hist->base.id : 0;
+	else if (property == intel_crtc->global_hist_sf_clips_property)
+		*val = (intel_crtc_state->global_hist_sf_clips) ?
+			intel_crtc_state->global_hist_sf_clips->base.id : 0;
 	else {
 		drm_err(&i915->drm,
 			       "Unknown property [PROP:%d:%s]\n",
@@ -306,6 +309,18 @@ int intel_crtc_set_property(struct drm_crtc *crtc,
 		return 0;
 	}
 
+	if (property == intel_crtc->global_hist_sf_clips_property) {
+		intel_atomic_replace_property_blob_from_id(crtc->dev,
+					&intel_crtc_state->global_hist_sf_clips,
+					val,
+					-1,
+					sizeof(struct drm_rect),
+					&replaced);
+		if (replaced)
+			intel_crtc_state->global_hist_sf_clips_updates = true;
+		return 0;
+	}
+
 	drm_dbg_atomic(&i915->drm, "Unknown property [PROP:%d:%s]\n",
 		       property->base.id, property->name);
 	return -EINVAL;
@@ -903,11 +918,41 @@ void intel_attach_global_hist_property(struct intel_crtc *intel_crtc)
 	drm_object_attach_property(&crtc->base, prop, blob->base.id);
 }
 
+/**
+ * intel_attach_global_hist_sf_seg_property() - selective fetch segment property
+ * @intel_crtc: pointer to struct intel_crtc on which global histogram is enabled
+ *
+ * "Global Histogram SF CLIPS" is the crtc porperty used to provide the
+ * co-ordinates of the damage clips.
+ */
+void intel_attach_global_hist_sf_seg_property(struct intel_crtc * intel_crtc)
+{
+	struct drm_crtc *crtc = &intel_crtc->base;
+	struct drm_device *dev = crtc->dev;
+	struct drm_property *prop;
+	struct drm_property_blob *blob;
+
+	prop = intel_crtc->global_hist_sf_clips_property;
+	if (prop == NULL) {
+		prop = drm_property_create(dev,
+			DRM_MODE_PROP_ATOMIC | DRM_MODE_PROP_BLOB,
+			"Global Histogram SF CLIPS", 0);
+		if (prop == NULL)
+			return;
+		intel_crtc->global_hist_sf_clips_property = prop;
+	}
+	blob = drm_property_create_blob(dev, sizeof(struct drm_rect *), NULL);
+	intel_crtc->config->global_hist_sf_clips = blob;
+
+	drm_object_attach_property(&crtc->base, prop, blob->base.id);
+}
+
 int intel_crtc_add_property(struct intel_crtc *intel_crtc)
 {
 	intel_attach_global_hist_en_property(intel_crtc);
 	intel_attach_global_hist_property(intel_crtc);
 	intel_attach_global_iet_property(intel_crtc);
+	intel_attach_global_hist_sf_seg_property(intel_crtc);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 15d28e2305da..703593d4a52f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1371,8 +1371,10 @@ struct intel_crtc_state {
 	int global_hist_en;
 	struct drm_property_blob *global_iet;
 	struct drm_property_blob *global_hist;
+	struct drm_property_blob *global_hist_sf_clips;
 	bool global_iet_changed;
 	bool global_hist_en_changed;
+	bool global_hist_sf_clips_updates;
 };
 
 enum intel_pipe_crc_source {
@@ -1480,6 +1482,7 @@ struct intel_crtc {
 	struct drm_property *global_hist_en_property;
 	struct drm_property *global_iet_property;
 	struct drm_property *global_hist_property;
+	struct drm_property *global_hist_sf_clips_property;
 #ifdef CONFIG_DEBUG_FS
 	struct intel_pipe_crc pipe_crc;
 	u32 cpu_fifo_underrun_count;
-- 
2.25.1

