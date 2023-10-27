Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB787D9F06
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 19:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECFD10EA27;
	Fri, 27 Oct 2023 17:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E8A010EA27
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 17:48:17 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-32da7ac5c4fso1516521f8f.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 10:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698428896; x=1699033696; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=RxlMB6f5FjKRC+o9CZB8BUKNFLGDY3FqBgnOramGfWM=;
 b=nh9OJ1my7VE2nVJJwvPicbcaetGp3SWQ49oGHkBMMq9sPMOCFE4YniWu5sp2FTkpt3
 vCNsgp+xR1v/LrN1IloE/+BSxAe0cZ0xLtGyxw75B/Ghym6BhvT/afPyvr23nwFNHt5U
 PEgP2EjmRllC3AVYkGPNKApE8PMWRRDJs7TkWWC8WHHb/Y9NBHaDhMtcGGmEsJebn70w
 f+BpBEPe0dCCZhM9ITXQkrj2ZwmU4r6X6R3zS9uw1/xcsPot0eZ0Y+gT5LlmGIaJ/Rp1
 MQzRfv3g3AWG0s/R1ECf+ShajPpanEnvzfNlZ7tK7h1cUBidus7AZ1xcReUZgWx1Vul2
 T/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698428896; x=1699033696;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RxlMB6f5FjKRC+o9CZB8BUKNFLGDY3FqBgnOramGfWM=;
 b=IbFHcJVZG3gMryzudckAAZ/NxUFPSUcp5Gq2j0aJYYlowaC8yV+SEF2jIrJZr4ny7m
 5lM7Ughpia0//h96XynHG6ZyNKiw5RJTgAIk92KqUmYwETCj+LwzyUimVrhDK9UzEFgY
 GpXbcFCbqJ1m1hH+m0Tn7yLdL9wdI4sbdxt+JkzgWoxgVtYX7v6Z0gFDz3oy55BzQCuC
 Bu1V7h5Aj8IxAaNsoW1igQqDTtaPqMuwt2bdXbd9TpT1QNefVHcxQ+0xafgtip4gf3U1
 +JAO5Nega6UTrUYtPk+CnKZS+XYy4cBESjA9EYuxXg3A7gdMZcOpSEofmua4m0rSgGJ6
 Qugg==
X-Gm-Message-State: AOJu0YyaUoF2oawBc8Ll+AkBA2/7E3E9M7JQDEpRr6umNpovLSj9Vz8P
 Shv6sYn8F/Cv3ZpAUhrlXw==
X-Google-Smtp-Source: AGHT+IFQAaTooRRBwbuoSlrVeLAjG0h8Jfn+MhkCkgy6a3Cw1dDoPmtRzwpl6KES4y27M/+RF3J2lQ==
X-Received: by 2002:a5d:68c7:0:b0:32d:8830:edb with SMTP id
 p7-20020a5d68c7000000b0032d88300edbmr2456212wrw.38.1698428896039; 
 Fri, 27 Oct 2023 10:48:16 -0700 (PDT)
Received: from dorcaslitunya-virtual-machine.localdomain ([105.163.156.68])
 by smtp.gmail.com with ESMTPSA id
 t13-20020a5d534d000000b0032d9548240fsm2213063wrv.82.2023.10.27.10.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Oct 2023 10:48:14 -0700 (PDT)
From: Dorcas AnonoLitunya <anonolitunya@gmail.com>
To: karolina.stolarek@intel.com,
	andi.shyti@intel.com
Date: Fri, 27 Oct 2023 20:47:45 +0300
Message-ID: <20231027174745.4058-1-anonolitunya@gmail.com>
X-Mailer: git-send-email 2.42.0.345.gaab89be2eb
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Remove prohibited space after
 opening parenthesis
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
Cc: intel-gfx@lists.freedesktop.org, karolinadrobnik@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removes space after opening parenthesis.

Fixes the checkpatch.pl error:
ERROR: space prohibited after that opening parenthesis '('

Signed-off-by: Dorcas AnonoLitunya <anonolitunya@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 4a11219e560e..40687806d22a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -47,7 +47,7 @@
 #define GEN9_LR_CONTEXT_RENDER_SIZE	(22 * PAGE_SIZE)
 #define GEN11_LR_CONTEXT_RENDER_SIZE	(14 * PAGE_SIZE)
 
-#define GEN8_LR_CONTEXT_OTHER_SIZE	( 2 * PAGE_SIZE)
+#define GEN8_LR_CONTEXT_OTHER_SIZE	(2 * PAGE_SIZE)
 
 #define MAX_MMIO_BASES 3
 struct engine_info {
-- 
2.42.0.345.gaab89be2eb

