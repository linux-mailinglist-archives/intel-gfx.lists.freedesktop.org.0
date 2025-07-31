Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58975B16E5A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 11:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FED10E25D;
	Thu, 31 Jul 2025 09:19:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqZ4By9h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA31910E25D;
 Thu, 31 Jul 2025 09:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753953573; x=1785489573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GFnZMqcRFYepQyL2uygK6SgSZR3sr4EfvOkoZwWpiDI=;
 b=PqZ4By9huI2+HI/vikbms40p3pQsX8Z3/mlrphqvs4Jg/ly6uT4zvnxQ
 HOFzaNgFPPBAbR7Vrc6m16aPzxf9+Eizrq9n16BJS4HNhGROmsXcJlgh5
 8G0aC0ZiidjQtiNzRDziQ5d76pMOi6vURVjeppZQvBcyk90/q+gEN3z+l
 DD8OYIqiGiXXuK66yQWgLqb4d/PEcZ1YwtfdqC2so/Qqe/mx9x9+LX5uW
 autqmq8Evk9d8G4pbLA8U0f7aXw6esmsmN6KAz+llhzvs5WGGdL8kTMQz
 nii/zvDPapJ3phWPuP80VlQ4mZZzAQR8M6a+vpba9eZqtMJFke6mSzY4F A==;
X-CSE-ConnectionGUID: gPM1nOG2Sk+LCZaS+wJMGA==
X-CSE-MsgGUID: W1xwn+dxRgWJZTT/SrPu6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56419902"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="56419902"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:19:33 -0700
X-CSE-ConnectionGUID: 13IfNOgOSD2gIVQVQKqbqA==
X-CSE-MsgGUID: 3A35u1DtRomX+DGzcMamXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167448585"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:19:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/display: hide global state iterators,
 remove unused
Date: Thu, 31 Jul 2025 12:19:20 +0300
Message-Id: <a23212d9298423d8971d6ad62f961386f7f927cc.1753953530.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753953530.git.jani.nikula@intel.com>
References: <cover.1753953530.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

for_each_{new,old,oldnew}_global_obj_in_state() are only used within
intel_global_state.c, hide them there. intel_for_each_global_obj() is
unused, remove it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_global_state.c | 25 +++++++++++++++++
 .../gpu/drm/i915/display/intel_global_state.h | 28 -------------------
 2 files changed, 25 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index 000a898c9480..3df55ab353f2 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -13,6 +13,31 @@
 #include "intel_display_types.h"
 #include "intel_global_state.h"
 
+#define for_each_new_global_obj_in_state(__state, obj, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)
+
+#define for_each_old_global_obj_in_state(__state, obj, old_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)
+
+#define for_each_oldnew_global_obj_in_state(__state, obj, old_obj_state, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, \
+		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)
+
 struct intel_global_commit {
 	struct kref ref;
 	struct completion done;
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
index d42fb2547ee9..e24fea1c9dbc 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.h
+++ b/drivers/gpu/drm/i915/display/intel_global_state.h
@@ -26,34 +26,6 @@ struct intel_global_obj {
 	const struct intel_global_state_funcs *funcs;
 };
 
-#define intel_for_each_global_obj(obj, dev_priv) \
-	list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, head)
-
-#define for_each_new_global_obj_in_state(__state, obj, new_obj_state, __i) \
-	for ((__i) = 0; \
-	     (__i) < (__state)->num_global_objs && \
-		     ((obj) = (__state)->global_objs[__i].ptr, \
-		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
-	     (__i)++) \
-		for_each_if(obj)
-
-#define for_each_old_global_obj_in_state(__state, obj, old_obj_state, __i) \
-	for ((__i) = 0; \
-	     (__i) < (__state)->num_global_objs && \
-		     ((obj) = (__state)->global_objs[__i].ptr, \
-		      (old_obj_state) = (__state)->global_objs[__i].old_state, 1); \
-	     (__i)++) \
-		for_each_if(obj)
-
-#define for_each_oldnew_global_obj_in_state(__state, obj, old_obj_state, new_obj_state, __i) \
-	for ((__i) = 0; \
-	     (__i) < (__state)->num_global_objs && \
-		     ((obj) = (__state)->global_objs[__i].ptr, \
-		      (old_obj_state) = (__state)->global_objs[__i].old_state, \
-		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
-	     (__i)++) \
-		for_each_if(obj)
-
 struct intel_global_commit;
 
 struct intel_global_state {
-- 
2.39.5

