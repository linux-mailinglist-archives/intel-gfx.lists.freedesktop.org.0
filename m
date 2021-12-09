Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C06846F019
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8752110E86C;
	Thu,  9 Dec 2021 16:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76F8B89E63
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 16:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639068708; x=1670604708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ykY+ZAu2UbYQmYG7LkMW7Nv4tzwIOHQMldlV6f146E=;
 b=idN7bWjQtJ+6gwQv0nb+8lSNf3jC+3I+zKXKcqwkDsNQYTecSa6pl2zC
 mWZynGUNl8buxZy54jJ36B/5cvkrRogv2AYYHAMGZ5b9D9OJaN9qtTuT7
 RLshaQr50u7a3OrdRtKpGLQyQqUsf2PtoyvQ+SwSveaf7JTf4sreSOFap
 l4S8xKfMviX/8uk0b8L93iwHUDBRMua6RBGrmk8/M0nVy9iiVymHrC6Rk
 6jr5Qw7ZmmfsumYrIv0z/h878tAYHoBQXTB3ygWogtrvJ8fDKV0qDcy8f
 gGOaWtY7m5qTvmWpuMiZ345ZcFaJ5xXFJjQuD7iDW2t+t9M0wpWeCDH7u w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="324411217"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="324411217"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:51:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="612572200"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:51:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 18:51:24 +0200
Message-Id: <f7e7e7fb91eae2b49a0ab5d982a235cec34e3320.1639068649.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639068649.git.jani.nikula@intel.com>
References: <cover.1639068649.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/cdclk: hide struct intel_cdclk_vals
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The definition is not needed outside of intel_cdclk.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 8 --------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 84674a4f7226..56f40d9430b8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1219,6 +1219,14 @@ static bool has_cdclk_squasher(struct drm_i915_private *i915)
 	return IS_DG2(i915);
 }
 
+struct intel_cdclk_vals {
+	u32 cdclk;
+	u16 refclk;
+	u16 waveform;
+	u8 divider;	/* CD2X divider * 2 */
+	u8 ratio;
+};
+
 static const struct intel_cdclk_vals bxt_cdclk_table[] = {
 	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
 	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 77e8c8e1708f..50b93226517e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -16,14 +16,6 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 
-struct intel_cdclk_vals {
-	u32 cdclk;
-	u16 refclk;
-	u16 waveform;
-	u8 divider;	/* CD2X divider * 2 */
-	u8 ratio;
-};
-
 struct intel_cdclk_state {
 	struct intel_global_state base;
 
-- 
2.30.2

