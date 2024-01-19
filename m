Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2A9832777
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368E710E9E1;
	Fri, 19 Jan 2024 10:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75EB510E9E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659082; x=1737195082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ELHPhIyPv1R8HezdwdjEEoAFw3uiqdbnEeMtoNREetE=;
 b=jEe9buVYxkUJL2k8hxFDaeMI8zmMZVmP/vildwxJZDmt2aCeCgiI/EXi
 pF101Q8x2D7r3jvMH/5X9V3w4FHABUfimnl9NIExxioO7pulNH0lCuc0k
 Jp+l3BBzh024k0EpOnTKLIEqVrVEV8/cFbZ/lVQgk2JFtL9lNQHfq1Qe6
 kpu7gzzA59vHdb913BXb80T/0TqIFNuK5kKwywbdMMFisd7q2Jn3gEr7R
 aWxrKL98wAapqLqfCZTZpQeUMR5OcaxPBG+uexBnnwhypng5/mqBM4U/X
 2WohmhSfEmAhNgYdWzkq+O6iD/MrXJMi4jdOQmXrgn9PLVKp5VIo9KnHU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070901"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070901"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563417"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:21 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 19/21] drm/i915/psr: Update PSR module parameter
 descriptions
Date: Fri, 19 Jan 2024 12:10:22 +0200
Message-Id: <20240119101024.1060812-20-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

