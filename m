Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 280B94E99C9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 16:35:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CD5C10E69B;
	Mon, 28 Mar 2022 14:35:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FE0D10E6A1;
 Mon, 28 Mar 2022 14:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648478137; x=1680014137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pwgpRKnal/ECmmCuFWLj6tgyFTc3WYyYNiPfxWKOz6U=;
 b=CHUj0/M4alJc1L/4Vd+skte3hNnqVlD7VJAXiJK2a5l1eufm3jVjz8Fg
 9pOcy0jHtd1YNyRb5HBbiEcoJi/RNFTzC+1uRAOverL4hPbS/fEkQholv
 G51fwcEAqgek7vY2DaZBoocIfEt1unAuJeoomVHR7537c/+pM5vsnCiZy
 cJ710yv2APqdzgiFI+9FDJ7Qng6Rmyci0eX5LDFqr/FTPUW+rYcxF/6Xi
 qKODZyihPc/KIZhAOX9CyAFdG0YTfUSxqdJJhWXxxf4TpZFe7PvEsHLHV
 f/VPBB8HTZcjWgP6CVVpIh/ORAkeTYNIn69YFcaTSGlVmDcx/RKZJ1Bxr Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="322198144"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="322198144"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 07:35:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="553929121"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 07:35:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 28 Mar 2022 17:34:32 +0300
Message-Id: <c7156f22494b585c55a00a6732462bde0cc19dbf.1648477901.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1648477901.git.jani.nikula@intel.com>
References: <cover.1648477901.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/12] drm/edid: add more general struct edid
 constness in the interfaces
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

With this, the remaining non-const parts are the ones that actually
modify the EDID, for example to fix corrupt EDID.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 21 +++++++++++----------
 include/drm/drm_edid.h     | 10 +++++-----
 2 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 625fa6a4a93a..d1abaa517867 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2150,7 +2150,7 @@ static u32 edid_extract_panel_id(const struct edid *edid)
 
 u32 drm_edid_get_panel_id(struct i2c_adapter *adapter)
 {
-	struct edid *edid;
+	const struct edid *edid;
 	u32 panel_id;
 
 	edid = drm_do_get_edid_base_block(NULL, drm_do_probe_ddc_edid, adapter);
@@ -3664,7 +3664,7 @@ static bool drm_valid_hdmi_vic(u8 vic)
 }
 
 static int
