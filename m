Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F051448DA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 01:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 616636E49A;
	Wed, 22 Jan 2020 00:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8306C6E499
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 00:18:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 16:18:29 -0800
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="227508537"
Received: from pachecof-ubuntu.fm.intel.com ([10.1.27.15])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 Jan 2020 16:18:29 -0800
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 16:18:22 -0800
Message-Id: <20200122001822.12872-2-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122001822.12872-1-fernando.pacheco@intel.com>
References: <20200122001822.12872-1-fernando.pacheco@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] HAX: force enable_guc=2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>
---
 drivers/gpu/drm/i915/i915_params.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 947d0a38fa3c..4d17235c33bd 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -56,7 +56,7 @@ struct drm_printer;
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
-	param(int, enable_guc, 0, 0400) \
+	param(int, enable_guc, 2, 0400) \
 	param(int, guc_log_level, -1, 0400) \
 	param(char *, guc_firmware_path, NULL, 0400) \
 	param(char *, huc_firmware_path, NULL, 0400) \
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
