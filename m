Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E8430CF58
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 23:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537A66E9B6;
	Tue,  2 Feb 2021 22:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABE9C6E9B5;
 Tue,  2 Feb 2021 22:51:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6F77A47E1;
 Tue,  2 Feb 2021 22:51:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Feb 2021 22:51:03 -0000
Message-ID: <161230626366.19549.3509421168407382631@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210202221233.28223-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210202221233.28223-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C01/13=5D_Oops_with_=22ALSA=3A_?=
 =?utf-8?q?jack=3A_implement_software_jack_injection_via_debugfs=22?=
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

Series: series starting with [CI,01/13] Oops with "ALSA: jack: implement software jack injection via debugfs"
URL   : https://patchwork.freedesktop.org/series/86599/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
27bd3e4245a9 Oops with "ALSA: jack: implement software jack injection via debugfs"
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2d670ea2bd53 ("ALSA: jack: implement software jack injection via debugfs")'
#10: 
> commit 2d670ea2bd53 ("ALSA: jack: implement software jack injection via

-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9715/fi-skl-6700k2/pstore0-1612277467_Oops_1.txt

total: 1 errors, 1 warnings, 0 checks, 21 lines checked
bd2be6353af9 drm/i915/gt: Move engine setup out of set_default_submission
922e205e6eec drm/i915/gt: Move submission_method into intel_gt
0e2a6bc1a95a drm/i915/gt: Move CS interrupt handler to the backend
31b32cb0f63b drm/i915: Replace engine->schedule() with a known request operation
043b1f700b88 drm/i915: Restructure priority inheritance
be807a2e516f drm/i915/selftests: Measure set-priority duration
-:53: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#53: 
new file mode 100644

-:429: WARNING:LINE_SPACING: Missing a blank line after declarations
#429: FILE: drivers/gpu/drm/i915/selftests/i915_scheduler.c:372:
+	struct igt_spinner spin;
+	I915_RND_STATE(prng);

total: 0 errors, 2 warnings, 0 checks, 695 lines checked
fc01456ae916 drm/i915/selftests: Exercise priority inheritance around an engine loop
fc7cad69ff29 drm/i915: Improve DFS for priority inheritance
688a50d52142 drm/i915: Extract request submission from execlists
dcccee656424 drm/i915: Extract request rewinding from execlists
21ffbbe398b2 drm/i915: Extract request suspension from the execlists
2d43a2f45c8c drm/i915: Extract the ability to defer and rerun a request later


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
