Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4CA8B6F4B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F2710FB57;
	Tue, 30 Apr 2024 10:11:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eQADXMV0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3157410FB57
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471901; x=1746007901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ummnO7446dwy9mPBFRYsL9hbnTrWxG3jIghNa2Qz2i8=;
 b=eQADXMV0jHqFykiWK970Mj8fUNhj4wpR+SiR1J9Mp161xB9YzTL/txoH
 3NipNwRzJHm36pEBlWV/Oyk2CBNJDqKWWubr/4e/2pAkwOTN6vqNDTe3W
 XuctbLhi17f7XVrtC5xrs5G2HE9kz1KDESENnmcoQJqMzqz/mUwnUDwYw
 l6GbYEGeKCJS4CUe+tEy3wOjuiQs+csBVi4YncSM7svmnqmDIEWFJ6aoM
 DwR29cIFA4n/qGcithr2B0HWdBo77mYUtXAW/5BsEiHOuHefRD6PNG04r
 NjMLrb+g9WBwljxyfkk7yaIGO1oOyzB3dF6FNZfGVfbn6Y6kAX+z9i7Py Q==;
X-CSE-ConnectionGUID: 4c+It3vrTa2UKO8478Xeyg==
X-CSE-MsgGUID: QDgV9lrKRx+L0gukBomZGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32673164"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="32673164"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:41 -0700
X-CSE-ConnectionGUID: /jRk+bfFQP20lVpMCqoNSQ==
X-CSE-MsgGUID: x7MkIaUtQ3GkXBsNaPEVEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26511329"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 18/19] drm/i915: pass dev_priv explicitly to PORT_ALPM_CTL
Date: Tue, 30 Apr 2024 13:10:12 +0300
Message-Id: <86e8f5649c822ff6fa0502ad88964bfcb269c6c5.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PORT_ALPM_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 6 ++++--
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index fad24b1e5ae2..e88f326b78d6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1790,7 +1790,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS;
 
-		intel_de_write(dev_priv, PORT_ALPM_CTL(cpu_transcoder),
+		intel_de_write(dev_priv,
+			       PORT_ALPM_CTL(dev_priv, cpu_transcoder),
 			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
@@ -2116,7 +2117,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			     ALPM_CTL_ALPM_ENABLE |
 			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 
-		intel_de_rmw(dev_priv, PORT_ALPM_CTL(cpu_transcoder),
+		intel_de_rmw(dev_priv,
+			     PORT_ALPM_CTL(dev_priv, cpu_transcoder),
 			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 05dc1c1d4ac2..5e52dddacf91 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -335,7 +335,7 @@
 #define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
 
 #define _PORT_ALPM_CTL_A			0x16fa2c
-#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_CTL_A)
+#define PORT_ALPM_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_CTL_A)
 #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
-- 
2.39.2

