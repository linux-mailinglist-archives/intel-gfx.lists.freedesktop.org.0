Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F16E17932D0
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 02:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE6310E115;
	Wed,  6 Sep 2023 00:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CBA010E115;
 Wed,  6 Sep 2023 00:07:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45E2FA00E6;
 Wed,  6 Sep 2023 00:07:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mathias Krause" <minipli@grsecurity.net>
Date: Wed, 06 Sep 2023 00:07:13 -0000
Message-ID: <169395883325.17390.16160455323080792440@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230905113921.14071-1-minipli@grsecurity.net>
In-Reply-To: <20230905113921.14071-1-minipli@grsecurity.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_fix_rb-tree/llist/list_confusion?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: fix rb-tree/llist/list confusion
URL   : https://patchwork.freedesktop.org/series/123282/
State : warning

== Summary ==

Error: dim checkpatch failed
f1aa77045061 Revert "drm/i915: Use uabi engines for the default engine map"
-:41: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'sanitiy checks in grsecurity'
#41: 
Reported-by: sanitiy checks in grsecurity

-:41: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#41: 
Reported-by: sanitiy checks in grsecurity
Fixes: 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine map")

-:76: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#76: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1120:
+		GEM_BUG_ON(engine->legacy_idx >= I915_NUM_ENGINES);

total: 1 errors, 2 warnings, 0 checks, 27 lines checked
ca8889ed26b0 drm/i915: Clarify type evolution of uabi_node/uabi_engines


