Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F18B16E5D
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 11:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8A810E73F;
	Thu, 31 Jul 2025 09:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwEwJyyo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D252B10E73E;
 Thu, 31 Jul 2025 09:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753953578; x=1785489578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MQ2JN4pqsnUVuHddN2FZKwM/ZhBQfkX48LWWZbNx0pw=;
 b=jwEwJyyoDc3uMsMhbAXzc65GOODDQMJv91tfmNP0pGf8Qcf9b3LGPrr8
 VQbsdgdh/+0a0CZviJogmGAb/oxy26+zRo80xma+eSMlQJlK/9gILcTXp
 S6xIrum4SwqF95NoqqBsaQ4V/uoOGemS5xbW4yqO7FFcqJWWzfyImXTy9
 sfOYoY/8Lz/FlUjjbuP8Jle0MmhKrafKsRavEt3KSOxDpw4S7X3nfbC3d
 26elTn+7tVCuUi3y+Yc7gnrth59C3wTxv1LS7xvDI2VL0QdHirk9I6BQA
 fA+/LUKzMkx+qTlen0drSqf940fdmZZdmezQmgQhEzoWIzkLdK46UixEa g==;
X-CSE-ConnectionGUID: 8eMQhVzBQTeM3f7t+CbWfg==
X-CSE-MsgGUID: 064YSK03Q2usuTPzTAwaqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56419912"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="56419912"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:19:38 -0700
X-CSE-ConnectionGUID: bv4oLZi4SauMZ7jIdUOh+w==
X-CSE-MsgGUID: oS4GJ/xCT3mxeNX3MHh2gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167448613"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 02:19:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/display: make struct __intel_global_objs_state
 opaque
Date: Thu, 31 Jul 2025 12:19:21 +0300
Message-Id: <06cc4d1c506e3a5b1cc50e01c4bd1135bbf0f7bd.1753953530.git.jani.nikula@intel.com>
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

With struct __intel_global_objs_state only being accessed in
intel_global_state.c, we can make it opaque. The double underscore to
indicate internal becomes redundant, drop it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 4 ++--
 drivers/gpu/drm/i915/display/intel_global_state.c  | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_global_state.h  | 5 -----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4d9df803ad47..35596f3921e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -54,10 +54,10 @@
 
 struct cec_notifier;
 struct drm_printer;
-struct __intel_global_objs_state;
 struct intel_connector;
 struct intel_ddi_buf_trans;
 struct intel_fbc;
+struct intel_global_objs_state;
 struct intel_hdcp_shim;
 struct intel_tc_port;
 
@@ -593,7 +593,7 @@ struct intel_atomic_state {
 
 	struct ref_tracker *wakeref;
 
-	struct __intel_global_objs_state *global_objs;
+	struct intel_global_objs_state *global_objs;
 	int num_global_objs;
 
 	/* Internal commit, as opposed to userspace/client initiated one */
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index 3df55ab353f2..30eff6009e87 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -38,6 +38,11 @@
 	     (__i)++) \
 		for_each_if(obj)
 
+struct intel_global_objs_state {
+	struct intel_global_obj *ptr;
+	struct intel_global_state *state, *old_state, *new_state;
+};
+
 struct intel_global_commit {
 	struct kref ref;
 	struct completion done;
@@ -173,7 +178,7 @@ intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	int index, num_objs, i;
 	size_t size;
-	struct __intel_global_objs_state *arr;
+	struct intel_global_objs_state *arr;
 	struct intel_global_state *obj_state;
 
 	for (i = 0; i < state->num_global_objs; i++)
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/gpu/drm/i915/display/intel_global_state.h
index e24fea1c9dbc..4f304e2c47e0 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.h
+++ b/drivers/gpu/drm/i915/display/intel_global_state.h
@@ -36,11 +36,6 @@ struct intel_global_state {
 	bool changed, serialized;
 };
 
-struct __intel_global_objs_state {
-	struct intel_global_obj *ptr;
-	struct intel_global_state *state, *old_state, *new_state;
-};
-
 void intel_atomic_global_obj_init(struct intel_display *display,
 				  struct intel_global_obj *obj,
 				  struct intel_global_state *state,
-- 
2.39.5

