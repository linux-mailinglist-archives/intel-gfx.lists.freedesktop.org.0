Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6073D9B0
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 10:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BCE510E0BB;
	Mon, 26 Jun 2023 08:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A92889D8E;
 Mon, 26 Jun 2023 08:29:17 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-3f90b8ace97so43672095e9.2; 
 Mon, 26 Jun 2023 01:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687768155; x=1690360155;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=GfxAu6sW5+q7WfzXLeH1/VjEmYM6LrxvH/FzoskmAzQ=;
 b=o+Nplp0WDmZyHFlCdALUokQhCZyn4cHkrDBC4N5dkwytAvWfq3hHP7zo7+K89pZPmX
 6fBp26uue0TIf6Dmm7LLzadBd1m6JFy8UBZr42lzbmvC1RRtzYEU4t6Uu7Q3iSV/edMo
 /Z6Zw7X2o16yPqI8r8Zf8BpxBXdrL1kLqKXj1O0dRLGsE7VLXvbRRMeUhlqekBF2hsYr
 82HxRtA1jDtMyTr42dDVtShKfbpbRFepYv2CN15mw49//Ukg6186q2f8VpgwwuMKHX1o
 cNDZ44W+Zb5muGOlfcTvNijTMbo3Nvfu4RfCSJ9db+OX59miZ47j6j7PfSBTFRMJAFIn
 CvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687768155; x=1690360155;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=GfxAu6sW5+q7WfzXLeH1/VjEmYM6LrxvH/FzoskmAzQ=;
 b=kZFyjBSzz/2Ybrwr2gmacxujNaLMe83W+TaE5BSA7LC2uNJ9Gz7CkmDjxWmMsNo9C+
 D+M/3Rq7k1H/OuWKkr76YeRkGE/lmYv80ac77x7U2u7/ktcnZNYVOtuQhzcSCTIk2ik3
 sYrGdiBwuktaUGiwN8IAyE+VbKSnRRYXNYRUbJNSBpFAsl6mjxNTUUYqMBq6H96Ct4pB
 Hd4PP5XMj+lsj+u9X7126kKNRs1uuCTlngeYEAQHlrPBG0CBoikXvJHWRr7B7qEyupxV
 3et7bvIlP/bb3AgBHCOyMcaxKcnxCyrNePp/ZXv8b7U/yrzZZkrL5pL2/65mss/PWx8G
 okDw==
X-Gm-Message-State: AC+VfDw9mSH4jylWM18xgZhQtWl6sj4bGV10B63AIUCsdp+4VR7cuvQI
 zp3HZNmMOB6KPJB9xE9PhMs=
X-Google-Smtp-Source: ACHHUZ7AR1J5W6NerK45Q0I6VwTfH0YXK4Ltix6kj7QS9wNQa4hFWKq1sMSHkujMGbfcV99bS7h4xg==
X-Received: by 2002:a7b:cc8d:0:b0:3fa:9890:8016 with SMTP id
 p13-20020a7bcc8d000000b003fa98908016mr1053413wma.2.1687768154860; 
 Mon, 26 Jun 2023 01:29:14 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 m14-20020a7bca4e000000b003fa786b5195sm6896249wml.42.2023.06.26.01.29.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jun 2023 01:29:14 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Date: Mon, 26 Jun 2023 09:29:13 +0100
Message-Id: <20230626082913.53089-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH][next] drm/i915/mtl: Fix spelling mistake
 "initate" -> "initiate"
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is a spelling mistake in a drm_dbg_kms message. Fix it.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index f7608d363634..f59e1e962e3d 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -555,7 +555,7 @@ intel_pmdemand_program_params(struct drm_i915_private *i915,
 		goto unlock;
 
 	drm_dbg_kms(&i915->drm,
-		    "initate pmdemand request values: (0x%x 0x%x)\n",
+		    "initiate pmdemand request values: (0x%x 0x%x)\n",
 		    mod_reg1, mod_reg2);
 
 	intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
-- 
2.39.2

