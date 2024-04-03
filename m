Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BFB8969D8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903431128F8;
	Wed,  3 Apr 2024 09:00:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QYgJoIGF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354381128DA
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134853; x=1743670853;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a4k/wuR1TlMBwm75zNBzSk5SGi5ygoKs6hh7X5/Ls6A=;
 b=QYgJoIGF52TwJsDc+Q0ESCJ1CNVBShJuPYMWO3iYKpS4Sf4qZMguQyT3
 U6T1yUQcnNINJ9VI1/J33PpoHjUlGw/6NW8rDLMudRIQJy0AARHhGcMYd
 TNGvZZEqxBAvUW3VMSbLjJ4180zHtx0+lvLwuUozSOOTeUCkRuz0SXSOG
 ctgkTi0NGjfsixIalmFcnU88d36CyLofP/km0n/r8dgWoUxodZYi1XMzU
 7vOCXIPk++rsd22gFZGNmJvawAz4fp2OGxN+sEnlZM1hA+rezDMd3EoYY
 wSn6IVxVqkE97rfC41a1Ohb6Ce1QdKE2gDmL5WhXV+osJPos+yonmfyER w==;
X-CSE-ConnectionGUID: SJjk8TRET++trDxyiyBJUg==
X-CSE-MsgGUID: RvU/sfzqRgCmruidTERqYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472550"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472550"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:50 -0700
X-CSE-ConnectionGUID: DudWZ+K7Qx6ojaI5oEsdlQ==
X-CSE-MsgGUID: Dsnu1HfkS1y/62OukrdxJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18453274"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:49 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 17/19] drm/i915/psr: Update PSR module parameter
 descriptions
Date: Wed,  3 Apr 2024 12:00:11 +0300
Message-Id: <20240403090013.54296-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
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

We are re-using PSR module parameters for panel replay. Update module
parameter descriptions with panel replay information:

enable_psr:

-1 (default) == follow what is in VBT
0 == disable PSR/PR
1 == Allow PSR1 and PR full frame update
2 == allow PSR1/PSR2 and PR Selective Update

enable_psr2_sel_fetch

0 == disable selective fetch for PSR and PR
1 (default) == allow selective fetch for PSR PR

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 11e03cfb774d..1c5e20ec7f1d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -102,7 +102,8 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
 
 intel_display_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "
-	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
+	"(0=disabled, 1=enable up to PSR1 and Panel Replay full frame update, "
+	"2=enable up to PSR2 and Panel Replay Selective Update) "
 	"Default: -1 (use per-chip default)");
 
 intel_display_param_named(psr_safest_params, bool, 0400,
@@ -112,7 +113,7 @@ intel_display_param_named(psr_safest_params, bool, 0400,
 	"Default: 0");
 
 intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
-	"Enable PSR2 selective fetch "
+	"Enable PSR2 and Panel Replay selective fetch "
 	"(0=disabled, 1=enabled) "
 	"Default: 1");
 
-- 
2.34.1

