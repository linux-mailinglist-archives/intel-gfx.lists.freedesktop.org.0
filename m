Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93267730BCB
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 01:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4420710E0EC;
	Wed, 14 Jun 2023 23:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7999610E0EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 23:55:09 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 d2e1a72fcca58-652e21cc2c4so4375671b3a.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 16:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1686786908; x=1689378908;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=/Db8KxnSVPTgowcGe/Isx7RarF8FooosNlupn6FMqKw=;
 b=68d1A1Tig/1eII5XPEXfOHqu8vpkYRpuCsx6V036uwEMnTYmARW+qtNlVFv2rP+VWC
 uo3W/U8U+kL4Jub3FaVUEkCksUs4NZtX/RP/E97McWOR8Hn9ATAfO1iIoNMbi7FoQeXO
 Oj+lL7ZfXaFg0Mxk72zcyhcrDagaT/KVbr1+/vtcVgKVtwHe/E12VdTqjsHZlSN+UH56
 AChyg27Vj4/vL+rUQdhZvLfQ1xpQmGOLlYA+/WL/QWYoctM6tR2XkuEgY8hmPF9idUfP
 M52HcGC1uy8xT1XxvHFK9K5h+BfR3cnWBw+DZBNt9qZECy7Me42syUKKxmefvPww3pHo
 HcFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686786908; x=1689378908;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/Db8KxnSVPTgowcGe/Isx7RarF8FooosNlupn6FMqKw=;
 b=dWMbRN4Wj92Eih/01Be8WnDfyn0mDy4JNLoOiteMlU4UPEbgnlpKrVUIQH+uhOOepX
 xtDMCLjRVHR1orE+A7AnRzc2ZjLBJZ2CUb4RgIc7Iu16/fJapjsKRRgIWP9FMeqsRA7d
 zNLlCJPLKTDKaMHazIuxdwTC7dztqrNZ0QFvmZt4Cu1IobUOJBPJROIdlB/K7tP4jKpa
 oKO3DfmHibnBEjxECtHbfPUBAx26f0K9T06ryZgxxinJ6+Ocvg38wqSsSn9RC8+p/nvS
 4OlgJocL+r4UB1pAclwMFMjoSC+KZ5WBdOjxuXo23070Avu7sR4cmmA/SKdd7kbVB3a6
 /YQQ==
X-Gm-Message-State: AC+VfDzjc2rMAeIivPjhTlkSDt8the0m72fCK2MDteD3LTf746KaSc/i
 CgUbXM94mreLuF9tOi9cvaJpFBdR91MMEG0=
X-Google-Smtp-Source: ACHHUZ4yAK39q4ouqLMpS+/Pahz2jLeOi1I3Slr+1pfwmFRaJ8eG44NErNa8BnzbvcHJLnhPEQ6oL68eBiUoG8I=
X-Received: from pceballos.c.googlers.com
 ([fda3:e722:ac3:cc00:24:72f4:c0a8:128c])
 (user=pceballos job=sendgmr) by 2002:a05:6a00:1909:b0:64d:2cb0:c623 with SMTP
 id y9-20020a056a00190900b0064d2cb0c623mr1109527pfi.4.1686786908572; Wed, 14
 Jun 2023 16:55:08 -0700 (PDT)
Date: Wed, 14 Jun 2023 23:54:52 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
Message-ID: <20230614235452.3765265-1-pceballos@google.com>
From: Pablo Ceballos <pceballos@google.com>
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2] drm/i915/display/lspcon: Increase LSPCON
 mode settle timeout
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, Pablo Ceballos <pceballos@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is to eliminate all cases of "*ERROR* LSPCON mode hasn't settled",
followed by link training errors. Intel engineers recommended increasing
this timeout and that does resolve the issue.

On some CometLake-based device designs the Parade PS175 takes more than
400ms to settle in PCON mode. 100 reboot trials on one device resulted
in a median settle time of 440ms and a maximum of 444ms. Even after
increasing the timeout to 500ms, 2% of devices still had this error. So
this increases the timeout to 800ms.

Signed-off-by: Pablo Ceballos <pceballos@google.com>
---

Changelog since v1:
- Added more details in the commit message

 drivers/gpu/drm/i915/display/intel_lspcon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index bb3b5355a0d9..d7299fdc43ad 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -167,7 +167,7 @@ static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 	drm_dbg_kms(&i915->drm, "Waiting for LSPCON mode %s to settle\n",
 		    lspcon_mode_name(mode));
 
-	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode, 400);
+	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode, 800);
 	if (current_mode != mode)
 		drm_err(&i915->drm, "LSPCON mode hasn't settled\n");
 
-- 
2.41.0.162.gfafddb0af9-goog

