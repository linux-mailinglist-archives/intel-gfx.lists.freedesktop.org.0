Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FFAB99B3F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1913610E6ED;
	Wed, 24 Sep 2025 11:59:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MreSzpgt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
 [209.85.214.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED9E10E09A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Sep 2025 19:51:06 +0000 (UTC)
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-25669596955so53625815ad.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Sep 2025 12:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758657066; x=1759261866; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=4ehAB6FDec8ZClTzkqi6qQhO0SFHIZCiWE6qrwdH3NY=;
 b=MreSzpgtjm1rBlcAuqvo2rpai+OpXwVmDpPeNmpvMiqnuFJUPtzeaHDpBtNbg5qk5F
 vC4RomxV5ygEyXL9fO4D2Wj2fRwQ5nZ7skLf8gY/f3jiteOkAqe4tpSbcPf+qP3Rtflv
 2kT2++0I9BtlI+pYA7gwUG5+4XvCyJ7xtByusPCRUmzJHbKwE6yiYjNf9/9rFhfc8RWK
 bumPf++kcHKmMJU1ABVBO9oE6UomaS66O5Oyog3DMyt9wWayGfSlPXrP28yrQFmkgeh4
 WLFgu4A39Tdt3fvgOC2h3ECfsyQJfuDeMkEFAzjl4O0BoC6APqNQ5+I9Ar6taMBEIzJf
 UxYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758657066; x=1759261866;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4ehAB6FDec8ZClTzkqi6qQhO0SFHIZCiWE6qrwdH3NY=;
 b=pL5+Tt64tSRnM2D2EQkgi3+Ki42vlMa+oFKjUk5a5Fn8Z53c755uNZtql8wxIy8OC4
 L107qfQdM0VD/iTHNnpWmDh/34oTwm3qz0n5Rfi31r1z7l9LWWbtWOP0EuXyuqC8wemX
 oeGlzcQh6hL+enFSS103QVCJqa/O7BwLXRZ+gEyD5XdhE/oCeBO9M0FSid6/MQRPbj/f
 pnJD03jxKyFJ44tiWsJtChqmWjaJC1Zy43dAAmcqE7lA/g021QlLrNIf5GEnfG8v5qxA
 3IRs6/J3NG+g+njcL31taHk4cxk9waiQBc9Q/69L8Nsd7092JBtqZaVPIt91iN1o5Pqo
 akSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFFay6SOSCrPr85ZffybsFRFM1/QJByT2fSOEaIp6VgFJz47J+dfsnPCmIR2YiMXpKxy3MWd396Ss=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyDkJciGZ4UNxWIUsSaybQwMdJJtFa3Dqx4W4+xxTzOiSCk9WO+
 s3K5dn4dscEelV7NA4kFnufLDJi7LmafXs/F6LcKpGLBBOEJ9HOZ1kRJ
X-Gm-Gg: ASbGncsO85p8Lb8L2qfVl81Hp9LGxPYxlF9gCBRxf+LTt9cEbSpbYQXAHU+Ti3J8GTB
 E3bAzqHxozbHKq3wDE4QCzSm0BxsUQcdsDY/YVgNKPwmWFdpEkokLsrDTXAUIzz3Sts+u1X2U6h
 J4oVDNi+wO/xD5cGuwuyGM4FhgXdE6F8ffu5T9GTaD+o+r6Ue0S750qlknbGLLv8PJF5TK2VdCp
 SxPWZA/kQ46ze+TmZOJS8FaGjXgL3amWI91QFGYfUUAJ4zVwaalBKE5dZdkRcUNbNgG0KgKyy6+
 4FPF8DhNHr0OyPiXSieyr7LR6QLXruhnUg9Q5NuW3qEqSB+w3t1nXB00YQwqZA2Hw8jZniYVyF3
 8j/1kTvznTkwwR7i8Yh8SYjDa
X-Google-Smtp-Source: AGHT+IEv/yGGrlpOdfY2cliSiBhQF6mMtksTl6D3DmZd+ZV/JQOSaJhhtwrh4WbSv9rczttlYVIw7Q==
X-Received: by 2002:a17:902:ce81:b0:276:9863:44da with SMTP id
 d9443c01a7336-27cc1570dffmr41713785ad.8.1758657065909; 
 Tue, 23 Sep 2025 12:51:05 -0700 (PDT)
Received: from archlinux ([36.255.84.56]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2698018d0fasm170974755ad.60.2025.09.23.12.51.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Sep 2025 12:51:05 -0700 (PDT)
From: Madhur Kumar <madhurkumar004@gmail.com>
To: jani.nikula@linux.intel.com
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tursulin@ursulin.net, airlied@gmail.com, simona@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Madhur Kumar <madhurkumar004@gmail.com>
Subject: [PATCH] drm/i915: i915_pmu: Use sysfs_emit() instead of sprintf()
Date: Wed, 24 Sep 2025 01:20:51 +0530
Message-ID: <20250923195051.1277855-1-madhurkumar004@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 24 Sep 2025 11:59:25 +0000
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

Follow the advice in Documentation/filesystems/sysfs.rst:
show() should only use sysfs_emit() or sysfs_emit_at() when formatting
the value to be returned to user space.

Signed-off-by: Madhur Kumar <madhurkumar004@gmail.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 5bc696bfbb0f..d8f69bba79a9 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -895,7 +895,7 @@ static ssize_t i915_pmu_format_show(struct device *dev,
 	struct i915_str_attribute *eattr;
 
 	eattr = container_of(attr, struct i915_str_attribute, attr);
-	return sprintf(buf, "%s\n", eattr->str);
+	return sysfs_emit(buf, "%s\n", eattr->str);
 }
 
 #define I915_PMU_FORMAT_ATTR(_name, _config) \
@@ -925,7 +925,7 @@ static ssize_t i915_pmu_event_show(struct device *dev,
 	struct i915_ext_attribute *eattr;
 
 	eattr = container_of(attr, struct i915_ext_attribute, attr);
-	return sprintf(buf, "config=0x%lx\n", eattr->val);
+	return sysfs_emit(buf, "config=0x%lx\n", eattr->val);
 }
 
 #define __event(__counter, __name, __unit) \
-- 
2.51.0

