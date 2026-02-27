Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNeUI6XRoWkfwgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 18:17:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E4C1BB4FB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 18:17:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9498210EBD4;
	Fri, 27 Feb 2026 17:17:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VLWuz7r3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23EE910EBD1;
 Fri, 27 Feb 2026 17:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772212641; x=1803748641;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vrDn2gcKJ5LGc8jy7P8EZmSKhfJFHJUg4xh2Z1ZznCg=;
 b=VLWuz7r3uHKcQ3jeNdrv8vgq3aIRocRkQ/Hr4L27jJ+mWGaGDKqUWQmp
 1x3UzOup5L3DdNfSmW4vB6ohE0sXsZ4+UXT5evyXUr8u+hOGSyV6PUd+m
 Pmw5JDzy1IfO4CJ0xu+i5D9p+4koRTLw0kiJ9kDSn71fmPcI2YthBeph4
 wOA3IheuaC3bvZ9hoLREcgN2Mmr6yyCasQN8d54xL5mUtMD+2Vmg9myLB
 5o63s8N7WLIt+EGfnQxBsBbLxOZL5i3golVrdo4dns2uPPjfP/Ld5fh2p
 TU9flFrUO/P6AHiEG04U1wGQEgscn8km9Qykf6Oka7G1R0MT1thb4BD1N w==;
X-CSE-ConnectionGUID: 0606OJAMT+2H4QRrpDhjAw==
X-CSE-MsgGUID: jkeZInfdQHKPS46KY+zw1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="75902335"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="75902335"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 09:17:20 -0800
X-CSE-ConnectionGUID: G+N8tmgoSGu8V/XTLuwFPw==
X-CSE-MsgGUID: PbvxxBQLRhig9HBqTvE5Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="213804016"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 09:17:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/i915, drm/xe: clean up i915_vma.h usage for display
Date: Fri, 27 Feb 2026 19:17:10 +0200
Message-ID: <cover.1772212579.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 09E4C1BB4FB
X-Rspamd-Action: no action

Drop compat i915_vma.h and make struct i915_vma opaque towards display.

Jani Nikula (4):
  drm/i915/fbdev: stop debug logging i915_ggtt_offset()
  drm/i915: add VMA to parent interface
  drm/xe/compat: remove i915_vma.h from compat
  drm/xe/display: clean up xe_initial_plane.c includes

 drivers/gpu/drm/i915/display/intel_fbc.c      |  5 ++-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  5 +--
 drivers/gpu/drm/i915/display/intel_parent.c   |  9 +++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  3 ++
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/i915_vma.c               | 10 ++++++
 drivers/gpu/drm/i915/i915_vma.h               |  7 ++--
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h | 36 -------------------
 drivers/gpu/drm/xe/display/xe_display_vma.h   | 18 ++++++++++
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  6 ++--
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 16 +++------
 include/drm/intel/display_parent_interface.h  |  7 ++++
 12 files changed, 61 insertions(+), 62 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_vma.h

-- 
2.47.3

