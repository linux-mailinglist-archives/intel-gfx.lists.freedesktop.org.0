Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3359DA339
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 08:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2719810E9E7;
	Wed, 27 Nov 2024 07:40:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FS7cgXqc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E927910E082;
 Wed, 27 Nov 2024 07:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732693252; x=1764229252;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uauErpTZ1be0TM1pe8s3J7IXZDPyNJ6aGY0maIvmD6k=;
 b=FS7cgXqcSb1qXk2wCVj5YQrtW3HC6zQgQ74pr4eGoycFgCI+fDfklS2n
 C+Npnmz5hy8Jmm3NuvBHYd+BBzSfEORURgiks13j4ptk21xHYIhWYo1ne
 L/GFky6PrVMX4u8GUxLvfLCYtmeYJRDsKMzrDG1vOtEj/9qh1+0sz1uBL
 SlUBlZwWsg977rc0rJAG3sZb2luUxhh9s0vxYBGPKt6aS8Y85413i1k9S
 4TuH1wo7XKrXszKmSxJCw16E85GxUKL3DNJFwSlTH6ruLBFepvO2E5+0j
 PHlWDPUI4NdE86M4pPRx3VcEbxlP3BRucB9u68vU2OkE2WwQzgItyEf1D A==;
X-CSE-ConnectionGUID: 8ihLHdh6Rpm2f8/jDF44XA==
X-CSE-MsgGUID: 3QSeqLo8SVe3EP2o9UW4gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="36670644"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="36670644"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 23:40:52 -0800
X-CSE-ConnectionGUID: UM9NqqCzTni92KfHR8DaDw==
X-CSE-MsgGUID: j9tIfI6dQyeGfCGUcPY/Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="129376603"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa001.jf.intel.com with ESMTP; 26 Nov 2024 23:40:50 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v6 0/2] drm/i915/display: Power request asserting/deasserting
Date: Wed, 27 Nov 2024 09:31:58 +0200
Message-ID: <20241127073200.124907-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

There is a HW issue that arises when there are race conditions
between TCSS entering/exiting TC7 or TC10 states while the
driver is asserting/deasserting TCSS power request. As a
workaround, Display driver will implement a mailbox sequence
to ensure that the TCSS is in TC0 when TCSS power request is
asserted/deasserted.

The sequence is the following

1. Read mailbox command status and wait until run/busy bit is
   clear
2. Write mailbox data value '1' for power request asserting
   and '0' for power request deasserting
3. Write mailbox command run/busy bit and command value with 0x1
4. Read mailbox command and wait until run/busy bit is clear
   before continuing power request.

while at it, let's start using struct intel_display instead of
struct drm_i915_private as well.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Mika Kahola (2):
  drm/i915/xe3lpd: Power request asserting/deasserting
  drm/i915/display: Use struct intel_display instead of struct
    drm_i915_private

 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  7 ++++
 drivers/gpu/drm/i915/display/intel_tc.c       | 39 +++++++++++++++++--
 2 files changed, 42 insertions(+), 4 deletions(-)

-- 
2.43.0

