Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 421B923F21F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 19:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2C68996F;
	Fri,  7 Aug 2020 17:45:25 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F909897EE
 for <Intel-GFX@lists.freedesktop.org>; Fri,  7 Aug 2020 17:45:22 +0000 (UTC)
IronPort-SDR: d7w0pdynGa17DipD1fSz8fL7igzMH0tcVWrVwFkA0wmDfz4Bzk+LZIrhTmX7eURxLwgwVUZ7Ht
 CHUFSxt4W8kQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9706"; a="132712929"
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="132712929"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 10:45:22 -0700
IronPort-SDR: fPWDd69tDUhw9Le81RXQVcSq5l1X1fzfuz98hEWu/GnFjQWKPe/kakBEhrNDEPSGCxQHRRqwEB
 X0Zs2ACs8JuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="307447335"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 07 Aug 2020 10:45:21 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  7 Aug 2020 10:46:37 -0700
Message-Id: <20200807174637.375324-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200807174637.375324-1-John.C.Harrison@Intel.com>
References: <20200807174637.375324-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/uc: turn on GuC/HuC auto mode by
 default
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

This will enable HuC loading for Gen11+ by default if the binaries
are available on the system. GuC submission still requires explicit
enabling by the user.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/i915_params.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 53fb5ba8fbed..5b7644770e9b 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -57,7 +57,7 @@ struct drm_printer;
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
-	param(int, enable_guc, 0, 0400) \
+	param(int, enable_guc, -1, 0400) \
 	param(int, guc_log_level, -1, 0400) \
 	param(char *, guc_firmware_path, NULL, 0400) \
 	param(char *, huc_firmware_path, NULL, 0400) \
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
