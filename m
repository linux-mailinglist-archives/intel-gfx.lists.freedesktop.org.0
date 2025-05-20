Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC38ABD18F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D75510E549;
	Tue, 20 May 2025 08:14:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BIzEvihB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB7910E549;
 Tue, 20 May 2025 08:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728840; x=1779264840;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0YeQRahe1raq1YXdrhBrnEiflw+miOg0YS5u00Dwkjg=;
 b=BIzEvihBk6hVUoHNUtk3N/M5QnQ//der6A08RxIsDA2sPAWpZR2L4/rc
 VgMow1URahdHMYpqTnqvJ8dOWl3w8It9uOXaLeKkfBgWo3IMmG+M9Tzit
 2P4tzT5VxsORD0FM8ITHUVnKaVo/zJqnZL9Zavd0CKere80TVlvX5id90
 4T0uEX1HwfGw/B+9/RWMhkaBr5qsLy/fPASdryqC35E21j68vPzs1HtWQ
 8HWA3FFHagg6fbFscNSlCa6WddVXeEx+xC3wDmpPeOm4w8uUJfi9jPWBQ
 ZIsMvSIr5dAI7cAXI7+3t4hwSdKImU7idQCmmtM055s3ONrWil+5hJlAa w==;
X-CSE-ConnectionGUID: 4Ng5kv7dRse3pfb6LB9EKg==
X-CSE-MsgGUID: hNKjyEKPQXOGWJA4fH5rlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48764828"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208,223";a="48764828"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:14:00 -0700
X-CSE-ConnectionGUID: yKUqaUYKRSmiUCEex4glfQ==
X-CSE-MsgGUID: 2tSa74WYR9+smBjGQP780w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; 
 d="scan'208,223";a="144475954"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 20 May 2025 01:13:58 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v7 00/11] drm/xe/display: Program double buffered LUT registers
Date: Tue, 20 May 2025 13:25:26 +0530
Message-Id: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
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
 drivers/gpu/drm/i915/display/intel_color.c    |  73 ++++++----
 drivers/gpu/drm/i915/display/intel_color.h    |   2 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  40 ++++--
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 130 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h      |   3 +
 drivers/gpu/drm/i915/display/intel_dsb_regs.h |   2 +
 10 files changed, 207 insertions(+), 55 deletions(-)

-- 
2.25.1

