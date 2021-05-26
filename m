Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8947392287
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 00:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084E46E8A9;
	Wed, 26 May 2021 22:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AE4D6E8A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 22:09:15 +0000 (UTC)
IronPort-SDR: EF6oeL+toeI2Y8ePuLw0PtC6IIPZ78pQmVJ1lMK3mPJR2LqYN3NU0XiEToKKzVvh7bkjVrNMLG
 Pf5hcGNxyVKw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202600417"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="202600417"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 15:08:54 -0700
IronPort-SDR: 6RFSfFPQe+A7SFwoz426Abg5Md1nk4h2XtlUoH12AE8keBr85vVjPXKlXfhoqIp5ZSoNJmdzJE
 qYPPW1bDa5bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633689119"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga005.fm.intel.com with ESMTP; 26 May 2021 15:08:54 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 15:08:46 -0700
Message-Id: <20210526220853.4550-1-anusha.srivatsa@intel.com>
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

This series is rebased on top of the new
"Resend More DMC cleanup" series:
https://patchwork.freedesktop.org/series/90635/

Anusha Srivatsa (7):
  drm/i915/dmc: s/DRM_ERROR/drm_err
  drm/i915/dmc: Add intel_dmc_has_payload() helper
  drm/i915/dmc: Move struct intel_dmc to intel_dmc.h
  drm/i915/dmc: Introduce DMC_FW_MAIN
  xdrm/i915/xelpd: Pipe A DMC plugging
  drm/i915/adl_p: Pipe B DMC Support
  drm/i915/adl_p: Load DMC

 .../drm/i915/display/intel_display_debugfs.c  |  10 +-
 .../drm/i915/display/intel_display_power.c    |  21 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 212 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h      |  35 +++
 drivers/gpu/drm/i915/i915_drv.h               |  18 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   2 +-
 7 files changed, 177 insertions(+), 123 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
