Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A41294FE9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 17:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FAE6EDCE;
	Wed, 21 Oct 2020 15:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA8B6EDCE
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 15:22:58 +0000 (UTC)
IronPort-SDR: QWsUMu98LErcryry8aPEblNUSHOfZc9CJlty3gm0kcZSq7w8j3ZV2RsNmfuIRKNM0FM5jUVzm/
 EiN6CDGoK/Ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="147242395"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="147242395"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 08:22:57 -0700
IronPort-SDR: 1kNJUrvPf/QBXSzMs5kZRJFnNRdSIu6reXVSV2NWs+szUSu+JYXWIph+0vDhJrz5uLV9AbNqX3
 NWYJLlAywj3Q==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="533568689"
Received: from pklein-mobl.ger.corp.intel.com (HELO localhost) ([10.252.5.88])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2020 08:22:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 18:22:10 +0300
Message-Id: <20201021152210.2824-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: dump power domain info on mismatches
 for all devices
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's an unlikely scenario to have refcount mismatch issues in multiple
devices at once, but a) don't let problems with one device mask the
problems with another, and b) remove the bad example of static data
usage when the data should be per-device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 10 +++-------
 drivers/gpu/drm/i915/display/intel_display_power.h |  2 ++
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 689922480661..e17771ef4da5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5836,13 +5836,9 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
 		}
 	}
 
-	if (dump_domain_info) {
-		static bool dumped;
-
-		if (!dumped) {
-			intel_power_domains_dump_info(i915);
-			dumped = true;
-		}
+	if (dump_domain_info && !power_domains->domain_info_dumped) {
+		intel_power_domains_dump_info(i915);
+		power_domains->domain_info_dumped = true;
 	}
 
 	mutex_unlock(&power_domains->lock);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 4aa0a09cf14f..d87980d6b92e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -222,6 +222,8 @@ struct i915_power_domains {
 	u64 async_put_domains[2];
 
 	struct i915_power_well *power_wells;
+
+	bool domain_info_dumped;
 };
 
 #define for_each_power_domain(domain, mask)				\
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
