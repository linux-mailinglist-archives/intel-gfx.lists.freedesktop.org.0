Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3648151D551
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 12:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8524B10FAB3;
	Fri,  6 May 2022 10:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4043610FAF5;
 Fri,  6 May 2022 10:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651831904; x=1683367904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kYlbK4zPh066xym3uzUi30BJd/3ImEuSmnd6OBBz0IU=;
 b=Hkkb1SvyC8Eq7lKL+6Lbv56qXrNUg22lk5+29+aarcXT+yEgFNLU5jEw
 SNawS/bB84gag2V8qRMdPqDG33byRLj4PiHL/ZikMNDy739xEIeuUWI/C
 4YGoAx99XfDHH4Nq+4loMScXmtaBaEwy4fBmKJZ8/f1l83FdzVB64ls1D
 1QNA1vseXjVaJGB7o9apBIddBhsN3TO1IQKBUfI5RumD9cYqA3EIZzFwu
 C04qjHL8UOkKBjgz02QYDTcqaP8+M7r9UvpbxWID7uaQQ7SpfMsmy/UiX
 hBjPOGi/yJJVXawffHxG5FWLWL3DFeOVEcoArI711BXBSCZQbENGieoNt g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="328971616"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="328971616"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 03:11:43 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="665423218"
Received: from psikora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.157.88])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 03:11:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  6 May 2022 13:10:19 +0300
Message-Id: <9a58c131773a341deb2960a50a73414b4c96fce2.1651830938.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651830938.git.jani.nikula@intel.com>
References: <cover.1651830938.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/25] drm/edid: convert
 drm_cvt_modes_for_range() to drm_edid
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

We'll need to propagate drm_edid everywhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 3931c3318cf7..27655da6ef9c 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -3167,14 +3167,14 @@ static int drm_gtf_modes_for_range(struct drm_connector *connector,
 	return modes;
 }
 
-static int
-drm_cvt_modes_for_range(struct drm_connector *connector, const struct edid *edid,
-			const struct detailed_timing *timing)
+static int drm_cvt_modes_for_range(struct drm_connector *connector,
+				   const struct drm_edid *drm_edid,
+				   const struct detailed_timing *timing)
 {
 	int i, modes = 0;
 	struct drm_display_mode *newmode;
 	struct drm_device *dev = connector->dev;
-	bool rb = drm_monitor_supports_rb(edid);
+	bool rb = drm_monitor_supports_rb(drm_edid->edid);
 
 	for (i = 0; i < ARRAY_SIZE(extra_modes); i++) {
 		const struct minimode *m = &extra_modes[i];
@@ -3184,7 +3184,7 @@ drm_cvt_modes_for_range(struct drm_connector *connector, const struct edid *edid
 			return modes;
 
 		drm_mode_fixup_1366x768(newmode);
-		if (!mode_in_range(newmode, edid, timing) ||
+		if (!mode_in_range(newmode, drm_edid->edid, timing) ||
 		    !valid_inferred_mode(connector, newmode)) {
 			drm_mode_destroy(dev, newmode);
 			continue;
@@ -3226,7 +3226,7 @@ do_inferred_modes(const struct detailed_timing *timing, void *c)
 			break;
 
 		closure->modes += drm_cvt_modes_for_range(closure->connector,
-							  closure->drm_edid->edid,
+							  closure->drm_edid,
 							  timing);
 		break;
 	case 0x01: /* just the ranges, no formula */
-- 
2.30.2

