Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A57508BA6E4
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1BA10F7AC;
	Fri,  3 May 2024 06:06:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M1tBrFCp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF60310F158
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714716398; x=1746252398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=65uXdMb18ex9nwqH/aNuW6T5OH5ANub0vq2Qvxx4l0c=;
 b=M1tBrFCpl2JA1JDcTkZLx3Qe3touHOQsQBa3BO0NUtmR21YEK6SfB9C0
 X+/2DmnZFdAvVKAbDd5CUPKKAtf5HpioloiOsUynFU3SY4Vkxj5yNU1Xi
 Umw0C6rXhtkR5i6mq1H2K0GX0aWQjd6hqrvTdJQIpeP+LBGDMiLcFyVMu
 pnQrWJukhQS/Nv30zjMpTJEdI6RcZ6RjF0sVqwhwjcecvLfGdG5nnInbX
 0QFIRd8CkWtZzXAIB2Xcuqjbqw9XdQTY13I97jO0lmWvFQxLBvbYlkx4N
 57AFdUWUB0jsgLj5I3Uf3ch+ZDIBuZ95VNp7OfWQ+6AseV1xwtwpnOZUr w==;
X-CSE-ConnectionGUID: P0AoM/MTQziJV4248ii7hQ==
X-CSE-MsgGUID: cpA+RSWWSfWyVPPS0Sg3qA==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10644607"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10644607"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:06:38 -0700
X-CSE-ConnectionGUID: tqhc0/UxSMCxHvaZP8Xzbw==
X-CSE-MsgGUID: V/h4IHR6SFiflMax1gHRxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27875579"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:06:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/3] drm/i915/psr: LunarLake PSR2_CTL[IO Wake Lines] is 6 bits
 wide
Date: Fri,  3 May 2024 09:06:20 +0300
Message-Id: <20240503060621.987820-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240503060621.987820-1-jouni.hogander@intel.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

On LunarLake  PSR2_CTL[IO Wake Lines] contains now bit 13:18. Take this
into account when enabling PSR2_CTL.

Bspec: 69885

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 ++
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 678987bbe168..4d67a384e149 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -900,6 +900,8 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 
 		tmp = map[psr->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_FAST_WAKE(tmp + TGL_EDP_PSR2_FAST_WAKE_MIN_LINES);
+	} else if (DISPLAY_VER(dev_priv) >= 20) {
+		val |= LNL_EDP_PSR2_IO_BUFFER_WAKE(psr->alpm_parameters.io_wake_lines);
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(psr->alpm_parameters.io_wake_lines);
 		val |= TGL_EDP_PSR2_FAST_WAKE(psr->alpm_parameters.fast_wake_lines);
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index ebc22999572c..68381bbf462e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -172,6 +172,10 @@
 #define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES	5
 #define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	REG_FIELD_PREP(TGL_EDP_PSR2_IO_BUFFER_WAKE_MASK, \
 							       (lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES)
+#define   LNL_EDP_PSR2_IO_BUFFER_WAKE_MASK	REG_GENMASK(18, 13)
+#define   LNL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES	5
+#define   LNL_EDP_PSR2_IO_BUFFER_WAKE(lines)	REG_FIELD_PREP(LNL_EDP_PSR2_IO_BUFFER_WAKE_MASK, \
+							       (lines) - LNL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES)
 #define   EDP_PSR2_FAST_WAKE_MASK		REG_GENMASK(12, 11)
 #define   EDP_PSR2_FAST_WAKE_MAX_LINES		8
 #define   EDP_PSR2_FAST_WAKE(lines)		REG_FIELD_PREP(EDP_PSR2_FAST_WAKE_MASK, \
-- 
2.34.1

