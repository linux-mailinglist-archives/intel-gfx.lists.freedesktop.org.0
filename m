Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0239B79FB
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:49:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6A810E83C;
	Thu, 31 Oct 2024 11:49:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LMFx/ArR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E9F10E83C
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 11:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730375349; x=1761911349;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hpSj3IMBIwtkpC7kHD+XYl2aPIy0gEPbaxJOGA4CULA=;
 b=LMFx/ArRT8/8yQHVW+/BiB1228PJXI6YyxyOEE6Ft5ONDTspd2BfRLrr
 SsnpFdnemTgOMqzstKLexbHmC8n8DxhPiQJx3s6rAoLRaEaIOpyzt2ip3
 dBIYAv90/EkILIo0fCnE4TI9q1L4hZj4NN6RJ+r7Jrb3+yJ5lJ1Nkq1wN
 BllFbesck5RbZxMXMGSBsyVOvpnomQvKb2zEAGBLp5e6StR32mcBdlIhF
 r/j0R0S9BPRqaz4OcpZTvGFiSs2dtFMPkHxFTkOXcpnAR1vrhvfsXj4mz
 FxGtjB2xog/D/RCWCl96o3I858ZoFfC/h/jTrAhrfVRBByEvrxxY8ygAH Q==;
X-CSE-ConnectionGUID: q8Bw+fbXTZC1cZf7+3D9EA==
X-CSE-MsgGUID: cQEGKFnJS2iLg8bvMGmuog==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40654013"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40654013"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:49:09 -0700
X-CSE-ConnectionGUID: 7W5Rz+1oReiTJeEWJLBxew==
X-CSE-MsgGUID: 0p4AMs0uRTqa9uaMxIwaLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="113451917"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2024 04:49:07 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: raag.jadav@intel.com, gustavo.sousa@intel.com, jani.nikula@linux.intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 0/2] drm/i915/display: Power request asserting/deasserting
Date: Thu, 31 Oct 2024 13:40:25 +0200
Message-ID: <20241031114027.225217-1-mika.kahola@intel.com>
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

 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  8 ++++
 drivers/gpu/drm/i915/display/intel_tc.c       | 45 +++++++++++++++++--
 2 files changed, 49 insertions(+), 4 deletions(-)

-- 
2.43.0

