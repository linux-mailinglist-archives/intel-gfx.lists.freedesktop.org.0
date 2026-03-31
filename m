Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMvhC6eYy2mYJQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:49:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA2736756B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2039B10E89B;
	Tue, 31 Mar 2026 09:49:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eg1M4xON";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8679410E89B;
 Tue, 31 Mar 2026 09:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774950564; x=1806486564;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8kJeuxgU3pZoqw8aQjktW74mP0phNNwx7K3nauID1Ew=;
 b=Eg1M4xON1IQ44oclpyssVbp+2l8lrzeuegi30t0N4n6VVR2ci7qsMT+Q
 Y+kxEZ0YZBKbDnewpzBQVInC5o17SVw0t6OgmoLEgEG2lYC4nShNvpyTp
 F+OhnDWEDh1aFQKYPKqKlVwJZxIZN4Fpmy3z8XFxn5p5XhuM/6S9/9vv0
 X4yKxW5vLy8XCFLOvVui+sWfrtAiP8zOL9Jd2EyyvQGBpYoUCjxSbAcT3
 MGvbFqW8OPgDMlL2HwJSwo/KL6+ul7Eth4OwbQOPKVXjaYpNLwjHl0ktL
 ZkarRTJ+fLjZIVDVNYjLwGprdqET7ckCDkg0tJ+4R4OdUY2PZFbx0w08t g==;
X-CSE-ConnectionGUID: Cpj3KjEfTGay9CqfLJn4OA==
X-CSE-MsgGUID: HN7tjyQoSCeTLSIj+2M3yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="101414037"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="101414037"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:49:24 -0700
X-CSE-ConnectionGUID: mk0ZfdaKQzq76HIz/vlLOA==
X-CSE-MsgGUID: WLvfA3GiQgydEd4LXUrQxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="231252213"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:49:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/5] drm/{i915, xe}: move fbdev fb calls to parent interface
Date: Tue, 31 Mar 2026 12:49:13 +0300
Message-ID: <cover.1774950508.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:-];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_SPAM(0.00)[0.499];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid]
X-Rspamd-Queue-Id: AEA2736756B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Rebase of [1] on top of the AuxCCS changes, after some merges and
backmerges.


[1] https://lore.kernel.org/r/cover.1773840563.git.jani.nikula@intel.com

Jani Nikula (5):
  drm/xe/fbdev: put intel_fbdev_fb_prefer_stolen() behind
    IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
  drm/{i915,xe}/fbdev: drop drm device parameter from
    intel_fbdev_fb_fill_info()
  drm/{i915,xe}: move fbdev fb calls to parent interface
  drm/i915: pass struct drm_i915_private to
    i915_bo_fbdev_prefer_stolen()
  drm/xe: pass struct xe_device to xe_display_bo_fbdev_prefer_stolen()

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_bo.c       |  27 ++++
 drivers/gpu/drm/i915/display/intel_bo.h       |   8 ++
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 118 -----------------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  24 ----
 drivers/gpu/drm/i915/i915_bo.c                | 114 +++++++++++++++++
 drivers/gpu/drm/i915/i915_bo.h                |   6 +
 drivers/gpu/drm/i915/i915_initial_plane.c     |   4 +-
 drivers/gpu/drm/xe/Makefile                   |   1 -
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 120 ------------------
 drivers/gpu/drm/xe/display/xe_display_bo.c    | 120 ++++++++++++++++++
 drivers/gpu/drm/xe/display/xe_display_bo.h    |   6 +
 drivers/gpu/drm/xe/display/xe_initial_plane.c |   5 +-
 include/drm/intel/display_parent_interface.h  |   7 +
 15 files changed, 301 insertions(+), 276 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.c
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.h
 delete mode 100644 drivers/gpu/drm/xe/display/intel_fbdev_fb.c

-- 
2.47.3

