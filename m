Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D863D39227A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 00:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC576EB92;
	Wed, 26 May 2021 22:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F4C86EB92
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 22:02:58 +0000 (UTC)
IronPort-SDR: a2NxWtpz2ArgAO8eA3w8i7RhzXcoGzBBO0kEyQ6GDRc+lMJ1b37ib+TK1F7I25xc4Ht/82vP9x
 1Rr6yQlTGPLA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223784506"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223784506"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 15:02:57 -0700
IronPort-SDR: DMfuwyB165Vxc4dhL5tPqXZbkrNRMe0CSocELt9K3gKu/dDZyM85lJ2TTYisKWq8ZlyKCUqJ+Q
 TL6amLKaStZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="477154527"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga001.jf.intel.com with ESMTP; 26 May 2021 15:02:57 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 15:02:53 -0700
Message-Id: <20210526220256.4097-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/3] Resend More DMC cleanup
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

v2: Add struct intel_dmc to intel_dmc.h in a separate
patch

v3: Minor code shuffling and indentation fixes

v4: Checkpatch fixes.

Anusha Srivatsa (3):
  drm/i915/dmc: s/DRM_ERROR/drm_err
  drm/i915/dmc: Add intel_dmc_has_payload() helper
  drm/i915/dmc: Move struct intel_dmc to intel_dmc.h

 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 .../drm/i915/display/intel_display_power.c    | 16 ++---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 63 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_dmc.h      | 22 +++++++
 drivers/gpu/drm/i915/i915_drv.h               | 18 +-----
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 6 files changed, 69 insertions(+), 56 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
