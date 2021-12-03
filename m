Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 831634673E7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 10:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 860B073AC1;
	Fri,  3 Dec 2021 09:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D5B73AC0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 09:25:20 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id 200so2482283pga.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Dec 2021 01:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ay7XRE2rD2I+7gg1x2EDf6O3JoxM77TpfPU8SOa5edA=;
 b=i3XxHF+gHaRCpRZmAYCifGU00eO9bKCbebuWYQI5dC2+HdNurJEGT/zgRSGxLuWkn9
 ZTeaLmsGhm4PQu2Mc+A1nQD1VS+0wqe/I+IlLJu2Kx/FnsEvmOJqqrXDc6zPiq+3F2I9
 VbUgc4nouQdgnY/5XBVOtUeBjonoxTnLiIl7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ay7XRE2rD2I+7gg1x2EDf6O3JoxM77TpfPU8SOa5edA=;
 b=ODgMtK0q/e5PMyFrMYg9Qu1YjkVTZOZCGT0jT7TsWiee4mChq07bKPLb17ConMj7Pn
 75GcQfPJSIIry9+Qu9SV5OvFNGZNugYlZ4uAzkA80xLrS87bJ4mKhBWDSk3A8g8FQRDy
 v8A8qvhgkRsB8+WeHiiuSBwVj5dVcmYpdBk7/c33pWPdtsw/tTiacyDhfVwCJqBxv9Km
 9Vgng5UtGKFNocJvsRUk7g31DTF0ki30cDNcNe/9uypX0Ezq9Ls/aHTtmMCKVmXkpkTZ
 SJk1k6ZIXY7TC1XoVwfFShk3dH+kYe3/5WVjzklruv18DJEIxD1EaWAiAvnvO/+tbQ+P
 U/TQ==
X-Gm-Message-State: AOAM5337MvxTQNH2BaHK3hOh7WiVitHjH9yssTPMBIFYladq9MOpZtn3
 eoOj5n2AkzT2v+r8/4ZNWmW/Lw==
X-Google-Smtp-Source: ABdhPJwJi+OcMzlYRpc4XdvGNKEi1tFSpvHjpF8caac+kl7RhNRGyW9zE8g4Wn2j5nvvy6Si+3F7AA==
X-Received: by 2002:a05:6a00:22d2:b0:4a0:93a:e165 with SMTP id
 f18-20020a056a0022d200b004a0093ae165mr18055631pfj.68.1638523519678; 
 Fri, 03 Dec 2021 01:25:19 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w186sm1844630pgb.80.2021.12.03.01.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Dec 2021 01:25:19 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Fri,  3 Dec 2021 01:25:17 -0800
Message-Id: <20211203092517.3592532-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2990; h=from:subject;
 bh=EDL54WuXbUixxVch1YJlggYbmNuBFOLBhCWw5v5p1Yk=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhqeJ8s17VDWgb8AUyVOeH19b0QFsCGC/PP9t5ifhw
 Fjt6sAeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYanifAAKCRCJcvTf3G3AJsyjD/
 9kUFZ6QVigvhYHljTPsjOw7rSBaK61jBsu9yB/fgaQ9kLZwGgimnLY5rQAOlbn8Qjh17GJnibI+3N9
 d86iwJb86SR438UrqeBcB88DaZ+tq5qO8KXZRasDBJjMrJxRrTDDrFj729jL2rnw2pjuSlYD/qjT3q
 QjnM5ypttORxdG8AO8/RmTlL/VaqGHOwE/q0zUI4BFm3hNhI+5LfyGXlhPcOKqEKQBmHM9Ctdfb2Po
 Tpb4UtvClUal0jP8cz5zxxloSVoMpanOi7DYZ5YdiwG9eBDEO9kMlSPAUVRzSvocRLftWgIitpxUFe
 yLqqXLs5xf7UhbgdpUuUIsXikNPReqemZI/qFqI98IrK9bOxKXaJ3FkGkap+itUc1nUVKpfMuEdI2H
 aqkKrQRpKqYPpIR7EXvwacLC/NXvzbO2MFcOhxtvtzoq0crXSPYVmKey+NGAp9wiTb1hDkqDiKGbu8
 VZU26m70TADkJyMHkaA/4HRAvb3hYh9V9T4PWgW1iloeRbopjURYfo0lc1Rx7ACr8AX+XuvjlgarcG
 EgVZ0qI7j3cFD91FananEbQAy+x66ezF+wtmFKSpt4uR6SlWodA15diBD7+y8XotGGJx2hY8teWHc4
 rog0jpgf6wdIqD0CcbzekT5lAKTU0hMOPemXXH3Lx2mBrM0wQPwGGxRslu1A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/dp: Actually read Adjust Request Post
 Cursor2 register
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-hardening@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Thierry Reding <treding@nvidia.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The link_status array was not large enough to read the Adjust Request
Post Cursor2 register. Adjust the size to include it. Found with a
-Warray-bounds build:

