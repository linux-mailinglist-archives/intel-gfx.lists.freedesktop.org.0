Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 761E46264C7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 23:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A080F10E8ED;
	Fri, 11 Nov 2022 22:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF8F10E8ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 22:50:18 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id d8so669226qki.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 14:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FvAh4jTbCKC82yvtx72szM35nEYutGpl1oOOpA33+TU=;
 b=TmOUbpVy/fxW25UY3cMbD/EsxtWM77C+rSzjm82BCruAZambUNFr0eIACAe0pDWa8d
 tCo9ZbaMGBatE6cskGMvOShfFZR5qLEa0jm19jDGl3yhcFQ2WaS/u+nwHRLvEU0RaQfh
 iWlrEBhj27gJMGcB+OBnuqI4rctihyIxLRm68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FvAh4jTbCKC82yvtx72szM35nEYutGpl1oOOpA33+TU=;
 b=QBot0MfVLLfCe3egYBBV2ChQFx+xwVqTneT8f+I4jiaE3fOqKdmThQjNG4WX6HOxU8
 ASnyaVYyMhUwPZKGt05nj0//783cuP5beWGrzyaHbDS1Y2M2wFgWboYmsEaqoIFQq4jH
 Cuxotmw5pjmYjg2Mxy4NK21aHPTchkX9DXLCbG9mg2ZYkLttnhLpVdw5a4Ej7P+hIUlE
 MdYsa3/s+VHQ+xP5VgstYUTsS31T3o2VFjCX0gtxE2lZZDYrOn2A0CCY1HPGF4InPKnh
 W+I8MZ0wZceIHNYeUGzliTObxShD9zvUdsp7aE/1qcLbpB6+A4Du2maXsOHAKhEXEGrl
 c6Nw==
X-Gm-Message-State: ANoB5pl6y9ZtKaqBUA0Ctesfb3GXiRLE/muwIL1J8B6J8hgb+V89xyx3
 LnZ5klWdy8F/aa8rabtyj/7IS9sgEyNE+Q==
X-Google-Smtp-Source: AA0mqf6UAxzYKJTocoD3/yschKqp/aeGxFuHf6qcx08Q+CSrK+U4ad4/KEBrNPIw9zLuaakmnnBCMQ==
X-Received: by 2002:a37:b2c6:0:b0:6fa:3204:330b with SMTP id
 b189-20020a37b2c6000000b006fa3204330bmr3063558qkf.114.1668207017220; 
 Fri, 11 Nov 2022 14:50:17 -0800 (PST)
Received: from wilburliny.c.googlers.com.com
 (189.216.85.34.bc.googleusercontent.com. [34.85.216.189])
 by smtp.gmail.com with ESMTPSA id
 a66-20020ae9e845000000b006ea7f9d8644sm2094297qkg.96.2022.11.11.14.50.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Nov 2022 14:50:16 -0800 (PST)
From: "Steven 'Steve' Kendall" <skend@chromium.org>
X-Google-Original-From: Steven 'Steve' Kendall <skend@google.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Nov 2022 22:49:30 +0000
Message-Id: <20221111224930.3961511-1-skend@google.com>
X-Mailer: git-send-email 2.38.1.431.g37b22c650d-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: disable DMC idle states for Intel UHD
 Graphics 620
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
Cc: daniel@ffwll.ch, rodrigo.vivi@intel.com,
 Steven 'Steve' Kendall <skend@google.com>, airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some machines with Intel UHD Graphics 620 (8086:5917) such as Dell
Latitude 7490 are unable to wake from sleep. Disable DMC for
Intel UHD Graphics 620.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7339
Signed-off-by: Steven 'Steve' Kendall <skend@google.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 14 ++++++++++++++
 include/drm/i915_pciids.h       |  6 +++++-
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index cd4487a1d3be..ea148be46b14 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -697,6 +697,10 @@ static const struct intel_device_info skl_gt4_info = {
 	.gt = 4,
 };
 
+#define GEN9_DMCLESS_FEATURES \
+	GEN9_FEATURES, \
+	.__runtime.has_dmc = 0
+
 #define GEN9_LP_FEATURES \
 	GEN(9), \
 	.is_lp = 1, \
@@ -753,6 +757,10 @@ static const struct intel_device_info glk_info = {
 	GEN9_FEATURES, \
 	PLATFORM(INTEL_KABYLAKE)
 
+#define KBL_DMCLESS_PLATFORM \
+	GEN9_DMCLESS_FEATURES, \
+	PLATFORM(INTEL_KABYLAKE)
+
 static const struct intel_device_info kbl_gt1_info = {
 	KBL_PLATFORM,
 	.gt = 1,
@@ -763,6 +771,11 @@ static const struct intel_device_info kbl_gt2_info = {
 	.gt = 2,
 };
 
+static const struct intel_device_info dmcless_kbl_gt2_info = {
+	KBL_DMCLESS_PLATFORM,
+	.gt = 2,
+};
+
 static const struct intel_device_info kbl_gt3_info = {
 	KBL_PLATFORM,
 	.gt = 3,
@@ -1202,6 +1215,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_GLK_IDS(&glk_info),
 	INTEL_KBL_GT1_IDS(&kbl_gt1_info),
 	INTEL_KBL_GT2_IDS(&kbl_gt2_info),
+	DMCLESS_INTEL_KBL_GT2_IDS(&dmcless_kbl_gt2_info),
 	INTEL_KBL_GT3_IDS(&kbl_gt3_info),
 	INTEL_KBL_GT4_IDS(&kbl_gt3_info),
 	INTEL_AML_KBL_GT2_IDS(&kbl_gt2_info),
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 4a4c190f7698..93bea60772ff 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -420,11 +420,15 @@
 	INTEL_KBL_ULT_GT2_IDS(info), \
 	INTEL_KBL_ULX_GT2_IDS(info), \
 	INTEL_VGA_DEVICE(0x5912, info), /* DT  GT2 */ \
-	INTEL_VGA_DEVICE(0x5917, info), /* Mobile GT2 */ \
 	INTEL_VGA_DEVICE(0x591A, info), /* SRV GT2 */ \
 	INTEL_VGA_DEVICE(0x591B, info), /* Halo GT2 */ \
 	INTEL_VGA_DEVICE(0x591D, info) /* WKS GT2 */
 
+#define DMCLESS_INTEL_KBL_GT2_IDS(info) \
+	INTEL_KBL_ULT_GT2_IDS(info), \
+	INTEL_KBL_ULX_GT2_IDS(info), \
+	INTEL_VGA_DEVICE(0x5917, info) /* Mobile GT2 */
+
 #define INTEL_KBL_ULT_GT3_IDS(info) \
 	INTEL_VGA_DEVICE(0x5926, info) /* ULT GT3 */
 
-- 
2.38.1.431.g37b22c650d-goog