-add_alternate_cea_modes(struct drm_connector *connector, struct edid *edid)
+add_alternate_cea_modes(struct drm_connector *connector, const struct edid *edid)
 {
 	struct drm_device *dev = connector->dev;
 	struct drm_display_mode *mode, *tmp;
@@ -4345,7 +4345,7 @@ static void drm_parse_y420cmdb_bitmap(struct drm_connector *connector,
 }
 
 static int
-add_cea_modes(struct drm_connector *connector, struct edid *edid)
+add_cea_modes(struct drm_connector *connector, const struct edid *edid)
 {
 	const u8 *cea = drm_find_cea_extension(edid);
 	const u8 *db, *hdmi = NULL, *video = NULL;
@@ -4551,7 +4551,7 @@ static int get_monitor_name(const struct edid *edid, char name[13])
  * @bufsize: The size of the name buffer (should be at least 14 chars.)
  *
  */
-void drm_edid_get_monitor_name(struct edid *edid, char *name, int bufsize)
+void drm_edid_get_monitor_name(const struct edid *edid, char *name, int bufsize)
 {
 	int name_length;
 	char buf[13];
@@ -4585,7 +4585,8 @@ static void clear_eld(struct drm_connector *connector)
  * Fill the ELD (EDID-Like Data) buffer for passing to the audio driver. The
  * HDCP and Port_ID ELD fields are left for the graphics driver to fill in.
  */
-static void drm_edid_to_eld(struct drm_connector *connector, struct edid *edid)
+static void drm_edid_to_eld(struct drm_connector *connector,
+			    const struct edid *edid)
 {
 	uint8_t *eld = connector->eld;
 	const u8 *cea;
@@ -4681,7 +4682,7 @@ static void drm_edid_to_eld(struct drm_connector *connector, struct edid *edid)
  *
  * Return: The number of found SADs or negative number on error.
  */
-int drm_edid_to_sad(struct edid *edid, struct cea_sad **sads)
+int drm_edid_to_sad(const struct edid *edid, struct cea_sad **sads)
 {
 	int count = 0;
 	int i, start, end, dbl;
@@ -4743,7 +4744,7 @@ EXPORT_SYMBOL(drm_edid_to_sad);
  * Return: The number of found Speaker Allocation Blocks or negative number on
  * error.
  */
-int drm_edid_to_speaker_allocation(struct edid *edid, u8 **sadb)
+int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb)
 {
 	int count = 0;
 	int i, start, end, dbl;
@@ -4838,7 +4839,7 @@ EXPORT_SYMBOL(drm_av_sync_delay);
  *
  * Return: True if the monitor is HDMI, false if not or unknown.
  */
-bool drm_detect_hdmi_monitor(struct edid *edid)
+bool drm_detect_hdmi_monitor(const struct edid *edid)
 {
 	const u8 *edid_ext;
 	int i;
@@ -4876,7 +4877,7 @@ EXPORT_SYMBOL(drm_detect_hdmi_monitor);
  *
  * Return: True if the monitor supports audio, false otherwise.
  */
-bool drm_detect_monitor_audio(struct edid *edid)
+bool drm_detect_monitor_audio(const struct edid *edid)
 {
 	const u8 *edid_ext;
 	int i, j;
@@ -5543,7 +5544,7 @@ static int add_displayid_detailed_1_modes(struct drm_connector *connector,
 }
 
 static int add_displayid_detailed_modes(struct drm_connector *connector,
-					struct edid *edid)
+					const struct edid *edid)
 {
 	const struct displayid_block *block;
 	struct displayid_iter iter;
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 144c495b99c4..48b1bf9c315a 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -372,8 +372,8 @@ struct drm_connector;
 struct drm_connector_state;
 struct drm_display_mode;
 
-int drm_edid_to_sad(struct edid *edid, struct cea_sad **sads);
-int drm_edid_to_speaker_allocation(struct edid *edid, u8 **sadb);
+int drm_edid_to_sad(const struct edid *edid, struct cea_sad **sads);
+int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb);
 int drm_av_sync_delay(struct drm_connector *connector,
 		      const struct drm_display_mode *mode);
 
@@ -569,8 +569,8 @@ int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid);
 int drm_add_override_edid_modes(struct drm_connector *connector);
 
 u8 drm_match_cea_mode(const struct drm_display_mode *to_match);
-bool drm_detect_hdmi_monitor(struct edid *edid);
-bool drm_detect_monitor_audio(struct edid *edid);
+bool drm_detect_hdmi_monitor(const struct edid *edid);
+bool drm_detect_monitor_audio(const struct edid *edid);
 enum hdmi_quantization_range
 drm_default_rgb_quant_range(const struct drm_display_mode *mode);
 int drm_add_modes_noedid(struct drm_connector *connector,
@@ -582,7 +582,7 @@ int drm_edid_header_is_valid(const u8 *raw_edid);
 bool drm_edid_block_valid(u8 *raw_edid, int block, bool print_bad_edid,
 			  bool *edid_corrupt);
 bool drm_edid_is_valid(struct edid *edid);
-void drm_edid_get_monitor_name(struct edid *edid, char *name,
+void drm_edid_get_monitor_name(const struct edid *edid, char *name,
 			       int buflen);
 struct drm_display_mode *drm_mode_find_dmt(struct drm_device *dev,
 					   int hsize, int vsize, int fresh,
-- 
2.30.2

