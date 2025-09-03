Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E8FB4279E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 19:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0D910E094;
	Wed,  3 Sep 2025 17:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/ULg+Fc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1E1810E094;
 Wed,  3 Sep 2025 17:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756919311; x=1788455311;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NGxE4u25Hpb3NpuZq52+jtW8ZAxgQXQOmyAYQZp4OHM=;
 b=d/ULg+FcyQRLe+qPqHdkk7tgEeMrkvrsQPaWouwzAeLC70pczyFXGqha
 kAHDHN91CCkzaSAErM3pVMtBsA0telDOmLk3hX4JXcXoEdXMvlNEkvuQL
 hXEn3tDdVVIufMpOgjpdfdMYhMXmdqKuHiJiMA/8Hjf72sZ7hGWOD7cOp
 ResnUerJbB2WOZyIIGdQkHehfow8KkKSw787+D7yOE3QsWP9zhXWEZK+4
 4pw+47AIVhvnhLXPi2DgKYTq52TpRzwq4hR6LowLf1buofL+tsgp3O6a5
 zQakhfF9YKcdaLWWS/0zSYPGLhj4Z441vDQg0AJ0lnCPkchMfA2a3ve5N w==;
X-CSE-ConnectionGUID: /y+iQq2CSLKyJSf0JNwNBg==
X-CSE-MsgGUID: xW4qfvMAQ1Kxu2tjP39+GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="58274052"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="58274052"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 10:08:31 -0700
X-CSE-ConnectionGUID: I8aZ4UekSoGlyzU2N0/PWA==
X-CSE-MsgGUID: rYLUI73uTkySXM8TpV2adw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="202512201"
Received: from unknown (HELO msatwood-mobl.jf.intel.com) ([10.98.24.139])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 10:08:31 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: juhapekka.heikkila@gmail.com, jani.nikula@linux.intel.com,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH] drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
Date: Wed,  3 Sep 2025 10:08:21 -0700
Message-ID: <20250903170821.310143-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
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

The checks in plane_has_modifier() should check against display version
instead of graphics version.

Bspec: 67165, 70815

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b210c3250501..1e4cee857d7b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -563,11 +563,11 @@ static bool plane_has_modifier(struct intel_display *display,
 		return false;
 
 	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
-	    (GRAPHICS_VER(i915) < 20 || !display->platform.dgfx))
+	    (DISPLAY_VER(display) < 14 || !display->platform.dgfx))
 		return false;
 
 	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS &&
-	    (GRAPHICS_VER(i915) < 20 || display->platform.dgfx))
+	    (DISPLAY_VER(display) < 20 || display->platform.dgfx))
 		return false;
 
 	return true;
-- 
2.50.1

