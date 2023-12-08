Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 594FB80A57F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 15:32:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B48D10E2AC;
	Fri,  8 Dec 2023 14:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE33710E2AC
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 14:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702045948; x=1733581948;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P1eXzc+8FwwfnYkXdl3aqp3HaFFP/IMikrFrdIF20kQ=;
 b=Nmj02cCmWzje7MDeGAw8mHvcyHigs13aO9u/V8C8w21+d16WZQO+EPqB
 z+lJvkr/w36r7fZp/b5+O5bRVCWErdFbx+GaIk1AXV8bqs2x9On4E0Ubw
 jjlISaGfQaavYTlYiKFyNDhiqJ5R1uZePwK1MWV42SysbMnC+sGlxMkX9
 QNlzktK/8HjKYh1LeX1DVHNz9G2FE4x/3YJOzaGvuXxOVtgZ7MIDKlk5Q
 1JLnu6LAGspHn5bFM91rFX/cSaapm+sHGLEgy8vBGarqzgryJ178YGk9K
 rsaknMyiPhF9IK7bHekwRXbFi0Q2WZQqm9znTCRMWL3sXddWIZqrbK55d A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="394148882"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="394148882"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 06:32:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="748348212"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="748348212"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 06:32:27 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/display: Also print raw step number
Date: Fri,  8 Dec 2023 06:31:36 -0800
Message-Id: <20231208143137.2402239-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GMD_ID is already parsed down to the step. Don't omit that information
in the display engine debug info. This helps to double check the
stepping is parsed correctly.

For earlier platforms, it will start printing the entire version too
(which should be 0), as a rel == 0 doesn't mean it doesn't have GMD_ID.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 0b522c6a8d6f..5d1084a98b93 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1122,13 +1122,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
 				     const struct intel_display_runtime_info *runtime,
 				     struct drm_printer *p)
 {
-	if (runtime->ip.rel)
-		drm_printf(p, "display version: %u.%02u\n",
-			   runtime->ip.ver,
-			   runtime->ip.rel);
-	else
-		drm_printf(p, "display version: %u\n",
-			   runtime->ip.ver);
+	drm_printf(p, "display version: %u.%02u.%02u\n",
+		   runtime->ip.ver, runtime->ip.rel, runtime->ip.step);
 
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
-- 
2.40.1

