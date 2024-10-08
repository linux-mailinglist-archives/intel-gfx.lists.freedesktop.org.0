Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D167D995A1B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:37:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D65910E260;
	Tue,  8 Oct 2024 22:37:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYOHBRf9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6219210E260;
 Tue,  8 Oct 2024 22:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728427065; x=1759963065;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bdU3TyCu49tfS3r9NXNJaUMOCqSZH+wBf/r4Yni78xc=;
 b=JYOHBRf910KIHFwfyeQI7zJp8sdeephg5+BSu4XxHvDb+fmdAflpH76c
 StuQyNHRYoeKmJdQZDepUn/25Vj2er0XHFWxhGbjpZKk+8/+qCbHFzrZ9
 Nn+z6ETJ9fYFGcQBFQcL4L5fTC5CVWn3xuLbbi0+PrIlAaANoaYNgpwdV
 xxDOkYjwGMTRzb11DcXm72sBwJC6BHzaA/iq7j0OpYJjbly4fNPr0cITQ
 hRwyEB0FqKEwg4PU0ZC5bUPvWQDUB4Wo+TZvPcz2c0TnisRVF9cJxHtE0
 y/Uv/GHKJiQPQR/R5GvRc2d5/wqCUZHSUrnF1h7o4txJ7zX6+zD7jD1Jb Q==;
X-CSE-ConnectionGUID: 9EgBwPrcRDKJSQiGmQWciQ==
X-CSE-MsgGUID: x1PAq4HLS9uwJO8cSySabQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39037278"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39037278"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:45 -0700
X-CSE-ConnectionGUID: eKBCK6m9QQOhK+l5c0HsHA==
X-CSE-MsgGUID: 3UdWbYI4TDaBragBVnXt1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80811824"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:44 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 00/10] Add xe3lpd edp enabling
Date: Tue,  8 Oct 2024 15:37:31 -0700
Message-ID: <20241008223741.82790-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
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

This series defines the xe3lpd definition, which is functionally
identical to the xe2lpd definition for now. This series then adds
additional requirements mostly for edp output of display through.
Additional patches will be required for display and will follow. 

Clint Taylor (1):
  drm/i915/xe3lpd: reuse xe2lpd definition

Matt Roper (3):
  drm/i915/xe3lpd: Adjust watermark calculations
  drm/i915/xe3lpd: Add new display power wells
  drm/i915/xe3lpd: Update pmdemand programming

Radhakrishna Sripada (1):
  drm/i915/xe3lpd: Add cdclk changes

Suraj Kandpal (5):
  drm/i915/xe3lpd: Add macro to choose HDCP_LINE_REKEY bit
  drm/i915/xe3lpd: Add C20 Phy consolidated programming table
  drm/i915/xe3lpd: Add new bit range of MAX swing setup
  drm/i915/xe3lpd: Add check to see if edp over type c is allowed
  drm/i915/xe3lpd: Add powerdown value of eDP over type c

 drivers/gpu/drm/i915/display/intel_alpm.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  56 +++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  29 +++-
 .../drm/i915/display/intel_display_device.c   |   6 +
 .../drm/i915/display/intel_display_device.h   |   2 +
 .../i915/display/intel_display_power_map.c    | 135 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  16 +++
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  61 +++++---
 drivers/gpu/drm/i915/display/intel_pmdemand.h |   4 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h |   4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  18 ++-
 drivers/gpu/drm/i915/i915_reg.h               |   6 +-
 include/drm/intel/i915_pciids.h               |  12 ++
 15 files changed, 319 insertions(+), 38 deletions(-)

-- 
2.45.0

