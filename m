Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMIyOuwn1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9203B1503
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5167B10E471;
	Tue,  7 Apr 2026 15:51:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eEKWJfb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C85910E471;
 Tue,  7 Apr 2026 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577065; x=1807113065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cU7vt1vOum2Cj3DlInnKKDOo6lfuiJ7JUV8qhQzuBfo=;
 b=eEKWJfb35o+0vGGHj/WQ/j/4O4PocBo5lrCdVgfztIfRf4h6avVL1Wng
 ItvfiouidvNymX8pPqkkcv9nrj7BcfUpsCvJAUkTJNpg6i4OhBWlJ7t6Y
 12bOICn0ezb9KF7Q1k0v/qR+emhSwLv3A72TMTW27DMS6lzgKfjhPllk8
 6zZSLkQK4oCUknNDqkFo6ANRSBDVCMMXCUrybg3HeSyapgT22u4EQ03Y0
 7RUsqguIXnphI77c6zU8RShq1DsIS0lG8qntAs3Zs8rUKm1nRxdQJ04sh
 uOOIxFMAxCTt2UTfDstk9MunreSDnBqDxxfWRtQ0DCy6bgF50clBedR+3 A==;
X-CSE-ConnectionGUID: LucrLglWTwSPOzbofQQlxw==
X-CSE-MsgGUID: 9einpWZhQX6XbkIKXURZEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="101999089"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="101999089"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:04 -0700
X-CSE-ConnectionGUID: K1Fbawd5ToW/mKSxxuPI8w==
X-CSE-MsgGUID: izv9t4eETdSB4f1jcbcEiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221633717"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:03 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915/fb: Make intel_fb_needs_pot_stride_remap()
 static
Date: Tue,  7 Apr 2026 18:50:43 +0300
Message-ID: <20260407155053.32156-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: BC9203B1503
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_fb_needs_pot_stride_remap() isn't needed outside intel_fb.c.
Make it static.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 drivers/gpu/drm/i915/display/intel_fb.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 83392c1a1ebe..4b0afea1c456 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1265,7 +1265,7 @@ static bool intel_plane_can_remap(const struct intel_plane_state *plane_state)
 	return true;
 }
 
-bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
+static bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
 	struct intel_display *display = to_intel_display(fb->base.dev);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index fb1ec2a1e905..fc2c4d59bf06 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -77,7 +77,6 @@ u32 intel_plane_compute_aligned_offset(int *x, int *y,
 				       const struct intel_plane_state *plane_state,
 				       int color_plane);
 
-bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb);
 bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
 bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *fb);
 
-- 
2.52.0

