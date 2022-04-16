Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFB45037B5
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 19:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3134C10E294;
	Sat, 16 Apr 2022 17:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3844210E31B
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 17:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650129818;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xZJdeEB7LRc/tdjD5XNMXjOZKOVeiea7oToBzOvG+54=;
 b=X/uhHvwoP0sBrKnRz6cVN1+nlDRLbcTUjTE6b5d2GjWopxpz2/lvCI+vYlyxCCwTH10MTs
 O1Fumml7YBvk22viErMjglAMySvQc51hLZwXZ/JMsP5gAYpHkz6oTWuPSF8GbSj14lSlth
 6pUqOFjZoes6dBbKfIT1o8155sdkg2A=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-661-EloflBXCOLGg2SXKeISwUQ-1; Sat, 16 Apr 2022 13:23:37 -0400
X-MC-Unique: EloflBXCOLGg2SXKeISwUQ-1
Received: by mail-qt1-f198.google.com with SMTP id
 bt12-20020ac8690c000000b002ee65af14d0so6781307qtb.22
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 10:23:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xZJdeEB7LRc/tdjD5XNMXjOZKOVeiea7oToBzOvG+54=;
 b=ryhmQFRTksqVlkgmaMK0LZhy49cbEYwXzdsXGcvQlx5QNF6EdDhXdOE1HsF1fcq9Qh
 mXxdUK6amCG3NIjA7MwQ4hQ04TG1X/lCOol6HZ/nLe9TXKy/qiH3y7KMWIDesYjOOCHX
 sg0QQxyN96PFxg5aHYTIzxERWZtYBlJfinziFwK4gWIwioUTMxMjTBFJ0pDCgnAlrrZC
 +LJpCGENuFTgx8opyMSIZuuFoKA98IetDWSNzfsezIYlQWs8gVePOhiz3erX8J59bxZW
 bxbFV+Q5MduCRRKfSZnAehG0lAI89NltxCrY+RLq1a7ZqKwluiZgFS0cRXINqAbt91PT
 o2Lg==
X-Gm-Message-State: AOAM531PcfMjuKCTwDmkZNF1qC0RovYlPACrmHhEmR9Jz2iqDyqhEqq0
 of5k9k4httr+GvuDGJkP0aqcIj6uOcGXIH81QhN+dfHnQNaZ7CykJjp+F2sgkgwamS+nmhC0LAX
 KlCw1ealXDguFGROSYsMkZ6S6RfMX
X-Received: by 2002:ac8:59d4:0:b0:2e1:f86d:b38c with SMTP id
 f20-20020ac859d4000000b002e1f86db38cmr2760719qtf.285.1650129817300; 
 Sat, 16 Apr 2022 10:23:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAEeXarJj7i8MC2Tcj5mB+1+LrS7bjnC2aeIcVvjZ6kbGfJHZPt0VaVk2XcNDtSL6OwKTS1g==
X-Received: by 2002:ac8:59d4:0:b0:2e1:f86d:b38c with SMTP id
 f20-20020ac859d4000000b002e1f86db38cmr2760702qtf.285.1650129817011; 
 Sat, 16 Apr 2022 10:23:37 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 n186-20020a37bdc3000000b0069c218173e8sm4079598qkf.112.2022.04.16.10.23.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 10:23:36 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com, airlied@linux.ie,
 daniel@ffwll.ch
Date: Sat, 16 Apr 2022 13:23:25 -0400
Message-Id: <20220416172325.1039795-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="US-ASCII"; x-default=true
Subject: [Intel-gfx] [PATCH] drm/i915: change node clearing from memset to
 initialization
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
Cc: Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In insert_mappable_node(), the parameter node is
cleared late in node's use with memset.
insert_mappable_node() is a singleton, called only
from i915_gem_gtt_prepare() which itself is only
called by i915_gem_gtt_pread() and
i915_gem_gtt_pwrite_fast() where the definition of
node originates.

Instead of using memset, initialize node to 0 at it's
definitions.  And remove unneeded clearing of the flags
element.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 2e10187cd0a0..7dbd0b325c43 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -69,7 +69,6 @@ insert_mappable_node(struct i915_ggtt *ggtt, struct drm_mm_node *node, u32 size)
 	if (err)
 		return err;
 
-	memset(node, 0, sizeof(*node));
 	err = drm_mm_insert_node_in_range(&ggtt->vm.mm, node,
 					  size, 0, I915_COLOR_UNEVICTABLE,
 					  0, ggtt->mappable_end,
@@ -328,7 +327,6 @@ static struct i915_vma *i915_gem_gtt_prepare(struct drm_i915_gem_object *obj,
 		goto err_ww;
 	} else if (!IS_ERR(vma)) {
 		node->start = i915_ggtt_offset(vma);
-		node->flags = 0;
 	} else {
 		ret = insert_mappable_node(ggtt, node, PAGE_SIZE);
 		if (ret)
@@ -381,7 +379,7 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	intel_wakeref_t wakeref;
-	struct drm_mm_node node;
+	struct drm_mm_node node = {};
 	void __user *user_data;
 	struct i915_vma *vma;
 	u64 remain, offset;
@@ -538,7 +536,7 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
 	intel_wakeref_t wakeref;
-	struct drm_mm_node node;
+	struct drm_mm_node node = {};
 	struct i915_vma *vma;
 	u64 remain, offset;
 	void __user *user_data;
-- 
2.27.0

