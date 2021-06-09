Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BB03A0E07
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 09:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F5B6E408;
	Wed,  9 Jun 2021 07:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6E826E3F5;
 Wed,  9 Jun 2021 07:47:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE87AAA01E;
 Wed,  9 Jun 2021 07:47:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 09 Jun 2021 07:47:44 -0000
Message-ID: <162322486483.27477.13810575350203931432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609043613.102962-1-jason@jlekstrand.net>
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_ioctl_clean-ups_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============1735247867=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1735247867==
Content-Type: multipart/alternative;
 boundary="===============3867093422899491265=="

--===============3867093422899491265==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: ioctl clean-ups (rev6)
URL   : https://patchwork.freedesktop.org/series/89443/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10194_full -> Patchwork_20316_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20316_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20316_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20316_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-iclb:         [PASS][1] -> [SKIP][2] +33 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb7/igt@gem_ctx_engines@invalid-engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_balancer@indices:
    - shard-iclb:         NOTRUN -> [SKIP][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb2/igt@gem_exec_balancer@indices.html
    - shard-tglb:         NOTRUN -> [SKIP][4] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb6/igt@gem_exec_balancer@indices.html

  * igt@gem_exec_balancer@nohangcheck:
    - shard-tglb:         [PASS][5] -> [SKIP][6] +34 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb8/igt@gem_exec_balancer@nohangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb5/igt@gem_exec_balancer@nohangcheck.html

  * igt@gem_watchdog@default-virtual:
    - shard-skl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl7/igt@gem_watchdog@default-virtual.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl10/igt@gem_watchdog@default-virtual.html
    - shard-tglb:         [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb5/igt@gem_watchdog@default-virtual.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@gem_watchdog@default-virtual.html
    - shard-iclb:         [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb7/igt@gem_watchdog@default-virtual.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@gem_watchdog@default-virtual.html
    - shard-glk:          [PASS][13] -> [FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-glk2/igt@gem_watchdog@default-virtual.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk2/igt@gem_watchdog@default-virtual.html
    - shard-kbl:          [PASS][15] -> [FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-kbl6/igt@gem_watchdog@default-virtual.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@gem_watchdog@default-virtual.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.00@execution@built-in-functions@vs-floor-dvec4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][17] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@vs-floor-dvec4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10194_full and Patchwork_20316_full:

### New IGT tests (5) ###

  * igt@gem_ctx_param@invalid-get-engines:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-get-no-zeromap:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-get-ringsize:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-set-no-zeromap:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-set-ringsize:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  


### New Piglit tests (7) ###

  * spec@glsl-4.00@execution@built-in-functions@fs-op-div-double-dmat4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@fs-op-div-double-dmat4x3:
    - Statuses : 1 crash(s)
    - Exec time: [61.94] s

  * spec@glsl-4.00@execution@built-in-functions@gs-inverse-dmat4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@gs-op-div-double-dmat3:
    - Statuses : 1 crash(s)
    - Exec time: [58.87] s

  * spec@glsl-4.00@execution@built-in-functions@vs-floor-dvec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@vs-op-mult-dmat4x3-dmat4:
    - Statuses : 1 crash(s)
    - Exec time: [105.51] s

  * spec@glsl-4.00@execution@built-in-functions@vs-refract-dvec3-dvec3-double:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_20316_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][18] ([i915#3002])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@gem_create@create-massive.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][19] ([i915#3002])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#2410])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#1099]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_ctx_shared@create-shared-gtt:
    - shard-snb:          [PASS][23] -> [SKIP][24] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-snb5/igt@gem_ctx_shared@create-shared-gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb6/igt@gem_ctx_shared@create-shared-gtt.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [PASS][25] -> [TIMEOUT][26] ([i915#3063])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@full-late:
    - shard-skl:          [PASS][27] -> [SKIP][28] ([fdo#109271]) +37 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl1/igt@gem_exec_balancer@full-late.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl2/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-glk:          [PASS][29] -> [SKIP][30] ([fdo#109271]) +32 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-glk2/igt@gem_exec_balancer@invalid-bonds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk2/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@smoke:
    - shard-kbl:          [PASS][31] -> [SKIP][32] ([fdo#109271]) +20 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-kbl6/igt@gem_exec_balancer@smoke.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +162 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#2842])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][36] -> [FAIL][37] ([i915#2842])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][38] ([i915#2842])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][39] ([i915#2842])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][40] ([i915#2842])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][41] -> [FAIL][42] ([i915#2849])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-kbl:          NOTRUN -> [FAIL][43] ([i915#2389]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl2/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_schedule@preempt-engines@rcs0:
    - shard-apl:          [PASS][44] -> [SKIP][45] ([fdo#109271]) +16 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-apl2/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl7/igt@gem_exec_schedule@preempt-engines@rcs0.html

  * igt@gem_exec_schedule@preempt-engines@vcs1:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109276])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb4/igt@gem_exec_schedule@preempt-engines@vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb4/igt@gem_exec_schedule@preempt-engines@vcs1.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][48] -> [FAIL][49] ([i915#307])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][50] ([i915#2658]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb7/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][51] ([i915#2658])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3323])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#3323])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb7/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#3323])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl3/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#3323])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk9/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3323])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][57] ([i915#3002])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb5/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109289]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@gen7_exec_parse@oacontrol-tracking.html
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#109289]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][60] ([i915#3296])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl1/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#454])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl5/igt@i915_pm_dc@dc6-psr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-apl7/igt@i915_suspend@fence-restore-untiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_atomic@test-only:
    - shard-glk:          [PASS][65] -> [DMESG-WARN][66] ([i915#118] / [i915#95])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-glk8/igt@kms_atomic@test-only.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk9/igt@kms_atomic@test-only.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271]) +198 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl1/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - shard-snb:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl3/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-b-ctm-red-to-blue:
    - shard-skl:          [PASS][70] -> [DMESG-WARN][71] ([i915#1982])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl5/igt@kms_color@pipe-b-ctm-red-to-blue.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl4/igt@kms_color@pipe-b-ctm-red-to-blue.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109278] / [i915#1149])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_color@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-max.html
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-max.html
    - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk2/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][78] ([i915#1319]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_content_protection@atomic.html
    - shard-apl:          NOTRUN -> [TIMEOUT][79] ([i915#1319]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#111828])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb1/igt@kms_content_protection@srm.html
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109300] / [fdo#111066])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][82] ([i915#2105])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3359]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#3319]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#109279] / [i915#3359]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278]) +12 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb1/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111825]) +15 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109274] / [fdo#109278])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#533]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109274]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb5/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][92] -> [FAIL][93] ([i915#79]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][94] -> [FAIL][95] ([i915#2122])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2672])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2642])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2672])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +164 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][100] ([fdo#109271]) +38 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-snb:          NOTRUN -> [SKIP][101] ([fdo#109271]) +374 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#49])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109280]) +11 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglb:         [PASS][105] -> [SKIP][106] ([i915#433])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb3/igt@kms_hdmi_inject@inject-audio.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb2/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([i915#1188])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - shard-glk:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#533])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][112] ([i915#180])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][114] ([i915#265])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-glk:          NOTRUN -> [FAIL][115] ([i915#265])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][116] ([i915#265])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][117] ([fdo#108145] / [i915#265])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265]) +2 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][119] ([i915#265]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#3536])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-yf.html
    - shard-tglb:         NOTRUN -> [SKIP][121] ([fdo#111615])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
    - shard-kbl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#658]) +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
    - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#658]) +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
    - shard-glk:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#658])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
    - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#658])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#2920])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109441])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
    - shard-tglb:         NOTRUN -> [FAIL][129] ([i915#132] / [i915#3467])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][130] -> [SKIP][131] ([fdo#109441])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][132] -> [DMESG-WARN][133] ([i915#180])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_writeback@

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/index.html

--===============3867093422899491265==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/gem: ioctl clean-ups (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89443/">https://patchwork.freedesktop.org/series/89443/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10194_full -&gt; Patchwork_20316_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20316_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20316_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20316_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb7/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@gem_ctx_engines@invalid-engines.html">SKIP</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@indices:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb2/igt@gem_exec_balancer@indices.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb6/igt@gem_exec_balancer@indices.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb8/igt@gem_exec_balancer@nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb5/igt@gem_exec_balancer@nohangcheck.html">SKIP</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-virtual:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl7/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl10/igt@gem_watchdog@default-virtual.html">FAIL</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb5/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@gem_watchdog@default-virtual.html">FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb7/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@gem_watchdog@default-virtual.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-glk2/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk2/igt@gem_watchdog@default-virtual.html">FAIL</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-kbl6/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@gem_watchdog@default-virtual.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@glsl-4.00@execution@built-in-functions@vs-floor-dvec4 (NEW):<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@vs-floor-dvec4.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10194_full and Patchwork_20316_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@gem_ctx_param@invalid-get-engines:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-get-no-zeromap:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-get-ringsize:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-set-no-zeromap:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-set-ringsize:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
</ul>
<h3>New Piglit tests (7)</h3>
<ul>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@fs-op-div-double-dmat4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@fs-op-div-double-dmat4x3:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [61.94] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@gs-inverse-dmat4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@gs-op-div-double-dmat3:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [58.87] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@vs-floor-dvec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@vs-op-mult-dmat4x3-dmat4:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [105.51] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@vs-refract-dvec3-dvec3-double:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20316_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl3/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb7/igt@gem_ctx_persistence@smoketest.html">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@create-shared-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-snb5/igt@gem_ctx_shared@create-shared-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb6/igt@gem_ctx_shared@create-shared-gtt.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl1/igt@gem_exec_balancer@full-late.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl2/igt@gem_exec_balancer@full-late.html">SKIP</a> ([fdo#109271]) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-glk2/igt@gem_exec_balancer@invalid-bonds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk2/igt@gem_exec_balancer@invalid-bonds.html">SKIP</a> ([fdo#109271]) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@smoke:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-kbl6/igt@gem_exec_balancer@smoke.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@gem_exec_balancer@smoke.html">SKIP</a> ([fdo#109271]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl3/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([fdo#109271]) +162 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl2/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-apl2/igt@gem_exec_schedule@preempt-engines@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl7/igt@gem_exec_schedule@preempt-engines@rcs0.html">SKIP</a> ([fdo#109271]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@vcs1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb4/igt@gem_exec_schedule@preempt-engines@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb4/igt@gem_exec_schedule@preempt-engines@vcs1.html">SKIP</a> ([fdo#109276])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl3/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb5/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl1/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-apl7/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl1/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-glk8/igt@kms_atomic@test-only.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk9/igt@kms_atomic@test-only.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl1/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> ([fdo#109271]) +198 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl3/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl5/igt@kms_color@pipe-b-ctm-red-to-blue.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl4/igt@kms_color@pipe-b-ctm-red-to-blue.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_color@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk2/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl2/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb1/igt@kms_content_protection@srm.html">SKIP</a> ([fdo#111828])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb4/igt@kms_content_protection@srm.html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl6/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-max-size-rapid-movement.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb1/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html">SKIP</a> ([fdo#109278]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([fdo#111825]) +15 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb5/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +164 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-snb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109271]) +374 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-tglb3/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb2/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-yf.html">SKIP</a> ([i915#3536])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb3/igt@kms_plane_lowres@pipe-c-tiling-yf.html">SKIP</a> ([fdo#111615])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-glk7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-tglb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">FAIL</a> ([i915#132] / [i915#3467])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@</p>
</li>
</ul>

</body>
</html>

--===============3867093422899491265==--

--===============1735247867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1735247867==--
