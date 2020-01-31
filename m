Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C7614EE50
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7BD6FB69;
	Fri, 31 Jan 2020 14:23:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EE016FB67;
 Fri, 31 Jan 2020 14:23:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 470CEA011C;
 Fri, 31 Jan 2020 14:23:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 14:23:32 -0000
Message-ID: <158048061228.13123.14285762715860909786@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131081543.2251298-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200131081543.2251298-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Also_use_asyn?=
 =?utf-8?q?c_bind_for_PIN=5FUSER_into_bsw/bxt_ggtt_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915/gt: Also use async bind for PIN_USER into bsw/bxt ggtt (rev2)
URL   : https://patchwork.freedesktop.org/series/72809/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bb9f5c3f2305 drm/i915/gt: Also use async bind for PIN_USER into bsw/bxt ggtt
-:24: ERROR:CODE_INDENT: code indent should use tabs where possible
#24: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:850:
+^I^I       ^II915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;$

-:24: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#24: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:850:
+^I^I       ^II915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;$

total: 1 errors, 1 warnings, 0 checks, 9 lines checked
0221737f0592 drm/i915/selftests: Also wait for the scratch buffer to be bound

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
