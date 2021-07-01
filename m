Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB613B9697
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 21:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACBB76EB91;
	Thu,  1 Jul 2021 19:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27BBA6EB91
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 19:31:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272460119"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="272460119"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 12:31:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="455699880"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 01 Jul 2021 12:31:17 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 12:31:12 -0700
Message-Id: <20210701193114.17531-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Stepping/substepping reorg for DMC
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

This series addresses the following:
1. Add missing stepping/substepping info for all platforms.
2. Use RUNTIME_INFO->step to grab the actual stepping info
for a platform instead of having separate lookup tables
for each platform on DMC side.

Anusha Srivatsa (2):
  drm/i915/dmc: Use RUNTIME_INFO->step for DMC
  drm/i915/dmc: Add steping info table for remaining platforms

 drivers/gpu/drm/i915/display/intel_dmc.c | 117 +++++++++++++++--------
 drivers/gpu/drm/i915/intel_step.c        |  69 +++++++++++++
 drivers/gpu/drm/i915/intel_step.h        |   7 ++
 3 files changed, 154 insertions(+), 39 deletions(-)

-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
