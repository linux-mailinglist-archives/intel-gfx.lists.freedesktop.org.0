Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F448B6F4C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413FC10FB75;
	Tue, 30 Apr 2024 10:11:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Px/Ckrc0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C7810FB60
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471906; x=1746007906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G/lPQpxq+W7y3z+ra0kn9P04HgkapjQJTLexeCVLeK8=;
 b=Px/Ckrc0wscL5ijYvcFo98kiamojWOK+X5hZ/TngcFtSlysz39hOzDPs
 ttJLX7O6boqCpiPl5hUQpgwzgh0SHeSUOBPqDvRwpQJsi2nO59/yZ6lBj
 DcoJ6KT0Z+w7jPAdXlAFDU6kGh22IGOefiqbjHTMqekSB697j9N80hw8o
 BwRZN4eQB6TSM8fGmfagzxaax5lYu+rYjF8cu+4iA7/cqHDLSNb4h3rrz
 TMuKx/MS4Q6e0aIBTMmjCHiJl7plJgoHRrSjJ/PF7/pUVEVM9fkHKGZaU
 707e86CpeTBSF6Aw+QhId5E5Ve7QFJcoJdGgKFaRXtJBCwusisBGnq2zW w==;
X-CSE-ConnectionGUID: Jbu9KLRsQ+OgqS4o5Xm2Gg==
X-CSE-MsgGUID: yKuVdQxaSiKZIvxrLkRljg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32673180"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="32673180"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:46 -0700
X-CSE-ConnectionGUID: MZasXfepQ7WYAAhUFiw84g==
X-CSE-MsgGUID: JnOgOjsrQUuvJBBgEfJR3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26511337"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 19/19] drm/i915: pass dev_priv explicitly to PORT_ALPM_LFPS_CTL
Date: Tue, 30 Apr 2024 13:10:13 +0300
Message-Id: <f8a3bbade94258852b8129c5f5918fb06ceab54b.1714471597.git.jani.nikula@intel.com>
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
explicitly to the PORT_ALPM_LFPS_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 3 ++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e88f326b78d6..664ffda6a86d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1798,7 +1798,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 			       PORT_ALPM_CTL_SILENCE_PERIOD(
 				       psr->alpm_parameters.silence_period_sym_clocks));
 
-		intel_de_write(dev_priv, PORT_ALPM_LFPS_CTL(cpu_transcoder),
+		intel_de_write(dev_priv,
+			       PORT_ALPM_LFPS_CTL(dev_priv, cpu_transcoder),
 			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
 			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
 				       psr->alpm_parameters.lfps_half_cycle_num_of_syms) |
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 5e52dddacf91..08c6d488e89d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -345,7 +345,7 @@
 #define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
 
 #define _PORT_ALPM_LFPS_CTL_A					0x16fa30
-#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_LFPS_CTL_A)
+#define PORT_ALPM_LFPS_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_LFPS_CTL_A)
 #define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
-- 
2.39.2

