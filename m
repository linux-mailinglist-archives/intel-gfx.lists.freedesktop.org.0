Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C7B322D9B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 16:35:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03ECE6E13C;
	Tue, 23 Feb 2021 15:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF2D06E13C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 15:35:21 +0000 (UTC)
IronPort-SDR: MDgdZzVfnNNR75ZUIRRqdxS+Ebp/B9M3mByeFf2PrzYhX3j9aMja2COAIN6lq4SWPAXZIoULTr
 obEKxMbV/VCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="204271989"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="204271989"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:35:21 -0800
IronPort-SDR: unrMouMdDTVXpojbis/+M4ritVXFip1PUZyZw5pL9mo0kFzfgpShbcj7VQuDbTVWYpFCECVGkK
 UbhpRragg8Zw==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="403210151"
Received: from kcushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.40.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:35:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Feb 2021 17:35:05 +0200
Message-Id: <cover.1614094093.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/7] drm/i915: refactor KBL/TGL/ADLS stepping
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This cleans up the split display and gt stepping schemes in
KBL/TGL/ADLS, and makes it easier to extend for future platforms.

We could switch legacy platforms over too, but that would require arrays
to convert to the symbolic step enums, for no real benefit, but with the
drawback of having to maintain the arrays and potentially failing to
handle undefined revids in revid ranges properly.

Jani Nikula (7):
  drm/i915: remove unused ADLS_REVID_* macros
  drm/i915: split out stepping info to a new file
  drm/i915: add new helpers for accessing stepping info
  drm/i915: switch KBL to the new stepping scheme
  drm/i915: switch TGL and ADL to the new stepping scheme
  drm/i915: rename DISP_STEPPING->DISPLAY_STEP and GT_STEPPING->GT_STEP
  drm/i915: rename disp_stepping->display_step and gt_stepping->gt_step

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   4 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |   2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  55 ++------
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_drv.h               | 132 +++++-------------
 drivers/gpu/drm/i915/intel_device_info.c      |   2 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   4 +
 drivers/gpu/drm/i915/intel_pm.c               |   6 +-
 drivers/gpu/drm/i915/intel_stepping.c         | 106 ++++++++++++++
 drivers/gpu/drm/i915/intel_stepping.h         |  40 ++++++
 13 files changed, 206 insertions(+), 153 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_stepping.c
 create mode 100644 drivers/gpu/drm/i915/intel_stepping.h

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
