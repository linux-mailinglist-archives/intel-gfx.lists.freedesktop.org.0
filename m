Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 332EF6BD104
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 863F210E19F;
	Thu, 16 Mar 2023 13:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14CE010E1DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974019; x=1710510019;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4S94O3LotnaVqqkpOCf7m6iLZqpuzBRliMZpNwNd2do=;
 b=IehYM//QlnmWxlrHJPzd7gy3PZZ2GocJlZWlIQVWZzAsfQ/zfeOHuQP+
 EpSo8r+CG8XchgLeJHhjjCnvIDsdHJefAIoMyKYw00N2LiBW0tsSbN/7H
 WP/SoTHgElsALFiplwsa5trMtxfOEXA/sCMwvcZ7xt584XqieX99JlLyU
 Lp/LUALnn5WBCuTTc9sqWKGotZqfprnRfS7bsTSc2fsPlgMIP7reorrVO
 AWn0fxQCPBdG2SijMumKIKXdtsWz5gcAceu9Dw1OVdgwVG5ba+eRVLJe4
 v7SbHi0U8TavQH9rdATS2cKfNd+L4AtjC7P6/4oxTReVsEAiRhozHrNC3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524571"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524571"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171260"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171260"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:10 +0200
Message-Id: <20230316131724.359612-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/14] drm/i915/tc: Fix a few TypeC / MST issues
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

This patchset fixes a few issues on TypeC ports, related to the legacy
port handling, HW state readout/verification. It also fixes an issue on
TC port/MST outputs during system suspend/resume, where the modeset
restoring the pre-suspend state fails atm.

Tested on ICL, TGL, ADLP.

Imre Deak (14):
  drm/i915/tc: Abort DP AUX transfer on a disconnected TC port
  drm/i915/tc: Fix TC port link ref init for DP MST during HW readout
  drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state
  drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks
  drm/i915/tc: Wait for IOM/FW PHY initialization of legacy TC ports
  drm/i915/tc: Factor out helpers converting HPD mask to TC mode
  drm/i915/tc: Fix target TC mode for a disconnected legacy port
  drm/i915/tc: Fix TC mode for a legacy port if the PHY is not ready
  drm/i915/tc: Fix initial TC mode on disabled legacy ports
  drm/i915/tc: Make the TC mode readout consistent in all PHY states
  drm/i915/tc: Assume a TC port is legacy if VBT says the port has HDMI
  drm/i915: Add encoder hook to get the PLL type used by TC ports
  drm/i915/tc: Factor out a function querying active links on a TC port
  drm/i915/tc: Check the PLL type used by an enabled TC port

 drivers/gpu/drm/i915/display/intel_ddi.c      |  44 ++-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  15 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 319 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_tc.h       |   1 +
 6 files changed, 320 insertions(+), 68 deletions(-)

-- 
2.37.1

