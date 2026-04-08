Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIPLDC7m1mliJggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 01:35:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC743C4C98
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 01:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499AC10E134;
	Wed,  8 Apr 2026 23:35:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nKEPPyxc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DAE010E134;
 Wed,  8 Apr 2026 23:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775691306; x=1807227306;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=riEb8SlmbpNIOdCKmX1Z736fQTquJv2ekIdTMFXIu9I=;
 b=nKEPPyxcxBwnP71uV6vfAeXiUlIhkWNDwAQABP1Svikgf88LB0IGxJ7j
 Mx0R1OfG7eUdYYURBOraXhF+tWFPtd+UleSELZziaKsasLAdHbtJWNq5V
 QbGHaZwiruLFsmYtoqASvAMX1RQF7SQcgHTpkAlkIBAEX5wGwDRrlvsUc
 Q0lxs+8XGs7qIQF7nIw1C+epUI8XcPOb8t/iIMzCXL+hHvC5w+PTa4d9P
 Ems17WOWp8rU0oLFdMlu1XLf8TALyE+fj3Fxc0poBXVdrNzKhtuCC1ujk
 W41GsAFKdXuuMZbKz8LX2ijZ2iEkEypyrc02/GyAtBSYERS63sfOrifs/ w==;
X-CSE-ConnectionGUID: 6OcYYXoMSq65HrUf+2H0/g==
X-CSE-MsgGUID: 7xDw4bEkTHmygBxDtCB2BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76591329"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76591329"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 16:35:05 -0700
X-CSE-ConnectionGUID: R6jZ7H4YRAi+nHTVqKNt1w==
X-CSE-MsgGUID: mNDx3/N3RGefmSg9zfejdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="230272992"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2026 16:35:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Simona Vetter <simona.vetter@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 0/6] drm/i915/reset: Solve display vs. GPU reset deadlock,
 again
Date: Thu,  9 Apr 2026 02:34:52 +0300
Message-ID: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: AAC743C4C98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Apparently we lost proper display vs. GPU reset deadlock
handling. Try to bring it back, using a modern dma-fence
based approach.

Cc: Simona Vetter <simona.vetter@ffwll.ch>
Cc: Christian König <christian.koenig@amd.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Ville Syrjälä (6):
  dma-buf: Remove old lies about dma_fence_wait_any_timeout() not
    accepting some fences
  drm/i915/reset: Reorganize display reset code
  drm/i915/reset: Move pending_fb_pin handling to i915
  drm/xe/display: Add init_clock_gating.h stubs
  drm/i915/reset: Handle the display vs. GPU reset deadlock using a
    custom dma-fence
  drm/i915/display: Make fence timeout infinite

 drivers/dma-buf/dma-fence.c                   |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  34 ++++--
 .../gpu/drm/i915/display/intel_display_core.h |   7 +-
 .../drm/i915/display/intel_display_driver.c   |   5 +
 .../drm/i915/display/intel_display_power.c    |   2 -
 .../drm/i915/display/intel_display_reset.c    | 103 +++++++++++++++---
 .../drm/i915/display/intel_display_reset.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  10 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  26 +++--
 drivers/gpu/drm/i915/i915_dpt.c               |   5 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_fb_pin.c            |   9 +-
 drivers/gpu/drm/i915/i915_overlay.c           |   6 +
 drivers/gpu/drm/xe/Makefile                   |   1 +
 .../compat-i915-headers/intel_clock_gating.h  |  10 +-
 15 files changed, 168 insertions(+), 65 deletions(-)

-- 
2.52.0

