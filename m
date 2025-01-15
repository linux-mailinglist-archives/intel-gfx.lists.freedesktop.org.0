Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D01E4A12722
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 16:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F74510E6ED;
	Wed, 15 Jan 2025 15:20:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hx3DUiyC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3FE610E6ED;
 Wed, 15 Jan 2025 15:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736954430; x=1768490430;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YRqFVfsTUOCwdT9XRBDqYrQXefadYVreQhUOUFxVxmE=;
 b=hx3DUiyCNj+ZVVhGopahKoik8TkfIiZm0wm+wlg4hjJbyBNBSHDHACGh
 sl2dc20szGXM7iqAmeBeyKIylAUHRPbhgiJuux+bpIOCkaX+PqH0N2cbP
 SVo00D180wpQSfuylL4HhuP8YlXnwB6Ta8v/ahnCz6eA7jAq2wOUKtC57
 JpB6ck9PCq5tPHaW9usvq1h8ljU0fgohyiS8izJp99wCAn94ljOs2UhxW
 zxxG96C56Ub2EAafzfCIUnxzfYCwiABkCQd30rADXHgsbzWuHcbsLiL3F
 NEDSi1+KM50PxT3nFuaib0A7SPe0el2/DeyfIikQMhxQaOFd+nhfmK55N g==;
X-CSE-ConnectionGUID: NvmcHCdbTgaJyep04hJMbw==
X-CSE-MsgGUID: hihKjfviQCSTL8DOP6LAMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="24894450"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="24894450"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 07:20:29 -0800
X-CSE-ConnectionGUID: jG7W5FKHTkS4r+7QLzlasQ==
X-CSE-MsgGUID: UxJEvx1/TrCORJTBpsBZ9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110298373"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 15 Jan 2025 07:20:27 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v5-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v5 0/7] Check Scaler and DSC Prefill Latency Against Vblank
Date: Wed, 15 Jan 2025 20:47:07 +0530
Message-ID: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
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

Compute and check if dsc and scaler prefill latency is sufficient with
respect to vblank.

Previous Revision Reference:
https://patchwork.freedesktop.org/series/141203/
https://patchwork.freedesktop.org/series/142745/

Mitul Golani (7):
  drm/i915/scaler: Add and compute scaling factors
  drm/i915/scaler: Use crtc_state to setup plane or pipe scaler
  drm/i915/scaler: Refactor max_scale computation
  drm/i915/scaler: Compute scaling factors for pipe scaler
  drm/i915/scaler: Limit pipe scaler downscaling factors for YUV420
  drm/i915/scaler: Check if vblank is sufficient for scaler
  drm/i915/dsc: Check if vblank is sufficient for dsc prefill

 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 123 ++++++++++++------
 drivers/gpu/drm/i915/display/skl_watermark.c  |  84 +++++++++++-
 3 files changed, 171 insertions(+), 38 deletions(-)

-- 
2.48.0

