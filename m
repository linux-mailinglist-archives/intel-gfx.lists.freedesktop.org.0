Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 665CD728AC7
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 00:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F1710E620;
	Thu,  8 Jun 2023 22:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FAD910E620
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 22:01:09 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id
 6a1803df08f44-6260b578097so8736956d6.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jun 2023 15:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1686261668; x=1688853668;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=29hYNlCElcXTej6yefYSaT6JD3YJZL7RApnbNXpII1U=;
 b=nS6tZM2rj0lN78FXBVhB++I3/6IZLdhYRVgvDm/l7kFErCzJVXt+HqS19yGH/HnAKi
 KmYOgl52ukZ2bRTzk13C7psyJDinGDOrLPHSj1S2B63oU3cqCLkdIM46UAaYj0WJ7XUQ
 pse6mkwSm9efxeQm2nCbeXvzfZCvcLq3vJd+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686261668; x=1688853668;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=29hYNlCElcXTej6yefYSaT6JD3YJZL7RApnbNXpII1U=;
 b=mC9ZQ+d6VpwCR6HfkJ/1aZFi3Tx1CMUzv+kVHk+fcqMMfgj/vLfBTLTZF1NiyMIiW3
 Sskqrp9+wRLcp4bkv0igPXwmxZaaHLiIyc7P5RrNCyv3a+DP79sK0iJi4QPNbrRln5Iq
 nVEOk+pVuI7coi5OY01UG/dKo5BGoX2ucTkDeY6pVAc9TYsOIqAvzMD7AknAQWd0xFzl
 uQ8mSuRhH/ur1nKOtOwj/+p12lnFUhPFAMRJv72sq3PofI8XfCE8zrdWlaRfceU5zSxG
 X91FLdtEI9VCwlz7wXNiedvYGiVTnkVvqtD9ybdZek4himpvjJphteGVMSOFa+mDTcAq
 mbrA==
X-Gm-Message-State: AC+VfDyXvKMsF/ANW50+DlyY+mDmpMENkwVycwQj/YPE1iV/TaBZlaxH
 W9nf5NHUP3j4+HyE4QidPmpj+9labf4zldqpFT0=
X-Google-Smtp-Source: ACHHUZ4sRjnE5Ai4uCVyo0hg5YPHQxdu0IuUAf+zyl5liBW5Rn9LUrjTN5fQdt0hB6XiX07A5Ac6cw==
X-Received: by 2002:a05:6214:4007:b0:625:7aae:baf8 with SMTP id
 kd7-20020a056214400700b006257aaebaf8mr2797607qvb.4.1686261668006; 
 Thu, 08 Jun 2023 15:01:08 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:e7e8:ab76:9963:2813])
 by smtp.gmail.com with ESMTPSA id
 p17-20020a0ccb91000000b0062629cbff11sm717345qvk.11.2023.06.08.15.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jun 2023 15:01:07 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 navaremanasi@chromium.org
Date: Thu,  8 Jun 2023 18:00:06 -0400
Message-ID: <20230608220037.1555814-1-gildekel@chromium.org>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/tc: Use standard ternary operator
 instead of GCC extension
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
Cc: Gil Dekel <gildekel@chromium.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The ternary expression:

  x ? : y

is a GCC extension and is not a part of C/C++ standard.

Use the canonical form instead to reduce dependency over GCC extension.

Signed-off-by: Gil Dekel <gildekel@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 916009894d89c..39d0dbad589bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -255,7 +255,9 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
-	int timeout = power_well->desc->enable_timeout ? : 1;
+	int timeout = power_well->desc->enable_timeout ?
+			      power_well->desc->enable_timeout :
+			      1;

 	/*
 	 * For some power wells we're not supposed to watch the status bit for
--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
