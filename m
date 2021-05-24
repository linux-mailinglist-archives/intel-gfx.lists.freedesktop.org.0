Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 140EA38F395
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 21:21:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D89E6E5B0;
	Mon, 24 May 2021 19:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FAC6E5B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 19:21:05 +0000 (UTC)
IronPort-SDR: VVPMUnee+rVPLA0NtZHha0iplvcezGh1xFOFYVY10BBkJ+i4Tih/GDSEAurVp7i5HVhIoMyxrT
 2EzjQtMOGtKQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="265909458"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="265909458"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 12:21:03 -0700
IronPort-SDR: F6waBi4fnwI4jrinrywFCQCBDLj8BIuZ5cJZDGqIMohwje6nxHQiEjOzrTumJWWrHr5t4qKmJW
 DQNENpP2LWhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="476030785"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga001.jf.intel.com with ESMTP; 24 May 2021 12:21:03 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 12:21:00 -0700
Message-Id: <20210524192103.4521-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 0/3] More DMC cleanup
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

v2: Add struct intel_dmc to intel_dmc.h in a separate
patch

v3: Minor code shuffling and indentation fixes

Anusha Srivatsa (3):
  drm/i915/dmc: s/DRM_ERROR/drm_err
  drm/i915/dmc: Add intel_dmc_has_payload() helper
  drm/i915/dmc: Move struct intel_dmc to intel_dmc.h

 .../drm/i915/display/intel_display_debugfs.c  |  4 +-
 .../drm/i915/display/intel_display_power.c    | 16 ++---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 61 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h      | 22 +++++++
 drivers/gpu/drm/i915/i915_drv.h               | 18 +-----
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 6 files changed, 69 insertions(+), 54 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
