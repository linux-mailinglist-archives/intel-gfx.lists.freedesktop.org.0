Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8F9C8CCEE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 05:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8D010E13B;
	Thu, 27 Nov 2025 04:44:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lem1Ozhk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E1DE10E13B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Nov 2025 04:44:10 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id
 d2e1a72fcca58-7aa9be9f03aso350261b3a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 20:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764218650; x=1764823450; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=x7BjBMa+JRnqZfeT1IW4v+bUgZq+0v2oxPOk5e1+Mak=;
 b=lem1OzhkBAiWKL7o9KfeSHO0pJok02NzV9I8Lo0P5xhkB5CU1zMnWwHdTNHBUntidA
 nkFqV2jkN9QDLlwCYl/lkKLoV+6DnGTsBZTBLTc/NsWyc7kkEo0RJo0+oUQr2kA/1B2u
 9nQyOz9XOKm5jPlLfMlTSL32q+LSOL7F9mXAFnKEJPZs9o98xwNmy7QcQH+Fq9f3YDFn
 7DAQcWKFcPfLV0VaRUkhAplPq6Yo75e6SvQnqmGadOkyRAs+BoLtXe4VDMGvxrgyOIZI
 OKX5t4dLVdGCGcMxs0fKdumDfxqOqmgnhUE3h2/zr0kui14GArbpw5BJrz/5DQFURfjW
 RJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764218650; x=1764823450;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x7BjBMa+JRnqZfeT1IW4v+bUgZq+0v2oxPOk5e1+Mak=;
 b=OskIx7BkkQuojXUYJrq4VSzWN9hA1n70bN7tye2JVOTwgyZHIAuDdJIfTeQWU2lbjZ
 CmERcu5iLjyFFxPDRoNMWF/9K3oRDIZdASY3cJNmoo7BIbk4yFJ1X026dypnVRJu4I2Z
 WvrzsuBjektpz9XpMqRx6FE8I6YJhaUvOXcpswf2rBcFTmDam5ODwe1j3MGhlKI+2Uu2
 YSLTPGmSwpS4+9wkDqoYX7cGC22LZS902xK45AOAEhj1rE1tFJ50Yk7dEoqjoUk6SCmW
 v4CsgqyUTYwRql1ZRdduaBWWn7R1rCrjIw3ogS8KKUlHXZ5A+49nCWHktcfzbBHMUdes
 RiCA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXceMF9KDk7XSqCTUIRLvXSdYznWkKr6tbJnrkk/mosMGQEoR8SyE+xMJprzAYH6j3GBtwYRhBBgnM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzwdMiJhawPJGi7uk0M3ggefdg+3KbRiSU4yWTmsxC98NnE/i2G
 pBlU3B+IpTSVOknjHKitejayVeGV8KTJ8mWwNyH7D/jtp6cnzQpR5Y0A
X-Gm-Gg: ASbGncsNZnYdHfM2nuTQg+jf/UDpnF7DzRnmAcXNlbd9/3LZJ6yiGj2Lrwqh+A5lMKV
 oZ2aSMVSK81VEjMjNZQ6JItZhA9+qgq7ePxz0fGIsSbCSF4meFw7SHSot4hhlQhyD+Yuyq3RuUO
 rFwtHX2NnEiyGqdbaoHpd1VyWbs5ZvMNF6GgCfnU+xFrVVBSiNUDKhE2qdFEV3ykwBJwNKH4c/K
 ABnJ4ka0mFLlrr4PmXVENBQ/hLg/VpOz7eR6NYZWF1F2/TBLY64qlq7POArMUp6tkfiJB/NS7+5
 ENCtZRPVwLg5h0dqm2BnbvJvfqMrzeaqkqO/0CfYsDsbqWYBtfgwdOF1uw7RYiYWhK+2DRr5G0q
 ApIb0bd04wvywo+pRIz88bGPHencJhYudfEMOQ/dO0RYNXnBCTfCZtdr3qLBUVVxYFDwJnJrmZi
 6MznqakQqipoR1QLHWNcH9bDXWFeESKbeqTdg8I+q9
