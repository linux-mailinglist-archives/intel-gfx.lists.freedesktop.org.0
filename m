Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A6928BEE0
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 19:16:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A46D6E54C;
	Mon, 12 Oct 2020 17:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 413476E546;
 Mon, 12 Oct 2020 17:16:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39BA8A3ECB;
 Mon, 12 Oct 2020 17:16:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: rwright@hpe.com
Date: Mon, 12 Oct 2020 17:16:08 -0000
Message-ID: <160252296820.31909.11695904351800225667@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201010201110.GA12600@rfwz62>
In-Reply-To: <20201010201110.GA12600@rfwz62>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_reduce_context_clear_batch_size_to_avoid_gpu?=
 =?utf-8?q?_hang_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: reduce context clear batch size to avoid gpu hang (rev2)
URL   : https://patchwork.freedesktop.org/series/82587/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e87275d426b9 drm/i915/gt: reduce context clear batch size to avoid gpu hang (rev2)
-:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#23: 
  [47f8253d2b8947d79fd3196bf96c1959c0f25f20] drm/i915/gen7: Clear all EU/L3 residual contexts

-:52: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#52: FILE: drivers/gpu/drm/i915/gt/gen7_renderclear.c:54:
+	int force_reduced = (d->subsystem_vendor == PCI_VENDOR_ID_HP
+			  && d->subsystem_device == 0x2b38);

-:63: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#63: FILE: drivers/gpu/drm/i915/gt/gen7_renderclear.c:68:
+	drm_dbg(&i915->drm, "force_reduced=%d max_primitives=%d\n",
+			     force_reduced, bv->max_primitives);

-:66: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author '"rwright@hpe.com" <rwright@hpe.com>'

total: 0 errors, 2 warnings, 2 checks, 20 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
