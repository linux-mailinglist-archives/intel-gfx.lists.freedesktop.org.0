Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 635F76132E5
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 10:39:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6EF710E16B;
	Mon, 31 Oct 2022 09:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20D210E078;
 Sun, 30 Oct 2022 03:36:36 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id r18so8034976pgr.12;
 Sat, 29 Oct 2022 20:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2EewIqadtxsCyBiEyM/6JdLw3ehusmy2aS1aWjmcfQs=;
 b=cggBeky7GhYnq/3rdW4Hn800u3zX6M4KE3uTeEt2FUME2R++pOC9+T1vyjQOZCxYuw
 KeVkjml//POeGcWJmulbtWAkGxArfultufYaElCYfIMJsYqe/sTYXhtzx1uuwgekRnaG
 yR7vg1t31pfVkrwPclCa9g4NaBywZ7BzrnXrjBL8+CwyxUkUbKMPVBC4SgPWSnL/X8wf
 YprjHu8DqzdATZf5haEVQ2cM7C2CNODq80dM7/x1ewvn3NYgdnLZwX9kwcdAx+uWpb9O
 cooWNpplbOWyHMG6eTFfCF1XLNI15mGKUO5L77gOvqUoN9TSFJbtQyd7sRhJ3AKEi4Sq
 7uHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2EewIqadtxsCyBiEyM/6JdLw3ehusmy2aS1aWjmcfQs=;
 b=Hz8dCUpiac4XbblIBo6F+KUGi1YvASnm0cXkwSwW5jL8yzNhKcKgIF/b1v9w0ZLifD
 VrpUNcizhxATM71fdf2oBOhasx7yvsKu25jFeL+5+7q7LqHb0fwDZ7ugM/ZHUeZv9Yg3
 6My6DUAnJTSnKP8i5tNPgm2GVG6SWL1fO3WbRyYVfig4VEbnnYRWugnQSgoabQxzQxLj
 EEunQQ5HZlsZxoXmyEYAXUpi+VE429ZXBcf1kvH6t+ZB0eMwhx5WuTSvacApJmFsHY/4
 rwETGx3Y2qEmI2cLphL1NbrL3M/JHE96eM/UUZnckaDbY4M4Y5Vs1O84qp4cLeE3RIfz
 cCAA==
X-Gm-Message-State: ACrzQf0fFhTdYCNaKE1vkDYkFcFsQPS9PAUJ9bkdD98bWT7zZfUal8Fi
 CV7xmOPt2kOSPIhRC4JzRvI=
X-Google-Smtp-Source: AMsMyM6cNkA47FxiGKt3aNBxsBNyMkBiMslykI+flo0fmq8e95cHyU0L/ofCAXEcRzPkwasDVdtWOw==
X-Received: by 2002:a63:2215:0:b0:43b:e00f:7c7b with SMTP id
 i21-20020a632215000000b0043be00f7c7bmr6561352pgi.511.1667100996044; 
 Sat, 29 Oct 2022 20:36:36 -0700 (PDT)
Received: from mail.google.com (122-58-209-93-fibre.sparkbb.co.nz.
 [122.58.209.93]) by smtp.gmail.com with ESMTPSA id
 85-20020a621458000000b005613220346asm1841130pfu.205.2022.10.29.20.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Oct 2022 20:36:35 -0700 (PDT)
Date: Sun, 30 Oct 2022 16:36:28 +1300
From: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20221030033628.GA279284@mail.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 31 Oct 2022 09:39:38 +0000
Subject: [Intel-gfx] [PATCH] [next] i915/gvt: remove hardcoded value on
 crc32_start calculation
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
Cc: paulo.miguel.almeida.rodenas@gmail.com, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

struct gvt_firmware_header has a crc32 member in which all members that
come after the that field are used to calculate it. The previous
implementation added the value '4' (crc32's u32 size) to calculate the
crc32_start offset which came across as a bit cryptic until you take a
deeper look at the struct.

This patch changes crc32_start offset to the 'version' member which is
the first member of the struct gvt_firmware_header after crc32.

It's worth mentioning that doing a build before/after this patch results
in no binary output differences.

Signed-off-by: Paulo Miguel Almeida <paulo.miguel.almeida.rodenas@gmail.com>
---
 drivers/gpu/drm/i915/gvt/firmware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/firmware.c b/drivers/gpu/drm/i915/gvt/firmware.c
index 54fe442238c6..a683c22d5b64 100644
--- a/drivers/gpu/drm/i915/gvt/firmware.c
+++ b/drivers/gpu/drm/i915/gvt/firmware.c
@@ -104,7 +104,7 @@ static int expose_firmware_sysfs(struct intel_gvt *gvt)
 
 	memcpy(p, gvt->firmware.mmio, info->mmio_size);
 
-	crc32_start = offsetof(struct gvt_firmware_header, crc32) + 4;
+	crc32_start = offsetof(struct gvt_firmware_header, version);
 	h->crc32 = crc32_le(0, firmware + crc32_start, size - crc32_start);
 
 	firmware_attr.size = size;
-- 
2.25.4

