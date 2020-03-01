Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9F6174E31
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Mar 2020 17:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D306E4C7;
	Sun,  1 Mar 2020 16:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6ECCA6E4C1;
 Sun,  1 Mar 2020 16:00:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F472A47E6;
 Sun,  1 Mar 2020 16:00:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 01 Mar 2020 16:00:48 -0000
Message-ID: <158307844837.22448.4399324499111474069@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200301155248.4132645-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200301155248.4132645-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_trace=3A_Export_anonymous_tr?=
 =?utf-8?q?acing?=
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

Series: series starting with [1/2] trace: Export anonymous tracing
URL   : https://patchwork.freedesktop.org/series/74117/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0385cbf331ee trace: Export anonymous tracing
26fbc3a0c7c8 RFC drm/i915: Export per-client debug tracing
-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1477:
+		CTX_TRACE(set->ctx,
 			"Invalid placement[%d], already occupied\n", idx);

-:311: CHECK:SPACING: No space is necessary after a cast
#311: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1358:
+			 (int) reloc->offset,

-:330: CHECK:SPACING: No space is necessary after a cast
#330: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1370:
+			 (int) reloc->offset,

-:581: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#581: FILE: drivers/gpu/drm/i915/i915_drv.h:230:
 };
+#define TRACE(tr, ...) trace_array_printk((tr), _THIS_IP_,  __VA_ARGS__)

total: 0 errors, 0 warnings, 4 checks, 546 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
