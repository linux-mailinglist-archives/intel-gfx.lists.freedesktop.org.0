Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A74211ABFE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 14:23:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739DC6EB4E;
	Wed, 11 Dec 2019 13:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 199B26EAFE;
 Wed, 11 Dec 2019 13:23:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 111EEA0075;
 Wed, 11 Dec 2019 13:23:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Dec 2019 13:23:20 -0000
Message-ID: <157607060004.30628.11062382988143384411@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Fix_cmdpars?=
 =?utf-8?q?er_drm=2Edebug?=
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

Series: series starting with [CI,1/5] drm/i915: Fix cmdparser drm.debug
URL   : https://patchwork.freedesktop.org/series/70751/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
932afa9f6249 drm/i915: Fix cmdparser drm.debug
d6fc56037549 drm/i915: Remove redundant parameters from intel_engine_cmd_parser
37ab9c58f463 drm/i915: Simplify error escape from cmdparser
2c1527f75ee4 drm/i915/gem: Tidy up error handling for eb_parse()
fa5e1faeee3f drm/i915: Align start for memcpy_from_wc
-:46: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#46: FILE: drivers/gpu/drm/i915/i915_memcpy.c:31:
+#define CI_BUG_ON(expr) BUG_ON(expr)

total: 0 errors, 1 warnings, 0 checks, 133 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
