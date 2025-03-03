Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C96A4BE64
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:27:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B3810E3CC;
	Mon,  3 Mar 2025 11:27:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j/TyuH9/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0EE410E23B;
 Mon,  3 Mar 2025 11:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001238; x=1772537238;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rLSIlomqGgtAA+mkLNLTK46e73XHVk63MGeujYOg7k8=;
 b=j/TyuH9/TH0uWddf06RYTuNxh8PsE1tGd1PdeBnigbfP4DmOmZYJ4c+R
 7xtccSbgbxaKxZJmRf8KKyDcLLwd5134QcRNTwhNg4sPhjliyAVY/KC8M
 1x3Gq6QnPN0f7mf+/9bj6lAYr38vZ2R6OyyI7yG/57heUUZVZAfcG/UP4
 i9NACcVrBi65yDoqz9YWkVgOkxTx3TUlmk6GP6im+LqBtdsr2SX3FEdVZ
 YHI6ry9ciR7/QaKTYtoYpxS/CY+POqRn5BpUFj5lOp38xY5pZtj7JHktA
 i4id+gqiaWvzEJsOnY91gJGc5HxnWaXYlboxx3R8n4VxJK6e0wAhQQp2w w==;
X-CSE-ConnectionGUID: 9zrkqDhDRKSFTzvFpb3RRQ==
X-CSE-MsgGUID: 3rp/79JcTNKk1iXQnErXMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="42125120"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="42125120"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:17 -0800
X-CSE-ConnectionGUID: VdC0QQM6T6CHwS/TyBnZ3w==
X-CSE-MsgGUID: EOWbYkIiQdmUwfdIidCOdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118010060"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	matthew.d.roper@intel.com
Subject: [PATCH v3 0/8] drm/i915: display reset cleanups
Date: Mon,  3 Mar 2025 13:27:02 +0200
Message-Id: <cover.1741001054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

v3 of [1], removing I915_RESET_MODESET flag altogether for even further
simplification.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1740481927.git.jani.nikula@intel.com


Jani Nikula (8):
  drm/i915/display: convert display reset to struct intel_display *
  drm/i915: move pending_fb_pin to struct intel_display
  drm/i915/reset: add intel_gt_gpu_reset_clobbers_display() helper
  drm/i915/reset: add intel_display_reset_test()
  drm/i915/reset: remove I915_RESET_MODESET flag
  drm/i915/reset: decide whether display reset is needed on gt side
  drm/i915/reset: pass test only parameter to
    intel_display_reset_finish()
  drm/i915/reset: add modeset_stuck callback to
    intel_display_reset_prepare()

 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 .../drm/i915/display/intel_display_reset.c    | 73 ++++++++-----------
 .../drm/i915/display/intel_display_reset.h    | 12 ++-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  5 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 10 ++-
 drivers/gpu/drm/i915/display/intel_overlay.c  |  5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         | 41 +++++++++--
 drivers/gpu/drm/i915/gt/intel_reset.h         |  2 +
 drivers/gpu/drm/i915/gt/intel_reset_types.h   |  3 +-
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.h         |  2 -
 13 files changed, 92 insertions(+), 69 deletions(-)

-- 
2.39.5

