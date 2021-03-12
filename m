Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A70433930A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 17:22:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920BD6E3E5;
	Fri, 12 Mar 2021 16:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3E286E3E5;
 Fri, 12 Mar 2021 16:22:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC2C5A0091;
 Fri, 12 Mar 2021 16:22:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 12 Mar 2021 16:22:11 -0000
Message-ID: <161556613174.8355.6299030111253031306@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210312154622.1767865-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210312154622.1767865-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Default_request/fence_expiry_+_watchdog?=
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

Series: Default request/fence expiry + watchdog
URL   : https://patchwork.freedesktop.org/series/87930/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
865f5ed6eec8 drm/i915: Individual request cancellation
-:256: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '__cancel_inactive', this function's name, in a string
#256: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:660:
+		pr_err("%s: __cancel_inactive error %d\n", engine->name, err);

-:317: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '__cancel_active', this function's name, in a string
#317: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:721:
+		pr_err("%s: __cancel_active error %d\n", engine->name, err);

-:388: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '__cancel_active_chain', this function's name, in a string
#388: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:792:
+		pr_err("%s: __cancel_active_chain error %d\n",

-:438: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using '__cancel_completed', this function's name, in a string
#438: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:842:
+		pr_err("%s: __cancel_completed error %d\n", engine->name, err);

total: 0 errors, 4 warnings, 0 checks, 444 lines checked
5b101fa80277 drm/i915: Restrict sentinel requests further
c4f617682a6d drm/i915: Request watchdog infrastructure
-:197: WARNING:LONG_LINE_COMMENT: line length of 124 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/i915_request.c:314:
+			       NSEC_PER_MSEC, /* FIXME check if it gives the "not sooner" guarantee or slack is both ways */

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
9e458012bb44 drm/i915: Allow userspace to configure the watchdog
5d0b88dfca39 drm/i915: Fail too long user submissions by default
7f4fb6d644b5 drm/i915: Allow configuring default request expiry via modparam


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
