Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF9F9F0EE0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 15:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5698410F038;
	Fri, 13 Dec 2024 14:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OEY2V0oz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E087D10F03F;
 Fri, 13 Dec 2024 14:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734099402; x=1765635402;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kpAxFJyzrjUXp3K8YVfK7coK2ntIOJnqGuAl1Yta4qc=;
 b=OEY2V0ozL0Q0Be3NvdlEkboYZNPcYmlCoqWyOk0ftYcZh8gSDEA7BOyF
 0HoCTjXQmF7WSvF3XqCAd9Yxf4lHG8doETzFdqe20zXwqtd0VB34ZYYUs
 D2DDKagK/kQC8MxBTAzm3larkiAwaI/31bSgnZuAGRPZrVCwlFnr5N2ns
 YqdCGc88ZacUf+die+JOG0Fb3ULedIN4Uox6wU4eI2wteCyg0zvfEgN+n
 hHkiU1VM8JW2zbM8BLbE7kgn545ye+7tsY6C6sMzBgcV0zNb1Cmo+8Juc
 164ZSXKhjq+zNyfS47omA/Rekg+awO1ArAi3LlqTQ6zkATh+h10ofaezB Q==;
X-CSE-ConnectionGUID: k+N9W75UQFa5+VCd+072nA==
X-CSE-MsgGUID: lI6u1KE6RXi6uIgPMbojCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34693247"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34693247"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:16:41 -0800
X-CSE-ConnectionGUID: dxIqXcP9SWqfRII9g8zamQ==
X-CSE-MsgGUID: 8LN4IzCfQBuTMb8v9h/Nag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97332620"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:16:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 6/6] drm/i915/ddi: only call shutdown hooks for valid
 encoders
Date: Fri, 13 Dec 2024 16:15:58 +0200
Message-Id: <4da9a924962bd4a5bf8c3832928d5effebb32163.1734099220.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734099220.git.jani.nikula@intel.com>
References: <cover.1734099220.git.jani.nikula@intel.com>
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

Reported-by: Sergey Senozhatsky <senozhatsky@chromium.org>
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

