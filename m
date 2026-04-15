Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODmyCVX932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09621407DF1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27E110E1CB;
	Wed, 15 Apr 2026 21:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MwYi0bXI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ED6010E066;
 Wed, 15 Apr 2026 21:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776287056; x=1807823056;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ftny5u1xa/gfZFm5MFJPzgv5h1UF96HVeS7MxK3aIZI=;
 b=MwYi0bXI/kMicaZrBU6WbbD5b2TaAe068iPfr4O3tiREB68zdlqw2cBG
 77M0GkAqydPEkhChmm8RqamQUQ/Cxk+0+1r2OaduII5qmRRceA1CHsOMZ
 gFD+WVX8Ulz7eA/2hwTQq3Q/heEKUh34cB/v2l5Wn7DQlirdZzVGSow6B
 tH4C22LeYqC4teRmL+mqm7sX30igKUMYsl7oLBQxhHyt2CQ1F/Ll4sHVK
 m9G7mAATmCUnVwYVsSGIvwHK9LV/QEKDhsmUxUWf77oAvunUnMQDfBpAz
 jmf5cafCqKHLdVLYavhUEVl2gFSzX3RHmWtdSqgwOSA/KTstQHXIn0/0n g==;
X-CSE-ConnectionGUID: 6y0XdCYfQhicS6VvecgYxg==
X-CSE-MsgGUID: hbZlnKvTREeJY+Ea7KnbxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="81158060"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="81158060"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:16 -0700
X-CSE-ConnectionGUID: DoUaezJZScOQq0P36QbRKg==
X-CSE-MsgGUID: GTv1nKOOTSOeh02ma5huCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="225830429"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v3 0/7] drm/i915/reset: Expose "display_reset_count" in debugfs
Date: Thu, 16 Apr 2026 00:04:04 +0300
Message-ID: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 09621407DF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Expose a display reset count in debugfs. It will be used
by kms_busy/*-with-reset tests to confirm they are actually
testing the thing they are meant to test.

This should now pass on all platforms, after the last patch
prevents the per-engine reset shortcut when using execlist
submission.

v2: Deal with the execlist per-engine reset issue
v3: Deal with the stale i915->display floating around in the mock tests

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Ville Syrjälä (7):
  drm/i915: Clear i915->display when no longer valid
  drm/xe: Clear xe->display when no longer valid
  drm/i915/reset: Reorganize display reset code
  drm/i915/reset: Move pending_fb_pin handling to i915
  drm/xe/display: Add init_clock_gating.h stubs
  drm/i915/reset: Add "display_reset_count" debugfs file
  drm/i915/reset: Disable execlist per-engine reset for display reset
    tests

 .../gpu/drm/i915/display/intel_display_core.h |  5 ++-
 .../drm/i915/display/intel_display_debugfs.c  |  2 +
 .../drm/i915/display/intel_display_power.c    |  2 -
 .../drm/i915/display/intel_display_reset.c    | 40 +++++++++----------
 .../drm/i915/display/intel_display_reset.h    |  8 ++--
 drivers/gpu/drm/i915/display/intel_overlay.c  | 10 +----
 drivers/gpu/drm/i915/gt/intel_reset.c         | 35 +++++++++-------
 drivers/gpu/drm/i915/i915_dpt.c               |  5 +--
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 drivers/gpu/drm/i915/i915_fb_pin.c            |  9 ++---
 drivers/gpu/drm/i915/i915_overlay.c           |  6 +++
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
 drivers/gpu/drm/xe/Makefile                   |  1 +
 .../compat-i915-headers/intel_clock_gating.h  | 10 ++++-
 drivers/gpu/drm/xe/display/xe_display.c       | 13 +++---
 16 files changed, 86 insertions(+), 64 deletions(-)

-- 
2.52.0

