Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75057160405
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 13:28:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528026E2B2;
	Sun, 16 Feb 2020 12:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 220FC6E2B0;
 Sun, 16 Feb 2020 12:28:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1843AA47E1;
 Sun, 16 Feb 2020 12:28:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 16 Feb 2020 12:28:20 -0000
Message-ID: <158185610007.23350.2604665055739868853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200216120600.341019-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200216120600.341019-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Track_hw_reported_context_runtime_=28rev5=29?=
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

Series: drm/i915: Track hw reported context runtime (rev5)
URL   : https://patchwork.freedesktop.org/series/73499/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5da4eb1bc1fd drm/i915: Track hw reported context runtime
-:109: WARNING:LINE_SPACING: Missing a blank line after declarations
#109: FILE: drivers/gpu/drm/i915/gt/intel_context_types.h:79:
+		u32 last;
+		I915_SELFTEST_DECLARE(u32 num_underflow);

-:197: WARNING:LINE_SPACING: Missing a blank line after declarations
#197: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:4457:
+	struct i915_request *rq;
+	IGT_TIMEOUT(end_time);

total: 0 errors, 2 warnings, 0 checks, 293 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
