Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2428D19C070
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877976EA62;
	Thu,  2 Apr 2020 11:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A60E96EA62
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:49:35 +0000 (UTC)
IronPort-SDR: bUqYsrxcYNhZ2Ik8eUTDSi1xyMCIJuziz5wPbLHcX1XI5NJqZ91h19yee1bwWXLDJDzdZPwOIO
 XCN6GQOJcx+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:49:35 -0700
IronPort-SDR: +S9sDAeiOGaTj/NCimhSZ06I5CRHlSPiAWpoUr6W5pZnfaGuJMJYQUZhTDTAjjDw4C3Sw2jaVo
 EyEbdCkdC5uQ==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="449596233"
Received: from assenmac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.35.117])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:49:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 14:48:10 +0300
Message-Id: <20200402114819.17232-8-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
References: <20200402114819.17232-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 08/17] drm/i915/state: use struct drm_device
 based logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the DRM_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_global_state.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index a0cc894c3868..6f72feb14f3e 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -71,6 +71,7 @@ struct intel_global_state *
 intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
 				  struct intel_global_obj *obj)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	int index, num_objs, i;
 	size_t size;
 	struct __intel_global_objs_state *arr;
@@ -106,8 +107,8 @@ intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
 
 	state->num_global_objs = num_objs;
 
-	DRM_DEBUG_ATOMIC("Added new global object %p state %p to %p\n",
-			 obj, obj_state, state);
+	drm_dbg_atomic(&i915->drm, "Added new global object %p state %p to %p\n",
+		       obj, obj_state, state);
 
 	return obj_state;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
