Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A1B86FB34
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 08:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E70310FDF4;
	Mon,  4 Mar 2024 07:57:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPE4AF+T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEBB910FDF4
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 07:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709539071; x=1741075071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sWAWy0Pk0Vuo2zYMswEQSGWb+BXUvLyrBk/WLRhRxLs=;
 b=KPE4AF+TcA+HnNq17AGa0MyNFVgSYp23bf8Lg5HoT+0GpyO403pDYiZf
 6+VEw8trCQVt1ooO2WUqoogsJHE6SJQ5dTN3GFwXRCBysV/KpuQy/HTuS
 mZZc04dTxqROt/Whg7PijfQHSECGSelGoEuPqgfuRIXyCrUmbpKgrZ/AQ
 ssu1bwC8PrnBJP/0SzAocC/bLBpqsL6Q7ONLnJ3VB/GLA8m4L9ZZcWTB8
 1SjBY7PGDGGIUmq4i891ASfAC9OG92pkxfpu2mKCbGPT43C4P9yyXdQsh
 qqTPLB2QDoq4yw2HO7fpvCN/fRKUCtDwuaBMhp9UpsMd0Y4IfChoyA9B0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="4139338"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="4139338"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 23:57:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="9043952"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa008.fm.intel.com with ESMTP; 03 Mar 2024 23:57:49 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, arun.r.murthy@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [RFC 3/3] drm/i915/alpm: Enable lobf from source in ALPM_CTL
Date: Mon,  4 Mar 2024 13:13:03 +0530
Message-Id: <20240304074303.202882-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240304074303.202882-1-animesh.manna@intel.com>
References: <20240304074303.202882-1-animesh.manna@intel.com>
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

Set the Link Off Between Frames Enable bit in ALPM_CTL register.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4d2161eeb686..c8e7a65df45d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1854,6 +1854,7 @@ struct intel_dp {
 
 	/* LOBF flags*/
 	bool lobf_supported;
+	bool lobf_enabled;
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c08bffc2921a..a9f8f2982b50 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1770,6 +1770,11 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
 	}
 
+	if (intel_dp->lobf_supported) {
+		alpm_ctl |= ALPM_CTL_LOBF_ENABLE;
+		intel_dp->lobf_enabled = true;
+	}
+
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
 	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder), alpm_ctl);
-- 
2.29.0

