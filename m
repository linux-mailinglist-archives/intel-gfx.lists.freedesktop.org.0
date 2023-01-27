Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D45F67F14F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 23:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E35610E2D6;
	Fri, 27 Jan 2023 22:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E9410E2E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 22:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674859407; x=1706395407;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y+8WmGRatGzcOf9Di2tYJmy7BidlA2ez9YJTV1YCiZ4=;
 b=OTj8KMjgNrXmYXw5znsNMCOwWCEDDGf96aLV6YnJIfQ0sJNVr5DL4zwk
 m26o6DqIu8yDL86e2DBHnMUrhaUr8PppzGi8JLifjbmFhR10WHbo9Zhcb
 xfmQnjPcU5tWJCl4wMjDmw9AfsYtbxxEOIEN55ACoznjw+LXUMWkVBHPK
 nPK0kqPlqDUI8+4AHeSsOZBJU2AQhp3AGN8WmsDziivgeEOQ/FaN1KxOu
 Xyn8nZTmG4ljrAtLrke/SXy4v8AacNSulRP+bxk7QZDCHpBYvjE8P4tLx
 wLJJzlikqd+fUFBl7UZvNaG1J8g46VI6gGAOXPa5lSQHL4KIyqDLLKpOX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="328501624"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="328501624"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 14:43:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="771727406"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="771727406"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 14:43:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 14:43:10 -0800
Message-Id: <20230127224313.4042331-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Drop TGL/DG1 workarounds for pre-prod
 steppings
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

As described in the comment on intel_detect_preproduction_hw(),

   Our policy for removing pre-production workarounds is to keep the
   current gen workarounds as a guide to the bring-up of the next gen
   (workarounds have a habit of persisting!). Anything older than that
   should be removed along with the complications they introduce.

TGL and DG1 are well past the point where we should move forward with
removing the hardware workarounds specific to internal/pre-production
hardware.

JSL/EHL appear to have productized A0 hardware, so all workarounds for
those platforms will stay in the driver forever.  We can probably remove
some pre-production workarounds for RKL and ADL at this point as well,
but the bspec doesn't have details about which steppings were only used
in pre-production, so we'll need to track down that information later.


Matt Roper (3):
  drm/i915/tgl: Drop support for pre-production steppings
  drm/i915/dg1: Drop support for pre-production steppings
  drm/i915/dg1: Drop final use of IS_DG1_GRAPHICS_STEP

 .../drm/i915/display/intel_display_power.c    |  6 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 26 ------
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 86 +------------------
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/i915/i915_drv.h               | 13 ---
 drivers/gpu/drm/i915/intel_pm.c               | 16 ----
 8 files changed, 10 insertions(+), 143 deletions(-)

-- 
2.39.1

