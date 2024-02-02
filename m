Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C393847AB1
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 21:48:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA8810E770;
	Fri,  2 Feb 2024 20:48:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="ho3ynX8k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27EF710E770
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 20:47:58 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-1d76671e5a4so19762885ad.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Feb 2024 12:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706906877; x=1707511677;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=xaLy47tJW0AiLrtd5Iu1i5LBUB6BoN0+uvEzRftZJvc=;
 b=ho3ynX8k28hIRutA9SHsuswzXtAJJI21uEwJIXjFSTP1CBFP5tsHuoqkfOcUlcHF6R
 PaPsX2T8RIIzCs+Uo3Qly822YbmMpAMmdCn1StN3FknU5IUcxpsYBORM1LeCEfsdKegh
 D1CV/6iaTmYPiLcXb9wG+A/qjvf7coON8Gd6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706906877; x=1707511677;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xaLy47tJW0AiLrtd5Iu1i5LBUB6BoN0+uvEzRftZJvc=;
 b=sPFSpyUVpgss2ngeLTnQc+zoRdiC3STcdseZQyRVf+plYBsAXZh43+AYqBCEiwOWeR
 oMUWe7whAUeQwo6D8v0iQ0NCQaVI+3h+Jk44KsqIG2PSUY7b21vjjK4NsZFOfWYVNdkS
 BhMF+QQxAXDR8pud7YUeIr0xNGxYyrJafy4stZVLTulz9Ny79sbVz3l5/jctC6YKrimb
 OmbmxGqoeXuzIKG0UR2P5+FUgOlN8bfOcF1LeI/jnaeRPE6uDetFEOjsKx3om5cVrMBJ
 +LSgu1ZU2Yf/naofkoP0bfPhtQpPTgb0Y7Ltz/2yVE/s270xxl+tQ2hjk0YnFaWv+Hny
 WEzQ==
X-Gm-Message-State: AOJu0YyiU0iB/DgZLkLbQVAo/hYjvRz9xuzObvTrnJ5mXNWB5K9CIqK7
 VbGpWVRRG3HdFoFUywD58YhJaqN9AQ6HgECZ844Gr1MSmn5tm1JmICP7kTx43Yal79sK00OBzvE
 =
X-Google-Smtp-Source: AGHT+IF1WFXg+G9Y9WNdsFXAWdMZxI1xCsUKQTfye6KF4BQfiDvEAZlyfVkHhbZWbynYgn6x05ENRQ==
X-Received: by 2002:a17:902:ec88:b0:1d7:6301:96e0 with SMTP id
 x8-20020a170902ec8800b001d7630196e0mr12779654plg.8.1706906876830; 
 Fri, 02 Feb 2024 12:47:56 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCVyANO8ORJ7sWLPIQVitlrRcX42OIkgp0PSf9ckGqC73cq1DrqoKdk7h+jrYF0zbD9kxkZzmeer8gmJOG/1hpSBhYVoCedSzbUUxGxh64aMJyFZEs8/eGcHMaXtMTLukovoJW4h3XJ7KT07jogVO/ETGO7+d+9MImRFZA+hHkgicSXshO3P9fsmUvz4amQHnoC/QmzmQqNnBODz4MW3AD1ScthSWuyYcNHosx7AlQ8fK3pS/xTpszxWhI+06ooLkoTl4Zc=
Received: from navaremanasi.c.googlers.com.com
 (34.133.83.34.bc.googleusercontent.com. [34.83.133.34])
 by smtp.gmail.com with ESMTPSA id
 r10-20020a170903410a00b001d94678a76csm2020593pld.117.2024.02.02.12.47.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Feb 2024 12:47:56 -0800 (PST)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <navaremanasi@chromium.org>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Sean Paul <sean@poorly.run>,
 Drew Davenport <ddavenport@chromium.org>
Subject: [PATCH v2] drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_
 PPS reg address
Date: Fri,  2 Feb 2024 20:47:52 +0000
Message-ID: <20240202204752.1210687-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
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

Commit bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS register") defines
a new macro to calculate the DSC PPS register addresses with PPS number as an
input. This macro correctly calculates the addresses till PPS 11 since the
addresses increment by 4. So in that case the following macro works correctly
to give correct register address:
_MMIO(_DSCA_PPS_0 + (pps) * 4)

However after PPS 11, the register address for PPS 12 increments by 12 because
of RC Buffer memory allocation in between. Because of this discontinuity
in the address space, the macro calculates wrong addresses for PPS 12 - 16
resulting into incorrect DSC PPS parameter value read/writes causing DSC
corruption.

This fixes it by correcting this macro to add the offset of 12 for
PPS >=12.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10172
Fixes: bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS register")
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Drew Davenport <ddavenport@chromium.org>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 64f440fdc22b..e676440af369 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -51,8 +51,8 @@
 #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
 #define _DSCA_PPS_0				0x6B200
 #define _DSCC_PPS_0				0x6BA00
-#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + (pps) * 4)
-#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + (pps) * 4)
+#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)
+#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps < 12) ? (pps):(pps + 12)) * 4)
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
 #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
-- 
2.43.0.594.gd9cf4e227d-goog

