Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2143142D720
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 12:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CFD6EC64;
	Thu, 14 Oct 2021 10:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D43B6EC64
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 10:29:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="207763134"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="207763134"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:29:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="491893912"
Received: from rwambsga-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.210.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 03:29:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Thu, 14 Oct 2021 13:28:56 +0300
Message-Id: <cover.1634207064.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: intel sbi/pcode cleanup
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

Split out the sbi and pcode code to separate files.

There's potential for follow-up work that's not included here:

- vlv_sideband, intel_sbi and intel_pcode all use
  i915->sb_lock. Technically it's fine, but the appearance is confusing.

- The pcode function naming could use some cleanup.

- Slightly unrelated, all the functions in intel_display.c using
  intel_sbi should be moved out of intel_display.c as a group.


BR,
Jani.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Jani Nikula (2):
  drm/i915: split out intel_pcode.[ch] to separate file
  drm/i915: rename intel_sideband.[ch] to intel_sbi.[ch]

 drivers/gpu/drm/i915/Makefile                 |  3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_llc.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
 drivers/gpu/drm/i915/i915_drv.c               |  2 +-
 drivers/gpu/drm/i915/intel_dram.c             |  2 +-
 .../i915/{intel_sideband.c => intel_pcode.c}  | 91 +------------------
 .../i915/{intel_sideband.h => intel_pcode.h}  | 19 ++--
 drivers/gpu/drm/i915/intel_pm.c               |  2 +-
 drivers/gpu/drm/i915/intel_sbi.c              | 73 +++++++++++++++
 drivers/gpu/drm/i915/intel_sbi.h              | 23 +++++
 18 files changed, 124 insertions(+), 118 deletions(-)
 rename drivers/gpu/drm/i915/{intel_sideband.c => intel_pcode.c} (69%)
 rename drivers/gpu/drm/i915/{intel_sideband.h => intel_pcode.h} (63%)
 create mode 100644 drivers/gpu/drm/i915/intel_sbi.c
 create mode 100644 drivers/gpu/drm/i915/intel_sbi.h

-- 
2.30.2

