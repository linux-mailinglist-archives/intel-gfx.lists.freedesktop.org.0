Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 295DCA17190
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 18:25:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD4910E461;
	Mon, 20 Jan 2025 17:25:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ReCI4bJ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D518710E461;
 Mon, 20 Jan 2025 17:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737393920; x=1768929920;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LOP1Yvj3Cnj04OJjRzfrS6m8pB5BmhLieaCdbMpCWrw=;
 b=ReCI4bJ6TtsR5Alrln1vVILqsycSSdSIB6O03cVoYGeZKb/hHzinX6km
 D12GdCggoqgkW0V4PxfXoUpExD5SY9GsPscAu9ZRix4T0/IKyb/KhlWHc
 A7gPd2aos7AzV7egAnk8bA0hPWdO0KpKPyLeO96arUAS/jXk+OCrnv94h
 PDRDnQTsqu1jQ9vTTs9HjSB9214MYg6d71/GCzuBhztK6v1hEXYxY0AlT
 ULiVKsqBTf0MhGOAMgf8RT5N6UF8wofS/m5+S8MoJAj76IUemM9b/GAFH
 xwxezpcQ/olgeHiyP0a3aqz4vD8wQC1p0EGyYRRhdVONiTBtWrd+DKweh g==;
X-CSE-ConnectionGUID: ONHKXUoVR2q4gli9WZ64aQ==
X-CSE-MsgGUID: jlACqfLQQdqmzgO/0by9CA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48462463"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48462463"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 09:25:19 -0800
X-CSE-ConnectionGUID: mcrA7fwOS1+8SM667uaW5w==
X-CSE-MsgGUID: 7aDKj1ucSlq/b5WR4ClDxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="107121030"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa010.fm.intel.com with ESMTP; 20 Jan 2025 09:25:17 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v9 0/7] Check Scaler and DSC Prefill Latency Against Vblank
Date: Mon, 20 Jan 2025 22:52:01 +0530
Message-ID: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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
2.48.1

