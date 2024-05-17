Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A48B58C8175
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 09:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03B010EE05;
	Fri, 17 May 2024 07:30:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lWHUkttD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F8B10EE05
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715931034; x=1747467034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r95AOv3QiJx5RmMi1Yt1L5/cOPFtXow9bW9GpU4yUUw=;
 b=lWHUkttDVM1BP/sHQDWJuayauxqU93rMYhO/tZNs4Lp9HbfUIUnyWH4A
 xnOXcEMQFyEYK6BgXX+9Dr57LjtjUe+Dsvm+BLBzamIf+bRJbdcSp7uab
 1k/X6TdnikA0yGZV8IsvninDVrk1KR+VF295Ijf0XmoywHgo8ernfe0zy
 mD/O0hkie0Kq8md9dFmn9WHBCOmwQDBTJetVcJJz+JpnYdobCR4ICWgi0
 8dGULdDjAb6yDw8nfsaQTXZU1wh/i3ioXUT27xLcj8FxlYOMQ/gCgJA4e
 CydCCoKlHkZEpOT0KLQ9qEbNnA3UA5QPDkREplPFhbJPrQ64zZlOCkD3y Q==;
X-CSE-ConnectionGUID: V8LzrosLTV2CYBY+4vb5UA==
X-CSE-MsgGUID: IHpxr23/SlGdxi/YrDnJPg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15917883"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="15917883"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:30:21 -0700
X-CSE-ConnectionGUID: F9u3R/h2Qt+XECy/J2upbA==
X-CSE-MsgGUID: gUW0Q9gySHq6tBOv5shNag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="31803590"
Received: from mspitkan-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.189])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 00:30:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/3] drm/i915/psr: LunarLake PSR2_CTL[IO Wake Lines] is 6
 bits wide
Date: Fri, 17 May 2024 10:30:04 +0300
Message-Id: <20240517073005.2414293-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240517073005.2414293-1-jouni.hogander@intel.com>
References: <20240517073005.2414293-1-jouni.hogander@intel.com>
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
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 ++
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f5d3eb776833..d2f6488b8fc7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -958,6 +958,8 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 
 		tmp = map[psr->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
 		val |= TGL_EDP_PSR2_FAST_WAKE(tmp + TGL_EDP_PSR2_FAST_WAKE_MIN_LINES);
+	} else if (DISPLAY_VER(dev_priv) >= 20) {
+		val |= LNL_EDP_PSR2_IO_BUFFER_WAKE(psr->alpm_parameters.io_wake_lines);
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(psr->alpm_parameters.io_wake_lines);
 		val |= TGL_EDP_PSR2_FAST_WAKE(psr->alpm_parameters.fast_wake_lines);
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index e14cb48f2614..b6a39926ccb6 100644
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

