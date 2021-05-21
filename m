Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D32738D1C1
	for <lists+intel-gfx@lfdr.de>; Sat, 22 May 2021 01:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC12F6E8AB;
	Fri, 21 May 2021 23:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDCD86E8AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 23:01:15 +0000 (UTC)
IronPort-SDR: wzc7UtiLLj2ZOKBBq25SrQ5p5xBd2EVIg/2QKuZXZ8xnuX2vQ4MiYybhZrrGgG13bLgG21hn+W
 H4hjZLjCxIyg==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="188717267"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="188717267"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 16:01:14 -0700
IronPort-SDR: +6Uo/mODKSM1XcSKJhT57KC5FPqgzcjGZpCyml8DvO8mHcvvbYVw0nElBQuSXbQQ95eQANSK8W
 qxKj7ptUSXBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="395509536"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga003.jf.intel.com with ESMTP; 21 May 2021 16:01:14 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 May 2021 16:01:07 -0700
Message-Id: <20210521230114.2563-1-anusha.srivatsa@intel.com>
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

This series is rebased on top of "More DMC cleanup":
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
