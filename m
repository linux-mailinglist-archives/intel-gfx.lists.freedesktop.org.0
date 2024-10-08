Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F23F8995A21
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8ED610E602;
	Tue,  8 Oct 2024 22:37:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eqPMItKv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1985D10E608;
 Tue,  8 Oct 2024 22:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728427070; x=1759963070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=flY6UGWxGmAB6AHvdOEcIlWrpTLqwN0jhUutDadTauQ=;
 b=eqPMItKvSfrPfG15flIkjj0HBExgRkoJoT7qOTQHYMyMYn89JHRf8yEC
 eFOmOgK3YfegJWwRhJxBp3r53Cmctud3LOFYBgXPdU0VcvdonE2LmGDoO
 mprLuEDkxt7yFFQoMyNwjH+BkHP+UwsEAD3i9+++Lyy9mMLDY/0jnikJO
 2EWwHB5TIjhtuJeBHYaK8ENprcfmyFmnlTcE7YG6kDwjb5rct7beIHXZb
 S0u4xEGU6pWIUTU6WpDdE2PPqsqF+S8XsiRhs1/fNFFesOFuO/kXrmAkL
 gdVKCgKFhJriwAUVNHwdgquNWcmBnBquZasaGw/PiCk8/LDaCnpjD1zNF A==;
X-CSE-ConnectionGUID: 6+i0pRq3Thu0Z9kbLZLnZg==
X-CSE-MsgGUID: ToamC6ExT82oeGbwv3mtyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39037300"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39037300"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:50 -0700
X-CSE-ConnectionGUID: 20Yw8cKTT6aWdPNhvvjnoA==
X-CSE-MsgGUID: 1g1qGnifTiC2H3VpKlIArA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80811853"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:49 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 08/10] drm/i915/xe3lpd: Add new bit range of MAX swing setup
Date: Tue,  8 Oct 2024 15:37:39 -0700
Message-ID: <20241008223741.82790-9-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Add new bit range for Max PHY Swing Setup in PORT_ALPM_CTL
register for DISPLAY_VER >= 30.

Bspec: 70277
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 55f3ae1e68c9..100ce776a203 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -334,7 +334,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 		intel_de_write(display,
 			       PORT_ALPM_CTL(port),
 			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
+			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(display, 15) |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
 			       PORT_ALPM_CTL_SILENCE_PERIOD(
 				       intel_dp->alpm_parameters.silence_period_sym_clocks));
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 0841242543ca..046e400704e8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -299,7 +299,9 @@
 #define PORT_ALPM_CTL(port)			_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
 #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
-#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
+#define  PTL_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(25, 20)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(display, val)	(DISPLAY_VER(display) >= 30 ? REG_FIELD_PREP(PTL_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val) :\
+							 REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val))
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
 #define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)
-- 
2.45.0

