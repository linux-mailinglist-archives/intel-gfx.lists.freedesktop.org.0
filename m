Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2440C87629A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 12:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3129E1129F1;
	Fri,  8 Mar 2024 11:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HBqE2SOS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3803C1122CB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709895661; x=1741431661;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RdYW/DEqW8fb79gzkjbK1bc+WTqQ+Rjx6FDNe7jwyis=;
 b=HBqE2SOSYvJpMgm7cceEcqmM0yt2HdVf3rFEL7U34x29OfyQhLeCr7tz
 AMrfRKQChqyOV24m1AyK7A8FRqvM6Wt2CFQzYH3FBSsUTApoRT053UzYP
 KLx08WbNhPwlSf6xWqcuuuAVsYbr2M+yX3vFGzYglxzKZfO5fKG9qUFIT
 10tuWre5pkDPk5KbtxZN/oGNYxkHWEcj1UbSZXrRjgGHQ88XmZpFCpkb4
 C9nrRGT5jybZNlhbudt7pa69K64YuE4TvnDBlSa26ZSkXDojHro6g3hBb
 BQgzL7jpXo1z5tJRH2CYdfUayEkZsLHUBh2b/xNDTQKs3Ue2YJUaLAmse Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4480309"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4480309"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 03:01:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15130035"
Received: from mkupniew-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.210])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 03:00:59 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 1/5] drm/i915/display: Make intel_dp_aux_fw_sync_len
 available for PSR code
Date: Fri,  8 Mar 2024 13:00:35 +0200
Message-Id: <20240308110039.3900838-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240308110039.3900838-1-jouni.hogander@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
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

ALPM AUX-Wake fast wake sync pulse count is needed by PSR to calculate IO
wake and fast wake lines. Convert intel_dp_aux_fw_sync_len as non-static
to make it available for PSR code.

v2: use int instead of u8

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 4f4a0e3b3114..7e69be100d90 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -143,7 +143,7 @@ static int intel_dp_aux_sync_len(void)
 	return precharge + preamble;
 }
 
-static int intel_dp_aux_fw_sync_len(void)
+int intel_dp_aux_fw_sync_len(void)
 {
 	int precharge = 10; /* 10-16 */
 	int preamble = 8;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 8447f3e601fe..76d1f2ed7c2f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -20,5 +20,6 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
 
 void intel_dp_aux_irq_handler(struct drm_i915_private *i915);
 u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
+int intel_dp_aux_fw_sync_len(void);
 
 #endif /* __INTEL_DP_AUX_H__ */
-- 
2.34.1

