Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEi1Ahog4WmapQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:44:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E150B4132CD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:44:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6947310E920;
	Thu, 16 Apr 2026 17:44:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gczy3Az9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9597210E8D5;
 Thu, 16 Apr 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776361493; x=1807897493;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bGI0toGmEM+FjSat5pf3sIZYgnBAOg3YIAUuy/TYf84=;
 b=gczy3Az9cQDahO85sXdt0v7gS5ZYHi1Fv1Xr0GzoZKfJRpRmMoTNIeIK
 M0luvTgoGx6vkg1nAh4GoigwaHDTlOX3aEm9SAjf8zb7bMeHdMbQQ6Myv
 nPerYVdtv8qY1lkNt0OpqX26scGJOzU76NE6s8nod6tMAEHf5o7Hem6hk
 /JVajtFpDTFrQZLNIbUL2QNON0u3FTT8wq771PO9qL2fDNkzmLszH4jXe
 Qz3n1NmXey9xgGjfKDO8PPwxrTMUhZmLEDHupZ+k4VJHLQFGvDcbDysxO
 DUc19lmrhcC4grQrPpADkk4mxUZwLgqqUR6ao59hydTFnJ1UeaebYx5iT w==;
X-CSE-ConnectionGUID: Fl2W23N+QIqlDeP1Xj8dLQ==
X-CSE-MsgGUID: 0eZJbMC4Th+Edw8wph2M/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77445414"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77445414"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:44:53 -0700
X-CSE-ConnectionGUID: 0m+8yzjpQImPkyWWlrAMeg==
X-CSE-MsgGUID: scTmzEQTSwmTuzPpg3lGpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="230668813"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.241])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:44:51 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/11] drm/i915: Eliminate FB usage from low level pinning code
Date: Thu, 16 Apr 2026 20:44:36 +0300
Message-ID: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
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
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E150B4132CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Some work towards a proper display<->parent fb_pin interface.
The goal of the series here is to eliminate display specific 
things (the fb structure itself, and any display platform
checks) from the low level pinning code.

Ville Syrjälä (11):
  drm/xe/fb: Use the correct gtt view for remapped FBs
  drm/i915: Introduce struct intel_fb_pin_params
  drm/i915: Extract intel_fb_needs_cpu_access()
  drm/i915: Introduce pin_params.needs_cpu_lmem_access
  drm/i915: Extract intel_plane_needs_low_address()
  drm/i915: Introduce pin_params.needs_low_address
  drm/i915: Introduce pin_params.needs_physical
  drm/i915: Extract intel_plane_needs_fence()
  drm/i915: Introduce pin_params.needs_fence
  drm/xe: Eliminate intel_fb_uses_dpt() call from __xe_pin_fb_vma()
  drm/i915: Don't pass the framebuffer to low level pinning functions

 drivers/gpu/drm/i915/display/intel_fb.c       |  7 +-
 drivers/gpu/drm/i915/display/intel_fb.h       |  1 +
 drivers/gpu/drm/i915/display/intel_fb_pin.h   | 20 +++--
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 19 +++--
 drivers/gpu/drm/i915/display/intel_plane.c    | 22 +++++
 drivers/gpu/drm/i915/display/intel_plane.h    |  3 +
 drivers/gpu/drm/i915/i915_fb_pin.c            | 85 ++++++++++---------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 65 +++++++-------
 drivers/gpu/drm/xe/display/xe_initial_plane.c |  6 +-
 9 files changed, 135 insertions(+), 93 deletions(-)

-- 
2.52.0

