Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C22112D5A1
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 02:57:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D7D6E0CE;
	Tue, 31 Dec 2019 01:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8CA26E0C1;
 Tue, 31 Dec 2019 01:57:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B2D4A0003;
 Tue, 31 Dec 2019 01:57:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Dec 2019 01:57:01 -0000
Message-ID: <157775742153.26889.11320199019705558915@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915/gt=3A_Include_a_bun?=
 =?utf-8?q?ch_more_rcs_image_state?=
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

Series: series starting with [1/5] drm/i915/gt: Include a bunch more rcs image state
URL   : https://patchwork.freedesktop.org/series/71506/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3900059d08ce drm/i915/gt: Include a bunch more rcs image state
-:22: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#22: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:492:
+/*
+static void hex2offsets(FILE *file)

-:87: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'count' - possible side-effects?
#87: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:556:
+#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))

total: 0 errors, 1 warnings, 1 checks, 203 lines checked
0e75786dcac1 drm/i915/gt: Clear LRC image inline
-:40: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#40: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:568:
+#define END(x) 0, (x)

total: 1 errors, 0 warnings, 0 checks, 239 lines checked
2f669a71fc28 drm/i915/gt: Ignore stale context state upon resume
cc1692e8276b drm/i915/gt: Discard stale context state from across idling
9cc55ba3c653 drm/i915/gt: Always poison the kernel_context image before unparking

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
