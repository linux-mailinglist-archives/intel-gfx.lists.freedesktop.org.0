Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 907DD186964
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 11:49:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8322B6E3DA;
	Mon, 16 Mar 2020 10:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A0D26E3DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 10:49:41 +0000 (UTC)
IronPort-SDR: h9m4CTJPxleyFy3sreb8wfcDuQIcjF1jf0pn2gyIEa1MPaS7WcxoEB0cUqm4bHDt0B6dubymiO
 gBcltnyyiWUQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 03:49:40 -0700
IronPort-SDR: qlnCP308Ezr6XzTjWRP16yu+d6WHWT99S2flggrvslu/WSIWBFnkCNnFt+Kj2uZwsCcsi1fewx
 1psMEkiF6Arw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="417099470"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2020 03:49:39 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 16:07:52 +0530
Message-Id: <20200316103759.12867-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 0/7] DP Phy compliance auto test
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
patch 1: Align macro name as per DP spec..
patch 2: drm level api added to get/set test pattern as per vesa
DP spec. This maybe useful for other driver so added in drm layer.
patch 3: vswing/preemphasis adjustment calculation is needed during
phy compliance request processing along with existing link training
process, so moved the same function in intel_dp.c.
patch 4: Preparation for auto phy compliance test scope request.
patch 5: Added debugfs entry for phy compliance.
patch 6: Register difnition of DP compliance register added.
patch 7: This patch os mainly processing the request.

Complete phy compliance test suite executed and received positive result.

v1: Redesigned the code as per review feedback from Manasi on RFC.
v2: Addressed review comments from Manasi.
v3: Addressed review commnets from Harry, Ville, Jani.
v4: Had design closure and added fixes after complete test-run.
(Thanks to Khaled/Manasi/Clint for fixes and test execution)
v5: Fixed some nitpicks by Manasi.

Animesh Manna (7):
  drm/amd/display: Align macro name as per DP spec
  drm/dp: get/set phy compliance pattern
  drm/i915/dp: Made intel_dp_adjust_train() non-static
  drm/i915/dp: Preparation for DP phy compliance auto test
  drm/i915/dp: Add debugfs entry for DP phy compliance
  drm/i915/dp: Register definition for DP compliance register
  drm/i915/dp: Program vswing, pre-emphasis, test-pattern

 .../gpu/drm/amd/display/dc/core/dc_link_dp.c  |   2 +-
 drivers/gpu/drm/drm_dp_helper.c               |  94 ++++++++++
 .../drm/i915/display/intel_display_debugfs.c  |  12 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 171 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 .../drm/i915/display/intel_dp_link_training.c |   9 +-
 .../drm/i915/display/intel_dp_link_training.h |   4 +
 drivers/gpu/drm/i915/i915_reg.h               |  20 ++
 include/drm/drm_dp_helper.h                   |  33 +++-
 10 files changed, 339 insertions(+), 8 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
