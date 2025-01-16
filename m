Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 338C2A13F8D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C016410E9D0;
	Thu, 16 Jan 2025 16:34:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KiA+OL3w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72EAE10E9CC;
 Thu, 16 Jan 2025 16:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737045284; x=1768581284;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f9J4Q1jYVCxmPvmSWp8DUHOG0qgs55Q5LUbEDKt1utg=;
 b=KiA+OL3wREeWtW+6TnZwEAqtPwkY0ZDAFzv7fV3dBcqtt1hV9SNloGuD
 4GyhL3auDK57cAhRVG1gloORYprpzOSspwzrmaQBRGZO35PSsOv1Jwqjq
 TdS3tGf5JagMEUbKJ/dL0mziXop/ZiYWF0XPivQUuXUJ/zHcPH3HGrCWx
 Jko1yeu/GV2EaBQmCQK9nxynKx1TuyBqOrxtCGQwLv8oVIkS1S0QjEscK
 sYh0x8E9icG4JMXL4qUt3Py7+sueu8KkIOpkDtCFkLsjydSCMJwpvUaf8
 2khyjMK8Vm2vY7iCO/BZA5gNqrLowwgOVWVVSVOAwGASuLW8+CIzV7ttg A==;
X-CSE-ConnectionGUID: /Z7WllhATn2XsqTUTkeI1A==
X-CSE-MsgGUID: iJuueBVrQIiGzcRSSBzYsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37602023"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37602023"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:34:44 -0800
X-CSE-ConnectionGUID: CyT1EGH+SB2YfQWBl1NM9w==
X-CSE-MsgGUID: dG56ffh/QBSF8YvTxGFXJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109600772"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 16 Jan 2025 08:34:41 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v6 0/7] Check Scaler and DSC Prefill Latency Against Vblank
Date: Thu, 16 Jan 2025 22:01:23 +0530
Message-ID: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/skl_watermark.c  |  67 +++++++++-
 3 files changed, 154 insertions(+), 38 deletions(-)

-- 
2.48.0

