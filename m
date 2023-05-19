Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D090B709413
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 11:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657BA10E5F5;
	Fri, 19 May 2023 09:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE07510E5F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 May 2023 09:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684489856; x=1716025856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i13R5wJJvoFJqoCbqAiEnS7ocPt+Tus2KDhDm6ELbjg=;
 b=WX85MBgXNw5wABQgygB/YagXMHpa47Fzp1V8rVONRmSjpNJYaYShd1Ui
 z5sW3n0iW8ds9XFAh7o5KbxAx+dK2vPWHqBTlelCXuTGTI7UkArAZ8WU+
 SLetEIQ9KPup6nQpNUeuYxTMctEdAs5cDQ8p3xJgHAQzV4L+SMX1ufw5v
 f7faNnBm5SbkYIKIVBaZpPNejkrayqkm4bn1MKhEHL0SJrcKfBfjo8IlC
 7n/1E2LQTaqFvnX+l2iKJfbRSD6ocJy5lQoscoBW7WLzdVpCTljhpSupp
 alA3EDMu4h7a6DMdc7RuGIr2KUo737beztcG6JurhRDX++9nGrH683umW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="380543187"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="380543187"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 02:50:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="679999112"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="679999112"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 19 May 2023 02:50:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 May 2023 15:19:17 +0530
Message-Id: <20230519094918.1182044-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230519094918.1182044-1-suraj.kandpal@intel.com>
References: <20230519094918.1182044-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Create hdcp_gsc_message in
 and out
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add hdcp_gsc_message_in and hdcp_gsc_message_out to help
differenctiate the reply given by gsc to avoid any kind of
message corruption due message structure reuse.
hdcp_gsc_message_out will be filled in upcoming patches

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  3 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 41 +++++++++++++------
 2 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index e36f88a39b86..ead16d341f5c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -403,7 +403,8 @@ struct intel_display {
 		 * reused when sending message to gsc cs.
 		 * this is only populated post Meteorlake
 		 */
-		struct intel_hdcp_gsc_message *hdcp_message;
+		struct intel_hdcp_gsc_message *hdcp_message_in;
+		struct intel_hdcp_gsc_message *hdcp_message_out;
 		/* Mutex to protect the above hdcp component related values. */
 		struct mutex comp_mutex;
 	} hdcp;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 7e52aea6aa17..be505b2d679e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -665,34 +665,51 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
 
 static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
 {
-	struct intel_hdcp_gsc_message *hdcp_message;
+	struct intel_hdcp_gsc_message *hdcp_message_in, *hdcp_message_out;
 	int ret;
 
-	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
+	hdcp_message_in = kzalloc(sizeof(*hdcp_message_in), GFP_KERNEL);
 
-	if (!hdcp_message)
+	if (!hdcp_message_in)
 		return -ENOMEM;
 
+	hdcp_message_out = kzalloc(sizeof(*hdcp_message_out), GFP_KERNEL);
+
+	if (!hdcp_message_out)
+		return -ENOMEM;
 	/*
 	 * NOTE: No need to lock the comp mutex here as it is already
 	 * going to be taken before this function called
 	 */
-	i915->display.hdcp.hdcp_message = hdcp_message;
-	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
+	i915->display.hdcp.hdcp_message_in = hdcp_message_in;
+	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message_in);
+
+	if (ret) {
+		drm_err(&i915->drm, "Could not initialize hdcp_message_in\n");
+		goto out;
+	}
+
+	i915->display.hdcp.hdcp_message_out = hdcp_message_out;
+	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message_out);
 
 	if (ret)
-		drm_err(&i915->drm, "Could not initialize hdcp_message\n");
+		drm_err(&i915->drm, "Could not initialize hdcp_message_out\n");
 
+out:
 	return ret;
 }
 
 static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
 {
-	struct intel_hdcp_gsc_message *hdcp_message =
-					i915->display.hdcp.hdcp_message;
-
-	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
-	kfree(hdcp_message);
+	struct intel_hdcp_gsc_message *hdcp_message_in =
+					i915->display.hdcp.hdcp_message_in;
+	struct intel_hdcp_gsc_message *hdcp_message_out =
+					i915->display.hdcp.hdcp_message_out;
+
+	i915_vma_unpin_and_release(&hdcp_message_in->vma, I915_VMA_RELEASE_MAP);
+	i915_vma_unpin_and_release(&hdcp_message_out->vma, I915_VMA_RELEASE_MAP);
+	kfree(hdcp_message_in);
+	kfree(hdcp_message_out);
 }
 
 int intel_hdcp_gsc_init(struct drm_i915_private *i915)
@@ -782,7 +799,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
 	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
 		return -ENOSPC;
 
-	hdcp_message = i915->display.hdcp.hdcp_message;
+	hdcp_message = i915->display.hdcp.hdcp_message_in;
 	header = hdcp_message->hdcp_cmd;
 	addr = i915_ggtt_offset(hdcp_message->vma);
 
-- 
2.25.1

