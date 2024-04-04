Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA75897DFC
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 05:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B9F1131A5;
	Thu,  4 Apr 2024 03:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPHnM7v4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D531131A4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 03:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712201519; x=1743737519;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fSs6lu5XbmKYENP89Y5oR1mZeqC8zjoLNcszpQJv2jE=;
 b=aPHnM7v4flMQaurui3E0WhyQzquOI5zFQLLB9kjJSmiooHEVX6bF7SZB
 olvnbxSx76CSNC+uKEkJXK4ZkqUA1gNz6OEl7gc1iiPQWSp317zUtctTQ
 oUtVWVoIItOIPgoMpv/98xG0DOr6/CdEjjNze4ywKEn+7tSKo2h8BPZXx
 LBi/QIp3D6vcTnShSY7Ca+lyMz9XZ+MMzBoVxiJK0os3dV6cKNCUU+f14
 yoLtjbsCUBtYU6Bn4SUNgreAyKft2YMyzpX+ZLah3UBarRu68jryhzDJ5
 AwyThkdTP25eCjl4OOp2vfVN0trh5ASLrkhyyfZZvxKviPXFKSgsPMLMI Q==;
X-CSE-ConnectionGUID: 0C2S8O50RROdqMUvqbF+rA==
X-CSE-MsgGUID: tRfV8AesRzyIT4kP9knyjw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11282616"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11282616"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 20:31:58 -0700
X-CSE-ConnectionGUID: ATcCrN+BReCjH4z1AEBrVg==
X-CSE-MsgGUID: lXDv3DTfTO6EpP4bYA9OIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18747713"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 03 Apr 2024 20:31:55 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 ville.syrjala@intel.com, naveen1.kumar@intel.com,
 sebastian.wick@redhat.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/7] Enable Aux Based EDP HDR
Date: Thu,  4 Apr 2024 08:59:24 +0530
Message-ID: <20240404032931.380887-2-suraj.kandpal@intel.com>
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

Suraj Kandpal (7):
  drm/i915/dp: Make has_gamut_metadata_dip() non static
  drm/i915/dp: Add TCON HDR capability checks
  drm/i915/dp: Fix Register bit naming
  drm/i915/dp: Fix comments on EDP HDR DPCD registers
  drm/i915/dp: Enable AUX based backlight for HDR
  drm/i915/dp: Write panel override luminance values
  drm/i915/dp: Limit brightness level to 20

 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
 .../drm/i915/display/intel_dp_aux_backlight.c | 149 ++++++++++++++++--
 4 files changed, 144 insertions(+), 17 deletions(-)

-- 
2.43.2