X-Google-Smtp-Source: AGHT+IGzwx8XxKIfrZDVhykQGzSqr62sGMg9gUipriPRuelgVcksceVllUvwkK7+tgeHc5shxjATTQ==
X-Received: by 2002:a05:6a00:2e9e:b0:7b2:1fb0:6da0 with SMTP id
 d2e1a72fcca58-7c58e602d9dmr26604730b3a.28.1764218649685; 
 Wed, 26 Nov 2025 20:44:09 -0800 (PST)
Received: from localhost (211-75-139-220.hinet-ip.hinet.net. [211.75.139.220])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7d150b6853bsm313375b3a.14.2025.11.26.20.44.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Nov 2025 20:44:09 -0800 (PST)
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/dp: Add byte-by-byte fallback for broken USB-C
 adapters
Date: Thu, 27 Nov 2025 12:44:06 +0800
Message-ID: <20251127044406.618543-1-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.43.0
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

Some USB-C hubs and adapters have buggy firmware where multi-byte AUX
reads from DPCD address 0x00000 consistently timeout, while single-byte
reads from the same address work correctly.

Known affected devices that exhibit this issue:
- Lenovo USB-C to VGA adapter (VIA VL817 chipset)
  idVendor=17ef, idProduct=7217
- Dell DA310 USB-C mobile adapter hub
  idVendor=413c, idProduct=c010

Analysis of the failure pattern shows:
- Single-byte probes to 0xf0000 (LTTPR) succeed
- Single-byte probes to 0x00102 (TRAINING_AUX_RD_INTERVAL) succeed
- 15-byte reads from 0x00000 (DPCD capabilities) timeout with -ETIMEDOUT
- Retrying does not help - the failure is consistent across all attempts

The issue appears to be a firmware bug in the AUX transaction handling
that specifically affects multi-byte reads from the base DPCD address.

Add a fallback mechanism that attempts byte-by-byte reading when the
normal multi-byte drm_dp_read_dpcd_caps() fails. This workaround only
activates for adapters that fail the standard read path, ensuring no
impact on correctly functioning hardware.

The byte-by-byte read uses drm_dp_dpcd_readb() to read each of the 15
DPCD capability bytes individually, working around the firmware bug
while maintaining compatibility with all other adapters.

Tested with:
- Lenovo USB-C to VGA adapter (VIA VL817) - now works with fallback
- Dell DA310 USB-C hub - now works with fallback
- Dell/Analogix Slimport adapter - continues to work with normal path

Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index aad5fe14962f..738a5bb4adb3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -213,6 +213,7 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
 int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int ret, i;
 
 	if (intel_dp_is_edp(intel_dp))
 		return 0;
@@ -226,7 +227,25 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_S
 				      DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
 			return -EIO;
 
-	if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
+	ret = drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd);
+	if (ret == 0)
+		return 0;
+
+	/*
+	 * Workaround for USB-C hubs/adapters with buggy firmware that fail
+	 * multi-byte AUX reads from DPCD address 0x00000 but work with
+	 * single-byte reads. Known affected devices:
+	 * - Lenovo USB-C to VGA adapter (VIA VL817, idVendor=17ef, idProduct=7217)
+	 * - Dell DA310 USB-C hub (idVendor=413c, idProduct=c010)
+	 * Read the DPCD capabilities byte-by-byte as a fallback.
+	 */
+	for (i = 0; i < DP_RECEIVER_CAP_SIZE; i++) {
+		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_DPCD_REV + i, &dpcd[i]);
+		if (ret < 0)
+			return -EIO;
+	}
+
+	if (dpcd[DP_DPCD_REV] == 0)
 		return -EIO;
 
 	return 0;
-- 
2.43.0

