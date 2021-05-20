Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4EB38B621
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 20:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F3C6F4C9;
	Thu, 20 May 2021 18:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE4416F4C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 18:36:14 +0000 (UTC)
IronPort-SDR: Ts0GJAxCjD/clJ86+rEFf7nHTQIJPpr9rOK42sSCzIy6XkaYo4PWCCx5dej7g2F58OFvBYoawU
 AQs+KTrIAUpQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="188432684"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="188432684"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 11:36:14 -0700
IronPort-SDR: tqNRKesRg/1ETpuyvY+BI8tEMxT/kxv1Flz0S65XgeS6i6g8B9Ys4ZUlfPD7LhZiVJREa+d+wr
 btkY+nd6WGBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="474150228"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga001.jf.intel.com with ESMTP; 20 May 2021 11:36:14 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 May 2021 11:36:06 -0700
Message-Id: <20210520183608.30558-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] More DMC cleanup
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

Last of prep patches before Pipe DMC patches
can land.

Anusha Srivatsa (2):
  drm/i915/dmc: s/DRM_ERROR/drm_err
  drm/i915/dmc: Add intel_dmc_has_payload() helper

 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 .../drm/i915/display/intel_display_power.c    | 16 +++---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 52 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dmc.h      | 22 ++++++++
 drivers/gpu/drm/i915/i915_drv.h               | 18 +------
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 6 files changed, 66 insertions(+), 48 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
