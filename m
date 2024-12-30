Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36ADA9FE6E9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:15:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAC1610E4EA;
	Mon, 30 Dec 2024 14:15:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Np1OWEqU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A96810E4E9;
 Mon, 30 Dec 2024 14:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568128; x=1767104128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GxRfBvZqcpkqBlpCnTVnhTY7/qJ0bb3kcwchzpidxPM=;
 b=Np1OWEqU2hc26WHcqLvDB/1BEypoFBjXqX7e837tQGQSOtJ5e/Wp7UTK
 q8U6U21cuBKaasnjF8rotOMFL5Ei+xtUgFYs8NkXuCZsyS/GkLOVFWDMR
 AzdVNtuFnAF/GcOLVhfGMrwo25Ar05mSl3A+SsSsnVKMmQBkI7Tqtc9bK
 RllYqcOuLctdcoaKkxDjhx8n4gIupaksud787g56bSQDq9IL3+qPIFUAc
 7aDy2aGF4C5K9RvgQtmo8FpocnNVjpIVAuED+1xNI2l+JeFM2CHiNJojJ
 5RAuJk3D3D4428pcUp7ijxW6Xa/A8QqUvZeQ07eDqtAuD21JohuikZmAY A==;
X-CSE-ConnectionGUID: ZGsi95JTTEanLZtbKI8Blw==
X-CSE-MsgGUID: UG08/NIsTquqfLlOo/dFDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="35878752"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="35878752"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:24 -0800
X-CSE-ConnectionGUID: 0kVzqK9GR22miFUC4nPlLg==
X-CSE-MsgGUID: ucBoD4MkRD6VYWSbURo7kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="100984031"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI v3 6/6] drm/i915/ddi: only call shutdown hooks for valid encoders
Date: Mon, 30 Dec 2024 16:14:45 +0200
Message-Id: <8b197c50e7f3be2bbc07e3935b21e919815015d5.1735568047.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735568047.git.jani.nikula@intel.com>
References: <cover.1735568047.git.jani.nikula@intel.com>
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

DDI might be HDMI or DP only, leaving the other encoder
uninitialized. Calling the shutdown hook on an uninitialized encoder may
lead to a NULL pointer dereference. Check the encoder types (and thus
validity via the DP output_reg or HDMI hdmi_reg checks) before calling
the hooks.

Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

TODO: We should probably audit all DDI encoder hooks for this, and add
the necessary checks.
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2c4308506435..36aaa82f4536 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4923,8 +4923,10 @@ static void intel_ddi_tc_encoder_suspend_complete(struct intel_encoder *encoder)
 
 static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
 {
-	intel_dp_encoder_shutdown(encoder);
-	intel_hdmi_encoder_shutdown(encoder);
+	if (intel_encoder_is_dp(encoder))
+		intel_dp_encoder_shutdown(encoder);
+	if (intel_encoder_is_hdmi(encoder))
+		intel_hdmi_encoder_shutdown(encoder);
 }
 
 static void intel_ddi_tc_encoder_shutdown_complete(struct intel_encoder *encoder)
-- 
2.39.5

