Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55885173048
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 06:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36646EDE3;
	Fri, 28 Feb 2020 05:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 536266EDE0;
 Fri, 28 Feb 2020 05:23:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BDF8A47E9;
 Fri, 28 Feb 2020 05:23:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 05:23:51 -0000
Message-ID: <158286743130.7475.15801299555513218203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228003958.2347965-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200228003958.2347965-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/perf=3A_Reintroduce?=
 =?utf-8?q?_wait_on_OA_configuration_completion_=28rev2=29?=
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

Series: series starting with [1/4] drm/i915/perf: Reintroduce wait on OA configuration completion (rev2)
URL   : https://patchwork.freedesktop.org/series/74049/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8416743fda17 drm/i915/perf: Reintroduce wait on OA configuration completion
fb0cb9bf8248 drm/i915: Wrap i915_active in a simple kreffed struct
-:44: WARNING:LINE_SPACING: Missing a blank line after declarations
#44: FILE: drivers/gpu/drm/i915/i915_active.c:905:
+	struct auto_active *aa = container_of(ref, typeof(*aa), base);
+	kref_put(&aa->ref, auto_release);

total: 0 errors, 1 warnings, 0 checks, 66 lines checked
890f0c78eaaa drm/i915: Extend i915_request_await_active to use all timelines
4c067902672a drm/i915/perf: Schedule oa_config after modifying the contexts

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
