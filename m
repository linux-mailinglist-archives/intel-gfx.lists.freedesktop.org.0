Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9746C33101F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 14:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C455589F1B;
	Mon,  8 Mar 2021 13:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD16589F1B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 13:56:52 +0000 (UTC)
IronPort-SDR: WczR7YQEfxh7yLXKDpBNtIaK0N791e5Mz/g6oexvSMVHhQD5pbVYFrSaizFCxVQx2QIzUZXg//
 vNqRtVMbefwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="207796371"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="207796371"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:56:52 -0800
IronPort-SDR: aleCItZTOlo6zXfZRooEjZiUSNSox3YXVFfiZmb1MXDJQP1iuEv1EW0oRs0hg32SXHk/Vasi6v
 ESsVHj6SE7NQ==
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="409305121"
Received: from dhoffend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.45.213])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 05:56:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Mar 2021 15:56:37 +0200
Message-Id: <cover.1615211711.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/8] drm/i915: refactor KBL/TGL/ADLS stepping
 scheme
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v3 of [1], mostly with just stepping->step renames

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/87323/


Jani Nikula (8):
  drm/i915: remove unused ADLS_REVID_* macros
  drm/i915: split out stepping info to a new file
  drm/i915: add new helpers for accessing stepping info
  drm/i915: switch KBL to the new stepping scheme
  drm/i915: switch TGL and ADL to the new stepping scheme
  drm/i915: rename DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
  drm/i915: rename disp_stepping->display_step and gt_stepping->gt_step
  drm/i915: rename i915_rev_steppings->intel_step_info

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   4 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |   2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  55 ++-----
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_drv.h               | 134 +++++-------------
 drivers/gpu/drm/i915/intel_device_info.c      |   2 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   4 +
 drivers/gpu/drm/i915/intel_pm.c               |   6 +-
 drivers/gpu/drm/i915/intel_step.c             | 106 ++++++++++++++
 drivers/gpu/drm/i915/intel_step.h             |  40 ++++++
 13 files changed, 207 insertions(+), 154 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_step.c
 create mode 100644 drivers/gpu/drm/i915/intel_step.h

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
