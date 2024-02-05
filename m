Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB3B84A635
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 21:46:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4EAE10FB52;
	Mon,  5 Feb 2024 20:46:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="WWbYoFzB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B82810F9E4
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 20:46:24 +0000 (UTC)
Received: by mail-pf1-f169.google.com with SMTP id
 d2e1a72fcca58-6e03d97bdd0so120224b3a.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Feb 2024 12:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1707165983; x=1707770783;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=6mu2eJo6Lc4dVYYgjTv89B+sUAKy5xjuJI192E1GxMs=;
 b=WWbYoFzB+I03exQ/AXlDUdoyCOtxk7fCtI9eKuafYFnPHsOmIVxH4SYFhIB1v2nDfj
 0BhKJExb2J4cePkW+0076plYeYlKsS62ywOXR4Hl2bhsUA4x46GOEJk1ThhS2KP+zuml
 p8bjfgK+Z1RAO6nrHFbZoVXcPxdjGyrB360ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707165983; x=1707770783;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6mu2eJo6Lc4dVYYgjTv89B+sUAKy5xjuJI192E1GxMs=;
 b=dZP1h5tYDcVZqHBZzL+I9oVldTA256lhcqAOabTPUCsTDInlvoubjL9dXjTRoNy/rE
 pXMQ8pchbYPtaT8Jg5Q9eSWcQoipTk3j3BAB0xVOko6z0pGJilL6weP+m8oViIl/VP+J
 DJVnJ8AW+VZddACEwP+nSy6gqrO4brijD3FnmEPrZ2B+1I6YFYd2PdoszWOR6HEEixeg
 rp52wayYw14MfU1gmzG23Axfor5C6kI7XTu+LAGGi2Bf5vyRsfmZBFfD9CLXsR5xc/fy
 1ndaKymnnDutMpE2KaPluH1yx1jjKgYcjMCPrPkE0TsHhF3VT0q3Ims3rte50mhbO9Fp
 E7LQ==
X-Gm-Message-State: AOJu0YwkRNyfPKEU8cZS/GLOHB+UVkjZmtmT+oKOhD3WSwkNzKXzeZso
 zC1iruWiYSpuZvaWO6A0adHzNOg/Krn547dAmhg27bHRxUlFHIFo66ChBW13yMIYzsQ6GtCpwgE
 =
X-Google-Smtp-Source: AGHT+IFGgl3pNsnI9oFMF6gbSmnYFDyCUHZAI1mm1H3WDcUfVgtkoHDaZgLRbEfuo8YWUEHc9FyySQ==
X-Received: by 2002:a05:6a00:d65:b0:6db:cfd7:fde with SMTP id
 n37-20020a056a000d6500b006dbcfd70fdemr657983pfv.16.1707165983285; 
 Mon, 05 Feb 2024 12:46:23 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCUYOpf9BwtBuQEaKyS0ZNDWTAUUVye0J8Cg7WvTegb5aeVETYygfagaO5x8pQURi5f+vxjhCr3yu7/6zSHvdDCNj+SjdB3urLPzEBSlfKHZwSEOnUfE04TkFsF9e7bmtIehAUAkDFUEEvETqkemHu1VxOzVHDmUbCCD5XEquLUkcUs/Ix5NgFdlORG/8cQQFxWS02cQOKWVZdhZndqJx5xhvyqXIQ0rVbbmwFrVr1RsLzaEvCprj5ifcDuqSbRx5NylbfM=
Received: from navaremanasi.c.googlers.com.com
 (34.133.83.34.bc.googleusercontent.com. [34.83.133.34])
 by smtp.gmail.com with ESMTPSA id
 r8-20020aa78448000000b006e03927d123sm288709pfn.202.2024.02.05.12.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Feb 2024 12:46:22 -0800 (PST)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <navaremanasi@chromium.org>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Sean Paul <sean@poorly.run>,
 Drew Davenport <ddavenport@chromium.org>
Subject: [PATCH v3] drm/i915/dsc: Fix the macro that calculates DSCC_/DSCA_
 PPS reg address
Date: Mon,  5 Feb 2024 20:46:19 +0000
Message-ID: <20240205204619.1991673-1-navaremanasi@chromium.org>
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

v3: Add correct paranthesis for pps argument (Jani Nikula)

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
index 64f440fdc22b..7c50d1c31f74 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -51,8 +51,8 @@
 #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
 #define _DSCA_PPS_0				0x6B200
 #define _DSCC_PPS_0				0x6BA00
-#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + (pps) * 4)
-#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + (pps) * 4)
+#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + ((pps) < 12 ? (pps):(pps) + 12) * 4)
+#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps) < 12 ? (pps):(pps) + 12) * 4)
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
 #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
 #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
-- 
2.43.0.594.gd9cf4e227d-goog

