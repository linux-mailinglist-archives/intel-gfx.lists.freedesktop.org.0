Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4E18B0815
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 13:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E983113A54;
	Wed, 24 Apr 2024 11:11:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knH3vDwK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3A7113A54
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 11:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713957081; x=1745493081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2EkghjWriyFuQ+9gf/BUdHxkGebnnThfqXf2dz3jaaw=;
 b=knH3vDwKGEjub1hvEWXJxntgWJyYH17l3o/hydI1hIFqzztulEMhvZid
 4TizMYQjSW/9medMUSYqMvHylDDybzPciKJJMhDLvjVCbLWtXupyw6ioG
 Fe1ENIjsJd/01Fw9XGkibKiXUsWJChe6xJa7Sv5ocTYNldK7NgH0MCcWa
 ZRMfbAqKPuK1q5BFRQQTvVoehvUHk83DSc3/8OxM8GG6+Ag0ubAUvZlF6
 Lld6iLqmN62n6t/z5A8s5+7xMJ9wISRvZ2OZOSAFxjhmiRtZjNrPna0eV
 Kj0fsaEn3xFaUiFRuznOVMhpZEIQJBup9aLbBJAS89csGBnfYkj8dgudC Q==;
X-CSE-ConnectionGUID: Gn0f2EgoTiCwC3qve3ebpg==
X-CSE-MsgGUID: QROJlZkIRqW+OSjsUVZo+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9412253"
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; 
   d="scan'208";a="9412253"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:11:20 -0700
X-CSE-ConnectionGUID: A9PMZOi+Soi6wKD8//RvWw==
X-CSE-MsgGUID: a0mgxnxXQJijAxQUI6l/8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,226,1708416000"; d="scan'208";a="24564857"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.49])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 04:11:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/4] drm/i915/fb: return proper error codes instead of magic -1
Date: Wed, 24 Apr 2024 14:11:01 +0300
Message-Id: <20240424111101.1152824-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424111101.1152824-1-jani.nikula@intel.com>
References: <20240424111101.1152824-1-jani.nikula@intel.com>
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

Use proper negative error codes intead of magic -1. Don't set a bad
example, as -1 is -EPERM.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 86b443433e8b..705f97ef677b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -563,15 +563,15 @@ static bool intel_fb_is_gen12_ccs_aux_plane(const struct drm_framebuffer *fb, in
  * @fb: Framebuffer
  *
  * Returns:
- * Returns the index of the color clear plane for @fb, or -1 if @fb is not a
- * framebuffer using a render compression/color clear modifier.
+ * Returns the index of the color clear plane for @fb, or -EINVAL if @fb is not
+ * a framebuffer using a render compression/color clear modifier.
  */
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb)
 {
 	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
 
 	if (!md->ccs.cc_planes)
-		return -1;
+		return -EINVAL;
 
 	drm_WARN_ON_ONCE(fb->dev, hweight8(md->ccs.cc_planes) > 1);
 
-- 
2.39.2

