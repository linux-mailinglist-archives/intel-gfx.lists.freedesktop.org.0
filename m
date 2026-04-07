Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKYFO+cn1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4ACC3B14FC
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55BDB10E46B;
	Tue,  7 Apr 2026 15:51:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H9RLxs/U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F73D10E46B;
 Tue,  7 Apr 2026 15:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577061; x=1807113061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l789J6zYvBpeyHo1rOkLhjMsfc9gXVIZVJ2dJrpuXzk=;
 b=H9RLxs/U0trgXgIV7pz54p3CRpwlwrFIduYHUo6sNOw8M88va2za5N+d
 YgV4EqepGU+SeozjL022/RkD9uS5Ap0DHobVH2YmuuqzrhajI+fQSDuId
 ZpAfkRVFuokefUHq3F39N3N8xfx7ev4dLxVoYZy7n9dNzPTUkDJ9mMzqT
 RgIYx7LiqlkuN+a4wKbWpqfWudgnyzCud7dWtxjGMZ0cO2ObeWh7CcuGJ
 tB0MqqOGVx5iKZfY6W5KZAxSmAgeBHs8sv2zkx911KR4DHmgRSnAu9/L0
 MzgBP7mTlfOFxm4ViSC+EqMxhzrMhOQVINpn1cbjnzV3mTdIu/g4JKRC8 Q==;
X-CSE-ConnectionGUID: N4ZZJzFVQSSMSagth3/F3Q==
X-CSE-MsgGUID: 3QsoGGiaS+Kw5C1Ijt686g==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="101999066"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="101999066"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:01 -0700
X-CSE-ConnectionGUID: krH0keztS6KAxc3tQDiZJQ==
X-CSE-MsgGUID: 6X+Qhfs4QYSGExncvqM6DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221633644"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:50:59 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/12] drm/i915/fb: Nuke intel_tile_row_size()
Date: Tue,  7 Apr 2026 18:50:42 +0300
Message-ID: <20260407155053.32156-2-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: C4ACC3B14FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_tile_row_size() is unused. Nuke it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 9 ---------
 drivers/gpu/drm/i915/display/intel_fb.h | 1 -
 2 files changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 5768619f840f..83392c1a1ebe 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -876,15 +876,6 @@ static void intel_tile_block_dims(const struct drm_framebuffer *fb, int color_pl
 		*tile_height = 1;
 }
 
-unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane)
-{
-	unsigned int tile_width, tile_height;
-
-	intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
-
-	return fb->pitches[color_plane] * tile_height;
-}
-
 unsigned int
 intel_fb_align_height(const struct drm_framebuffer *fb,
 		      int color_plane, unsigned int height)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 22514d5f2bb6..fb1ec2a1e905 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -62,7 +62,6 @@ int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane);
 unsigned int intel_tile_size(struct intel_display *display);
 unsigned int intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane);
-unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_fb_align_height(const struct drm_framebuffer *fb,
 				   int color_plane, unsigned int height);
 
-- 
2.52.0

