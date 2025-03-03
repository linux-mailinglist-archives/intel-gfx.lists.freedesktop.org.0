Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90022A4BA08
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 09:57:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1168B10E368;
	Mon,  3 Mar 2025 08:57:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hzQ4dXnJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117D810E168;
 Mon,  3 Mar 2025 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740992253; x=1772528253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dcDWOBYNdIrMkvQZcZj2CrGJWyqcXAvi5tNj/omavns=;
 b=hzQ4dXnJwIPNJI0U03KTblM8svc3Dzb/eUs7y0CpfuZH5IxNGh7+wfPr
 dnjG28bmWp/nNa1ur2KNjPIuB9zjs4r+iXDXmMkeUAm7Hja4G6GWwgoGa
 FB0SO/kfhP2cj0Zg5Vb1G2sjIgRBjaLcJBS4hXdYVVgAWyW5RdCoOfURx
 obeqXr8jZ2SjKFR49pAZFNe1lN7SIA0/OArcMU9KXVNTINSNtowDtL+QE
 c7Mx8Ca7Y/YhkxTuHI1MdE+lO71t3bFSpy0MjNq465/ayFk5J5CoXBG3H
 rkc/pxTKF04VJjgrXMsXVXjdls0asPe50UJHhX5zWwH2hhppmPyZzdDji A==;
X-CSE-ConnectionGUID: x+24RjbZSPyvCwGp5p2z3Q==
X-CSE-MsgGUID: IfEtzDwkT4mV4jqdBms5xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="41770021"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41770021"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 00:57:30 -0800
X-CSE-ConnectionGUID: MWAi0K6fSLa2eeir0DOMPQ==
X-CSE-MsgGUID: Lyh4fVA5S2G00nybnazeYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="117949526"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 03 Mar 2025 00:57:28 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v5 0/8] LOBF enablement fix
Date: Mon,  3 Mar 2025 14:05:14 +0530
Message-Id: <20250303083522.845224-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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

v1: Initial version.
v2: Addressed review comments from Jani.
v3: Addressed review comments from Jouni.
v4: Addressed review comments received on v3.
v5: Addressed review comments received on v4.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (8):
  drm/i915/lobf: Add lobf enablement in post plane update
  drm/i915/lobf: Disintegrate alpm_disable from psr_disable
  drm/i915/lobf: Add fixed refresh rate check in compute_config()
  drm/i915/lobf: Update lobf if any change in dependent parameters
  drm/i915/lobf: Add debug interface for lobf
  drm/i915/lobf: Check for sink error and disable LOBF
  drm/i915/lobf: Add mutex for alpm update
  drm/i915/lobf: Add debug print for LOBF

 drivers/gpu/drm/i915/display/intel_alpm.c     | 143 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_alpm.h     |  11 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  29 +---
 7 files changed, 170 insertions(+), 31 deletions(-)

-- 
2.29.0

