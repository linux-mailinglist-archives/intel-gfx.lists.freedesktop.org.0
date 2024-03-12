Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F7E879FD5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 00:51:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FF3010F24C;
	Tue, 12 Mar 2024 23:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CDWkQS4a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B9B10F24A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 23:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710287475; x=1741823475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fAGKtNxrEBqDVK4nfVFFNeIfQTMlnz9HYDuakfX1Hz4=;
 b=CDWkQS4awEkxFzBPSRZMrJmnY+9lJ7heCy0QBjsRHgy1kjLW+KbI0nqZ
 lsYJqZ2b0+mtJGJTaIFlzCkQ11iucFG8CvOWg8OX59UzUHk8YnfXe1H0l
 29x73XLQ+tnDXc637WtulW530/eD9P3ofU3SS+INIBAUMSgiOWABQJzxa
 WwU7R3cGwpVGzpo0/cDfSf7yo2M5pWH4r2/vbwVrocK1IN8bDMMn/2jiv
 0lstd0nCmiVO9yEBOm4PQ6lj+CfbRcFz879tLmQKuJP8inJGUpKJ+4mfp
 gdX9Ns+nNu5oF1KV2yfsXvq/u2qQ8Z+O1o37bk5mw5WmmYJOGjF9nhYXU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8848040"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8848040"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="42715875"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH v2 2/6] drm/i915: Remove XEHP_FWRANGES()
Date: Tue, 12 Mar 2024 16:51:41 -0700
Message-ID: <20240312235145.2443975-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240312235145.2443975-1-lucas.demarchi@intel.com>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that DG2 is the only user of this forcewake table, remove the macro
and use FORCEWAKE_RENDER explicitly for range 0xd800 - 0xd87f.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 297 ++++++++++++++--------------
 1 file changed, 145 insertions(+), 152 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 7695bb946fff..b525318dbd53 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1471,159 +1471,152 @@ static const struct intel_forcewake_range __gen12_fw_ranges[] = {
 		0x1d3f00 - 0x1d3fff: VD2 */
 };
 
