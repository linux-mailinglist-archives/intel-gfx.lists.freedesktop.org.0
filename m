Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE9839903B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 18:42:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00316ED13;
	Wed,  2 Jun 2021 16:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A90B26ED0D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 16:42:01 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id q25so2630015pfh.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Jun 2021 09:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7cZNhnr+5WrsKr439fZAhMrLnU+fpKD+CnIKC/4jxAo=;
 b=GM/4MinUSiyf/eKEPggHAGFFOaNYff4zljupkjuUAIW/7u6F9+9oK1P6nsm1NoAWr5
 DwRu7kaFE+NvwyaTMpqSYWCWtcxxqGaG7OAeydNC5Pwx9v2pR72/E5dmIjLbqcYpGtwW
 HTTo4EC5mFLvC0Q+I/Nfq+nVmDDbhjpTWkymzmTHkEESP3VKQBxs92O4YhhVYCMNMIDg
 8bfAFC68YU3u7s3GrpQZq7FgZEgtCHMGzuMBO4K47gxd5FwJwwFBrQ0KqWwQL6P2jo28
 pX5w14A5dXAR4WU774B1kqGEfvGQ9Xz0Ov/RokXUitM9qBbciIqd6W5Li1fE++FL+vZ7
 moIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7cZNhnr+5WrsKr439fZAhMrLnU+fpKD+CnIKC/4jxAo=;
 b=iwyUOCCPR9hw6byYRkhRiQWgI31iakGNT7e4nlpEHE4+TAP2wLP8xWYiWBtMSDTIgT
 YV/R5uIgeX0O2OeztGig/ngm2cvohyrD0KYgSgRnFO5K5W8Dy2XFDd5rvlIZhCd3joZz
 gM7M2TBssXKZzkobZf1YzN+XPvTYqzAxwpgxOpTC/Zdhb4eEMcNqTpjRKyMwgKuTY+M/
 POJhkbxpr8LOyvdVtHT5Fua4JJ67J4FcrbMxtA6ZiGsQAfEkztZCJr8aUQLiFf5jJqNl
 7KRAlKe8e2ih9rQaSObLU1VMEntDx4z6egfJ0lkk23S8hJ/m8oS3B82rIASopZQUhOkz
 sH7Q==
X-Gm-Message-State: AOAM532wriNPa52pI3g7In/xuz5G1AkSw9hBlLohOShZkCzmuJO4i5I1
 94TjXZMxsUBJBMhR0LLsBoFXTMWn4Z2nEg==
X-Google-Smtp-Source: ABdhPJx8KCvFopugluMFyrRON4sJZ+RkXEAps7abWc2UWrC1RhnJ4O1fekZ3/lVN5KGAhAVuG2gItw==
X-Received: by 2002:a65:6a52:: with SMTP id o18mr34714079pgu.177.1622652121159; 
 Wed, 02 Jun 2021 09:42:01 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id h6sm75803pjs.15.2021.06.02.09.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 09:42:00 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  2 Jun 2021 11:41:49 -0500
Message-Id: <20210602164149.391653-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602164149.391653-1-jason@jlekstrand.net>
References: <20210602164149.391653-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] Revert "drm/i915: Skip over MI_NOOP when
 parsing"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts a6c5e2aea704 ("drm/i915: Skip over MI_NOOP when parsing").
It complicates the batch parsing code a bit and increases indentation
for no reason other than fast-skipping a command that userspace uses
only rarely.  Sure, there may be IGT tests that fill batches with NOOPs
but that's not a case we should optimize for in the kernel.  We should
optimize for code clarity instead.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 67 +++++++++++++-------------
 1 file changed, 34 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 056a233f443b4..8d34f05d22b75 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1470,42 +1470,43 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 	 * space. Parsing should be faster in some cases this way.
 	 */
 	batch_end = cmd + batch_length / sizeof(*batch_end);
-	while (*cmd != MI_BATCH_BUFFER_END) {
-		u32 length = 1;
-
-		if (*cmd != MI_NOOP) { /* MI_NOOP == 0 */
-			desc = find_cmd(engine, *cmd, desc, &default_desc);
-			if (!desc) {
-				DRM_DEBUG("CMD: Unrecognized command: 0x%08X\n", *cmd);
-				ret = -EINVAL;
-				break;
-			}
+	do {
+		u32 length;
 
-			if (desc->flags & CMD_DESC_FIXED)
-				length = desc->length.fixed;
-			else
-				length = (*cmd & desc->length.mask) + LENGTH_BIAS;
+		if (*cmd == MI_BATCH_BUFFER_END)
+			break;
 
-			if ((batch_end - cmd) < length) {
-				DRM_DEBUG("CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\n",
-					  *cmd,
-					  length,
-					  batch_end - cmd);
-				ret = -EINVAL;
-				break;
-			}
+		desc = find_cmd(engine, *cmd, desc, &default_desc);
+		if (!desc) {
+			DRM_DEBUG("CMD: Unrecognized command: 0x%08X\n", *cmd);
+			ret = -EINVAL;
+			break;
+		}
 
-			if (!check_cmd(engine, desc, cmd, length)) {
-				ret = -EACCES;
-				break;
-			}
+		if (desc->flags & CMD_DESC_FIXED)
+			length = desc->length.fixed;
+		else
+			length = (*cmd & desc->length.mask) + LENGTH_BIAS;
 
-			if (cmd_desc_is(desc, MI_BATCH_BUFFER_START)) {
-				ret = check_bbstart(cmd, offset, length, batch_length,
-						    batch_addr, shadow_addr,
-						    jump_whitelist);
-				break;
-			}
+		if ((batch_end - cmd) < length) {
+			DRM_DEBUG("CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\n",
+				  *cmd,
+				  length,
+				  batch_end - cmd);
+			ret = -EINVAL;
+			break;
+		}
+
+		if (!check_cmd(engine, desc, cmd, length)) {
+			ret = -EACCES;
+			break;
+		}
+
+		if (cmd_desc_is(desc, MI_BATCH_BUFFER_START)) {
+			ret = check_bbstart(cmd, offset, length, batch_length,
+					    batch_addr, shadow_addr,
+					    jump_whitelist);
+			break;
 		}
 
 		if (!IS_ERR_OR_NULL(jump_whitelist))
@@ -1518,7 +1519,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			ret = -EINVAL;
 			break;
 		}
-	}
+	} while (1);
 
 	if (trampoline) {
 		/*
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
