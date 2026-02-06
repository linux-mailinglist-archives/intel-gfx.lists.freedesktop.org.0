Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCcaDhnbhWnfHQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:14:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB59CFD834
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 13:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0165E10E794;
	Fri,  6 Feb 2026 12:14:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="btYwTCJO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E02F10E794;
 Fri,  6 Feb 2026 12:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770380054; x=1801916054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GvuzMBYM+KDOj/P1zqoM9WJuAVR1vJaAbPh2zPoNn2s=;
 b=btYwTCJOuKFDI1Rflc4XLePcUk5vVRboV8DCjVE5l3OOzz+55pRuaidk
 X5FdWBdEijH6rrNGiFR3Scl2daka8b39vRdKzUUCjzwiBxYghyY59aq4E
 mbLvGsQc1IoVBZjVA6m6iVdHYohhVGDK18ooRzOWrJbhjosyJOJOIyHmt
 xCtKsaZPNB8eWL58Om8QYbP6NMArdDEtEExrziSzc/Wd4wQ+SJHWszi9G
 K2GmQFAKwXkZwEHJuRk3rO/LeNX/mUFzilAFcKk7wOUFOdtEsC4+Shcjd
 ftBCQHIEpe6fQy5FhLfk+qewlG4mmRkz5VkzU13qF5VhqluNncthUvJ7e w==;
X-CSE-ConnectionGUID: AM/B8CQbQZOg8evkDvNxGA==
X-CSE-MsgGUID: mwcHrbdQQKS6jyot7lpKlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82220488"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="82220488"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:14:14 -0800
X-CSE-ConnectionGUID: UZ8t8bBDT9GKrOZpEsSOmw==
X-CSE-MsgGUID: EshuiszbQfq4Dhr2c4tX/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="215027815"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.129])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 04:14:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/10] drm/i915/dpt: rename i915 specific functions to
 i915_dpt_ prefix
Date: Fri,  6 Feb 2026 14:13:29 +0200
Message-ID: <2703b801a63bce96879e931fdce28a63d786f828.1770379986.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1770379986.git.jani.nikula@intel.com>
References: <cover.1770379986.git.jani.nikula@intel.com>
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: CB59CFD834
X-Rspamd-Action: no action

Follow the common convention of naming functions by file name, in this
case also clarifying which functions are i915 specific.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 8 ++++----
 drivers/gpu/drm/i915/i915_dpt.c             | 7 +++----
 drivers/gpu/drm/i915/i915_dpt.h             | 7 +++----
 3 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 5d4ae8be5ca6..d2e4200f2cef 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -284,7 +284,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 	} else {
 		unsigned int alignment = intel_plane_fb_min_alignment(plane_state);
 
-		vma = intel_dpt_pin_to_ggtt(fb->dpt_vm, alignment / 512);
+		vma = i915_dpt_pin_to_ggtt(fb->dpt_vm, alignment / 512);
 		if (IS_ERR(vma))
 			return PTR_ERR(vma);
 
@@ -294,7 +294,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 					  alignment, &plane_state->flags,
 					  fb->dpt_vm);
 		if (IS_ERR(vma)) {
-			intel_dpt_unpin_from_ggtt(fb->dpt_vm);
+			i915_dpt_unpin_from_ggtt(fb->dpt_vm);
 			plane_state->ggtt_vma = NULL;
 			return PTR_ERR(vma);
 		}
@@ -307,7 +307,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		 * The DPT object contains only one vma, and there is no VT-d
 		 * guard, so the VMA's offset within the DPT is always 0.
 		 */
-		drm_WARN_ON(display->drm, intel_dpt_offset(plane_state->dpt_vma));
+		drm_WARN_ON(display->drm, i915_dpt_offset(plane_state->dpt_vma));
 	}
 
 	/*
@@ -346,7 +346,7 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 
 		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
 		if (vma)
-			intel_dpt_unpin_from_ggtt(fb->dpt_vm);
+			i915_dpt_unpin_from_ggtt(fb->dpt_vm);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/i915_dpt.c b/drivers/gpu/drm/i915/i915_dpt.c
index 5669cefd0fe7..916b91be8f5d 100644
--- a/drivers/gpu/drm/i915/i915_dpt.c
+++ b/drivers/gpu/drm/i915/i915_dpt.c
@@ -121,8 +121,7 @@ static void dpt_cleanup(struct i915_address_space *vm)
 	i915_gem_object_put(dpt->obj);
 }
 
-struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
-				       unsigned int alignment)
+struct i915_vma *i915_dpt_pin_to_ggtt(struct i915_address_space *vm, unsigned int alignment)
 {
 	struct drm_i915_private *i915 = vm->i915;
 	struct intel_display *display = i915->display;
@@ -174,7 +173,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
 	return err ? ERR_PTR(err) : vma;
 }
 
-void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm)
+void i915_dpt_unpin_from_ggtt(struct i915_address_space *vm)
 {
 	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
 
@@ -265,7 +264,7 @@ static void i915_dpt_resume(struct i915_address_space *vm)
 	i915_ggtt_resume_vm(vm, true);
 }
 
-u64 intel_dpt_offset(struct i915_vma *dpt_vma)
+u64 i915_dpt_offset(struct i915_vma *dpt_vma)
 {
 	return i915_vma_offset(dpt_vma);
 }
diff --git a/drivers/gpu/drm/i915/i915_dpt.h b/drivers/gpu/drm/i915/i915_dpt.h
index 9b765bc8d88b..3b76e9760600 100644
--- a/drivers/gpu/drm/i915/i915_dpt.h
+++ b/drivers/gpu/drm/i915/i915_dpt.h
@@ -9,10 +9,9 @@
 struct i915_address_space;
 struct i915_vma;
 
-struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
-				       unsigned int alignment);
-void intel_dpt_unpin_from_ggtt(struct i915_address_space *vm);
-u64 intel_dpt_offset(struct i915_vma *dpt_vma);
+struct i915_vma *i915_dpt_pin_to_ggtt(struct i915_address_space *vm, unsigned int alignment);
+void i915_dpt_unpin_from_ggtt(struct i915_address_space *vm);
+u64 i915_dpt_offset(struct i915_vma *dpt_vma);
 
 extern const struct intel_display_dpt_interface i915_display_dpt_interface;
 
-- 
2.47.3

