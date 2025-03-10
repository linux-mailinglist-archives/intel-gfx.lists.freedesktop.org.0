Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF46A5A3FE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 20:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9187010E4D6;
	Mon, 10 Mar 2025 19:46:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="hfLekJwF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1421F10E4D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Mar 2025 19:46:25 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id
 ffacd0b85a97d-3912fdddf8fso2312829f8f.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Mar 2025 12:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1741635983; x=1742240783; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IvLfn3qhWG0LPJSKPMLdwGHyzm3ZQnbWN9kL2fMh4Mw=;
 b=hfLekJwF+5xjjaCsXkJjJ+8WM5+vtIIjZzrfduozUhhP1YF8S5HBJzY/cHgKsS9w5K
 d++nNjnftoRGKgyAji7CIq2nLfyCTsebhXDV01ENXVLNtD6zon4ln/hkLEu+WXi9XOyy
 PdsyIJ0rcwoCeju2GemKsBPdQ0QZKlOzqaUbxOaS+im5Ynt5kEKjrJBMkjAdrEP9xATy
 vtSL02DMgOVzHLS7pD1r2coAqYVt5cgL9arke+A/g0Yl5IKV1NZSgNLsztdIPwQQ7tZE
 FRQSPT0IRh7HHIkbouybU5HpfLUjahIZOF9A9jw62zvaE1k+VN9FaMmFO0yn8Vl6V0DJ
 +3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741635983; x=1742240783;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IvLfn3qhWG0LPJSKPMLdwGHyzm3ZQnbWN9kL2fMh4Mw=;
 b=S01Y+ian+wz1ubnT9SLPT6Q0jVlqw1vtDsLNn5EgB08DckrMarqy+S1UK5ygql/7eP
 hlSsKTax0FOTW7aZgYmfuJRj5/r2RWR5xGMKZFMJKNL0pwTy6Xl1o3UtZUGaf95K4H89
 04TjeiGMk82zRtFwWCO2w+th2AMYdm5GRf8a9O8D9KRhTgRyH2TX8eMq29/pv0VUkKzp
 OIOzPsm8W4cOAeDtE0KuxdmbWfK0ShPhH++sUwqqbDro3opOGrWrzblIa5yaXaXVqZmt
 UIKrBS94ViwCT7cnynRfcsNQ1A5VoEVMjs1sTksKGJaoor6x3udPwj/NrRzpEcKvDQzD
 GzTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJj077DoRjqnTzuH76R/1n0q8Zfx/bAHyPbaTXaVn6netdyqIfGBT6OOBC5V11UbYeChBfMQ4c/6Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz5TYJHeXZKUE9mpBDC8BSnFogSpvJMpHg5PKc3cdP9mRqD5Jbw
 i2DB4quUP9TObGG5spuEQ/x/8mPklhFk15Dq0GtQnkZf4EkhY4Gywq+S9cSjOPk=
X-Gm-Gg: ASbGncvIPYRhEE+rhDvwKq0y0psjGt0LTJD8AUCh4sgw1c1wzHylLu3lutojIwRBHRI
 UNTIbVENSLHRjoZukwrtaSXtKkLyyAc4Ap18FZ4aIa543U1a4YbqoaoqKVMXvl6kl+u4SOZHzuA
 NMw/ON54ACBcvTHFtO0lC14dC1s+rtLWcNIkmkySEv5Fs6OmWf+2gR3mGzjfRHYJQyfn3TKPcuG
 ncWNgK9Khy7FKp4hoCKlAX9O6T1hvsD+I9N0RuO6CQb6ntaC6d+sENdULZOTFYS7AJXtmPSKFrn
 bBNlYXXN0e3QWU6KnvW18+7WHrg8cqi/hRpNLUhbL0GDkYUXYg==
X-Google-Smtp-Source: AGHT+IEd/pl739SBNrD6h1Towv44982Wiak2l2/J5QTRayAEyqBes8blAzLgBmUO87jKdAG+98SPfw==
X-Received: by 2002:a5d:64e4:0:b0:391:865:5a93 with SMTP id
 ffacd0b85a97d-3926d123ba9mr995249f8f.22.1741635983490; 
 Mon, 10 Mar 2025 12:46:23 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-3912c0e3250sm15993154f8f.61.2025.03.10.12.46.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Mar 2025 12:46:23 -0700 (PDT)
Date: Mon, 10 Mar 2025 22:46:19 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 John Harrison <John.C.Harrison@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: [PATCH] drm/i915/gsc: delete a stray tab in
 intel_gsc_fw_get_binary_info()
Message-ID: <6152e1ac-745d-4b38-ba49-f013e6760936@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
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

This line is indented on tab too far.  Delete the extra tab.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index 5dc0ccd07636..d550eb6edfb8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -230,7 +230,7 @@ int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, s
 		gt_info(gt, "Invalid GSC firmware for MTL/ARL, got %d.%d.%d.%d but need 102.x.x.x",
 			gsc->release.major, gsc->release.minor,
 			gsc->release.patch, gsc->release.build);
-			return -EINVAL;
+		return -EINVAL;
 	}
 
 	if (min_ver.major) {
-- 
2.47.2

