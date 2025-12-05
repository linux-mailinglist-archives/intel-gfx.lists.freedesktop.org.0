Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0F4CA729A
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 11:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E6510EAA7;
	Fri,  5 Dec 2025 10:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d2TjGgPd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F266B10EAA7;
 Fri,  5 Dec 2025 10:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764930651; x=1796466651;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hTD3aA7QJCIfIRjDce+AYYPSts788z4y3U8HDGwuXVk=;
 b=d2TjGgPdjYm8BQ1Bs4slJNpk9hL2r2DKgBpDMCRq1HmuIPKApu70bkXM
 s+O7qxBTmNjr2qj9fXbbPHs97bi/ohwRrFSXRZ1jxNng1jLtrxMvDIQjg
 0PjsLatEwU5zHsJle0chNgB/Gqm6bIMWiHgiYdv+7tDoqrIK3WHnwb+hF
 D308EexREGm5kUFkbebR/5H/4ZPMzWpTKyjHb76PAhLIL90aeeFqeAzEU
 36rPpENCIMwkRQYliiM2l1HNZYwG/qCQEskYnozg8f7Ifl7/YTb/z8Nra
 gI9HX5jaciDT7D5yhJ7PWcVsdSmtH9VImVQJa7Q5CpZZNpOPWSE39Qt3L w==;
X-CSE-ConnectionGUID: Vb1e4DiQRt+/RmpZgamdbA==
X-CSE-MsgGUID: H7vseSixTBWu73C+WtEjZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="67001166"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="67001166"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 02:30:48 -0800
X-CSE-ConnectionGUID: AN6CJ5UJS+C21jPDWqTiew==
X-CSE-MsgGUID: ccI6JgxqT0GJDXjn4Qi4Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="194562926"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 02:30:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/4] drm/xe/stolen: unify interface with i915
Date: Fri,  5 Dec 2025 12:30:28 +0200
Message-ID: <e1ae0c5d3cc6f59d6e4f4ce810a6e9b3870109f8.1764930576.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764930576.git.jani.nikula@intel.com>
References: <cover.1764930576.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Have i915_gem_stolen_node_offset() return u64, and pass const pointer to
them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h | 4 ++--
 drivers/gpu/drm/xe/display/xe_stolen.c                       | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
index 48e3256ba37e..368045a470d1 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
@@ -23,13 +23,13 @@ bool i915_gem_stolen_initialized(struct drm_device *drm);
 
 bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node);
 
-u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node);
+u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node);
 
 u64 i915_gem_stolen_area_address(struct drm_device *drm);
 
 u64 i915_gem_stolen_area_size(struct drm_device *drm);
 
-u64 i915_gem_stolen_node_address(struct intel_stolen_node *node);
+u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node);
 
 u64 i915_gem_stolen_node_size(const struct intel_stolen_node *node);
 
diff --git a/drivers/gpu/drm/xe/display/xe_stolen.c b/drivers/gpu/drm/xe/display/xe_stolen.c
index 9f04ba36e930..387506586288 100644
--- a/drivers/gpu/drm/xe/display/xe_stolen.c
+++ b/drivers/gpu/drm/xe/display/xe_stolen.c
@@ -67,7 +67,7 @@ bool i915_gem_stolen_node_allocated(const struct intel_stolen_node *node)
 	return node->bo;
 }
 
-u32 i915_gem_stolen_node_offset(struct intel_stolen_node *node)
+u64 i915_gem_stolen_node_offset(const struct intel_stolen_node *node)
 {
 	struct xe_res_cursor res;
 
@@ -91,7 +91,7 @@ u64 i915_gem_stolen_area_size(struct drm_device *drm)
 	return 0;
 }
 
-u64 i915_gem_stolen_node_address(struct intel_stolen_node *node)
+u64 i915_gem_stolen_node_address(const struct intel_stolen_node *node)
 {
 	struct xe_device *xe = node->xe;
 
-- 
2.47.3

