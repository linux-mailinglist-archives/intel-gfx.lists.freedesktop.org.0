Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBB1538E95
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 12:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AA610EAB0;
	Tue, 31 May 2022 10:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A8E89F61
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 10:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653992011; x=1685528011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3YpK8LtcPE0677n75/BRy4Ia8657/+94hBHBaUlN9TY=;
 b=SO2vjx1im1Twf+vYy1ZABJmYOryEhb8/rXoEkBfUNxS0mJllI6VggTsT
 xv7qF+CrOPKv4AtBOk/jA8RwrdMpe7A3h026WdrX+0HKavx+Fp5Uic/M2
 9rddGf7qPhnLZ0ItVdVKXL8mpCYwkIhiIfmWqxDyhpcpSiBN+FNp0QUD9
 LVOXUrfGhsMxyPt4N70fvyJi9rjZ5+jBDrEbWlazSCfgQUYvQOXFRUsZT
 C6J9dTJd4DLQZ37c9tbQEYxuuMsQh8NC0ReLNa7kIq1FwA8stxnT4004N
 ajsWASNGm/tN1NC3BGTxuX76QXc7UAZz1bjt8oCfkGO9M3DKBQGeQ57mr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10363"; a="257276739"
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="257276739"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 03:13:29 -0700
X-IronPort-AV: E=Sophos;i="5.91,264,1647327600"; d="scan'208";a="706512063"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.231.22])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 03:13:28 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 May 2022 18:13:22 +0800
Message-Id: <20220531101322.26757-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/edid: ignore the CEA modes not defined in
 CEA-861-D
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
Cc: Wayne Lin <waynelin@amd.com>, William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a workaround for HDMI 1.4 sink which has a CEA mode with higher vic
than what is defined in CEA-861-D.

As an example, a HDMI 1.4 sink has the video format 2560x1080p to be
displayed and the video format is indicated by both SVD (with vic 90 and
pictuure aspect ratio 64:27) and DTD.  When connecting to such sink,
source can't output the video format in SVD because an error is returned by
drm_hdmi_avi_infoframe_from_display_mode(), which can't fill the infoframe
with pictuure aspect ratio 64:27 and the vic, which is originally 90 and is
changed to 0 by drm_mode_cea_vic().

To work around it, this patch ignores such CEA modes in do_cea_modes() so
the modes won't be processed in drm_hdmi_avi_infoframe_from_display_mode().
And only the video format in DTD can be dispalyed.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Wayne Lin <waynelin@amd.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 39 +++++++++++++++++++++++++-------------
 1 file changed, 26 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index bc43e1b32092..a93f68878bfd 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -3982,6 +3982,19 @@ drm_display_mode_from_cea_vic(struct drm_device *dev,
 }
 EXPORT_SYMBOL(drm_display_mode_from_cea_vic);
 
+static bool is_hdmi2_sink(const struct drm_connector *connector)
+{
+	/*
+	 * FIXME: sil-sii8620 doesn't have a connector around when
+	 * we need one, so we have to be prepared for a NULL connector.
+	 */
+	if (!connector)
+		return true;
+
+	return connector->display_info.hdmi.scdc.supported ||
+		connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR420;
+}
+
 static int
 do_cea_modes(struct drm_connector *connector, const u8 *db, u8 len)
 {
@@ -3993,6 +4006,19 @@ do_cea_modes(struct drm_connector *connector, const u8 *db, u8 len)
 
 		mode = drm_display_mode_from_vic_index(connector, db, len, i);
 		if (mode) {
+			u8 vic = svd_to_vic(db[i]);
+
+			if (!drm_valid_cea_vic(vic))
+				continue;
+
+			/*
+			 * HDMI 1.4 VIC range: 1 <= VIC <= 64 (CEA-861-D) but
+			 * HDMI 2.0 VIC range: 1 <= VIC <= 107 (CEA-861-F). So we
+			 * have to make sure we dont break HDMI 1.4 sinks.
+			 */
+			if (!is_hdmi2_sink(connector) && vic > 64)
+				continue;
+
 			/*
 			 * YCBCR420 capability block contains a bitmap which
 			 * gives the index of CEA modes from CEA VDB, which
@@ -5846,19 +5872,6 @@ void drm_set_preferred_mode(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_set_preferred_mode);
 
-static bool is_hdmi2_sink(const struct drm_connector *connector)
-{
-	/*
-	 * FIXME: sil-sii8620 doesn't have a connector around when
-	 * we need one, so we have to be prepared for a NULL connector.
-	 */
-	if (!connector)
-		return true;
-
-	return connector->display_info.hdmi.scdc.supported ||
-		connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR420;
-}
-
 static u8 drm_mode_hdmi_vic(const struct drm_connector *connector,
 			    const struct drm_display_mode *mode)
 {
-- 
2.17.1

