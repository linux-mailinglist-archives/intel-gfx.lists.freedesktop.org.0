Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDD613133C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 14:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 936746E2D3;
	Mon,  6 Jan 2020 13:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17A786E2CF;
 Mon,  6 Jan 2020 13:54:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F23DA0BCB;
 Mon,  6 Jan 2020 13:54:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 13:54:26 -0000
Message-ID: <157831886603.24766.14335121370510502853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106114234.2529613-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106114234.2529613-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5BCI=2C1/6=5D_drm/i915/selftests=3A_Fixup?=
 =?utf-8?q?_sparse_=5F=5Fuser_annotation_on_local_var?=
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

Series: series starting with [CI,1/6] drm/i915/selftests: Fixup sparse __user annotation on local var
URL   : https://patchwork.freedesktop.org/series/71656/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915/selftests: Fixup sparse __user annotation on local var
-drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:990:9: warning: dereference of noderef expression
-drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:991:13: warning: dereference of noderef expression
+

Commit: drm/i915/selftests: Impose a timeout for request submission
Okay!

Commit: drm/i915: Merge i915_request.flags with i915_request.fence.flags
Okay!

Commit: drm/i915/gt: Convert the final GEM_TRACE to GT_TRACE and co
Okay!

Commit: drm/i915/gt: Drop mutex serialisation between context pin/unpin
Okay!

Commit: drm/i915/gt: Use memset_p to clear the ports
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
