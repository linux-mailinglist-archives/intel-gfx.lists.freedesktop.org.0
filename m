Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C937C40D9E8
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 14:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524566ED9A;
	Thu, 16 Sep 2021 12:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CC26ED9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 12:27:05 +0000 (UTC)
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5625A40192
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 12:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1631795224;
 bh=oruoXINM9lE6NQF44gguXgq2pHTP8iv51Cw7Sf30Jug=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=DJPdjkvub6rKzh7w+p1NEC/Uz7PbxB2Pl4Zu56+SK2qnkpKx/qEEZmfF2sqI7X2gC
 tA5eiGXhfKJOzTQ3k8Sh8EkK6nc47AtIVFXPbdq23aajpGI6r6byTS5aHMa+HggfiK
 7oh+5f7O/mlkvSWV0GB611JMe5pdkpkqM+KRVdy2onr1R+CumolsvccJQJc0VGMgr0
 sK93ENyyk2UFtoZoQx2vDQcaQE+2YKCw0nh3kbAHKjS/DCIOVzvSs2tFz6MNHPZ3I3
 6FlnIqfCiQBwk4w84fbK5bbcJeNaAXZACF2l8eVF3s3ZuMVn2vK5Z5tTVabglotUul
 EArlSXEt205vQ==
Received: by mail-pl1-f197.google.com with SMTP id
 w10-20020a170903310a00b0013a74038765so3145370plc.22
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 05:27:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oruoXINM9lE6NQF44gguXgq2pHTP8iv51Cw7Sf30Jug=;
 b=7QIGDj2+5w6R1yGEbGvlAEcOTOb95bIp9INZw1N7Vj4nx9tv512Rw3pSaJDYxLopmS
 ZK2twptXYXwXa2haHs54c59MUamnG516+rezeSejO6TZ+rPe5tbamV6+hsJIsYwa/vcA
 Gb2CLlbgjStre8QyBKi5kfIewfv0gbEYOkY8ZJ/DXfLzq8hyCHH6Y5szYsuWRu/x9qoH
 gNse2wig4RmsE+s3HFq8B2dO+1j9Vs7Fur6Eq7/h8zHWmRlc7rQV6PN/cK1z8cFhhe4+
 C4ouiluVB/vk9Xy11bR78oo8PHMs+lrzBxe1DlrcCYfYta1KBhv1JvUnnm7qYMb1CkV7
 sxvw==
X-Gm-Message-State: AOAM531LcqmBUVghtFdwRN5UJfZW55ap4ao0rhr/XvcB7X7KMUHhOj9m
 l6tO8lLhvVHrmOcfKowhw5YzpUqp3LYB/bdtGmVHT7EUo+Peos/0AUQzkvjsYgy05+0/w8WZL4y
 7I+zNq+j0a4X6MihkNP89LNE0SpLdXHbQQbGop1sCw4xi5A==
X-Received: by 2002:a17:902:7488:b0:13c:9740:3c13 with SMTP id
 h8-20020a170902748800b0013c97403c13mr4614641pll.76.1631795222566; 
 Thu, 16 Sep 2021 05:27:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxNDmpBb62DYJob9a3dod7hjLoK8Qzzsy/X+2T2gIfx2zDj4qcfTeyPuJyeL4eX5C+Fx5VmHA==
X-Received: by 2002:a17:902:7488:b0:13c:9740:3c13 with SMTP id
 h8-20020a170902748800b0013c97403c13mr4614631pll.76.1631795222361; 
 Thu, 16 Sep 2021 05:27:02 -0700 (PDT)
Received: from localhost.localdomain ([69.163.84.166])
 by smtp.gmail.com with ESMTPSA id s9sm2897369pfu.129.2021.09.16.05.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 05:27:02 -0700 (PDT)
From: Tim Gardner <tim.gardner@canonical.com>
To: intel-gfx@lists.freedesktop.org
Cc: tim.gardner@canonical.com, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Date: Thu, 16 Sep 2021 06:26:49 -0600
Message-Id: <20210916122649.12691-1-tim.gardner@canonical.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <dc88e195-949c-bb46-b7d3-18e90df9b064@canonical.com>
References: <dc88e195-949c-bb46-b7d3-18e90df9b064@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: use strscpy() to avoid buffer
 overrun
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

In capture_vma() Coverity complains of a possible buffer overrun. Even
though this is a static function where all call sites can be checked,
limiting the copy length could save some future grief.

CID 93300 (#1 of 1): Copy into fixed size buffer (STRING_OVERFLOW)
4. fixed_size_dest: You might overrun the 16-character fixed-size string c->name
   by copying name without checking the length.
5. parameter_as_source: Note: This defect has an elevated risk because the
   source argument is a parameter of the current function.
1326        strcpy(c->name, name);

Fix any possible overflows by using strscpy() which guarantees NULL termination.

Also correct 2 other strcpy() call sites with the same potential for Coverity
warnings or overruns.

v2 - Change $SUBJECT from "drm/i915: zero fill vma name buffer"
     Use strscpy() instead of strncpy(). Its a much simpler change.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Tim Gardner <tim.gardner@canonical.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 9cf6ac575de1..7f246f51959d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1015,7 +1015,7 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 		return NULL;
 	}
 
-	strcpy(dst->name, name);
+	strscpy(dst->name, name, sizeof(dst->name));
 	dst->next = NULL;
 
 	dst->gtt_offset = vma->node.start;
@@ -1279,7 +1279,7 @@ static bool record_context(struct i915_gem_context_coredump *e,
 	rcu_read_lock();
 	task = pid_task(ctx->pid, PIDTYPE_PID);
 	if (task) {
-		strcpy(e->comm, task->comm);
+		strscpy(e->comm, task->comm, sizeof(e->comm));
 		e->pid = task->pid;
 	}
 	rcu_read_unlock();
@@ -1323,7 +1323,7 @@ capture_vma(struct intel_engine_capture_vma *next,
 		return next;
 	}
 
-	strcpy(c->name, name);
+	strscpy(c->name, name, sizeof(c->name));
 	c->vma = vma; /* reference held while active */
 
 	c->next = next;
-- 
2.33.0

