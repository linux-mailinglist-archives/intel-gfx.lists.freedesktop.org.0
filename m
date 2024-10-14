Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DA399C088
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 09:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38E010E0DD;
	Mon, 14 Oct 2024 07:00:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAAMl3iN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABF910E0DD;
 Mon, 14 Oct 2024 07:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728889218; x=1760425218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YqN/hFmhp0Wsr1QESwyDq0MTFch54KgMs2/Qdhk4quE=;
 b=HAAMl3iNObBWAFgBML6SRdL4+nrzNUo/uGcSjd/sCoru7jTI9ER9tj41
 oR2/kAyMs+b/BxPUCi5rMikMjhK1S6iDtBhkSKMZ2AEaQn7AqSVZwCxu9
 MhVKIYwa1ne5tfcrgIJIJsPgsOQxTYIpualNEKRxn46nGzdaQWvV12Y3N
 e9i7KEIr3KynBOAg6xQaeyl9zd6PAplVzDE7THWGc6BctMClK1evCfnOz
 /k8bYhCWvcy3n4aP4jGyPmTWIyxmR7u8bFmiJ5zcVTkWVfuMpDVbAbtOD
 KMUzT1i+xuSPSrwOOBFflnw11wNum+d8XIeFqheZekXR0jm7C2AssR/us g==;
X-CSE-ConnectionGUID: HTuuKGBNTIOqh/0SFq/kAg==
X-CSE-MsgGUID: OASQZIkQTcmDeHcRJoW5wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39337964"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39337964"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:18 -0700
X-CSE-ConnectionGUID: t17dbTO7Si29S3YZ/7hk4A==
X-CSE-MsgGUID: 8lxw3dqsQAK2N3KiZzkUqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="78310805"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 00:00:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/9] Add support for 3 VDSC engines 12 slices
Date: Mon, 14 Oct 2024 12:32:17 +0530
Message-ID: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

For BMG 3 VDSC engines are supported and each pipe can then support
3 slices. For Ultra joiner cases for modes like 8k@120 Hz we require
ultrajoiner and 3 x 4= 12 slices.
Add support for 3 VDSC engines and 12 DSC slices. Along with this
Pixel replication and Odd pixel considerartions are also required.

Ankit Nautiyal (9):
  drm/i915/display: Prepare for dsc 3 stream splitter
  drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
  drm/i915/vdsc: Add register bits for VDSC2 engine
  drm/i915/vdsc: Add support for read/write PPS for DSC3
  drm/i915/dp: Add check for hdisplay divisible by slice count
  drm/i915/display: Add DSC pixel replication
  drm/i915/dp: Compute pixel replication count for DSC 12 slices case
  drm/i915/dsc: Account for Odd pixel removal
  drm/i915/dp: Add support for 3 vdsc engines and 12 slices.

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +-
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  75 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 105 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  22 +++-
 8 files changed, 200 insertions(+), 20 deletions(-)

-- 
2.45.2

