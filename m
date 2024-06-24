Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EEB91420F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320E110E348;
	Mon, 24 Jun 2024 05:35:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dXVvnHLB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A993210E348
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719207339; x=1750743339;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qYX4XSM5eYw2oxOudGc8MfR8HnyRBMvAhO3MlYo2HvY=;
 b=dXVvnHLBk4b/MqVCT1odZqjuz6OLyxSZQElySolw0Sz1JkpVHUOTYYaX
 dZdFeAVdkBRXdTxCDoO1LTnH1fiztr2Y/yUME3fLq046ifDuEqx/ki0PX
 ouyY9BjSaBw8KXbDbT3+UfZhw9OFL74ojuk3An/JRSbECA98wyBMAAEdu
 eUIL4UWZ5cXjr2OheywNe2561Hu/hboc5kUSkCa5qT/QJIEMci//vgsh4
 9nxZ7NIW8KBrTindior2QY1Ht6sKD6GPMuSY7RBq7rz8SU9IvUqxlgZpE
 lsYQhXMkA+kaoKZh/q7vfh7ibRM4k3ANfp09/qo1CTrchCmPC7yYBVoGj A==;
X-CSE-ConnectionGUID: gvxK/USfTj+dDwJKxXQrww==
X-CSE-MsgGUID: bEfVs2r1ToyakTRh1C3TNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="27567216"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="27567216"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:38 -0700
X-CSE-ConnectionGUID: y0/ZgtRhSa+CgXxlgx+fSQ==
X-CSE-MsgGUID: 9vQFx9QcRqmbevuem5zCzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="42994148"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 0/9] Use VRR timing generator for fixed refresh rate modes
Date: Mon, 24 Jun 2024 11:05:51 +0530
Message-Id: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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

Even though the VRR timing generator (TG) is primarily used for
variable refresh rates, it can be used for fixed refresh rates as
well. For a fixed refresh rate the Flip Line and Vmax must be equal
(TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
dependencies between the VRR timings and the legacy timing generator
registgers.

This series is an attempt to use VRR TG for fixed refresh rate.
For platforms MTL+, always go with VRR timing generator for both fixed and
variable refresh rate cases. There are still few cases that need plumbing
like having PSR/PSR2 with VRR timing generator.

Rev2:
-Added support from MTL+ and for HDMI too.
-Changed VRR VSYNC programming which is required for HDMI.
-Modified vrr compute config for bigjoiner case. (Still to be tested).

Ankit Nautiyal (9):
  drm/i915/dp: fix the Adaptive sync Operation mode for SDP
  drm/i915/display: Get VRR compute config before get_transcoder_timing
  drm/i915/display: Add member fixed_rr to denote Fixed refresh rate
    with VRRTG
  drm/i915/dp: Set FAVT mode in DP SDP with fixed refresh rate
  drm/i915/vrr: Avoid sending PUSH when VRR TG is used with Fixed
    refresh rate
  drm/i915/vrr: Compute vrr vsync if platforms support it
  drm/i915/vrr: Handle joiner with vrr
  drm/i915/hdmi: Use VRR Timing generator for HDMI
  drm/i915/vrr: Use VRR timing generator whenever panel supports VRR

 drivers/gpu/drm/i915/display/intel_display.c  | 10 +-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 93 ++++++++++++-------
 5 files changed, 73 insertions(+), 42 deletions(-)

-- 
2.40.1

