Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D72F1B4D33
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D756E0A6;
	Wed, 22 Apr 2020 19:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 639B26E07D;
 Wed, 22 Apr 2020 19:18:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CFD5A0019;
 Wed, 22 Apr 2020 19:18:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "tip-bot2 for Alexey Budankov" <tip-bot2@linutronix.de>
Date: Wed, 22 Apr 2020 19:18:59 -0000
Message-ID: <158758313937.5180.5800118286583109518@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_CAP=5FPERFMON_to_secure_system_performance_monito?=
 =?utf-8?q?ring_and_observability_=28rev18=29?=
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

Series: Introduce CAP_PERFMON to secure system performance monitoring and observability (rev18)
URL   : https://patchwork.freedesktop.org/series/72273/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f036c99151ab capabilities: Introduce CAP_PERFMON to kernel and user space
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("96d77665c15889c36")'
#8: 
Commit-ID:     980737282232b752bb14dab96d77665c15889c36

-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Gitweb:        https://git.kernel.org/tip/980737282232b752bb14dab96d77665c15889c36

-:137: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 36 lines checked
64cddb3c59c7 perf/core: Open access to the core for CAP_PERFMON privileged process
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("9b835314d2b071cc2")'
#9: 
Commit-ID:     18aa18566218d4a46d940049b835314d2b071cc2

-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Gitweb:        https://git.kernel.org/tip/18aa18566218d4a46d940049b835314d2b071cc2

-:100: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 32 lines checked
0bb591638827 perf/core: open access to probes for CAP_PERFMON privileged process
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("3ff8722e79ecf4088")'
#9: 
Commit-ID:     c9e0924e5c2b59365f9c0d43ff8722e79ecf4088

-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Gitweb:        https://git.kernel.org/tip/c9e0924e5c2b59365f9c0d43ff8722e79ecf4088

-:83: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 16 lines checked
9ded613d59ba perf tools: Support CAP_PERFMON capability
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("fa1dd1fcb84f2504c")'
#8: 
Commit-ID:     6b3e0e2e04615df128b2d38fa1dd1fcb84f2504c

-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Gitweb:        https://git.kernel.org/tip/6b3e0e2e04615df128b2d38fa1dd1fcb84f2504c

-:41: ERROR:DIFF_IN_COMMIT_MSG: Avoid using diff content in the commit message - patch(1) might not work
#41: 
  --- a/libcap/include/uapi/linux/capability.h

-:248: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 2 errors, 2 warnings, 0 checks, 56 lines checked
d2eaa8483797 drm/i915/perf: Open access for CAP_PERFMON privileged process
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("d7c5309b814281ae3")'
#8: 
Commit-ID:     4e3d3456b78fa5a70e65de0d7c5309b814281ae3

-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Gitweb:        https://git.kernel.org/tip/4e3d3456b78fa5a70e65de0d7c5309b814281ae3

-:101: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 39 lines checked
14afa15c555f trace/bpf_trace: Open access for CAP_PERFMON privileged process
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("3ab0abe10a7e68ea1")'
#9: 
Commit-ID:     031258da05956646c5606023ab0abe10a7e68ea1

-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Gitweb:        https://git.kernel.org/tip/031258da05956646c5606023ab0abe10a7e68ea1

-:67: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 8 lines checked
092f35fb8dec powerpc/perf: open access for CAP_PERFMON privileged process
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("3e6ead32843999511")'
#8: 
Commit-ID:     ff46758313e688fca7d762b3e6ead32843999511

-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Gitweb:        https://git.kernel.org/tip/ff46758313e688fca7d762b3e6ead32843999511

-:75: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 16 lines checked
2b530591caa3 parisc/perf: open access for CAP_PERFMON privileged process
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("21ed0e4bb1ab3b382")'
#8: 
Commit-ID:     cf91baf3f7f39a0cd29072e21ed0e4bb1ab3b382

-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Gitweb:        https://git.kernel.org/tip/cf91baf3f7f39a0cd29072e21ed0e4bb1ab3b382

-:66: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 8 lines checked
10e972d65247 drivers/perf: Open access for CAP_PERFMON privileged process
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("7130b4c06ab4d412f")'
#8: 
Commit-ID:     cea7d0d4a59b4efd0e1fe067130b4c06ab4d412f

-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Gitweb:        https://git.kernel.org/tip/cea7d0d4a59b4efd0e1fe067130b4c06ab4d412f

-:75: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 16 lines checked
33c94226c35f drivers/oprofile: Open access for CAP_PERFMON privileged process
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("68387f4373a58c949")'
#9: 
Commit-ID:     ab76878bb720cbd35a05ae868387f4373a58c949

-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Gitweb:        https://git.kernel.org/tip/ab76878bb720cbd35a05ae868387f4373a58c949

-:66: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 8 lines checked
b3c0c8dc3225 doc/admin-guide: Update perf-security.rst with CAP_PERFMON information
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("06b01be2f0f7ef2e4")'
#9: 
Commit-ID:     902a8dcc5ba6c5dc3332e8806b01be2f0f7ef2e4

-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Gitweb:        https://git.kernel.org/tip/902a8dcc5ba6c5dc3332e8806b01be2f0f7ef2e4

-:231: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 144 lines checked
d13256e76cf3 doc/admin-guide: update kernel.rst with CAP_PERFMON information
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit fatal: bad o ("399d669438c63b6ce")'
#9: 
Commit-ID:     025b16f81dd7f51f29d0109399d669438c63b6ce

-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
Gitweb:        https://git.kernel.org/tip/025b16f81dd7f51f29d0109399d669438c63b6ce

-:78: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'tip-bot2 for Alexey Budankov <tip-bot2@linutronix.de>'

total: 1 errors, 2 warnings, 0 checks, 31 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
