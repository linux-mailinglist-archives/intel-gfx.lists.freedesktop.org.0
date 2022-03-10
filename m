Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 574B74D4982
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 15:41:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52FF710E500;
	Thu, 10 Mar 2022 14:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCACF10E4B6;
 Thu, 10 Mar 2022 14:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646923250; x=1678459250;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=xBMBHLykf2aZhi3CbZZ4IHwAix+rQR1KrLmH8hizEwQ=;
 b=emWoZZcmfghWI3Apb684oOfTBzjfGG/whRkh0xyBVO5oVa4qMIXUWu7M
 1NkKb8//P5+LwXxBc6bOv1g+PhwKamlA7qfZRRwFJal9hdqgMwGsLEfGO
 4LTZl5njWnogaVGxIk7I+CX8uiD7seUufB5dpQm3zUtNi29NvZnupr+y3
 aT3qWFyiNC/NK7IxW7bX+qRgjzjZRSnK82TYbugIPNxb0D4GNJ8r7EEAK
 wHrWq6A23bupdjaVjtoUAmKM1mKru+hgXO80SEnUMIS/ME5rgijrq4Q9B
 AkYqzpCdHk3oloyhcdWbEwcdZ7WhIkQZOKW5YrMA1ueOVVgHOAc67uSNO w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255000901"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="255000901"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 06:40:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="538477319"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga007.jf.intel.com with ESMTP; 10 Mar 2022 06:40:48 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 10 Mar 2022 22:54:21 +0800
Message-Id: <20220310145424.32643-3-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220310145424.32643-1-shawn.c.lee@intel.com>
References: <20220310145424.32643-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v5 2/5] drm/edid: parse multiple CEA extension block
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

Try to find and parse more CEA ext blocks if edid->extensions
is greater than one.

v2: split prvious patch to two. And do CEA block parsing
    in this one.
v3: simplify this patch based on previous change.
v4: refine patch v3.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 32 +++++++++++++++++++-------------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 1251226d9284..7b672166fab4 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4319,16 +4319,22 @@ static void drm_parse_y420cmdb_bitmap(struct drm_connector *connector,
 static int
 add_cea_modes(struct drm_connector *connector, struct edid *edid)
 {
-	const u8 *cea, *db, *hdmi = NULL, *video = NULL;
-	u8 dbl, hdmi_len, video_len = 0;
 	int modes = 0, ext_index = 0;
 
-	cea = drm_find_cea_extension(edid, &ext_index);
-	if (cea && cea_revision(cea) >= 3) {
+	for (;;) {
+		const u8 *cea, *db, *hdmi = NULL, *video = NULL;
+		u8 dbl, hdmi_len = 0, video_len = 0;
 		int i, start, end;
 
+		cea = drm_find_cea_extension(edid, &ext_index);
+		if (!cea)
+			break;
+
+		if (cea_revision(cea) < 3)
+			continue;
+
 		if (cea_db_offsets(cea, &start, &end))
-			return 0;
+			continue;
 
 		for_each_cea_db(cea, i, start, end) {
 			db = &cea[i];
@@ -4350,15 +4356,15 @@ add_cea_modes(struct drm_connector *connector, struct edid *edid)
 							  dbl - 1);
 			}
 		}
-	}
 
-	/*
-	 * We parse the HDMI VSDB after having added the cea modes as we will
-	 * be patching their flags when the sink supports stereo 3D.
-	 */
-	if (hdmi)
-		modes += do_hdmi_vsdb_modes(connector, hdmi, hdmi_len, video,
-					    video_len);
+		/*
+		 * We parse the HDMI VSDB after having added the cea modes as we will
+		 * be patching their flags when the sink supports stereo 3D.
+		 */
+		if (hdmi)
+			modes += do_hdmi_vsdb_modes(connector, hdmi, hdmi_len, video,
+						    video_len);
+	}
 
 	return modes;
 }
-- 
2.31.1

