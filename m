Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJYyLTwg4WmipQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF75413330
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1984C10E928;
	Thu, 16 Apr 2026 17:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHAjhxz5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A703110E927;
 Thu, 16 Apr 2026 17:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776361528; x=1807897528;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DcKucrqxgmVHg3fKms+SX6e8I1Y+gyf9RtmI/BvrHn4=;
 b=dHAjhxz5UdBPnfgoc0DoOGnOr3MTeFroEajA3QXS/soLuu49nzGh2iA3
 YDEPCkpMMy3TJxcwjlg2MnifF571rctJ/l7R25IObKfGNLyv1qbXKx1lV
 OPIyeiJhREsOm4nBF9oeuDMJbZgNfMfERgUU8w29ceIYHkJ9Izn/sI+YS
 wnulD7qvhuiOsF1VUOJpABTS77paPfogD5zISSoIwekqG3WEeXuooNl6R
 RGZ6dXkITvh/XBpG/usGcc6GgYcIfduEbQ56qWwVhvhytda+aJK77i3iq
 rI2KNBnvVi0fwxPXfcbWqU0c0Yu+pOuWh9xBco2o6EGputMRS5eGYn5se A==;
X-CSE-ConnectionGUID: hsGK30bpTWyjFJbxrbqeww==
X-CSE-MsgGUID: eVgKoF4nS4edioHkaZ0UjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77279678"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77279678"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:24 -0700
X-CSE-ConnectionGUID: HUlYpUSiQiaiRWAdpeBgOA==
X-CSE-MsgGUID: nyH0PgtVTtKZGjSOVfcKzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229960371"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.241])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:23 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/11] drm/i915: Introduce pin_params.needs_physical
Date: Thu, 16 Apr 2026 20:44:43 +0300
Message-ID: <20260416174448.28264-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 8BF75413330
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a new flag pin_params.needs_physical to inform the pinning
code that the display needs a physical address and not GGTT
address.

This isn't strictly necessary as the current phys_alignment!=0
check is enough in practice. But theoretically one could have
needs_physical==true without any alignment requirements. And
having an explicit flag feels a bit less magical.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.h | 1 +
 drivers/gpu/drm/i915/i915_fb_pin.c          | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index cf54a96569de..3e37e9874f50 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -21,6 +21,7 @@ struct intel_fb_pin_params {
 	unsigned int vtd_guard;
 	bool needs_cpu_lmem_access;
 	bool needs_low_address;
+	bool needs_physical;
 };
 
 struct i915_vma *
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 97e4cdfd2447..bfe9a5342e13 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -148,7 +148,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	i915_gem_ww_ctx_init(&ww, true);
 retry:
 	ret = i915_gem_object_lock(obj, &ww);
-	if (!ret && pin_params->phys_alignment)
+	if (!ret && pin_params->needs_physical)
 		ret = i915_gem_object_attach_phys(obj, pin_params->phys_alignment);
 	else if (!ret && HAS_LMEM(i915))
 		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
@@ -271,6 +271,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 			.vtd_guard = intel_plane_fb_vtd_guard(plane_state),
 			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
 			.needs_low_address = intel_plane_needs_low_address(display),
+			.needs_physical = intel_plane_needs_physical(plane),
 		};
 		int fence_id = -1;
 
-- 
2.52.0

