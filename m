Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FayMHsjjWntzQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 01:48:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30577128BBA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 01:48:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0302D10E6C4;
	Thu, 12 Feb 2026 00:48:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="apKmZjQt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550BF10E6BF;
 Thu, 12 Feb 2026 00:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770857335; x=1802393335;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jPnEFah/ajzpPWlxK47PANZ6xlZJZ8S8TK8qhSIEwdg=;
 b=apKmZjQtE6zYCA5iVA9Jief//6WBA4RNBOxxTnYmw7opXBlSMwwWeaO3
 V62nN2iMCNglw9mLiPBa1SLaZtDXV1zQet225UGB9gTo/jFYcja/VA33F
 YQcaFvXHssRqgTkApj9bfgCmNsQPCsXfOzo5R045TaSyDb6xH0X36qUnU
 Xivq6vKuDCeQOR8sHW7QHzM4Ya6x/XPy4j4rxf9Rr44xvea64TprN/Cnp
 f7NL7KDqxei1boGYTVn1YCt8jGdNnl6NSBv7hnHINvrllxCKSFaq+awtD
 cTmn8PV3xiTXB59ZKHvsg0lDOIcsE5lu3Lzz3mnh9XvZoAdTFCRn4EDYM g==;
X-CSE-ConnectionGUID: a1mr/xudSG6I6l1UhoDn0A==
X-CSE-MsgGUID: izAm6DXNR4qCx770zHjogw==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="72116821"
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="72116821"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 16:48:55 -0800
X-CSE-ConnectionGUID: ZcxUZZZzSS6M/Sm+LvsmqQ==
X-CSE-MsgGUID: +WeHUEaETumFHMfA9Lpbtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="211707001"
Received: from kialmah1-desk5.jf.intel.com ([10.23.33.174])
 by orviesa010.jf.intel.com with ESMTP; 11 Feb 2026 16:48:54 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Uma Shankar <uma.shankar@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [RFC PATCH] drm/i915/display: Prevent NV12 Y-plane allocation from
 stealing userspace planes
Date: Wed, 11 Feb 2026 16:48:52 -0800
Message-ID: <20260212004852.1920270-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[khaled.almahallawy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 30577128BBA
X-Rspamd-Action: no action

The driver automatically allocates a Y-plane (4A/5A) when userspace
configures an NV12 surface. The allocation loop doesn't check if a
candidate plane is already configured by userspace in the same atomic
commit, causing conflict as observed in this i915_display_info:

  [PLANE:124:plane 4A]: type=OVL
      uapi: [FB:566] AB24 little-endian (0x34324241),0x0,1920x1280, visible=visible
      planar: Linked to [PLANE:34:plane 1A] as a Y plane
      hw: [FB:564] NV12 little-endian (0x3231564e),0x0,1920x1080, visible=yes

Plane 4A's uapi state shows userspace's AB24 framebuffer, but the hw
state shows it was reprogrammed with the NV12 Y-plane.

Example triggered by experiment with IGT test to commit NV12 + multiple
AB24 planes:

  === Testing with NV12 primary + 3 ABGR8888 overlays ===
    Plane 0 (Primary): NV12 1920x1080 at (0, 0)
    Plane 1 (Overlay 0): ABGR8888 1920x1280 (fullscreen) at (0, 0)
    Plane 2 (Overlay 1): ABGR8888 1920x1280 (fullscreen) at (0, 0)
    Plane 3 (Overlay 2): ABGR8888 1920x1280 (fullscreen) at (0, 0)
    TEST_ONLY passed, committing...
    Atomic commit SUCCEEDED

The bug triggers a kernel WARNING in unlink_nv12_plane():
  WARNING: drivers/gpu/drm/i915/display/intel_plane.c:1521
  drm_WARN_ON(plane_state->uapi.visible)

Fix by checking uapi.fb before allocating a Y-plane. If set, userspace
configured this plane, so skip to the next candidate. This enables
graceful fallback (4A busy -> try 5A) rather than the current
behavior that steals planes from userspace.

IGT test and kernel fix generated with assistance from Claude Sonnet 4.5
through an iterative process. The following is a summary of the prompts
used:

IGT test generation prompt:
Need an IGT test to:
1. Reproduce the NV12 + multiple AB24 plane allocation conflict
2. Work across different GPU vendors (not Intel-specific)
3. Discover hardware limits through iteration (not hardcoded)
4. Test atomic commit behavior with mixed formats
5. Validate driver properly rejects invalid configurations
6. Help debug plane allocation issues (interactive inspection)

Kernel fix debug process:
1. Explained NV12 UV->Y plane linking mechanism (link_nv12_planes)
2. Traced Y-plane selection algorithm and hardware constraints
3. Analyzed i915_display_info output showing uapi vs hw state mismatch
4. Triggered kernel WARNING in unlink_nv12_plane() confirming the bug
5. Traced kernel logs through atomic commit sequence
6. Identified root cause: Y-plane allocation checks uapi.crtc, but that's
   set later during plane validation. uapi.fb is set earlier during state
   setup, making it the correct indicator of userspace configuration
7. Evaluated uapi.fb vs uapi.visible for detection timing
8. Initially suggested rejecting commit with -EINVAL, but decided graceful
   fallback with continue is better - allows trying alternate Y-planes
   (4A busy -> 5A) instead of failing entire atomic commit
9. Validated fix prevents plane stealing while allowing alternate Y-plane

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 3dc2ed52147f..57d1a9cd226e 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1578,6 +1578,10 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 			if (IS_ERR(y_plane_state))
 				return PTR_ERR(y_plane_state);
 
+			/* Reject if this Y-plane is being configured by userspace */
+			if (y_plane_state->uapi.fb)
+				continue;
+
 			break;
 		}
 
-- 
2.43.0

