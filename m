Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E0238884B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 09:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD54B6E21D;
	Wed, 19 May 2021 07:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1301F6E0FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 07:43:31 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id c14so11095570wrx.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3DkNIkydloyBNXsM4DUT+1wB5zlc/1I1RiMPxasZ1o4=;
 b=QT3TR7+gcB5ZgeHsAAYGoTlaoRivIDyZnyi7Hu12D0du6f3tXVnV1W6nqTa4oZiXcq
 DYmRc7GiJKdH/XmW9LVzEDOzXa6Qrp10N2mj+75vFcfxz+nvh8H4Q3rlAx7oEBfKVV3s
 +y2Vykne1PrBLl+PVpvylkhdtEzKy/u6tnZho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3DkNIkydloyBNXsM4DUT+1wB5zlc/1I1RiMPxasZ1o4=;
 b=VB+lFEA8hGKlZvxvYtqhxUtGiUZYpKEVazJU/6ELnM/vkOfsc8RyWGvF+cOdtvlB45
 wXUKqp5f6xFVzNInw4/kIUT+xIcqBYHdv43EB3eSxm+ou8z16zrZqUT0wE1WxIG7tLsE
 yq3FATKAihy0GxIj+0BnMygfO1iyVuYoANexL1ZS7szC1ZDP/ICCHqYdfoujAnmnMc5W
 x7de42+gVMehijuVrH894re0j5Hzt6Pv7oQze9ykLBxSkASkeKF4dy6UhjSy1sRfKSb4
 s6CX9zbS9jj7SnjG16TDO3eyAOregf0tHkEtrhLjYY31jGE7mu/4mYG2EVN5XRJiQyVR
 9q+Q==
X-Gm-Message-State: AOAM532PXZcB2+aRjhACUzxEuM0ZQNqvvsXCrGkdLgoI+8+YnHqL8l5y
 LIgDCWouUl/AVDP326a83/mE+w==
X-Google-Smtp-Source: ABdhPJxY/s/pbrtEVXeB0LgwX2qCPUKkV8QxADPiaZ/KyvvaHb6Ub3VbrNxEzEfshwI5F4OAYx8VSQ==
X-Received: by 2002:a5d:650b:: with SMTP id x11mr12601721wru.186.1621410210754; 
 Wed, 19 May 2021 00:43:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h13sm21189986wml.26.2021.05.19.00.43.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 00:43:30 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 May 2021 09:43:22 +0200
Message-Id: <20210519074323.665872-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/cmdparser: No-op failed batches on
 all platforms
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, stable@vger.kernel.org,
 Jason Ekstrand <jason.ekstrand@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On gen9 for blt cmd parser we relied on the magic fence error
propagation which:
- doesn't work on gen7, because there's no scheduler with ringbuffers
  there yet
- fence error propagation can be weaponized to attack other things, so
  not a good design idea

Instead of magic, do the same thing on gen9 as on gen7.

Kudos to Jason for figuring this out.

Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
Cc: <stable@vger.kernel.org> # v5.6+
Cc: Jason Ekstrand <jason.ekstrand@intel.com>
Cc: Marcin Slusarz <marcin.slusarz@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Relates: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 34 +++++++++++++-------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 5b4b2bd46e7c..2d3336ab7ba3 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1509,6 +1509,12 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		}
 	}
 
+	/* Batch unsafe to execute with privileges, cancel! */
+	if (ret) {
+		cmd = page_mask_bits(shadow->obj->mm.mapping);
+		*cmd = MI_BATCH_BUFFER_END;
+	}
+
 	if (trampoline) {
 		/*
 		 * With the trampoline, the shadow is executed twice.
@@ -1524,26 +1530,20 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		 */
 		*batch_end = MI_BATCH_BUFFER_END;
 
-		if (ret) {
-			/* Batch unsafe to execute with privileges, cancel! */
-			cmd = page_mask_bits(shadow->obj->mm.mapping);
-			*cmd = MI_BATCH_BUFFER_END;
+		/* If batch is unsafe but valid, jump to the original */
+		if (ret == -EACCES) {
+			unsigned int flags;
 
-			/* If batch is unsafe but valid, jump to the original */
-			if (ret == -EACCES) {
-				unsigned int flags;
+			flags = MI_BATCH_NON_SECURE_I965;
+			if (IS_HASWELL(engine->i915))
+				flags = MI_BATCH_NON_SECURE_HSW;
 
-				flags = MI_BATCH_NON_SECURE_I965;
-				if (IS_HASWELL(engine->i915))
-					flags = MI_BATCH_NON_SECURE_HSW;
+			GEM_BUG_ON(!IS_GEN_RANGE(engine->i915, 6, 7));
+			__gen6_emit_bb_start(batch_end,
+					     batch_addr,
+					     flags);
 
-				GEM_BUG_ON(!IS_GEN_RANGE(engine->i915, 6, 7));
-				__gen6_emit_bb_start(batch_end,
-						     batch_addr,
-						     flags);
-
-				ret = 0; /* allow execution */
-			}
+			ret = 0; /* allow execution */
 		}
 	}
 
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
