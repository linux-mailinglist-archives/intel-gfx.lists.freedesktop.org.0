Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD4248C295
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 11:57:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E92113DB9;
	Wed, 12 Jan 2022 10:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040DA113DB6
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 10:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641985029; x=1673521029;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uZ2PsaO3Sow0PzZFGJfGVnUYXAL9VZqS8607njSZy6s=;
 b=j0Elvlpdsk6bIjhX8mX4Ekolq+22Y0r+YbBPfwMuLF+iFqmp+IKRvRp3
 UiYTRfVO6NqejXuoJAhFQjQDUKwFykkbf+YjGj8X78M6rpndU2yfj0xGq
 aETMqV6Q9qByiNjIUSMhwA6NXjRXAcrELkamKTvPRuBjp88U+Md2dsC1b
 HXK2ExwFpw6mGnTO+RJwcyVHSJeIuYpfTVR0srcXaeEfHoCGqzvlihvlq
 bbOi4Vztzr7ikOQ3ler52kurMP9qspnD+75zH1GsP42AJHVf4yJtxDclU
 pPJ9gZLMp/cDkksRok8DXl6cALGR+thgFZ7BpdhPeSLLVw6GMMRXKqRCT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="241262992"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="241262992"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 02:57:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="613534197"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 02:57:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 12:57:03 +0200
Message-Id: <20220112105703.1151391-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND] drm/i915/dp: make intel_dp_pack_aux()
 static again
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The last user of intel_dp_pack_aux() outside intel_dp_aux.c got removed
in commit ad26451a7902 ("drm/i915/display: Drop PSR support from HSW and
BDW"). Make the function static again.

Rename the pack/unpack functions to follow the usual naming conventions
while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dp_aux.h | 4 ----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 5fbb767fcd63..2bc119374555 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -10,7 +10,7 @@
 #include "intel_pps.h"
 #include "intel_tc.h"
 
-u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
+static u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
 {
 	int i;
 	u32 v = 0;
@@ -22,7 +22,7 @@ u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
 	return v;
 }
 
-static void intel_dp_unpack_aux(u32 src, u8 *dst, int dst_bytes)
+static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
 {
 	int i;
 
@@ -267,7 +267,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			for (i = 0; i < send_bytes; i += 4)
 				intel_uncore_write(uncore,
 						   ch_data[i >> 2],
-						   intel_dp_pack_aux(send + i,
+						   intel_dp_aux_pack(send + i,
 								     send_bytes - i));
 
 			/* Send the command and wait for it to complete */
@@ -352,7 +352,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		recv_bytes = recv_size;
 
 	for (i = 0; i < recv_bytes; i += 4)
-		intel_dp_unpack_aux(intel_uncore_read(uncore, ch_data[i >> 2]),
+		intel_dp_aux_unpack(intel_uncore_read(uncore, ch_data[i >> 2]),
 				    recv + i, recv_bytes - i);
 
 	ret = recv_bytes;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
index 4afbe76217b9..738577537bc7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
@@ -6,12 +6,8 @@
 #ifndef __INTEL_DP_AUX_H__
 #define __INTEL_DP_AUX_H__
 
-#include <linux/types.h>
-
 struct intel_dp;
 
-u32 intel_dp_pack_aux(const u8 *src, int src_bytes);
-
 void intel_dp_aux_fini(struct intel_dp *intel_dp);
 void intel_dp_aux_init(struct intel_dp *intel_dp);
 
-- 
2.30.2

