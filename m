Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D42C7AB4B3D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3842F10E332;
	Tue, 13 May 2025 05:48:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A5D5lu9V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 626E810E2D1;
 Tue, 13 May 2025 05:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747115319; x=1778651319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PZp8Ih/dc9oYYSlDGd3W5tsRmBJcVLuIC1yyRH1ShSg=;
 b=A5D5lu9VzmZG4wdGExlnCW9U4sDMVySQykdkeHQIUsg1prVwU/dSnx9P
 Rko2+8klItB2TO8ndIpf2ySWt71bIivuDi9d4rwi8YpvlFa50IyfwvqR+
 OybJZudCehJZVmSUSO6yGqQbhAJrWVJhDBjMAQNeWm9OOz5GBl1mhqvEg
 fQGfX4DxLpAPj1hbTG3qi95AoBBfL8B9ryBVq0dwwbvAzMMKoDIGhvpdq
 MJtm9hQho/2JjujE16EoQw+vgGjI6nwklrAYVh//SIqTDI+RuefDFKk9K
 p7neoq1rS8rYdGOL0ygg6zTMyOU2F+PsKVA954Uesq145PNQgW2Fcv/aQ g==;
X-CSE-ConnectionGUID: hEo9Bf6ERT26zwPKK3tPHw==
X-CSE-MsgGUID: SarL0gWxQAabu+BlBXlpSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60343598"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="60343598"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:48:36 -0700
X-CSE-ConnectionGUID: FRkdcyijRPeHhgCAXYZfUg==
X-CSE-MsgGUID: ZYzexYXtRgaQYGCLhoJcBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="138538581"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:48:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 1/2] drm/i915/alpm: Make intel_alpm_enable_sink available
 for PSR
Date: Tue, 13 May 2025 08:48:13 +0300
Message-ID: <20250513054814.3702977-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250513054814.3702977-1-jouni.hogander@intel.com>
References: <20250513054814.3702977-1-jouni.hogander@intel.com>
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

We want to enable sink ALPM from PSR code. Make intel_alpm_enable_sink
available for PSR.

v2: do not add kerneldoc comments

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_alpm.h | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 1bf08b80c23f..da70a98a1292 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -426,8 +426,8 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 	}
 }
 
-static void intel_alpm_enable_sink(struct intel_dp *intel_dp,
-				   const struct intel_crtc_state *crtc_state)
+void intel_alpm_enable_sink(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state)
 {
 	u8 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index d7126d65b60f..c9fe21e3e72c 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -23,6 +23,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct drm_connector_state *conn_state);
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+void intel_alpm_enable_sink(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state);
 void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc);
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
-- 
2.43.0

