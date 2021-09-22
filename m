Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F254152AA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 23:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCEF89FD9;
	Wed, 22 Sep 2021 21:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 48FEF89F75;
 Wed, 22 Sep 2021 21:21:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4209CA0003;
 Wed, 22 Sep 2021 21:21:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 21:21:45 -0000
Message-ID: <163234570523.6942.5509266904271977233@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922194333.8956-1-matthew.brost@intel.com>
In-Reply-To: <20210922194333.8956-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_bug_in_user_proto-context_creation_that_lea?=
 =?utf-8?q?ked_contexts?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Fix bug in user proto-context creation that leaked contexts
URL   : https://patchwork.freedesktop.org/series/94962/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa5831f0711b drm/i915: Fix bug in user proto-context creation that leaked contexts
-:30: WARNING:BRACES: braces {} are not necessary for single statement blocks
#30: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:901:
+	if (!e) {
+		return ERR_PTR(-ENOMEM);
+	}

total: 0 errors, 1 warnings, 0 checks, 18 lines checked


