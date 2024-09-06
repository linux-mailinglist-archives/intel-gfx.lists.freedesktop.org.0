Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B7A96F565
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 15:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA3110EA5D;
	Fri,  6 Sep 2024 13:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=uniontech.com header.i=@uniontech.com header.b="Zyb0aQxW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9379010EA5D
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 13:31:58 +0000 (UTC)
X-CSE-ConnectionGUID: xa7pk344TOa67OeKRO+bAg==
X-CSE-MsgGUID: 8NEj/DQCQ9W6YCKQiOijsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41894214"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="41894214"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 06:31:58 -0700
X-CSE-ConnectionGUID: QiS9bsnzRwiXHgBaNTbDVQ==
X-CSE-MsgGUID: S+x8te0GQ6i8IZXXiBZdXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66295837"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.62])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 06:31:57 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 06 Sep 2024 16:31:51 +0300
Resent-Message-ID: <87wmjonc1k.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa001.jf.intel.com (ORVIESA001.jf.intel.com
 [10.64.159.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id DF44F20B5782
 for <jani.nikula@linux.intel.com>; Fri,  6 Sep 2024 04:30:27 -0700 (PDT)
X-CSE-ConnectionGUID: H3c3DyICS7auY+rSUfKgYg==
X-CSE-MsgGUID: YmRu0pk8S06sIKBGVZE10A==
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="103404045"
Received: from fmvoesa102.fm.intel.com ([10.64.2.12])
 by smtp.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2024
 04:30:28 -0700
X-CSE-ConnectionGUID: 4KvlZHdmTfyKwBoi5zJstA==
X-CSE-MsgGUID: 52MAMl/YSOe8rM56e/FSyw==
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=helugang@uniontech.com; spf=Pass
 smtp.mailfrom=helugang@uniontech.com; spf=Pass
 smtp.helo=postmaster@smtpbgsg2.qq.com; dkim=pass (signature verified)
 header.i=@uniontech.com; dmarc=pass (p=none dis=none) d=uniontech.com
IronPort-SDR: 66dae7d3_WBT9kXBbSEqQ6cL7nrlVSLpfj0ipa7RXKgLhojn6BvJKSdM
 bxkLNWBIcLEWez148P1CLaoFOKvl1C8l16aN7KQ==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EUAABI59pmh4DI/jZaHAEBAQEBAQcBARIBAQQEAQGBe?=
 =?us-ascii?q?wcBAQsBgkOBVzMHCEiMc6dngX4PAQEBAQEBAQEBCUQEAQEDBIUAiXgCHwYBB?=
 =?us-ascii?q?DAJDQEBAgECAQEBAQEDAgECAQEBAQEBAQEGAQEBAgIBAQECAQECBAMBAQEBA?=
 =?us-ascii?q?hABAQEBOQcOO4V1DYJcgSqBJgEBAQEBAQEBAQEBAR0CCGMBASArCwENAQE3A?=
 =?us-ascii?q?YE9EoMAgmUCBAKwczOBAYIMAQEGBAMCAdwTgWMJgUgBjUFwhRwbgUlEgUeDN?=
 =?us-ascii?q?og3glCeAiWJYI4FSIEhA1khAgEQAVUTDQoLCQWJPYMpKYFrhBeFJ4FnCWGHa?=
 =?us-ascii?q?GeBCC2BEYEfO0aBPYE3S4NPggRGP4JWbE48Ag0CN4IuJW6CYoIDQAMLGA1IE?=
 =?us-ascii?q?Sw1FBsGPm4HqliCZ4EPgigXpU2gf4QfgWOgJZdKknoBmHEipBOEZoFnOoFcT?=
 =?us-ascii?q?SMVgyJPAxkPjiEMDQmDWM0bNjUCOQIHCwEBAwmLaoFLAQE?=
IronPort-PHdr: A9a23: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
 Do=
IronPort-Data: A9a23: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
 wSR
IronPort-HdrOrdr: A9a23:wHEilakbB4Akm3Q/UAgoeHFRq8DpDfLO3DAbv31ZSRFFG/FwWf
 re/sjzsiWE8Ar5PUtKpTnuAtjlfZqiz+8O3WB8B9eftWrdyRKVxeNZnOzfKlTbckWTygc379
 YET0ERMqySMXFKye3b0y2RM/Nl4PTvysGVbJ/lvhFQZDAvU5klwQF+By2Ue3cZeCB2QaIAUL
 yG5sRGoDK8eXMYKuSDb0NpY8Hz4+Xy0KjLRjM9Jy0KgTP+9g+A2frDK1yj5Dh2aVxy6IZnyV
 CAlwz1j5/Ij82G
X-Talos-CUID: =?us-ascii?q?9a23=3At+Ikkmlkp1RBUQG0B3qh/0EuiGXXOSH+0nPiA0O?=
 =?us-ascii?q?9NWh4a6K/Tl7N6oF/j+M7zg=3D=3D?=
X-Talos-MUID: 9a23:oJ3goAWYVg853qDq/GK2oRhHMIBZ2IOjWFoozMsL/Oe/JDMlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41883961"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="41883961"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Sep 2024
 04:30:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
 s=onoh2408; t=1725622216;
 bh=Nt1P/gkEwLsevJn4UXiqSp5dbi52ohpe4QVRVvtzDCs=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=Zyb0aQxWBpYMsvr5OOyA9FrhYoi90LoHqTDaiCqPr0s++MyPC3fmNmjBoftLQOVN4
 bYwWqPavxBmCGKEUkrnMS2btpGPlNcGyHChGlNeNTdyBz6DS4G0iqhkGGKupI0QsjM
 PakadDG7gsdjVfDYjBoi0L2KXCxfdWbS/nkt6rrY=
X-QQ-mid: bizesmtp91t1725622212tfo7pr4h
X-QQ-Originating-IP: MoWlbzd9eCSFmT1s3QWXnAyVznxqD3uUvAEsVnaPfGY=
Received: from localhost.localdomain ( [221.226.144.218])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Fri, 06 Sep 2024 19:30:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11505531661423180768
From: He Lugang <helugang@uniontech.com>
To: jani.nikula@linux.intel.com,
	rodrigo.vivi@intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 He Lugang <helugang@uniontech.com>
Subject: [PATCH] [PATCH RESEND] drm/i915:Remove unused parameter in marco.
Date: Fri,  6 Sep 2024 19:30:01 +0800
Message-ID: <6B8E60F863EF80E4+20240906113001.1595107-1-helugang@uniontech.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz7a-0
X-TUID: ADuozozxeTpB
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

The parameter dev_priv is actually not used in macro PORT_ALPM_CTL
and PORT_ALPM_LFPS_CTL,so remove it to simplify the code.

Reviewed-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: He Lugang <helugang@uniontech.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 4 ++--
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 31c068f393b7..55f3ae1e68c9 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -332,7 +332,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
 
 		intel_de_write(display,
-			       PORT_ALPM_CTL(display, port),
+			       PORT_ALPM_CTL(port),
 			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
@@ -340,7 +340,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 				       intel_dp->alpm_parameters.silence_period_sym_clocks));
 
 		intel_de_write(display,
-			       PORT_ALPM_LFPS_CTL(display, port),
+			       PORT_ALPM_LFPS_CTL(port),
 			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
 			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
 				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b30fa067ce6e..55ccdd6171e6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2097,7 +2097,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 
 		intel_de_rmw(display,
-			     PORT_ALPM_CTL(display, cpu_transcoder),
+			     PORT_ALPM_CTL(cpu_transcoder),
 			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 642bb15fb547..41f7211d4f45 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -295,7 +295,7 @@
 
 #define _PORT_ALPM_CTL_A			0x16fa2c
 #define _PORT_ALPM_CTL_B			0x16fc2c
-#define PORT_ALPM_CTL(dev_priv, port)		_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
+#define PORT_ALPM_CTL(port)		    _MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
 #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
@@ -306,7 +306,7 @@
 
 #define _PORT_ALPM_LFPS_CTL_A					0x16fa30
 #define _PORT_ALPM_LFPS_CTL_B					0x16fc30
-#define PORT_ALPM_LFPS_CTL(dev_priv, port)			_MMIO_PORT(port, _PORT_ALPM_LFPS_CTL_A, _PORT_ALPM_LFPS_CTL_B)
+#define PORT_ALPM_LFPS_CTL(port)			    _MMIO_PORT(port, _PORT_ALPM_LFPS_CTL_A, _PORT_ALPM_LFPS_CTL_B)
 #define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
-- 
2.45.2

