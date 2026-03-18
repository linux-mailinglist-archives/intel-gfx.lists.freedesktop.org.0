Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOR3DeyoumlpaQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:30:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53072BC208
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 14:30:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B5F10E822;
	Wed, 18 Mar 2026 13:30:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kchjpkR2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B5B210E81D;
 Wed, 18 Mar 2026 13:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773840617; x=1805376617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xEZfbAIQamRlBkoXWhS7i23qbvdjr64ZdKlFQLAttdk=;
 b=kchjpkR2X7OjhWUTtoGqO2WshBtnrNDsMzlhuxvFVzbguUXy71M1p2wX
 BZ86fw5tF4gOi/kyuUa7mrDjFmBmK/1IzuInyZ19sXuB7GHRS676WCnwt
 oVoV/PmzCTLJGREsTHRCNal9BTyb506h8+/Pm76cfQhez47f8JaR8AmUk
 do2UufAXSpDpFlqUyGAPsSDld+qNc05IdYmDTDyLmRfXWN/iuMHZSSYeI
 HPh3K+EKGp4uuv4+eGbL/kPwMexi92lccKaETEVpoMLBYF9s4tXiIKjzv
 yZTdWAUMg1P1z13YHlzOhfTP1KrAKDhRisIVoeaS6OOuWEynhi5tVE0ux w==;
X-CSE-ConnectionGUID: Mpc1JPlaSsWqRvuP4dPKnw==
X-CSE-MsgGUID: FrBnuKhYS1uDvyRW4Oly3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="97500533"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="97500533"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:30:17 -0700
X-CSE-ConnectionGUID: DQp2h9/cR4iS+X46FIILbw==
X-CSE-MsgGUID: ATHpJEuORh+tNWFMVPMZaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="227577359"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 06:30:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915: pass struct drm_i915_private to
 i915_bo_fbdev_prefer_stolen()
Date: Wed, 18 Mar 2026 15:29:49 +0200
Message-ID: <f55e56b5bc14a3f21113a5a5773ab743639f2d54.1773840563.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773840563.git.jani.nikula@intel.com>
References: <cover.1773840563.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C53072BC208
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is i915 core code, use struct drm_i915_private for simplicity.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_bo.c            | 6 ++----
 drivers/gpu/drm/i915/i915_bo.h            | 4 ++--
 drivers/gpu/drm/i915/i915_initial_plane.c | 2 +-
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_bo.c b/drivers/gpu/drm/i915/i915_bo.c
index 7e38d002478e..559341103ca7 100644
--- a/drivers/gpu/drm/i915/i915_bo.c
+++ b/drivers/gpu/drm/i915/i915_bo.c
@@ -150,10 +150,8 @@ static u32 i915_bo_fbdev_pitch_align(u32 stride)
 	return ALIGN(stride, 64);
 }
 
-bool i915_bo_fbdev_prefer_stolen(struct drm_device *drm, unsigned int size)
+bool i915_bo_fbdev_prefer_stolen(struct drm_i915_private *i915, unsigned int size)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
-
 	/* Skip stolen on MTL as Wa_22018444074 mitigation. */
 	if (IS_METEORLAKE(i915))
 		return false;
@@ -177,7 +175,7 @@ static struct drm_gem_object *i915_bo_fbdev_create(struct drm_device *drm, int s
 						  I915_BO_ALLOC_CONTIGUOUS |
 						  I915_BO_ALLOC_USER);
 	} else {
-		if (i915_bo_fbdev_prefer_stolen(drm, size))
+		if (i915_bo_fbdev_prefer_stolen(i915, size))
 			obj = i915_gem_object_create_stolen(i915, size);
 		else
 			drm_info(drm, "Allocating fbdev: Stolen memory not preferred.\n");
diff --git a/drivers/gpu/drm/i915/i915_bo.h b/drivers/gpu/drm/i915/i915_bo.h
index 2a0f3050dd42..39ba62696550 100644
--- a/drivers/gpu/drm/i915/i915_bo.h
+++ b/drivers/gpu/drm/i915/i915_bo.h
@@ -6,9 +6,9 @@
 
 #include <linux/types.h>
 
-struct drm_device;
+struct drm_i915_private;
 
-bool i915_bo_fbdev_prefer_stolen(struct drm_device *drm, unsigned int size);
+bool i915_bo_fbdev_prefer_stolen(struct drm_i915_private *i915, unsigned int size);
 
 extern const struct intel_display_bo_interface i915_display_bo_interface;
 
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index f4d631a395d0..c1a12bf6b66c 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -118,7 +118,7 @@ initial_plane_vma(struct drm_i915_private *i915,
 	if (IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
 	    IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
-	    !i915_bo_fbdev_prefer_stolen(&i915->drm, size)) {
+	    !i915_bo_fbdev_prefer_stolen(i915, size)) {
 		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
 		return NULL;
 	}
-- 
2.47.3

