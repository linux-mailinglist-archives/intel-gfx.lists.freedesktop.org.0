Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B28A6BC226
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 01:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09C410EA3B;
	Thu, 16 Mar 2023 00:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F032E10EA35
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 00:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678925374; x=1710461374;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Qysdh98q9LeYeu9WSrYStdLSNcmasBxSvAI1V9xEDo=;
 b=EnPAd2uzN12EIcg4fHDlhIrKRD68wVe2w5x3dS4SNjKUsFA/EZ9KgawB
 x9jdBXj5U+rzPUZayq7D7OMZgWCklsxhcaW+MSxDShPwwktgR8MkPGg/N
 Gwr0ZNYyiEXK3kO7khvzamNoLXvyc9jxSW31PFMWllgfFy2ocPAZtBymd
 0pVuqfiKT7AT8GHSVPWpCqFZbkVW9J8QcrjM+/jJeqSgnN+Ap7d9WcoNc
 ya5njaJv5V8sfpfXpQ3oWeEL8xY3zCC3531PYz96f17nkFaii6jCzVEuS
 MI5Z4vYbVr74bqKfHI7m+gaGoIjTRyUMg4Ydo48c/8iitGKcbuQIh4ou7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="402718806"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="402718806"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="709863686"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="709863686"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:32 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 17:09:20 -0700
Message-Id: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 00/12] Add OAM support for MTL
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

The OAM unit captures OA reports specific to the media engines. Add support to
program the OAM unit on media tile on MTL.

The OAM unit is selected by passing the class:instance of a media engine to perf
parameters. Corresponding UMD changes are posted to the igt-dev repo as part of
supporting the GPUvis tool.

v2: Incorporate review feedback (Jani, Ashutosh)
v3: Incorporate review feedback (Jani, Ashutosh)
v4: Incorporate review feedback (Ashutosh)
v5:
- Enforce paired engine-class and engine-instance configuration
- Include fix for Wa_14017512683

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Chris Wilson (1):
  drm/i915/perf: Drop wakeref on GuC RC error

Umesh Nerlige Ramappa (10):
  drm/i915/perf: Add helper to check supported OA engines
  drm/i915/perf: Validate OA sseu config outside switch
  drm/i915/perf: Group engines into respective OA groups
  drm/i915/perf: Fail modprobe if i915_perf_init fails on OOM
  drm/i915/perf: Parse 64bit report header formats correctly
  drm/i915/perf: Handle non-power-of-2 reports
  drm/i915/perf: Add engine class instance parameters to perf
  drm/i915/perf: Add support for OA media units
  drm/i915/perf: Pass i915 object to perf revision helper
  drm/i915/perf: Wa_14017512683: Disable OAM if media C6 is enabled in
    BIOS

Vinay Belgaumkar (1):
  drm/i915/mtl: Synchronize i915/BIOS on C6 enabling

 drivers/gpu/drm/i915/gt/intel_engine_types.h |  10 +
 drivers/gpu/drm/i915/gt/intel_rc6.c          |  28 +
 drivers/gpu/drm/i915/gt/intel_rc6.h          |   2 +
 drivers/gpu/drm/i915/gt/intel_rc6_types.h    |   2 +
 drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
 drivers/gpu/drm/i915/i915_driver.c           |   4 +-
 drivers/gpu/drm/i915/i915_drv.h              |   2 +
 drivers/gpu/drm/i915/i915_getparam.c         |   2 +-
 drivers/gpu/drm/i915/i915_pci.c              |   1 +
 drivers/gpu/drm/i915/i915_perf.c             | 570 +++++++++++++++----
 drivers/gpu/drm/i915/i915_perf.h             |   4 +-
 drivers/gpu/drm/i915/i915_perf_oa_regs.h     |  78 +++
 drivers/gpu/drm/i915/i915_perf_types.h       |  75 ++-
 drivers/gpu/drm/i915/intel_device_info.h     |   1 +
 include/uapi/drm/i915_drm.h                  |  23 +
 15 files changed, 681 insertions(+), 124 deletions(-)

-- 
2.36.1

