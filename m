Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA05C8A081D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 08:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F24A010EE49;
	Thu, 11 Apr 2024 06:11:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQwIWwKb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B7610EE46
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 06:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712815917; x=1744351917;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZOa+qYhsuvTZXIGWYG0PywGH36IWnqunb2Fn5pVPJSQ=;
 b=WQwIWwKbfxHi8zOgzGrPrdU6CYaSYzhDjWTILwexxPwPpMh6AamufhKB
 oR6m71s95PVa/A2MD/N+yfLm2e4+nxb3h8pI70Uu5yVBlHOMPL0iBZIX0
 rZAvzYoqqeBiW+0aY5Hd3MIkQ+TOgdnJhuGTyQU98VeV8XvVQRpSzoXW2
 7OxEgzqVxGZ66j/oX8duarmLfzBXXVKvKyo0W0eOtHGlkVakScazwAERk
 faJuqT4AzHvtBejmtZFP5iYtMnGcpPinmQhDfmbhoBMON7qxrzC7k2md7
 cIf7RZOqP8cgFN2KziwbG/3IZveNlV1AaTPXLHjoUpgwec0zTZR3VI4xu A==;
X-CSE-ConnectionGUID: rKcHA1VISomr+3gAwi8qoA==
X-CSE-MsgGUID: dPIzynzIQ+yryKzhKhvQBw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8384947"
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; 
   d="scan'208";a="8384947"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 23:11:56 -0700
X-CSE-ConnectionGUID: 50rqjv65Q6iYIKNddY0NTA==
X-CSE-MsgGUID: 8JNapRswRX+HuAvhOwnxTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="58226389"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa001.jf.intel.com with ESMTP; 10 Apr 2024 23:11:53 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 naveen1.kumar@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/6] Enable Aux Based EDP HDR
Date: Thu, 11 Apr 2024 11:39:19 +0530
Message-ID: <20240411060925.475456-1-suraj.kandpal@intel.com>
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
 .../drm/i915/display/intel_dp_aux_backlight.c | 146 ++++++++++++++++--
 4 files changed, 141 insertions(+), 17 deletions(-)

-- 
2.43.2

