Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D461BA030
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 11:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181E689CA4;
	Mon, 27 Apr 2020 09:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4798589C99;
 Mon, 27 Apr 2020 09:41:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4157AA0BA8;
 Mon, 27 Apr 2020 09:41:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 09:41:56 -0000
Message-ID: <158798051626.26357.961452095815414527@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427085408.13879-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_drm/i915/gt=3A_Sanitize_GT_f?=
 =?utf-8?q?irst?=
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

Series: series starting with [1/9] drm/i915/gt: Sanitize GT first
URL   : https://patchwork.freedesktop.org/series/76542/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4233a356bc65 drm/i915/gt: Sanitize GT first
651f29e87551 drm/i915/gt: Fix up clock frequency
72e42d3cfa83 drm/i915/execlists: Check preempt-timeout target before submit_ports
73bcb8f06b0d drm/i915/gt: Always enable busy-stats for execlists
08a507ec4c3d drm/i915/gt: Move rps.enabled/active to flags
-:113: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 68)
#113: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:1228:
+	if (rps->max_freq <= rps->min_freq)
+		/* leave disabled, no room for dynamic reclocking */;

total: 0 errors, 1 warnings, 0 checks, 288 lines checked
ce00c6769c91 drm/i915/gt: Track use of RPS interrupts in flags
af8095897401 drm/i915/gt: Switch to manual evaluation of RPS
-:186: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#186: FILE: drivers/gpu/drm/i915/gt/intel_rps.h:83:
 }
+static inline bool intel_rps_uses_timer(const struct intel_rps *rps)

total: 0 errors, 0 warnings, 1 checks, 173 lines checked
5be80e34c7e4 drm/i915/gt: Apply the aggressive downclocking to parking
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
References: 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")

-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")'
#12: 
References: 21abf0bf168d ("drm/i915/gt: Treat idling as a RPS downclock event")

total: 1 errors, 1 warnings, 0 checks, 31 lines checked
698d557e4e9e drm/i915/gt: Restore aggressive post-boost downclocking
-:12: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2a8862d2f3da ("drm/i915: Reduce the RPS shock")'
#12: 
References: 2a8862d2f3da ("drm/i915: Reduce the RPS shock")

total: 1 errors, 0 warnings, 0 checks, 34 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
