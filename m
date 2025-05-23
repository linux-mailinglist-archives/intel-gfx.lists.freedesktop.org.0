Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F574AC1D23
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 08:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E172910E1E9;
	Fri, 23 May 2025 06:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BukJN/Qd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67DF010E1E9;
 Fri, 23 May 2025 06:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747982345; x=1779518345;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CJTCDhxM/pKmSiBht3fHynU6ani+HFMQRQySBMSpXg8=;
 b=BukJN/QdCJ3C/1XhZANzidQa+3YvtvNIw1OC2CP5ohCqJlN6ZcYSS4zs
 uFWpgCw5Hz9iDXGw+anbgkjJ/xeISb0yOLOHMJrBxQe9m3Q/Qusm99PUW
 3haXME9gja+zY149a5WXNp1BN9at3PTUTCValonq1/MlIchivuXnMaAOn
 CY7Akg3P6tauXWUqAhx0Q/b5iKJpu1fp67kmIhKIbGRZiY52CwqaIGMeC
 vTdJU4TMxEF02Vy/qTHWSPzAQVpg06t2Le56g5PGvWQsUjzYp5FRGNfxy
 nL3XLDdUqEyrDW/Lj6+HBx7emCIN5F8azr8tbYTmpjZnspTtWGQGQAEly g==;
X-CSE-ConnectionGUID: zeOX1Tb2TrOowZtWxXCKLQ==
X-CSE-MsgGUID: NrxBQxYRS4+jSchJ2jfB2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67592204"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208,223";a="67592204"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:39:02 -0700
X-CSE-ConnectionGUID: HrOWETj5SEm57yAlHsgmYw==
X-CSE-MsgGUID: AUDD5rMQSPej/+QGFjDFkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; 
 d="scan'208,223";a="171985291"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 23:39:00 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v8 00/11] drm/xe/display: Program double buffered LUT registers
Date: Fri, 23 May 2025 11:50:30 +0530
Message-Id: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From PTL, LUT registers are made double buffered. This helps us
to program them in the active region without any concern of tearing.
This particulary helps in case of displays with high refresh rates
where vblank periods are shorter. Add MMIO and DSB path to program them.

Chaitanya Kumar Borah (7):
  drm/i915/dsb: add intel_dsb_gosub_finish()
  drm/i915/dsb: Add support for GOSUB interrupt
  drm/i915: s/dsb_color_vblank/dsb_color
  drm/i915/display: use GOSUB to program double buffered LUT registers
  drm/i915: Program DB LUT registers before vblank
  drm/i915/color: Do not pre-load LUTs with DB registers
  drm/i915: Disable updating of LUT values during vblank

Ville Syrjälä (4):
  drm/i915/dsb: Extract intel_dsb_ins_align()
  drm/i915/dsb: Extract assert_dsb_tail_is_aligned()
  drm/i915/dsb: Extract intel_dsb_{head,tail}()
  drm/i915/dsb: Implement intel_dsb_gosub()

 drivers/gpu/drm/i915/display/intel_atomic.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  73 ++++++---
 drivers/gpu/drm/i915/display/intel_color.h    |   2 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  40 +++--
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 146 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h      |   3 +
 drivers/gpu/drm/i915/display/intel_dsb_regs.h |   2 +
 10 files changed, 223 insertions(+), 55 deletions(-)

-- 
2.25.1

