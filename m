Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 672917F854E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 21:56:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A0610E0E2;
	Fri, 24 Nov 2023 20:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EE710E0E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 20:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700859369; x=1732395369;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PJQRCBKHOTbIGPWgtfco9MhfNT44V/PENCBOQ5i29JM=;
 b=IBdC/X6JZvv8nWSR1zLnG9mkAIZsJlIV7CZsRdtH46/SyHzPgB6rryDa
 jKJMUkKipRTsRn17cViHKMw7Fjc4E8UI/BOTAR5c1rOs0FnPjXpEP2wZi
 hYC4vaM6tHRHeo+k83ME6Eil3Ew7O50G6Fo88KmWZ5T6IwOgsKvjt27ZW
 yL2TYNrY5ZT50wsEVfZARTF1/Hrt6nng5Swx+qZtLRr+5q3yylMVwikE4
 rM0LXxbHJoIFXUqy9MIV7zLkK7r3miYl9fK1buL2r/flrDwGchKDBlj81
 QmM/L/NpP6d5NQCH7U0KKV5jWKar1LqyBK6gr1ad8CKjGdncuBfnPVA85 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10904"; a="456809359"
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="456809359"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 12:56:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,224,1695711600"; d="scan'208";a="16055334"
Received: from rchaubey-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.36.179])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 12:56:06 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Nov 2023 17:55:23 -0300
Message-ID: <20231124205522.57696-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from tables
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The cdclk tables were introduced with commit 736da8112fee ("drm/i915:
Use literal representation of cdclk tables"). It has been almost 4 years
and the divider field was not really used yet. Let's remove it.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++-----------
 1 file changed, 134 insertions(+), 135 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b93d1ad7936d..7f85a216ff5c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
 	u32 cdclk;
 	u16 refclk;
 	u16 waveform;
-	u8 divider;	/* CD2X divider * 2 */
 	u8 ratio;
 };
 
 static const struct intel_cdclk_vals bxt_cdclk_table[] = {
-	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
-	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
-	{ .refclk = 19200, .cdclk = 384000, .divider = 3, .ratio = 60 },
-	{ .refclk = 19200, .cdclk = 576000, .divider = 2, .ratio = 60 },
-	{ .refclk = 19200, .cdclk = 624000, .divider = 2, .ratio = 65 },
+	{ .refclk = 19200, .cdclk = 144000, .ratio = 60 },
+	{ .refclk = 19200, .cdclk = 288000, .ratio = 60 },
+	{ .refclk = 19200, .cdclk = 384000, .ratio = 60 },
+	{ .refclk = 19200, .cdclk = 576000, .ratio = 60 },
+	{ .refclk = 19200, .cdclk = 624000, .ratio = 65 },
 	{}
 };
 
 static const struct intel_cdclk_vals glk_cdclk_table[] = {
-	{ .refclk = 19200, .cdclk =  79200, .divider = 8, .ratio = 33 },
-	{ .refclk = 19200, .cdclk = 158400, .divider = 4, .ratio = 33 },
-	{ .refclk = 19200, .cdclk = 316800, .divider = 2, .ratio = 33 },
+	{ .refclk = 19200, .cdclk =  79200, .ratio = 33 },
+	{ .refclk = 19200, .cdclk = 158400, .ratio = 33 },
+	{ .refclk = 19200, .cdclk = 316800, .ratio = 33 },
 	{}
 };
 
 static const struct intel_cdclk_vals icl_cdclk_table[] = {
-	{ .refclk = 19200, .cdclk = 172800, .divider = 2, .ratio = 18 },
-	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
-	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
-	{ .refclk = 19200, .cdclk = 326400, .divider = 4, .ratio = 68 },
-	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
-	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
-
-	{ .refclk = 24000, .cdclk = 180000, .divider = 2, .ratio = 15 },
-	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
-	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
-	{ .refclk = 24000, .cdclk = 324000, .divider = 4, .ratio = 54 },
-	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
-	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
-
-	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
-	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
-	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
-	{ .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{ .refclk = 19200, .cdclk = 172800, .ratio = 18 },
+	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
+	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
+	{ .refclk = 19200, .cdclk = 326400, .ratio = 68 },
+	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
+	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
+
+	{ .refclk = 24000, .cdclk = 180000, .ratio = 15 },
+	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
+	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
+	{ .refclk = 24000, .cdclk = 324000, .ratio = 54 },
+	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
+	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
+
+	{ .refclk = 38400, .cdclk = 172800, .ratio =  9 },
+	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
+	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
+	{ .refclk = 38400, .cdclk = 326400, .ratio = 34 },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
 	{}
 };
 
 static const struct intel_cdclk_vals rkl_cdclk_table[] = {
-	{ .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
-	{ .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
-	{ .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
-	{ .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
-	{ .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
-	{ .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
-
-	{ .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
-	{ .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
-	{ .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
-	{ .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
-	{ .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
-	{ .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
-
-	{ .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
-	{ .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
-	{ .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
-	{ .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
+	{ .refclk = 19200, .cdclk = 172800, .ratio =  36 },
+	{ .refclk = 19200, .cdclk = 192000, .ratio =  40 },
+	{ .refclk = 19200, .cdclk = 307200, .ratio =  64 },
+	{ .refclk = 19200, .cdclk = 326400, .ratio = 136 },
+	{ .refclk = 19200, .cdclk = 556800, .ratio = 116 },
+	{ .refclk = 19200, .cdclk = 652800, .ratio = 136 },
+
+	{ .refclk = 24000, .cdclk = 180000, .ratio =  30 },
+	{ .refclk = 24000, .cdclk = 192000, .ratio =  32 },
+	{ .refclk = 24000, .cdclk = 312000, .ratio =  52 },
+	{ .refclk = 24000, .cdclk = 324000, .ratio = 108 },
+	{ .refclk = 24000, .cdclk = 552000, .ratio =  92 },
+	{ .refclk = 24000, .cdclk = 648000, .ratio = 108 },
+
+	{ .refclk = 38400, .cdclk = 172800, .ratio = 18 },
+	{ .refclk = 38400, .cdclk = 192000, .ratio = 20 },
+	{ .refclk = 38400, .cdclk = 307200, .ratio = 32 },
+	{ .refclk = 38400, .cdclk = 326400, .ratio = 68 },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 58 },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 68 },
 	{}
 };
 
 static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] = {
-	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
-	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
-	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
+	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
+	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
+	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
 
-	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
-	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
-	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
+	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
+	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
+	{ .refclk = 24400, .cdclk = 648000, .ratio = 54 },
 
-	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
 	{}
 };
 
 static const struct intel_cdclk_vals adlp_cdclk_table[] = {
-	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
-	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
-	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
-	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
-	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
-
-	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
-	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
-	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
-	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
-	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
-
-	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
-	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
-	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
+	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
+	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
+	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
+	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
+
+	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
+	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
+	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
+	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
+	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
+
+	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
+	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
+	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
 	{}
 };
 
 static const struct intel_cdclk_vals rplu_cdclk_table[] = {
-	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
-	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
-	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
-	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
-	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
-	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
-
-	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
-	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
-	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
-	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
-	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
-	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
-
-	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
-	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
-	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
-	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
+	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
+	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
+	{ .refclk = 19200, .cdclk = 480000, .ratio = 50 },
+	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
+	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
+
+	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
+	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
+	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
+	{ .refclk = 24000, .cdclk = 480000, .ratio = 40 },
+	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
+	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
+
+	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
+	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
+	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
+	{ .refclk = 38400, .cdclk = 480000, .ratio = 25 },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
 	{}
 };
 
 static const struct intel_cdclk_vals dg2_cdclk_table[] = {
-	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
-	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
-	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
-	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
-	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
-	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
-	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
-	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
-	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
-	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
-	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
-	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 163200, .ratio = 34, .waveform = 0x8888 },
+	{ .refclk = 38400, .cdclk = 204000, .ratio = 34, .waveform = 0x9248 },
+	{ .refclk = 38400, .cdclk = 244800, .ratio = 34, .waveform = 0xa4a4 },
+	{ .refclk = 38400, .cdclk = 285600, .ratio = 34, .waveform = 0xa54a },
+	{ .refclk = 38400, .cdclk = 326400, .ratio = 34, .waveform = 0xaaaa },
+	{ .refclk = 38400, .cdclk = 367200, .ratio = 34, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 408000, .ratio = 34, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 448800, .ratio = 34, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 489600, .ratio = 34, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 530400, .ratio = 34, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
 	{}
 };
 
 static const struct intel_cdclk_vals mtl_cdclk_table[] = {
-	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
-	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
-	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
-	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0x0000 },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0x0000 },
 	{}
 };
 
 static const struct intel_cdclk_vals lnl_cdclk_table[] = {
-	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
-	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
-	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
-	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
-	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
-	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
-	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
-	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
-	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
-	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
-	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
-	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
-	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
-	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
-	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
-	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
-	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
-	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
-	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
-	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
-	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
+	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
+	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
+	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
+	{ .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
+	{ .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
+	{ .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
+	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
+	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
 	{}
 };
 
-- 
2.42.1

