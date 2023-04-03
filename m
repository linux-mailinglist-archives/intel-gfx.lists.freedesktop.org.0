Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9273E6D7D5F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 15:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9257010E94C;
	Wed,  5 Apr 2023 13:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C09610E475
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 13:36:27 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id q191so184620pgq.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Apr 2023 06:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680528986; x=1683120986;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=a7N1WSWoZn0JJ7eOsORwGMrwNl3/fBDC6Q3/zMBlJ3g=;
 b=k1bO+o1c5CeXjCUGLxpFwnplL3MFWBVxbpUoZcBKXnGeqGk2BbeugWKbmePaXU8TDn
 JcRN5QBfOiCZ3VzApAAzyro2u27pFYKVmvSfpVxo04tOoIqDhnEd91ApPeBDs7/Ttao6
 pdrDJ3Yl4JQwlX9hh65I5oCZCIJxfWsYttHsPn1j2dntZyy8N8usf0yzrv7Xj2X2RRgx
 oyOVWgGQ+udEXZgd54tvHsB2Ex+kTbLE2FRXkPXMsma7mGBd9tHQxBUDnGCOjxOS+4gM
 5XXqnSlwYWMdarzYzLOowARRfp7w4q4uC0gqHD556eUFgDyu8sCCY2JsL6/GZzilRP1A
 Vdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680528986; x=1683120986;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=a7N1WSWoZn0JJ7eOsORwGMrwNl3/fBDC6Q3/zMBlJ3g=;
 b=1ZksGZHtC99Pph+2EoEZUmwznat4ca6zu9aqyBMWIGBnrXCAx7seASF1tDRblF2xeI
 aWeTOXXjxtveuX85Lm+Dssnd1ZZxK9Z+sr3DWtzsuBVX4IyRpKje/Lff4S5urNEMEfz8
 cN2o2EFTHHv2YekPyr5pj78psW1leKDNsLR/eRnGg9DZBwMqzH489arnG89cmZsGnwfj
 mg9V372MMfGeBD5maeE33H8WS1XhSU71+DhfhvF2e5vOicPFU0iuTUeWLxF9oJB2GOLh
 Bowncg1ZelAz763/qePt+TQ7+IjuxtFSP0TQdwWoXEV8ugSNQjVsldECiBeozR9j+PvZ
 ttGQ==
X-Gm-Message-State: AAQBX9fNoeDCCmMCCP6Sl2OaWe0v0YeRh+Bm2hYxbST95oBOJ1kuH2eF
 pXMyO0iE5F0xuNSCAxUNXS0=
X-Google-Smtp-Source: AKy350aSgBmaCUIUvuM/O6IAuSON3DYO21PDfoqt0lSsBOpJz0wHBLR8825IPUN0xBLKIC75AdoNpw==
X-Received: by 2002:a62:790e:0:b0:628:1155:3a69 with SMTP id
 u14-20020a62790e000000b0062811553a69mr20154864pfc.1.1680528986406; 
 Mon, 03 Apr 2023 06:36:26 -0700 (PDT)
Received: from toolbox.. ([104.28.240.148]) by smtp.gmail.com with ESMTPSA id
 i17-20020aa787d1000000b00627ed4e23e0sm6978669pfo.101.2023.04.03.06.36.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Apr 2023 06:36:25 -0700 (PDT)
From: Qiyu Yan <yanqiyu01@gmail.com>
To: airlied@gmail.com,
	daniel@ffwll.ch
Date: Mon,  3 Apr 2023 21:36:20 +0800
Message-Id: <20230403133620.42905-1-yanqiyu01@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 05 Apr 2023 13:07:20 +0000
Subject: [Intel-gfx] [PATCH] i915: Correct description of default value for
 enable_psr2_sel_fetch
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
Cc: Qiyu Yan <yanqiyu01@gmail.com>, intel-gfx@lists.freedesktop.org,
 trivial@kernel.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The default value of i915.enable_psr2_sel_fetch is true while the
description given in i915_params.c is 0. Changing to correct the
description.

Signed-off-by: Qiyu Yan <yanqiyu01@gmail.com>
---
 drivers/gpu/drm/i915/i915_params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index ade744ccc..fa9ddcbe8 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -119,7 +119,7 @@ i915_param_named(psr_safest_params, bool, 0400,
 i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 	"Enable PSR2 selective fetch "
 	"(0=disabled, 1=enabled) "
-	"Default: 0");
+	"Default: 1");
 
 i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe options for specified supported devices. "
-- 
2.40.0

