Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFF58AC317
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 05:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DEA61126F8;
	Mon, 22 Apr 2024 03:35:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nWd6TFcE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A6E1126F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 03:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713756928; x=1745292928;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1ZlIDD7rS64Vr6m276wm6/peIeF2X/CKZbIU2iR7e+8=;
 b=nWd6TFcE5rrk4GQzLoCZHm0512LoT0GhGPkP8oD1myL1E/R0YbcQq6cz
 Y6QWGnx4YkO/YV+Lts16Uj16EKXig36AorT2rKNeTzsmWKvHOvXZY8QPI
 lxAHY1SVGmxZKN6coJOpvvxzy226lZ5d0M1KJTi0m+J8d7A52neTY+Goa
 2Aahf57/I55m9GDsYNWSgOWP1IwB4T/uLJZNA5XgL6T2luBddndhhg4wd
 yXN/Kv7sjRamCI6rUeyF+JiU4pAlRxeHdcpFlM8ezdfi9RpPyqj0Wopk2
 2pUqxBGv5TzHxXzbXtgEjxnHO0ZmWA60gdwDe95/w/tyO9tyMG3Xdh3wZ g==;
X-CSE-ConnectionGUID: 245n/+XETpye0FQ2/qVgqA==
X-CSE-MsgGUID: fWK9l22yTx6VpniJRMBH0Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9158221"
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; 
   d="scan'208";a="9158221"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 20:35:27 -0700
X-CSE-ConnectionGUID: NFAN8iuBSUu9ZdFIujXyUQ==
X-CSE-MsgGUID: attmMvZCRVa3UbwfGrWgPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; d="scan'208";a="23907359"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Apr 2024 20:35:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 naveen1.kumar@intel.com, sebastian.wick@redhat.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/6] Enable Aux Based EDP HDR
Date: Mon, 22 Apr 2024 09:02:49 +0530
Message-ID: <20240422033256.713902-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

This series enables Aux based EDP HDR and backlight controls.
The DPCD written to are intel proprietary and are filled
based on the specs that were provided to TCON vendors.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (6):
  drm/i915/dp: Make has_gamut_metadata_dip() non static
  drm/i915/dp: Add TCON HDR capability checks
  drm/i915/dp: Fix Register bit naming
  drm/i915/dp: Drop comments on EDP HDR DPCD registers
  drm/i915/dp: Enable AUX based backlight for HDR
  drm/i915/dp: Write panel override luminance values

 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 .../drm/i915/display/intel_dp_aux_backlight.c | 139 ++++++++++++++++--
 4 files changed, 134 insertions(+), 17 deletions(-)

-- 
2.43.2

