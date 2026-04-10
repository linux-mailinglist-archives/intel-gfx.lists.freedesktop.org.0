Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGejJpoR2WlClwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:04:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0B33D8E6F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EE310E976;
	Fri, 10 Apr 2026 15:04:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cxNy1mEK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EEA210E975;
 Fri, 10 Apr 2026 15:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775833495; x=1807369495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zMMvAHxpkwbcr6HT5yyQGCyLoDSDo/0VlIjrHfXbGDo=;
 b=cxNy1mEKxb5BZi1tIXBn4Otl5+T90mXNt18LjvspqdpzFcyZneGq7ZXP
 SCmgrAzEHsPzTEJ6BK7m45fPlWZQW7KDjZfyMfB03wxKVo8MK7HoM7HqR
 hMhVqwPriIui2WF6aj4zM99HX6SazBC+ueH7qhaqj8TpHLYMNJlf7hIe4
 Eqif3mfD2oORgNqMx3YeCwZ7PQIeu6y2fabJksqvkT8EV7R8wcJz5pN+/
 oqzQ9omE+JdrGCeboO37gTXwZ+xPHyP2Lqx3XwbnqhFMpv3x94oaN/0s4
 49XIwMEb9bFMBT0/y7N7v/Hcd57ChL/o2NOYEG4aKFCM0ALCRBIBUIrI5 Q==;
X-CSE-ConnectionGUID: LU27IGPERdWghKi8bUyMMA==
X-CSE-MsgGUID: yRitQJXcRuuh0SMxehRS/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76815299"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76815299"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:04:54 -0700
X-CSE-ConnectionGUID: w7k+zZ9wQV+DF68Ma5gkww==
X-CSE-MsgGUID: wQHIu6+yRWOzl9UJ6ArQXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="230827795"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:04:51 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/10] drm/i915: Some fixes/cleanups to the BIOS FB stuff
Date: Fri, 10 Apr 2026 18:04:39 +0300
Message-ID: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: EA0B33D8E6F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

While doing trying to add decent abstractions for the FB
pinning I ran into the BIOS FB takeover code, and it didn't
exactly impress me.

Here's a prep series trying to cover some of the issues
I saw that aren't really directly related to the FB pinning
topic.

Ville Syrjälä (10):
  drm/i915: Introduce sanity to the plane_config pointer vs. array thing
  drm/i915: Remove 'mem' and 'phy_base' from struct
    intel_initial_plane_config
  drm/i915: Don't pass the whole plane_config to initial_plane_phys()
  drm/i915: Make plane_config->fb a struct drm_framebuffer*
  drm/i915: Move initial plane vblank wait into display code
  drm/i915: Use a 1 second timeout for the polling vblank wait
  drm/i915: Reject tile4 BIOS FB
  drm/i915: Reject X/Y tiled BIOS FB if we don't have fenced regions
  drm/i915: Completely reject DPT BIOS FBs.
  drm/i915: Reject BIOS FB rotation in common code

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 .../drm/i915/display/intel_display_types.h    |  4 +-
 .../drm/i915/display/intel_initial_plane.c    | 79 +++++++++++++++----
 .../drm/i915/display/skl_universal_plane.c    |  8 +-
 drivers/gpu/drm/i915/i915_initial_plane.c     | 27 +++----
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 21 +----
 include/drm/intel/display_parent_interface.h  |  4 +-
 7 files changed, 77 insertions(+), 68 deletions(-)

-- 
2.52.0

