Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6374E75C58D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 13:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE85F10E658;
	Fri, 21 Jul 2023 11:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845FC10E65A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 11:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689937895; x=1721473895;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=90mK01swvnq+FvE/sOPyDpg/pmamL82AHVdJ4h6539s=;
 b=Ri3SwC6t9l6uJwzTaSJrxyb0VXfQTNV+NgS+3ZuVADyomP15YhmMtAjC
 3BzLZJhxsBZCPQLdxnsOgL+BLVetn53zDyWBQuJhUDMyszlNaN4JYdSsc
 Bd88MIt/cwFFs4P/xXhC18x3tfpNVPoeKbjrxIdMHVgwVMlGPuMb0Pcm0
 plIKN7EBVmTUJD6dD7PGIuu0Vn/mQejIyI/L5/lox9V5KTWHtA7CyiQR2
 IHKlAYk9YsswEL6MfNULkUCcGk1PCVFXHAfm6vHMBVIT3x7o7SjlzTdnx
 vVxmDvucTD3agFWoKDKjlDrIgorau/fWSn079sBi8TSvTBWI0WtIf68Fp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="397888651"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="397888651"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 04:11:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="675003971"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="675003971"
Received: from bublath-mobl2.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.57.120])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 04:11:32 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jul 2023 14:11:17 +0300
Message-Id: <20230721111121.369227-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/4] drm/i915/tc: some clean-ups in max lane
 count handling code
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

Hi,

Here are four patches with some clean-ups in the code that handles the
max lane count of Type-C connections.

This is done mostly in preparation for a new way to read the pin
assignments and lane count in future devices.

In v2:
   * Fix some rebasing damage.

In v3:
   * Fixed "assigment" typo, as reported by checkpatch.

Please review.

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/tc: rename mtl_tc_port_get_pin_assignment_mask()
  drm/i915/tc: make intel_tc_port_get_lane_mask() static
  drm/i915/tc: move legacy code out of the main _max_lane_count() func
  drm/i915/tc: remove "fia" from intel_tc_port_fia_max_lane_count()

 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |  4 +--
 drivers/gpu/drm/i915/display/intel_tc.c      | 38 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_tc.h      |  3 +-
 4 files changed, 26 insertions(+), 21 deletions(-)

-- 
2.39.2

