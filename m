Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA9E49F8A4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD69410E71A;
	Fri, 28 Jan 2022 11:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E2C10E6FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370559; x=1674906559;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1mfUkMILhBA7P+kzuYmazMxB2QC2zwAVgxnHJ7HoNcY=;
 b=DRLOJrW/abGKxMrlJtkV6EQSMAaSXh/Mf3RpItI2jp76LiN14aqJNGE8
 p3AqbXrT0pjIEJV5O5ZwoJRTcNuZIhHjpJ5t9z/ULw+wBNwSDSCNNUnwr
 e+XjuvB0ds+DMwIUHydchHzLKvAWNw2MwDUml/VRS8J1mtHdorLN21bFQ
 44z9OrqUe7qGWVQLV5ENU6I96CVsDFAhrpA+nrFR7WKYHnqFNaASpllD/
 eCGmcLmssnUM96OFFnvGdQLXmtWe1PwNlMbnaIB1zdCNatx356UqO1KZb
 yuJ/vXnKDkQXpsYk+tBTpUraLIFC4hAoyW0sOoX8UDrsvExm8v2S8yIQL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420909"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420909"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712804"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:17 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:48:55 +0200
Message-Id: <20220128114914.2339526-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/19] drm/i915: Refactor the display power
 domain mappings
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

This patchset moves the per-platform display power domain->power well
mapping descriptors to a separate file and simplifies them by sharing
descriptor data among port power well instances and platforms where
possible.

The power well and domain names are also sanitized to match the actual
specification terminology. For this the patchset removes the aliasing
among the display power domain enum values, which in turn required
extending the u64 domain mask to a bitmap.

I also pushed the changes to:
https://github.com/ideak/linux/commits/power-domain-refactor

Imre Deak (19):
  drm/i915: Fix the VDSC_PW2 power domain enum value
  drm/i915: Unexport the for_each_power_well() macros
  drm/i915: Move the i915_power_well_regs struct into
    i915_power_well_ops
  drm/i915: Move the power domain->well mappings to
    intel_display_power_map.c
  drm/i915: Move the dg2 fixed_enable_delay power well param to a common
    bitfield
  drm/i915: Move the HSW power well flags to a common bitfield
  drm/i915: Rename the power domain names to end with pipes/ports
  drm/i915: Sanitize the power well names
  drm/i915: Convert the power well descriptor domain mask to a list
  drm/i915: Convert the u64 power well domains mask to a bitmap
  drm/i915: Simplify power well definitions by adding power well
    instances
  drm/i915: Allow platforms to share power well descriptors
  drm/i915: Simplify the DG1 power well descriptors
  drm/i915: Sanitize the ADL-S power well definition
  drm/i915: Sanitize the port -> DDI/AUX power domain mapping for each
    platform
  drm/i915: Remove the aliasing of power domain enum values
  drm/i915: Remove the ICL specific TBT power domains
  drm/i915: Remove duplicate DDI/AUX power domain mappings
  drm/i915: Remove the XELPD specific AUX and DDI power domains

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |    3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |    3 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |    8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |    5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  149 +-
 drivers/gpu/drm/i915/display/intel_display.h  |    4 +-
 .../drm/i915/display/intel_display_power.c    | 2904 ++---------------
 .../drm/i915/display/intel_display_power.h    |  133 +-
 .../display/intel_display_power_internal.h    |  106 +
 .../i915/display/intel_display_power_map.c    | 1848 +++++++++++
 drivers/gpu/drm/i915/display/intel_tc.c       |    4 +-
 12 files changed, 2263 insertions(+), 2905 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_internal.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_power_map.c

-- 
2.27.0

