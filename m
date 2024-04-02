Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153888958F4
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E720510E653;
	Tue,  2 Apr 2024 15:55:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jz4qI9SU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C2710E653;
 Tue,  2 Apr 2024 15:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073352; x=1743609352;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a9L0IZ6AKmuym+UvxTyui0eHUeV+vC+1qL5uOaKKEqI=;
 b=jz4qI9SUYLQEdRChYYmZgs/CGbhFZL4xeQEVTcEuy13Xkc2pOFWLyMc9
 ieKFSRWdjgO9QUh2Ly3RTPD/5PuW1ToOUJKGKBFj+Ko3ytdnKrD9Ne/a7
 zH+SgrwCC0/1kj04G7K68/u2lnkVLd/rxwsjkb1QpfYgvmZfrsBXRJqdR
 Qdk8vWwRbTWXOo+d7cTmVstOchc6xds/qAKXSTON8ntEYJKJPUywpC/H5
 qPUg5QqgtQZ5o6W9owJcQUAjbsji78kwTP1L14/Oz9BtjhOSXphGwEFlN
 q3Fw+sEtfq722eh/V06y0CfOukCfCuLgLLR2tzKOARVpYlnvFWbhVj3pd w==;
X-CSE-ConnectionGUID: 4Zl0gAzeQ2SapbRdxAzPdg==
X-CSE-MsgGUID: 9tQc1zpYQtCLPtLTKP0w9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="18612831"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="18612831"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:55:51 -0700
X-CSE-ConnectionGUID: kV6C0khkRvu2dlv+UJLa2g==
X-CSE-MsgGUID: xpE7JFYzTWOX5kAQYa41JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="18160232"
Received: from pramona-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.179])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:55:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>, stable@vger.kernel.org
Subject: [PATCH] drm/i915/display: fix display param dup for NULL char * params
Date: Tue,  2 Apr 2024 18:55:34 +0300
Message-Id: <20240402155534.1788466-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

The display param duplication deviates from the original param
duplication in that it converts NULL params to to allocated empty
strings. This works for the vbt_firmware parameter, but not for
dmc_firmware_path, the user of which interprets NULL and the empty
string as distinct values. Specifically, the empty dmc_firmware_path
leads to DMC and PM being disabled.

Just remove the NULL check and pass it to kstrdup(), which safely
returns NULL for NULL input.

Fixes: 8015bee0bfec ("drm/i915/display: Add framework to add parameters specific to display")
Fixes: 0d82a0d6f556 ("drm/i915/display: move dmc_firmware_path to display params")
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: <stable@vger.kernel.org> # v6.8+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index c8e3d6892e23..49c6b42077dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -176,9 +176,9 @@ void intel_display_params_dump(struct drm_i915_private *i915, struct drm_printer
 #undef PRINT
 }
 
-__maybe_unused static void _param_dup_charp(char **valp)
+static void _param_dup_charp(char **valp)
 {
-	*valp = kstrdup(*valp ? *valp : "", GFP_ATOMIC);
+	*valp = kstrdup(*valp, GFP_ATOMIC);
 }
 
 __maybe_unused static void _param_nop(void *valp)
-- 
2.39.2