-/*
- * Graphics IP version 12.55 brings a slight change to the 0xd800 range,
- * switching it from the GT domain to the render domain.
- */
-#define XEHP_FWRANGES(FW_RANGE_D800)					\
-	GEN_FW_RANGE(0x0, 0x1fff, 0), /*					\
-		  0x0 -  0xaff: reserved					\
-		0xb00 - 0x1fff: always on */					\
-	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),				\
-	GEN_FW_RANGE(0x2700, 0x4aff, FORCEWAKE_GT),				\
-	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*					\
-		0x4b00 - 0x4fff: reserved					\
-		0x5000 - 0x51ff: always on */					\
-	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),				\
-	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_GT),				\
-	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),				\
-	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*					\
-		0x8160 - 0x817f: reserved					\
-		0x8180 - 0x81ff: always on */					\
-	GEN_FW_RANGE(0x8200, 0x82ff, FORCEWAKE_GT),				\
-	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),				\
-	GEN_FW_RANGE(0x8500, 0x8cff, FORCEWAKE_GT), /*				\
-		0x8500 - 0x87ff: gt						\
-		0x8800 - 0x8c7f: reserved					\
-		0x8c80 - 0x8cff: gt (DG2 only) */				\
-	GEN_FW_RANGE(0x8d00, 0x8fff, FORCEWAKE_RENDER), /*			\
-		0x8d00 - 0x8dff: render (DG2 only)				\
-		0x8e00 - 0x8fff: reserved */					\
-	GEN_FW_RANGE(0x9000, 0x94cf, FORCEWAKE_GT), /*				\
-		0x9000 - 0x947f: gt						\
-		0x9480 - 0x94cf: reserved */					\
-	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),				\
-	GEN_FW_RANGE(0x9560, 0x967f, 0), /*					\
-		0x9560 - 0x95ff: always on					\
-		0x9600 - 0x967f: reserved */					\
-	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*			\
-		0x9680 - 0x96ff: render (DG2 only)				\
-		0x9700 - 0x97ff: reserved */					\
-	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*				\
-		0x9800 - 0xb4ff: gt						\
-		0xb500 - 0xbfff: reserved					\
-		0xc000 - 0xcfff: gt */						\
-	GEN_FW_RANGE(0xd000, 0xd7ff, 0),					\
-	GEN_FW_RANGE(0xd800, 0xd87f, FW_RANGE_D800),			\
-	GEN_FW_RANGE(0xd880, 0xdbff, FORCEWAKE_GT),				\
-	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),				\
-	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*				\
-		0xdd00 - 0xddff: gt						\
-		0xde00 - 0xde7f: reserved */					\
-	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*			\
-		0xde80 - 0xdfff: render						\
-		0xe000 - 0xe0ff: reserved					\
-		0xe100 - 0xe8ff: render */					\
-	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*				\
-		0xe900 - 0xe9ff: gt						\
-		0xea00 - 0xefff: reserved					\
-		0xf000 - 0xffff: gt */						\
-	GEN_FW_RANGE(0x10000, 0x12fff, 0), /*					\
-		0x10000 - 0x11fff: reserved					\
-		0x12000 - 0x127ff: always on					\
-		0x12800 - 0x12fff: reserved */					\
-	GEN_FW_RANGE(0x13000, 0x131ff, FORCEWAKE_MEDIA_VDBOX0), /* DG2 only */	\
-	GEN_FW_RANGE(0x13200, 0x147ff, FORCEWAKE_MEDIA_VDBOX2), /*		\
-		0x13200 - 0x133ff: VD2 (DG2 only)				\
-		0x13400 - 0x147ff: reserved */					\
-	GEN_FW_RANGE(0x14800, 0x14fff, FORCEWAKE_RENDER),			\
-	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*			\
-		0x15000 - 0x15fff: gt (DG2 only)				\
-		0x16000 - 0x16dff: reserved */					\
-	GEN_FW_RANGE(0x16e00, 0x21fff, FORCEWAKE_RENDER), /*			\
-		0x16e00 - 0x1ffff: render					\
-		0x20000 - 0x21fff: reserved */					\
-	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),				\
-	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*					\
-		0x24000 - 0x2407f: always on					\
-		0x24080 - 0x2417f: reserved */					\
-	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*			\
-		0x24180 - 0x241ff: gt						\
-		0x24200 - 0x249ff: reserved */					\
-	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*			\
-		0x24a00 - 0x24a7f: render					\
-		0x24a80 - 0x251ff: reserved */					\
-	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*			\
-		0x25200 - 0x252ff: gt						\
-		0x25300 - 0x25fff: reserved */					\
-	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*			\
-		0x26000 - 0x27fff: render					\
-		0x28000 - 0x29fff: reserved					\
-		0x2a000 - 0x2ffff: undocumented */				\
-	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT),				\
-	GEN_FW_RANGE(0x40000, 0x1bffff, 0),					\
-	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*		\
-		0x1c0000 - 0x1c2bff: VD0					\
-		0x1c2c00 - 0x1c2cff: reserved					\
-		0x1c2d00 - 0x1c2dff: VD0					\
-		0x1c2e00 - 0x1c3eff: VD0 (DG2 only)				\
-		0x1c3f00 - 0x1c3fff: VD0 */					\
-	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*		\
-		0x1c4000 - 0x1c6bff: VD1					\
-		0x1c6c00 - 0x1c6cff: reserved					\
-		0x1c6d00 - 0x1c6dff: VD1					\
-		0x1c6e00 - 0x1c7fff: reserved */				\
-	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*		\
-		0x1c8000 - 0x1ca0ff: VE0					\
-		0x1ca100 - 0x1cbfff: reserved */				\
-	GEN_FW_RANGE(0x1cc000, 0x1ccfff, FORCEWAKE_MEDIA_VDBOX0),		\
-	GEN_FW_RANGE(0x1cd000, 0x1cdfff, FORCEWAKE_MEDIA_VDBOX2),		\
-	GEN_FW_RANGE(0x1ce000, 0x1cefff, FORCEWAKE_MEDIA_VDBOX4),		\
-	GEN_FW_RANGE(0x1cf000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX6),		\
-	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*		\
-		0x1d0000 - 0x1d2bff: VD2					\
-		0x1d2c00 - 0x1d2cff: reserved					\
-		0x1d2d00 - 0x1d2dff: VD2					\
-		0x1d2e00 - 0x1d3dff: VD2 (DG2 only)				\
-		0x1d3e00 - 0x1d3eff: reserved					\
-		0x1d3f00 - 0x1d3fff: VD2 */					\
-	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*		\
-		0x1d4000 - 0x1d6bff: VD3					\
-		0x1d6c00 - 0x1d6cff: reserved					\
-		0x1d6d00 - 0x1d6dff: VD3					\
-		0x1d6e00 - 0x1d7fff: reserved */				\
-	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*		\
-		0x1d8000 - 0x1da0ff: VE1					\
-		0x1da100 - 0x1dffff: reserved */				\
-	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*		\
-		0x1e0000 - 0x1e2bff: VD4					\
-		0x1e2c00 - 0x1e2cff: reserved					\
-		0x1e2d00 - 0x1e2dff: VD4					\
-		0x1e2e00 - 0x1e3eff: reserved					\
-		0x1e3f00 - 0x1e3fff: VD4 */					\
-	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*		\
-		0x1e4000 - 0x1e6bff: VD5					\
-		0x1e6c00 - 0x1e6cff: reserved					\
-		0x1e6d00 - 0x1e6dff: VD5					\
-		0x1e6e00 - 0x1e7fff: reserved */				\
-	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*		\
-		0x1e8000 - 0x1ea0ff: VE2					\
-		0x1ea100 - 0x1effff: reserved */				\
-	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*		\
-		0x1f0000 - 0x1f2bff: VD6					\
-		0x1f2c00 - 0x1f2cff: reserved					\
-		0x1f2d00 - 0x1f2dff: VD6					\
-		0x1f2e00 - 0x1f3eff: reserved					\
-		0x1f3f00 - 0x1f3fff: VD6 */					\
-	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*		\
-		0x1f4000 - 0x1f6bff: VD7					\
-		0x1f6c00 - 0x1f6cff: reserved					\
-		0x1f6d00 - 0x1f6dff: VD7					\
-		0x1f6e00 - 0x1f7fff: reserved */				\
-	GEN_FW_RANGE(0x1f8000, 0x1fa0ff, FORCEWAKE_MEDIA_VEBOX3),
-
 static const struct intel_forcewake_range __dg2_fw_ranges[] = {
-	XEHP_FWRANGES(FORCEWAKE_RENDER)
+	GEN_FW_RANGE(0x0, 0x1fff, 0), /*
+		  0x0 -  0xaff: reserved
+		0xb00 - 0x1fff: always on */
+	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x2700, 0x4aff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*
+		0x4b00 - 0x4fff: reserved
+		0x5000 - 0x51ff: always on */
+	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*
+		0x8160 - 0x817f: reserved
+		0x8180 - 0x81ff: always on */
+	GEN_FW_RANGE(0x8200, 0x82ff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x8500, 0x8cff, FORCEWAKE_GT), /*
+		0x8500 - 0x87ff: gt
+		0x8800 - 0x8c7f: reserved
+		0x8c80 - 0x8cff: gt (DG2 only) */
+	GEN_FW_RANGE(0x8d00, 0x8fff, FORCEWAKE_RENDER), /*
+		0x8d00 - 0x8dff: render (DG2 only)
+		0x8e00 - 0x8fff: reserved */
+	GEN_FW_RANGE(0x9000, 0x94cf, FORCEWAKE_GT), /*
+		0x9000 - 0x947f: gt
+		0x9480 - 0x94cf: reserved */
+	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
+		0x9560 - 0x95ff: always on
+		0x9600 - 0x967f: reserved */
+	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
+		0x9680 - 0x96ff: render
+		0x9700 - 0x97ff: reserved */
+	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
+		0x9800 - 0xb4ff: gt
+		0xb500 - 0xbfff: reserved
+		0xc000 - 0xcfff: gt */
+	GEN_FW_RANGE(0xd000, 0xd7ff, 0),
+	GEN_FW_RANGE(0xd800, 0xd87f, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0xd880, 0xdbff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
+		0xdd00 - 0xddff: gt
+		0xde00 - 0xde7f: reserved */
+	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
+		0xde80 - 0xdfff: render
+		0xe000 - 0xe0ff: reserved
+		0xe100 - 0xe8ff: render */
+	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*
+		0xe900 - 0xe9ff: gt
+		0xea00 - 0xefff: reserved
+		0xf000 - 0xffff: gt */
+	GEN_FW_RANGE(0x10000, 0x12fff, 0), /*
+		0x10000 - 0x11fff: reserved
+		0x12000 - 0x127ff: always on
+		0x12800 - 0x12fff: reserved */
+	GEN_FW_RANGE(0x13000, 0x131ff, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x13200, 0x147ff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x13200 - 0x133ff: VD2 (DG2 only)
+		0x13400 - 0x147ff: reserved */
+	GEN_FW_RANGE(0x14800, 0x14fff, FORCEWAKE_RENDER),
+	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*
+		0x15000 - 0x15fff: gt (DG2 only)
+		0x16000 - 0x16dff: reserved */
+	GEN_FW_RANGE(0x16e00, 0x21fff, FORCEWAKE_RENDER), /*
+		0x16e00 - 0x1ffff: render
+		0x20000 - 0x21fff: reserved */
+	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
+		0x24000 - 0x2407f: always on
+		0x24080 - 0x2417f: reserved */
+	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*
+		0x24180 - 0x241ff: gt
+		0x24200 - 0x249ff: reserved */
+	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*
+		0x24a00 - 0x24a7f: render
+		0x24a80 - 0x251ff: reserved */
+	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*
+		0x25200 - 0x252ff: gt
+		0x25300 - 0x25fff: reserved */
+	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*
+		0x26000 - 0x27fff: render
+		0x28000 - 0x29fff: reserved
+		0x2a000 - 0x2ffff: undocumented */
+	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT),
+	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
+	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
+		0x1c0000 - 0x1c2bff: VD0
+		0x1c2c00 - 0x1c2cff: reserved
+		0x1c2d00 - 0x1c2dff: VD0
+		0x1c2e00 - 0x1c3eff: VD0
+		0x1c3f00 - 0x1c3fff: VD0 */
+	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*
+		0x1c4000 - 0x1c6bff: VD1
+		0x1c6c00 - 0x1c6cff: reserved
+		0x1c6d00 - 0x1c6dff: VD1
+		0x1c6e00 - 0x1c7fff: reserved */
+	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
+		0x1c8000 - 0x1ca0ff: VE0
+		0x1ca100 - 0x1cbfff: reserved */
+	GEN_FW_RANGE(0x1cc000, 0x1ccfff, FORCEWAKE_MEDIA_VDBOX0),
+	GEN_FW_RANGE(0x1cd000, 0x1cdfff, FORCEWAKE_MEDIA_VDBOX2),
+	GEN_FW_RANGE(0x1ce000, 0x1cefff, FORCEWAKE_MEDIA_VDBOX4),
+	GEN_FW_RANGE(0x1cf000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX6),
+	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*
+		0x1d0000 - 0x1d2bff: VD2
+		0x1d2c00 - 0x1d2cff: reserved
+		0x1d2d00 - 0x1d2dff: VD2
+		0x1d2e00 - 0x1d3dff: VD2
+		0x1d3e00 - 0x1d3eff: reserved
+		0x1d3f00 - 0x1d3fff: VD2 */
+	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*
+		0x1d4000 - 0x1d6bff: VD3
+		0x1d6c00 - 0x1d6cff: reserved
+		0x1d6d00 - 0x1d6dff: VD3
+		0x1d6e00 - 0x1d7fff: reserved */
+	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*
+		0x1d8000 - 0x1da0ff: VE1
+		0x1da100 - 0x1dffff: reserved */
+	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*
+		0x1e0000 - 0x1e2bff: VD4
+		0x1e2c00 - 0x1e2cff: reserved
+		0x1e2d00 - 0x1e2dff: VD4
+		0x1e2e00 - 0x1e3eff: reserved
+		0x1e3f00 - 0x1e3fff: VD4 */
+	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*
+		0x1e4000 - 0x1e6bff: VD5
+		0x1e6c00 - 0x1e6cff: reserved
+		0x1e6d00 - 0x1e6dff: VD5
+		0x1e6e00 - 0x1e7fff: reserved */
+	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*
+		0x1e8000 - 0x1ea0ff: VE2
+		0x1ea100 - 0x1effff: reserved */
+	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*
+		0x1f0000 - 0x1f2bff: VD6
+		0x1f2c00 - 0x1f2cff: reserved
+		0x1f2d00 - 0x1f2dff: VD6
+		0x1f2e00 - 0x1f3eff: reserved
+		0x1f3f00 - 0x1f3fff: VD6 */
+	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*
+		0x1f4000 - 0x1f6bff: VD7
+		0x1f6c00 - 0x1f6cff: reserved
+		0x1f6d00 - 0x1f6dff: VD7
+		0x1f6e00 - 0x1f7fff: reserved */
+	GEN_FW_RANGE(0x1f8000, 0x1fa0ff, FORCEWAKE_MEDIA_VEBOX3),
 };
 
 static const struct intel_forcewake_range __pvc_fw_ranges[] = {
-- 
2.43.0

