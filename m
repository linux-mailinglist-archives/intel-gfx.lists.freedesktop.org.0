Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEA0C35F7C
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBE2810E756;
	Wed,  5 Nov 2025 14:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TErqigL/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D60310E750;
 Wed,  5 Nov 2025 14:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351690; x=1793887690;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LOtcT25SjmlrzeqDgSMux7FXBqFmRPLIbyqTbWulEH8=;
 b=TErqigL/DdVMiP3tVFvgcLVH0Af16uj6gYv2lpUPFHKvCZBErkspw270
 zOBkQaSIvRT5r7VaaZzlF2z8s2Mdc0hmCoB4KNStVUpNhZZ/PRPtlnRjJ
 a9rk8XOk/rQPEH7/lxQxCeMjZGAMaqTDPsoJGFXQGeA71kbTGaMk//IZU
 8fbgCPZhmFjJK0OfKtccVirXeMGDfK+XYSG8dF04wVZZJ9Bj89sRAaqgH
 7CMd2TuvzsJW/53i142PUzRVzyUW0FT4ZBrIo6qhkDRkFitzUPoI+hhw3
 IJRj8eozfaJCiNSQYMwMxW2XC/5IWGvmBUZk61KVl3WhUWWnUcQyRSMvR w==;
X-CSE-ConnectionGUID: vBtblj/mSi6vKaJKCCAWeg==
X-CSE-MsgGUID: bJLGjaArRUm7ASz++AOW4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348183"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348183"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:10 -0800
X-CSE-ConnectionGUID: ou2ehYsQTIu/1fly1KgGDQ==
X-CSE-MsgGUID: bvCZi/ljRp6v5ak2uw31DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562908"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:08 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 00/17] Reviewed patches from: [PATCH v3 00/29] drm/i915/display:
 Add initial support for Xe3p_LPD
Date: Wed,  5 Nov 2025 11:06:49 -0300
Message-ID: <20251105140651.71713-19-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
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

This series contains patches from [1] already containing r-b and that can be
applied while the other patches are still under review.

This is being sent for a final CI check before applying them.

[1] https://lore.kernel.org/all/20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com/

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

---
Ankit Nautiyal (1):
  drm/i915/xe3p_lpd: Drop support for interlace mode

Gustavo Sousa (7):
  drm/i915/display: Use braces for if-ladder in intel_bw_init_hw()
  drm/i915/xe3p_lpd: Add CDCLK table
  drm/i915/xe3p_lpd: Load DMC firmware
  drm/i915/xe3p_lpd: Extend Wa_16025573575
  drm/i915/xe3p_lpd: Reload DMC MMIO for pipes C and D
  drm/i915/dram: Add field ecc_impacting_de_bw
  drm/i915/xe3p_lpd: Always apply WaWmMemoryReadLatency

Juha-pekka Heikkila (1):
  drm/i915/xe3p_lpd: Don't allow odd ypan or ysize with semiplanar
    format

Luca Coelho (1):
  drm/i915/wm: don't use method1 in Xe3p_LPD onwards

Matt Atwood (1):
  drm/i915/xe3p_lpd: Update bandwidth parameters

Matt Roper (1):
  drm/i915/xe3p_lpd: Drop north display reset option programming

Ravi Kumar Vodapalli (1):
  drm/i915/xe3p_lpd: Adapt to updates on MBUS_CTL/DBUF_CTL registers

Sai Teja Pottumuttu (4):
  drm/i915/xe3p_lpd: Add Xe3p_LPD display IP features
  drm/i915/xe3p_lpd: Expand bifield masks dbuf blocks fields
  drm/i915/xe3p_lpd: Horizontal flip support for linear surfaces
  drm/i915/xe3p_lpd: Remove gamma,csc bottom color checks

 drivers/gpu/drm/i915/display/intel_bw.c       | 43 +++++++++------
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 44 +++++++++++++++-
 drivers/gpu/drm/i915/display/intel_color.c    | 13 ++---
 drivers/gpu/drm/i915/display/intel_display.c  | 14 ++---
 .../drm/i915/display/intel_display_device.c   |  1 +
 .../drm/i915/display/intel_display_power.c    |  3 ++
 .../gpu/drm/i915/display/intel_display_wa.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 13 +++--
 drivers/gpu/drm/i915/display/intel_plane.c    |  3 ++
 .../drm/i915/display/skl_universal_plane.c    |  3 +-
 .../i915/display/skl_universal_plane_regs.h   | 12 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  | 25 +++++++--
 .../gpu/drm/i915/display/skl_watermark_regs.h | 52 ++++++++++---------
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 drivers/gpu/drm/i915/soc/intel_dram.c         |  4 ++
 drivers/gpu/drm/i915/soc/intel_dram.h         |  1 +
 16 files changed, 166 insertions(+), 69 deletions(-)

-- 
2.51.0

