Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D9F1A2D25
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 02:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7936EB2A;
	Thu,  9 Apr 2020 00:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 334466EB29
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 00:57:31 +0000 (UTC)
IronPort-SDR: EfMUF8zmPGoZhkiRwxxdZ87jYuFrNU72o+ZP/q+WI4VHtu+c1OnJQKnYeiIDEpUEld8gyLTXEq
 yNK9/W/r9U3A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 17:57:31 -0700
IronPort-SDR: +1FsDDVs7jBbskMuJZXC1BI82a5C7saWQoKGUyokPV1VLpcstCblAeRMqjIiNj4o/rV7YvHy+P
 yNb9vLT/AWXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,360,1580803200"; d="scan'208";a="244185381"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2020 17:57:31 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 17:56:58 -0700
Message-Id: <20200409005658.12262-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409005658.12262-1-daniele.ceraolospurio@intel.com>
References: <20200409005658.12262-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] HAX: drm/i915: default to enable_guc=2
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

To enable GuC and HuC loading on all gen9+ CI machines.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/i915_params.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 45323732f099..7b5d32c990bc 100644
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
