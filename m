Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1748449C4
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 22:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8FB10FD30;
	Wed, 31 Jan 2024 21:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82AFB10FD30
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 21:20:16 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id
 d9443c01a7336-1d93b525959so5606165ad.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 13:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706735955; x=1707340755;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=VCaBOw9NZR9RwklaJTYGgGeDT17aAjtejKfoIqzuJTA=;
 b=inIv7p463rY4PPrkLmmdhYcsyjx03f/uKl9TRspYKjmJMYFUDTzxK394SqARgRsns9
 s1jm2eL/nRepj8uCgbO9uK+YuHu4CeQU7072PNLCX4Evce64+WMttTCp2m6QgzXcOXl8
 AO2i1IdftUDOdDHl2HVe9/oyUwQx2EsHBJJcg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706735955; x=1707340755;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VCaBOw9NZR9RwklaJTYGgGeDT17aAjtejKfoIqzuJTA=;
 b=LZTSmhkRPvp8cSUEwXJcASiRPk3c8fHlswKa0Q/kOKFEFDefAfl17ob4lJMYJwYe6i
 +DI07cDaZwkRVI1HLGXIRlOCGk+HfTqtUjDxYoZJPMleLwVVIRvlLBT0mI2Zqa5pop6E
 iyXU7CeDu9HZPJ1Qs6ShfFiWzEnYuwalYy983d8lQa8oo0dU7Hk1C6VzbbWVK7lLe+d6
 CsDU9scgpaZW8dmudWMr1T9rLrJ1gIm1zF8Gr/7GLvs39xujeCOE40jHetbFBdaIFv+i
 iRxzNEtnvv8aG7TrYuk46kFx/TO0VrnkjLV5q+Lyq4xSEwnyZbKdo5zxR972GpnEKhGn
 5/3Q==
X-Gm-Message-State: AOJu0YwW1gtudWBoYwX/pM2yvDYSfHKFs5Sy2Om25OEgSmKYYHVLuriQ
 qKe1HlUwSKF7mFKhqglUE5qHAPb5AqJrumDE/rR0Ef5Fl4WlpddsJEK01MGVW59yQmccRWcmA7U
 =
X-Google-Smtp-Source: AGHT+IHjDQGGDe+vB+k7wCdnK4HPlZfq5haq5idX1Fqes7YHUS/pVeDPzZxwLL6Fa/6C2/6tr1coCQ==
X-Received: by 2002:a17:902:b590:b0:1d8:ef97:229e with SMTP id
 a16-20020a170902b59000b001d8ef97229emr4645376pls.33.1706735955206; 
 Wed, 31 Jan 2024 13:19:15 -0800 (PST)
Received: from navaremanasi.c.googlers.com.com
 (34.133.83.34.bc.googleusercontent.com. [34.83.133.34])
 by smtp.gmail.com with ESMTPSA id
 ph11-20020a17090b3bcb00b00295f1aa0a68sm1494315pjb.7.2024.01.31.13.19.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 13:19:14 -0800 (PST)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display/vdsc: Fix the macro that calculates
 DSCC_/DSCA_ PPS reg address
Date: Wed, 31 Jan 2024 21:19:09 +0000
Message-ID: <20240131211909.622419-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Patch (bd077259d0a9: drm/i915/vdsc: Add function to read any PPS register) defines
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

This patch fixes it by correcting this macro to add the offset of 12 for
PPS >=12.

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/10172
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
index 64f440fdc22b..db29660b74f3 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -51,8 +51,8 @@
 #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
 #define _DSCA_PPS_0				0x6B200
 #define _DSCC_PPS_0				0x6BA00
-#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + (pps) * 4)
-#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + (pps) * 4)
+#define DSCA_PPS(pps)				((pps < 12) ? _MMIO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))
+#define DSCC_PPS(pps)				((pps < 12) ? _MMIO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
 #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
-- 
2.43.0.429.g432eaa2c6b-goog

