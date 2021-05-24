Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAD738F3B1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 21:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00BBA6E923;
	Mon, 24 May 2021 19:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D896E595
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 19:30:33 +0000 (UTC)
IronPort-SDR: ilHvnlpELMpva3CwDbIPLIB8KAx1/HW9ygPZ5ts1LWJgrO735aq5DzkUP/Ex2jCnR2Gnzty0GD
 gX7OHuZWHLew==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="200115198"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="200115198"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 12:30:32 -0700
IronPort-SDR: 4qGcFg/QkBWSmxtivL46TfBumDdXadpDexN6+HPX0RsZ/FSY6VglHTU7PATc8UsZKgS6As9Vxs
 7gdYA7GcRsyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="632749091"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga005.fm.intel.com with ESMTP; 24 May 2021 12:30:32 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 12:30:25 -0700
Message-Id: <20210524193032.3015-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] Pipe DMC Support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding the actual Pipe DMC bits.

This series is rebased on top of the new
"More DMC cleanup" series:
https://patchwork.freedesktop.org/series/90379/

Anusha Srivatsa (7):
  drm/i915/dmc: s/DRM_ERROR/drm_err
  drm/i915/dmc: Add intel_dmc_has_payload() helper
  drm/i915/dmc: Move struct intel_dmc to intel_dmc.h
  drm/i915/dmc: Introduce DMC_FW_MAIN
  drm/i915/xelpd: Pipe A DMC plugging
  drm/i915/adl_p: Pipe B DMC Support
  drm/i915/adl_p: Load DMC

 .../drm/i915/display/intel_display_debugfs.c  |  10 +-
 .../drm/i915/display/intel_display_power.c    |  21 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 212 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h      |  35 +++
 drivers/gpu/drm/i915/i915_drv.h               |  18 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   2 +-
 7 files changed, 178 insertions(+), 122 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
