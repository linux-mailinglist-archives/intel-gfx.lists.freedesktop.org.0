Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9458F2C64E9
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7C26ECA9;
	Fri, 27 Nov 2020 12:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 628B56EC8C;
 Fri, 27 Nov 2020 12:09:51 +0000 (UTC)
IronPort-SDR: R6qZP7JrootS1iuRtDpbScjiq4ig7azsMAkCfMArevifqnin4JH0LIXzxfVlnCrG1ONToba4xA
 Zf/mNiHpKshw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="172540724"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="172540724"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:09:51 -0800
IronPort-SDR: 8V+sDq3gsCnIoU9DeD1WrPW7YnDyBMx4z5DEiPHY6ogDfiXpVycSR99rjSK9pOHp1mjXMtKObR
 A0082ZzGBRqg==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548029105"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:09:49 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:05:54 +0000
Message-Id: <20201127120718.454037-79-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 078/162] drm/i915: Return error value when
 bo not in LMEM for discrete
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
Cc: Mohammed Khajapasha <mohammed.khajapasha@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mohammed Khajapasha <mohammed.khajapasha@intel.com>

Return EREMOTE value when frame buffer object is not backed by LMEM
for discrete. If Local memory is supported by hardware the framebuffer
backing gem objects should be from local memory.

Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8a7945f55278..95ed1e06ea55 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -18054,11 +18054,20 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	struct drm_framebuffer *fb;
 	struct drm_i915_gem_object *obj;
 	struct drm_mode_fb_cmd2 mode_cmd = *user_mode_cmd;
+	struct drm_i915_private *i915;
 
 	obj = i915_gem_object_lookup(filp, mode_cmd.handles[0]);
 	if (!obj)
 		return ERR_PTR(-ENOENT);
 
+	/* object is backed with LMEM for discrete */
+	i915 = to_i915(obj->base.dev);
+	if (HAS_LMEM(i915) && !i915_gem_object_is_lmem(obj)) {
+		/* object is "remote", not in local memory */
+		i915_gem_object_put(obj);
+		return ERR_PTR(-EREMOTE);
+	}
+
 	fb = intel_framebuffer_create(obj, &mode_cmd);
 	i915_gem_object_put(obj);
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
