Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6966CA7FEB9
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A214C10E659;
	Tue,  8 Apr 2025 11:15:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XF3cbvOm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616DD10E645;
 Tue,  8 Apr 2025 11:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110935; x=1775646935;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HOJcZPCm3AvlMhNHfFAqN826v6d0l5Rwkzoe1jgo1ko=;
 b=XF3cbvOmQHovAn907CwilHMRmPVrx45aIqiCpkDvUZcXlOqZD6y2BgZz
 +lhbxex201VvOqHFqhlnustZuSwHfH52BhFQ2XLJS+TbZNNRC0se21HvI
 6MF4wqg2IFTMRNz4B/H3H+eSSOricvdhw2wPMasj25ja/wn2XDur1RVAg
 fyLSrTnx5IuSJ5DNFA2yTsVeHXSkwY+zH3Qoa9zLxWFfyQ2BXiPNZWHBP
 PXspFa/1SaZNoCKWSTz/7dKlOh/y9M5vgESUAjs7XMVrlLZixp6gV6scA
 k8vyesgl4YIUZ1IGnShWGqDUoLHp0EDWIIKJ2Osik9e6Aa4Pa2C8xYiIT Q==;
X-CSE-ConnectionGUID: tIIcKIQdQUK2kvX+EX0Ulg==
X-CSE-MsgGUID: RoDHSvz/TeGDPTRIQMjwJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655907"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208,223";a="45655907"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:34 -0700
X-CSE-ConnectionGUID: Zh1w2/WsR1qDVOG3zKBgVA==
X-CSE-MsgGUID: R5Uonlw4RyOezSVNA1YR/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; 
 d="scan'208,223";a="133209951"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:32 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 00/11] drm/xe/display: Program double buffered LUT registers
Date: Tue,  8 Apr 2025 16:30:11 +0530
Message-Id: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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
  drm/i915: use GOSUB to program doubled buffered LUT registers
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
 drivers/gpu/drm/i915/display/intel_display.c  |  40 +++---
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 125 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h      |   3 +
 drivers/gpu/drm/i915/display/intel_dsb_regs.h |   2 +
 10 files changed, 202 insertions(+), 55 deletions(-)

-- 
2.25.1

