Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F963A1C4A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835796EADF;
	Wed,  9 Jun 2021 17:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD10B6EB46
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:45:16 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id c13so12993358plz.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b7i/sI2grlFleaXu6G+WbNlIN/xmEbLbsHG793e7tpI=;
 b=DWeufDMV/+rAV6M8+K7cWs/7Vx3/jyH0UGEXSZ7waqu4LoUgRHfslzCRd5Kc1cwHys
 dy3tn4sBXPd5W7sqL+k7BRU0DN4C06eEtoi/HFzWIIlP7u4ljMnEoyCGwi+argEGGh8k
 1bidD9a5oGielK9QXaoanySpxN1JkqZIiO5KzHKf9W463AKwoC6eKEE7PvJjLYfP35xu
 xOfIcu5Q9Y6mPJuYFfAvk5Kal0U4RlAxsBjOgon/S9lga6HVgZwb6MpP0zdB8Zkg4Y19
 XWx/hMB7ymAxZkdsylMItsNY42r7zmpGbXa7pGFZDxvNSd0aINEVBg52lk9jMQqM5tB9
 aMDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b7i/sI2grlFleaXu6G+WbNlIN/xmEbLbsHG793e7tpI=;
 b=sqEdK33vbzfuUIzOhEKEgqXzn87nQ9WJqECNunUqfdMXqMLiJ8+9VELuf+YfisTBEe
 Dc+3OjJPodWaXKqv82dOmr1DLYQsSrdbpsid/yE36RTTPIFgm5rkv7e/RXynhXeOlyZB
 2r0qO91i6KR2E5WCdCKtrpPen6jLn/cTC0en8Bek2DrJ4jRrDwg2tQYwjuZ99/DVhzPh
 UoeVC06ArzMGg35/WZ8SSZbCMEb5GsBf9VdBU7zynWK/7rUq8H20hTBFDs8u8TXgtvzc
 icpldDQxa6zj9d6SeYfabGoCvYci6ReN/upwFDk+owBc0ibgx3BedSSVM5j9IdV914is
 QmWw==
X-Gm-Message-State: AOAM530mCkGwAA4EdDLYsTbzvrklg7REM8p/UP35pcz+EBGgSaeq4uD/
 pqtOE/KxIhXOQtm/O3UWg7EX5w==
X-Google-Smtp-Source: ABdhPJwKmgoUAsSVtiuKeiG4sJa/slfc9etldlgfbaK/dVIk2LQlL7ZdtQJefAXfEayVExKWKoV4GQ==
X-Received: by 2002:a17:90a:2a08:: with SMTP id
 i8mr2911826pjd.122.1623260716246; 
 Wed, 09 Jun 2021 10:45:16 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:45:15 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:44:18 -0500
Message-Id: <20210609174418.249585-32-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/31] HACK: Always finalize contexts
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

Only for verifying the previous patch with I-G-T.  DO NOT MERGE!
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7d6f52d8a8012..9395d9d7f9530 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1996,7 +1996,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 			goto err_pc;
 	}
 
-	if (GRAPHICS_VER(i915) > 12) {
+	if (1 || (GRAPHICS_VER(i915) > 12)) {
 		struct i915_gem_context *ctx;
 
 		/* Get ourselves a context ID */
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
