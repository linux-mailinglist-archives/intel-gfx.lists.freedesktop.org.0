Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F85E55FBF2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 11:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3235611A532;
	Wed, 29 Jun 2022 09:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6729511A526;
 Wed, 29 Jun 2022 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656494913; x=1688030913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nwfOlHL2nglw9+d59/d+TvytzF+TBnMwuokxXU7/USI=;
 b=XKCjIN2YhyHyGBcu8sQUumTzjv8LeFSsRsxEBEhoDD/6KtIrV7UgpZCX
 xzexQ88tW6FzTRj9YuOSYABqBUKX6pl069J6riDbQyiI+/vmw0o9Bws/G
 xJyIU8YitTZYejUKgn8s2irfCPx+M8UIaZG3xflQcWAP7Z4f2bnF0Hey2
 4hZgBGGzB+FrxAtqGhZJmqctktPvdM38inVl3BRvSpCVjEoKk/kqnnHt3
 2XC1K4hf7hl9ypKy0BedqY5LVPUMIh+S1IH2DGS3QFNQkpDERuFpIqZCx
 vRT0mwc/xTGSfyIfO599wMIvR1YQ6WXd0pRgSEctjFhvncJIIAw/jfLni w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="283079075"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="283079075"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 02:28:32 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="837062451"
Received: from srdoo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.102])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 02:28:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 29 Jun 2022 12:27:52 +0300
Message-Id: <fb55d0b580d556bf2b8e58070239657ac9cb4b2f.1656494768.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1656494768.git.jani.nikula@intel.com>
References: <cover.1656494768.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI RESEND 07/10] drm/edid: add drm_edid_raw() to
 access the raw EDID data
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

Unfortunately, there are still plenty of interfaces around that require
a struct edid pointer, and it's impossible to change them all at
once. Add an accessor to the raw EDID data to help the transition.

While there are no such cases now, be defensive against raw EDID
extension count indicating bigger EDID than is actually allocated.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 26 ++++++++++++++++++++++++++
 include/drm/drm_edid.h     |  1 +
 2 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 41b3de52b8f1..1c761e12820e 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2359,6 +2359,32 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 }
 EXPORT_SYMBOL_GPL(drm_do_get_edid);
 
+/**
+ * drm_edid_raw - Get a pointer to the raw EDID data.
+ * @drm_edid: drm_edid container
+ *
+ * Get a pointer to the raw EDID data.
+ *
+ * This is for transition only. Avoid using this like the plague.
+ *
+ * Return: Pointer to raw EDID data.
+ */
+const struct edid *drm_edid_raw(const struct drm_edid *drm_edid)
+{
+	if (!drm_edid || !drm_edid->size)
+		return NULL;
+
+	/*
+	 * Do not return pointers where relying on EDID extension count would
+	 * lead to buffer overflow.
+	 */
+	if (WARN_ON(edid_size(drm_edid->edid) > drm_edid->size))
+		return NULL;
+
+	return drm_edid->edid;
+}
+EXPORT_SYMBOL(drm_edid_raw);
+
 /* Allocate struct drm_edid container *without* duplicating the edid data */
 static const struct drm_edid *_drm_edid_alloc(const void *edid, size_t size)
 {
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index aeb2fa95bc04..2181977ae683 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -597,6 +597,7 @@ drm_display_mode_from_cea_vic(struct drm_device *dev,
 const struct drm_edid *drm_edid_alloc(const void *edid, size_t size);
 const struct drm_edid *drm_edid_dup(const struct drm_edid *drm_edid);
 void drm_edid_free(const struct drm_edid *drm_edid);
+const struct edid *drm_edid_raw(const struct drm_edid *drm_edid);
 const struct drm_edid *drm_edid_read(struct drm_connector *connector);
 const struct drm_edid *drm_edid_read_ddc(struct drm_connector *connector,
 					 struct i2c_adapter *adapter);
-- 
2.30.2

