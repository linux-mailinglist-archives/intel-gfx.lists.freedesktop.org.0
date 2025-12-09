Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29E0CAF06E
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 07:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3989710E098;
	Tue,  9 Dec 2025 06:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XeUfzt4M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 331A410E098;
 Tue,  9 Dec 2025 06:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765261752; x=1796797752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hY5ID9L/XEWgajVuyqO8iC+ZX0O4uIaw4c6+YEFGKFA=;
 b=XeUfzt4MxQpQ6FJOa0pZDuv9fiO9AWD3r7Fn5SHO6i4ig0SOA+uPEcva
 5gPGIRIBIFs5CNyVjsgd+gMxDSsZUdp4xArtuvS5XKCKjL1Ec2J2H8GSC
 7dY+PLRq40NwqirC8/idOwJsjtYDwHUittLFsmV2d9KZEKb2VVCUVJ2og
 Bq2XdcnFDGvpLq5souIMxkdUL0BCamUXDUKHJnGEipFXShwJ6hDwQF4WU
 CKCljNi+VpfG/gefawwIdhllItcoJ0zGMSOI4OQCwxt9ZfUR4/+BwTOJF
 w/VBzlqt5z/Cnobi1E8gCqT1cwjqFdintLaZngH72n70sz9y/VD9ff2rl A==;
X-CSE-ConnectionGUID: Ky8f9Ah2R8y6rfAbUHO4Tg==
X-CSE-MsgGUID: pzItWEznSGiRRjx3LB1HtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="69804095"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="69804095"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 22:29:11 -0800
X-CSE-ConnectionGUID: 5bkHZJ1MTTSgWZpUtxG3jw==
X-CSE-MsgGUID: ckP7EbT3RfK8r3WvXSryqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200585531"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 08 Dec 2025 22:29:10 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@intel.com, uma.shankar@intel.com,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/5] Make casf updates atomic and dsb ready
Date: Tue,  9 Dec 2025 11:55:22 +0530
Message-Id: <20251209062527.620382-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=y
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

 The existing implementation for casf scaler re‑implemented
parts of skl_scaler logic and programmed registers from
pre‑plane update hooks, which caused:
  - updates were not atomic.
  - prevented execution via Display State Buffer.
  - computed state was late.

This series fixes these issues by:
  - consolidating common logic into skl_scaler.c.
  - moving computation into crtc_compute_config().
  - enabling DSB execution. 

Nemesa Garg (5):
  drm/i915/display: Move casf_compute_config
  drm/i915/display: Add intel_dsb param to CASF helpers
  drm/i915/display: Pass dsb_commit to CASF helpers
  drm/i915/display: Add intel_casf_arm() to enable casf
  drm/i915/display: Introduce skl_pipe_scaler_setup()

 drivers/gpu/drm/i915/display/intel_casf.c    | 58 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_casf.h    | 16 ++++-
 drivers/gpu/drm/i915/display/intel_display.c | 34 +++++++--
 drivers/gpu/drm/i915/display/skl_scaler.c    | 72 +++++++++-----------
 drivers/gpu/drm/i915/display/skl_scaler.h    |  2 +
 5 files changed, 118 insertions(+), 64 deletions(-)

-- 
2.25.1

