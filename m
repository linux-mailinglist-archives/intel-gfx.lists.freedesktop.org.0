Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAA8B96FD1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23F410E65F;
	Tue, 23 Sep 2025 17:20:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPCXsv+W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1CC10E656;
 Tue, 23 Sep 2025 17:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648006; x=1790184006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CPRpJN2VesxFGhq+/kRgVsp9CO8iI6cf+uyQEskm8uE=;
 b=CPCXsv+W7hfPmAL0v3FwL0jgfFJm62oRBZ3tXWn7hM62XpoyxaO01+di
 jW7OPqR4TirAGf0FyjHjeTLxLWACaod2hDTexi0bffx7hKQ9zU67+9Ux1
 h3N7djuttjQvXyN7F2lrEm+yRePa0R49FzE9rRaMm9CrE10t9/2+q5c1r
 W1Sq3U/DJ1EFYHM7WwOFlDQGlQamHkiFS8wTJguaOj2v7LXvRBgxeciHh
 OTTpFPOebuHTgPzcGDbO7F4BS30AMAfvFVWLUy0NTqEOKfdrMRWEEE5GU
 n3h8cb8fq6GVddapXDvbVamOfG6+7DD3qg60eevyeIsfM/YlXyYIilM+H Q==;
X-CSE-ConnectionGUID: 09pzlxesREeBrdLboF7a/A==
X-CSE-MsgGUID: Ywu1Vk6fQMSwvCNsBg50vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60990982"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60990982"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:04 -0700
X-CSE-ConnectionGUID: 0FW+SQ3mTLG8TdmYNSyWZw==
X-CSE-MsgGUID: 8uNbv6DXRf6z/PJr8vIWhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176898487"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:03 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/20] drm/1915/bw: Drop redundant display version checks
Date: Tue, 23 Sep 2025 20:19:26 +0300
Message-ID: <20250923171943.7319-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_bw_modeset_checks() is now only called from
intel_bw_atomic_check() which alrady does the display
version check. Drop the redundant check from
intel_bw_modeset_checks().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index f05b9a35f17a..8232b344a88f 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1528,14 +1528,10 @@ static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *chan
 
 static int intel_bw_modeset_checks(struct intel_atomic_state *state)
 {
-	struct intel_display *display = to_intel_display(state);
 	const struct intel_bw_state *old_bw_state;
 	struct intel_bw_state *new_bw_state;
 	int ret;
 
-	if (DISPLAY_VER(display) < 9)
-		return 0;
-
 	if (!intel_any_crtc_active_changed(state))
 		return 0;
 
-- 
2.49.1

