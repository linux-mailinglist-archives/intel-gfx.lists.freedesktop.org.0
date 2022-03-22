Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF894E486B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 22:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C086910E556;
	Tue, 22 Mar 2022 21:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D5C10E563;
 Tue, 22 Mar 2022 21:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647985270; x=1679521270;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4/4iVLd+uZSWYzVWqys5om5ixEFvS+Vuw0Mo2h4qqW4=;
 b=muLnjuZACYWUKVJOh/ac0dPwv+3qHLSJKk2R1OHrGauY0+M++Smqn1uP
 8N8+okt1FGTerloxVv6g276P+Go9Cpyt198qzrSbOB9AYgYb29qk7pf9s
 jFnT8bGGw5U1dE+scBprMRbM0rihgMMESc1u/4uVHNgAL4MColdEsvN1q
 tclRxbGOaEUfqc59gmkGEwWgTUeBy7MVmhIlimr8xJqya1TYFKdzEY0VL
 OA5cUMQT8fXy/yh/dZfoa5Y9WTqxktK7BtganiYVKksZp0R5TvoOzXJ2k
 PSk7xYmEqSb+wf9UAQlHwhaQUArRbnLyqqbZMNE7rxqzuFUgQPG7sVzga w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="245428366"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="245428366"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:41:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="519082458"
Received: from sburacze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.237])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:41:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 22 Mar 2022 23:40:31 +0200
Message-Id: <1a98752e8f23f4a981feb3471f46c3d2b4b2b93c.1647985054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647985054.git.jani.nikula@intel.com>
References: <cover.1647985054.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 02/19] drm: use drm_edid_extension_block_count()
 and drm_edid_size()
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

Use the block count and size helpers in all drm core code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_connector.c |  2 +-
 drivers/gpu/drm/drm_debugfs.c   |  3 +--
 drivers/gpu/drm/drm_edid.c      | 14 +++++++-------
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 76a8c707c34b..cfed43e61380 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -2138,7 +2138,7 @@ int drm_connector_update_edid_property(struct drm_connector *connector,
 		return 0;
 
 	if (edid)
-		size = EDID_LENGTH * (1 + edid->extensions);
+		size = drm_edid_size(edid);
 
 	/* Set the display info, using edid if available, otherwise
 	 * resetting the values to defaults. This duplicates the work
diff --git a/drivers/gpu/drm/drm_debugfs.c b/drivers/gpu/drm/drm_debugfs.c
index 7f1b82dbaebb..a832ef6b33fe 100644
--- a/drivers/gpu/drm/drm_debugfs.c
+++ b/drivers/gpu/drm/drm_debugfs.c
@@ -362,8 +362,7 @@ static ssize_t edid_write(struct file *file, const char __user *ubuf,
 	if (len == 5 && !strncmp(buf, "reset", 5)) {
 		connector->override_edid = false;
 		ret = drm_connector_update_edid_property(connector, NULL);
-	} else if (len < EDID_LENGTH ||
-		   EDID_LENGTH * (1 + edid->extensions) > len)
+	} else if (len < EDID_LENGTH || drm_edid_size(edid) > len)
 		ret = -EINVAL;
 	else {
 		connector->override_edid = false;
diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index f4b49693e666..b96906774433 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1643,8 +1643,8 @@ bool drm_edid_are_equal(const struct edid *edid1, const struct edid *edid2)
 		return false;
 
 	if (edid1) {
-		edid1_len = EDID_LENGTH * (1 + edid1->extensions);
-		edid2_len = EDID_LENGTH * (1 + edid2->extensions);
+		edid1_len = drm_edid_size(edid1);
+		edid2_len = drm_edid_size(edid2);
 
 		if (edid1_len != edid2_len)
 			return false;
@@ -1770,7 +1770,7 @@ bool drm_edid_is_valid(struct edid *edid)
 	if (!edid)
 		return false;
 
-	for (i = 0; i <= edid->extensions; i++)
+	for (i = 0; i <= drm_edid_extension_block_count(edid); i++)
 		if (!drm_edid_block_valid(raw + i * EDID_LENGTH, i, true, NULL))
 			return false;
 
@@ -2224,7 +2224,7 @@ EXPORT_SYMBOL(drm_edid_size);
  */
 struct edid *drm_edid_duplicate(const struct edid *edid)
 {
-	return kmemdup(edid, (edid->extensions + 1) * EDID_LENGTH, GFP_KERNEL);
+	return kmemdup(edid, drm_edid_size(edid), GFP_KERNEL);
 }
 EXPORT_SYMBOL(drm_edid_duplicate);
 
@@ -3353,17 +3353,17 @@ const u8 *drm_find_edid_extension(const struct edid *edid,
 	int i;
 
 	/* No EDID or EDID extensions */
-	if (edid == NULL || edid->extensions == 0)
+	if (edid == NULL || drm_edid_extension_block_count(edid) == 0)
 		return NULL;
 
 	/* Find CEA extension */
-	for (i = *ext_index; i < edid->extensions; i++) {
+	for (i = *ext_index; i < drm_edid_extension_block_count(edid); i++) {
 		edid_ext = (const u8 *)edid + EDID_LENGTH * (i + 1);
 		if (edid_ext[0] == ext_id)
 			break;
 	}
 
-	if (i >= edid->extensions)
+	if (i >= drm_edid_extension_block_count(edid))
 		return NULL;
 
 	*ext_index = i + 1;
-- 
2.30.2

