Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB77124B85
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 16:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884036E2DE;
	Wed, 18 Dec 2019 15:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6CB6E2DE;
 Wed, 18 Dec 2019 15:24:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 07:24:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="205872951"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga007.jf.intel.com with ESMTP; 18 Dec 2019 07:24:11 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 18 Dec 2019 20:43:41 +0530
Message-Id: <20191218151350.19579-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/9] DP Phy compliance auto test
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
Cc: jani.nikula@intel.com, nidhi1.gupta@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Driver changes mainly to process the request coming from Test equipment
as short pulse hpd interrupt to change link-pattern/v-swing/pre-emphasis
Complete auto test suite takes much lesser time than manual run.

Overall design:
--------------
Automate test request will come to source device as HDP short pulse
interrupt from test scope.
Read DPCD 0x201, Check for bit 1 for automated test request.
If set continue and read DPCD 0x218.
Check for bit 3 for phy test pattern, If set continue.
Get the requested test pattern through DPCD 0x248.
Compute requested voltage swing level and pre-emphasis level
from DPCD 0x206 and 0x207
Set signal level through vswing programming sequence.
Write DDI_COMP_CTL and DDI_COMP_PATx as per requested pattern.
Configure the link and write the new test pattern through DPCD.

High level patch description.
-----------------------------
patch 1: drm level api added to get/set test pattern as per vesa
DP spec. This maybe useful for other driver so added in drm layer.
patch 2: Fix for a compilation issue.
patch 3: vswing/preemphasis adjustment calculation is needed during
phy compliance request processing along with existing link training
process, so moved the same function in intel_dp.c.
patch 4: Parse the test scope request regarding  rquested test pattern,
vswing level, preemphasis level.
patch 5: Notify testapp through uevent.
patch 6: Added debugfs entry for phy compliance.
patch 7: Register difnition of DP compliance register added.
patch 8: Function added to update the pattern in source side.
patch 9: This patch os mainly processing the request.

Currently through prototyping patch able to run DP compliance where
vswing, preemphasis and test pattern is changing fine but complete
test is under process. As per feedback redesigned the code. Could not test
due to unavailability of test scope, so sending as RFC again to get design
feedback.

v1: Redesigned the code as per review feedback from Manasi on RFC.
v2: Addressed review comments from Manasi.

Animesh Manna (9):
  drm/dp: get/set phy compliance pattern
  drm/amd/display: Fix compilation issue.
  drm/i915/dp: Move vswing/pre-emphasis adjustment calculation
  drm/i915/dp: Preparation for DP phy compliance auto test
  drm/i915/dsb: Send uevent to testapp.
  drm/i915/dp: Add debugfs entry for DP phy compliance.
  drm/i915/dp: Register definition for DP compliance register
  drm/i915/dp: Update the pattern as per request
  drm/i915/dp: [FIXME] Program vswing, pre-emphasis, test-pattern

 .../gpu/drm/amd/display/dc/core/dc_link_dp.c  |   2 +-
 drivers/gpu/drm/drm_dp_helper.c               |  93 +++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  24 ++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 195 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +
 .../drm/i915/display/intel_dp_link_training.c |  32 ---
 drivers/gpu/drm/i915/i915_debugfs.c           |  12 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |  20 ++
 include/drm/drm_dp_helper.h                   |  33 ++-
 11 files changed, 381 insertions(+), 38 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