drivers/gpu/drm/drm_dp_helper.c: In function 'drm_dp_get_adjust_request_post_cursor':
drivers/gpu/drm/drm_dp_helper.c:59:27: error: array subscript 10 is outside array bounds of 'const u8[6]' {aka 'const unsigned char[6]'} [-Werror=array-bounds]
   59 |         return link_status[r - DP_LANE0_1_STATUS];
      |                ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/drm_dp_helper.c:147:51: note: while referencing 'link_status'
  147 | u8 drm_dp_get_adjust_request_post_cursor(const u8 link_status[DP_LINK_STATUS_SIZE],
      |                                          ~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Fixes: 79465e0ffeb9 ("drm/dp: Add helper to get post-cursor adjustments")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
v2: Fix missed array size change in intel_dp_check_mst_status()
---
 drivers/gpu/drm/i915/display/intel_dp.c |  8 ++++----
 include/drm/drm_dp_helper.h             | 10 +++++++++-
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5a8206298691..97367afc7243 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3647,17 +3647,17 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 	for (;;) {
 		/*
-		 * The +2 is because DP_DPRX_ESI_LEN is 14, but we then
+		 * The +10 is because while DP_DPRX_ESI_LEN is 14, we then
 		 * pass in "esi+10" to drm_dp_channel_eq_ok(), which
-		 * takes a 6-byte array. So we actually need 16 bytes
-		 * here.
+		 * takes a DP_LINK_STATUS_SIZE array. So we actually need
+		 * 10 bytes more than DP_LINK_STATUS_SIZE.
 		 *
 		 * Somebody who knows what the limits actually are
 		 * should check this, but for now this is at least
 		 * harmless and avoids a valid compiler warning about
 		 * using more of the array than we have allocated.
 		 */
-		u8 esi[DP_DPRX_ESI_LEN+2] = {};
+		u8 esi[DP_LINK_STATUS_SIZE + 10] = {};
 		bool handled;
 		int retry;
 
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index 472dac376284..277643d2fe2c 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -1517,7 +1517,15 @@ enum drm_dp_phy {
 #define DP_MST_LOGICAL_PORT_0 8
 
 #define DP_LINK_CONSTANT_N_VALUE 0x8000
-#define DP_LINK_STATUS_SIZE	   6
+/*
+ * DPCD registers in link_status:
+ * Link Status:		0x202 through 0x204
+ * Sink Status:		0x205
+ * Adjust Request:	0x206 through 0x207
+ * Training Score:	0x208 through 0x20b
+ * AR Post Cursor2:	0x20c
+ */
+#define DP_LINK_STATUS_SIZE	   11
 bool drm_dp_channel_eq_ok(const u8 link_status[DP_LINK_STATUS_SIZE],
 			  int lane_count);
 bool drm_dp_clock_recovery_ok(const u8 link_status[DP_LINK_STATUS_SIZE],
-- 
2.30.2

