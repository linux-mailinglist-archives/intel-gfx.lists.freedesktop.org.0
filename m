Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C4351D541
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 12:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D2210F9A7;
	Fri,  6 May 2022 10:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5805610F993;
 Fri,  6 May 2022 10:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651831861; x=1683367861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W5ahhkDp7uBWWCb8gi8iO2mqvilsu8DrKUGFlYObHCA=;
 b=GrGH9TkMlTlMNmDeGR21yll2yoCq6BVSBt3TiBs+yFGsYWfKYnbjczYB
 vS1REEmJnUCwBFrnXytLxRUKtpXzZllvwXNUIwmo+zT2YFOTNUqkqfRF2
 gpR5teeUpj13jj+dfnaQ5zFrm9hbbJIynR3R7PGEmupTjNEgdiR99Ae8h
 H5VLg6fqw+d9SaQRzestiABQ3gWLCAoYhZGHlaI40kADUHk4VAkk9XZdQ
 MVdgxCMg/oAFwqcJEzaUG6W03YQJHRmJTj5CvCd3q33fBUk9gQgAj/VkZ
 lArzylFFzBO0iFKiZ8yY68X7l0ipyEgngSr/tnb/IES9+CCVffck938vQ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="266016521"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="266016521"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 03:11:00 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="695111630"
Received: from psikora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.157.88])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 03:10:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  6 May 2022 13:10:11 +0300
Message-Id: <9d71df1b2f41a23368b3d781a2cfaaf6bacac513.1651830938.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651830938.git.jani.nikula@intel.com>
References: <cover.1651830938.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/25] drm/edid: start propagating drm_edid to
 lower levels
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

We'll need to propagate drm_edid everywhere. This is a clunky start, but
a start nonetheless. We'll eventually convert all of the EDID parsing to
struct drm_edid.

Initially, we'll just create the struct drm_edid in stack. This will be
the compat layer for legacy struct edid code. In the future, we'll have
EDID read return drm_edid objects.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 480fd9fbe412..946296632b2e 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5814,17 +5814,20 @@ static int add_displayid_detailed_modes(struct drm_connector *connector,
 }
 
 static int drm_edid_connector_update(struct drm_connector *connector,
-				     const struct edid *edid)
+				     const struct drm_edid *drm_edid)
 {
+	const struct edid *edid;
 	int num_modes = 0;
 	u32 quirks;
 
-	if (edid == NULL) {
+	if (drm_edid == NULL) {
 		drm_reset_display_info(connector);
 		clear_eld(connector);
 		return 0;
 	}
 
+	edid = drm_edid->edid;
+
 	/*
 	 * CEA-861-F adds ycbcr capability map block, for HDMI 2.0 sinks.
 	 * To avoid multiple parsing of same block, lets parse that map
@@ -5890,13 +5893,20 @@ static int drm_edid_connector_update(struct drm_connector *connector,
  */
 int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid)
 {
+	struct drm_edid drm_edid = {};
+
 	if (edid && !drm_edid_is_valid(edid)) {
 		drm_warn(connector->dev, "%s: EDID invalid.\n",
 			 connector->name);
 		edid = NULL;
 	}
 
-	return drm_edid_connector_update(connector, edid);
+	if (edid) {
+		drm_edid.edid = edid;
+		drm_edid.size = edid_size(edid);
+	}
+
+	return drm_edid_connector_update(connector, edid ? &drm_edid : NULL);
 }
 EXPORT_SYMBOL(drm_add_edid_modes);
 
-- 
2.30.2

