Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1594C6C162E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 16:03:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5BCE10E1FD;
	Mon, 20 Mar 2023 15:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390F110E00C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 15:03:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8C8FD6158C;
 Mon, 20 Mar 2023 15:03:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EB53C433D2;
 Mon, 20 Mar 2023 15:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1679324580;
 bh=9VJM8BcGtmlQCBTDFmNO2zR8Ju3jz/4J98ZMUfQvvHU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N1eLVUob07GSL3cjTZGfQYcHqrYsEihjrq9odjh5AUQ/6EcvF4rN0nIg1dT4BPiyy
 gyasol5NP2CEF47BFgLh24Zm2pvhzHmdk+dFims83BIQ0O48/9qCuxJMIwn4HkqtsP
 RAYEGQ5PPkoWzJthuy2ITwuWsffwQHj/l2+U5Yww=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Mon, 20 Mar 2023 15:55:04 +0100
Message-Id: <20230320145433.209904548@linuxfoundation.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230320145430.861072439@linuxfoundation.org>
References: <20230320145430.861072439@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5.4 55/60] drm/i915: Dont use stolen memory for
 ring buffers with LLC
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, patches@lists.linux.dev,
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

commit 690e0ec8e63da9a29b39fedc6ed5da09c7c82651 upstream.

Direction from hardware is that stolen memory should never be used for
ring buffer allocations on platforms with LLC. There are too many
caching pitfalls due to the way stolen memory accesses are routed. So
it is safest to just not use it.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Fixes: c58b735fc762 ("drm/i915: Allocate rings from stolen")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.9+
Tested-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-2-John.C.Harrison@Intel.com
(cherry picked from commit f54c1f6c697c4297f7ed94283c184acc338a5cf8)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/gt/intel_ringbuffer.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

--- a/drivers/gpu/drm/i915/gt/intel_ringbuffer.c
+++ b/drivers/gpu/drm/i915/gt/intel_ringbuffer.c
@@ -1268,10 +1268,11 @@ static struct i915_vma *create_ring_vma(
 {
 	struct i915_address_space *vm = &ggtt->vm;
 	struct drm_i915_private *i915 = vm->i915;
-	struct drm_i915_gem_object *obj;
+	struct drm_i915_gem_object *obj = NULL;
 	struct i915_vma *vma;
 
-	obj = i915_gem_object_create_stolen(i915, size);
+	if (!HAS_LLC(i915))
+		obj = i915_gem_object_create_stolen(i915, size);
 	if (!obj)
 		obj = i915_gem_object_create_internal(i915, size);
 	if (IS_ERR(obj))


