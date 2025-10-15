Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5485BDC4B3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A4610E6E3;
	Wed, 15 Oct 2025 03:16:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JY7hrHCH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ED2E10E6E1;
 Wed, 15 Oct 2025 03:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498217; x=1792034217;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=/bRhT3gLpY9xSaSqeJuxnq7vIpDb7jRK7dSFIppcE18=;
 b=JY7hrHCHye3D8/M7GpR71DLh4PWzpwvgrKcixmuUYEVQ9x/HTtvgZkQk
 JWPMtQUGmcCrmKuZyZldJ/Zitw/xPdCRqu4S3qie0UEUsxZ88HqV6/tKU
 2pAoH8jAwgt9nzIsT2IPn37nq8PmOAMMUYNPWl2hNLMMJTdQyUl8Yb+78
 TCSVZgr/HddMc6vIJPd3T+rYoq/w5wZNaElFBWWx1fi7wJ9nzLNiIOYLt
 GVnP0iBXc8MxQ1N/a0N/ASISe3dItTpjpNgNKcJPWSCm8nuzzfzAk0d9G
 ipnFmvvk/FksAlWDoCGmK0aDqwzwqPFyW43Eq6WpFvdhLmHNcZnzSyFMz A==;
X-CSE-ConnectionGUID: yIJGoBO9QDWWEj0BSbLirA==
X-CSE-MsgGUID: BXUbhtz0S5CUeZYOUnuyOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577149"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577149"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:16:56 -0700
X-CSE-ConnectionGUID: mEMmmBa3R8+bBl0V4eBovA==
X-CSE-MsgGUID: 1jTd6gQETxmruYTs1/kaNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302390"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:16:52 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:03 -0300
Subject: [PATCH 03/32] drm/i915/xe3p_lpd: Drop north display reset option
 programming
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-3-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Matt Roper <matthew.d.roper@intel.com>

The NDE_RSTWRN_OPT has been removed on Xe3p platforms and reset option
programming is no longer necessary during display init.

Bspec: 68846, 69137
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index da4babfd6bcb..821f5097e9c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1436,6 +1436,9 @@ static void intel_pch_reset_handshake(struct intel_display *display,
 	i915_reg_t reg;
 	u32 reset_bits;
 
+	if (DISPLAY_VER(display) >= 35)
+		return;
+
 	if (display->platform.ivybridge) {
 		reg = GEN7_MSG_CTL;
 		reset_bits = WAIT_FOR_PCH_FLR_ACK | WAIT_FOR_PCH_RESET_ACK;

-- 
2.51.0

