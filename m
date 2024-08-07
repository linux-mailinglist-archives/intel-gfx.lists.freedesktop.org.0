Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA47E94EEF5
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 15:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 401EF10E220;
	Mon, 12 Aug 2024 13:57:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=toblux-com.20230601.gappssmtp.com header.i=@toblux-com.20230601.gappssmtp.com header.b="zgL+YztH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D10D310E1A3
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 20:21:33 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-a6265d3ba8fso21285466b.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 07 Aug 2024 13:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toblux-com.20230601.gappssmtp.com; s=20230601; t=1723062092; x=1723666892;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=z4X1/+A4ARSAdI+l8r/PaTc1tSVNBTTGzDxsEIt0H8M=;
 b=zgL+YztHQDDO95gVFdt+o8Y+Z59XelUbVq5kRzsBLcKAC0+WmlCYbh5Yv0U2EEnnP5
 SXYUQ8SZSw/SkCPXr6+lrhdRPLqlNBMcZQNL2inRjH7t0wLoneTCLc+ZrpCFFZ2S+CIk
 BQa4P73IXGM2mDM2naKuVMaDvYfZZVOg1LWZd8DpNVt3IZJzTaJL9cvI2tQMGK0r3Y//
 BWGqQvcRR+E85Z/sBmF+129GDvZqfae35csZmqRx+/0p+UMaEEXmPfyavuseVlHjAL7P
 I6O8y6s6TSuKnPJcyIethVamC3pGUq38Vs9BRcvUmEt+CnFCyHl43QxsZjoB6vGhzU2m
 UgYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723062092; x=1723666892;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=z4X1/+A4ARSAdI+l8r/PaTc1tSVNBTTGzDxsEIt0H8M=;
 b=wcvlxKd7o8ZhcCRuWP/FF42VFD20K+5KsXpV1daJNWF8B+FXRibzQpVX9WAS4tE6Ot
 GfTcL+HSa+Xb4LnwMo7Aa4MU1UBchQUlaWpN59URagpCwEiCghpcsqUBcdVwVKmbUJwj
 b3rMbEIglf7gwZSjZ0AneZcUHZMKCi1O/HDCQd/l1OZt3SAJzUrp5x+F6g43rwOFBPf0
 Paewi4HsNjS52oFJF9gDzz2uQETJwgw+HUuiFFt+v7rC+wXvq3CMTlMUvhui43dmXusw
 EKYQzb9CJ1v9NZ+oRn4daTrIB7WplEROkUNOostuy6T61GLDRnSWqDQE9coa8nLoNlKO
 IAkw==
X-Gm-Message-State: AOJu0Yzqv1I0KJbE+qL2CyEHcPfdjsmzxSYQyQiLuOogRJP0DdKukuuG
 E6L4+RcCl/u3ezznFvCz6XFMcxmAVu6cjinJTwKJNv7giyxUWWW7GHIvayNUgEs=
X-Google-Smtp-Source: AGHT+IG3cOPvJ9ZkCZ88ekCEODTh9Bsjt5Em1rI+r3qZ5LW0b41f9BBVAF+DAZPVJBB0M+s39MgZzA==
X-Received: by 2002:a17:907:2d91:b0:a71:ddb8:9394 with SMTP id
 a640c23a62f3a-a7dc4ff1ad2mr1408109966b.40.1723062091623; 
 Wed, 07 Aug 2024 13:21:31 -0700 (PDT)
Received: from fedora.fritz.box (pd9e1640a.dip0.t-ipconnect.de.
 [217.225.100.10]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a7dc9c0b6casm666122766b.51.2024.08.07.13.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Aug 2024 13:21:31 -0700 (PDT)
From: Thorsten Blum <thorsten.blum@toblux.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 daniel@ffwll.ch, jonathan.cavitt@intel.com, andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thorsten Blum <thorsten.blum@toblux.com>
Subject: [PATCH v3] drm/i915: Explicitly cast divisor and use div_u64()
Date: Wed,  7 Aug 2024 22:20:39 +0200
Message-ID: <20240807202040.54796-2-thorsten.blum@toblux.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Aug 2024 13:57:02 +0000
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

As the comment explains, the if check ensures that the divisor oa_period
is a u32. Explicitly cast oa_period to u32 to remove the following
Coccinelle/coccicheck warning reported by do_div.cocci:

  WARNING: do_div() does a 64-by-32 division, please consider using div64_u64 instead

Use the preferred div_u64() function instead of the do_div() macro and
remove the now unnecessary local variable tmp.

Inline the if/else and invert the conditional expression.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Thorsten Blum <thorsten.blum@toblux.com>
---
Changes in v2:
- Use div_u64() instead of do_div() after feedback from Ville Syrjälä
- Link to v1: https://lore.kernel.org/linux-kernel/20240710074650.419902-2-thorsten.blum@toblux.com/

Changes in v3:
- Inline if/else as suggested by Jonathan Cavitt and Andi Shyti
- Link to v2: https://lore.kernel.org/linux-kernel/20240802160323.46518-2-thorsten.blum@toblux.com/
---
 drivers/gpu/drm/i915/i915_perf.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 025a79fe5920..6ff905d2b78f 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4063,17 +4063,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			oa_period = oa_exponent_to_ns(perf, value);
 
 			/* This check is primarily to ensure that oa_period <=
-			 * UINT32_MAX (before passing to do_div which only
+			 * UINT32_MAX (before passing it to div_u64 which only
 			 * accepts a u32 denominator), but we can also skip
 			 * checking anything < 1Hz which implicitly can't be
 			 * limited via an integer oa_max_sample_rate.
 			 */
-			if (oa_period <= NSEC_PER_SEC) {
-				u64 tmp = NSEC_PER_SEC;
-				do_div(tmp, oa_period);
-				oa_freq_hz = tmp;
-			} else
-				oa_freq_hz = 0;
+			oa_freq_hz = oa_period > NSEC_PER_SEC ? 0 :
+				div_u64(NSEC_PER_SEC, (u32)oa_period);
 
 			if (oa_freq_hz > i915_oa_max_sample_rate && !perfmon_capable()) {
 				drm_dbg(&perf->i915->drm,
-- 
2.45.2

