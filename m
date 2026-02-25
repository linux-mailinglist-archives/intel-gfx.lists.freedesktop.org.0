Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALt8NgA4n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7B719BDBE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B1D910E7E8;
	Wed, 25 Feb 2026 17:57:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M+iWkULi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6A610E7EB;
 Wed, 25 Feb 2026 17:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042236; x=1803578236;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lXkWOPmoKCe9Rj8TAQ6NPbB2JJLn81eaRPoK/U4RtzY=;
 b=M+iWkULicElC7quLqddZLLNCxExZCRBddwRYy2piw3gQwQpVvsGbvSri
 CaB9zYqRofGui9i+vBzfu8f2TieWRh9X1lYhStBB27hnmvMR6jHipU9iN
 sp5GQXBLw+iZuu2RVkBdJoozKmyPlpE5iYD9pyX/pc/DhY6NQGBA0u/3D
 uEeHA2IdqQYUNWi79M1gLCP1aYbdV/c1h1/x9SlisU2PLl34AL9lRWYoO
 XAi+HjoRLQO+907aZk948TBYorm1mU0bcxxSWA0nbuKbXHyhD73aOeoAY
 tB/q/kTOKt2Dq6q/ExUk6CIcp3wm0H4iSVB7Jfstcyw6MhV+J2QLT2QUv g==;
X-CSE-ConnectionGUID: dMd71wwbTciZ0QEYO11bpA==
X-CSE-MsgGUID: 247WuFVUTNCJrQCW2WUuLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76961469"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76961469"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:16 -0800
X-CSE-ConnectionGUID: oD2dW742T7ag7hRsToPjag==
X-CSE-MsgGUID: 5fzAsXiqQrusCJE1mV3bFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220811912"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 0/8] drm/{i915,xe}: refactor register helpers
Date: Wed, 25 Feb 2026 19:57:02 +0200
Message-ID: <cover.1772042022.git.jani.nikula@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 3C7B719BDBE
X-Rspamd-Action: no action

I realized xe_reg_defs.h subtly pulls in i915_reg_defs.h from i915 via
the compat headers, which is ugly and wrong to say the least, and then
xe uses the macros all over the place.

Clean this up by creating two shared headers under include/drm/intel,
with some related cleanups on top.

BR,
Jani.


Jani Nikula (8):
  drm/i915/reg: make masked field helpers constexpr
  drm/i915/lrc: switch to _MASKED_BIT_ENABLE() and _MASKED_BIT_DISABLE()
  drm/{i915,xe}/reg: rename masked field helpers REG_MASKED_FIELD*()
  drm/i915/perf: prefer REG_MASKED_FIELD_ENABLE() and
    REG_MASKED_FIELD_DISABLE()
  drm/xe/oa: prefer REG_MASKED_FIELD_ENABLE() and
    REG_MASKED_FIELD_DISABLE()
  drm/intel: add reg_bits.h for the various register content helpers
  drm/intel: add pick.h for the various "picker" helpers
  drm/i915/gt: prefer _PICK_EVEN() over _PICK()

 drivers/gpu/drm/i915/display/i9xx_wm.c        |   8 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |   4 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  10 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |   6 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   8 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  21 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  22 +--
 drivers/gpu/drm/i915/gt/intel_reset.c         |   4 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  19 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  24 +--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   4 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |  10 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   2 +-
 drivers/gpu/drm/i915/gvt/reg.h                |   4 +-
 drivers/gpu/drm/i915/i915_perf.c              |  34 ++--
 drivers/gpu/drm/i915/i915_reg_defs.h          | 179 +-----------------
 drivers/gpu/drm/i915/intel_clock_gating.c     |  38 ++--
 drivers/gpu/drm/i915/intel_uncore.c           |   4 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |   4 +-
 .../drm/xe/compat-i915-headers/intel_uncore.h |   1 +
 drivers/gpu/drm/xe/regs/xe_reg_defs.h         |   5 +-
 drivers/gpu/drm/xe/xe_eu_stall.c              |  20 +-
 drivers/gpu/drm/xe/xe_execlist.c              |   6 +-
 drivers/gpu/drm/xe/xe_hw_engine.c             |   8 +-
 drivers/gpu/drm/xe/xe_lrc.c                   |  12 +-
 drivers/gpu/drm/xe/xe_oa.c                    |  42 ++--
 drivers/gpu/drm/xe/xe_pxp.c                   |   4 +-
 drivers/gpu/drm/xe/xe_uc_fw.c                 |   4 +-
 include/drm/intel/pick.h                      |  51 +++++
 include/drm/intel/reg_bits.h                  | 139 ++++++++++++++
 34 files changed, 362 insertions(+), 349 deletions(-)
 create mode 100644 include/drm/intel/pick.h
 create mode 100644 include/drm/intel/reg_bits.h

-- 
2.47.3

