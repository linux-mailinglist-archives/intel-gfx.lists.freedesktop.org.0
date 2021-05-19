Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C96D3899DD
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 01:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779626E429;
	Wed, 19 May 2021 23:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C791D6E452;
 Wed, 19 May 2021 23:29:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCCC5A47EA;
 Wed, 19 May 2021 23:29:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 19 May 2021 23:29:25 -0000
Message-ID: <162146696574.17249.8800736418162483215@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514181504.565252-1-lyude@redhat.com>
In-Reply-To: <20210514181504.565252-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Extract_DPCD_backlight_helpers_from_i915=2C_add_support_in_?=
 =?utf-8?q?nouveau_=28rev10=29?=
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
Content-Type: multipart/mixed; boundary="===============1851766989=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1851766989==
Content-Type: multipart/alternative;
 boundary="===============4714636987181614791=="

--===============4714636987181614791==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev10)
URL   : https://patchwork.freedesktop.org/series/84754/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10100_full -> Patchwork_20147_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20147_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20147_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20147_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_prime@basic-crc@second-to-first.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes}:
    - shard-glk:          [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-bvec4-u64vec4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][4] +7 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-bvec4-u64vec4.html

  * spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-dvec2-i64vec2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-dvec2-i64vec2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10100_full and Patchwork_20147_full:

### New Piglit tests (9) ###

  * spec@arb_gpu_shader_int64@execution@conversion@frag-conversion-implicit-ivec3-i64vec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@conversion@frag-conversion-implicit-uint-uint64_t:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@conversion@geom-conversion-explicit-bvec4-u64vec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@conversion@geom-conversion-explicit-u64vec4-bvec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-bvec2-i64vec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-bvec4-u64vec4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-dvec2-i64vec2:
    - Statuses : 1 crash(s)
    - Exec time: [0.55] s

  * spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-dvec2-u64vec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-u64vec3-ivec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_20147_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-noreloc-purge-cache-random:
    - shard-glk:          NOTRUN -> [DMESG-FAIL][6] ([i915#3457]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@api_intel_bb@blit-noreloc-purge-cache-random.html

  * igt@drm_read@fault-buffer:
    - shard-skl:          NOTRUN -> [DMESG-WARN][7] ([i915#3457])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@drm_read@fault-buffer.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-snb:          NOTRUN -> [INCOMPLETE][8] ([i915#3457] / [i915#3468])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@engines-persistence@rcs0:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#3457]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@gem_ctx_persistence@engines-persistence@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_ctx_persistence@engines-persistence@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-persistence@vebox:
    - shard-apl:          NOTRUN -> [FAIL][11] ([i915#3457]) +9 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_ctx_persistence@legacy-engines-persistence@vebox.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1099]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb2/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][13] -> [TIMEOUT][14] ([i915#2369] / [i915#3063] / [i915#3457])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb5/igt@gem_eio@unwedge-stress.html
    - shard-snb:          NOTRUN -> [FAIL][15] ([i915#3354] / [i915#3457])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#2842] / [i915#3457])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2842] / [i915#3457]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][20] ([i915#2842] / [i915#3457])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#2842] / [i915#3457])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#3457]) +25 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk3/igt@gem_exec_fence@parallel@vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk2/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_exec_gttfill@basic:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#3457] / [i915#3491])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk1/igt@gem_exec_gttfill@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk1/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][27] ([i915#2389] / [i915#3457]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][28] -> [DMESG-WARN][29] ([i915#118] / [i915#95]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][30] ([i915#3468]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][31] ([i915#3468])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-glk:          NOTRUN -> [FAIL][32] ([i915#3476])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
    - shard-skl:          NOTRUN -> [INCOMPLETE][33] ([i915#3468])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-apl:          NOTRUN -> [INCOMPLETE][34] ([i915#3468]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([i915#768]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_spin_batch@legacy@default:
    - shard-apl:          NOTRUN -> [FAIL][36] ([i915#2898] / [i915#3457]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_spin_batch@legacy@default.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][37] ([i915#3002])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_userptr_blits@input-checking.html

  * igt@gen3_mixed_blits:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109289])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@gen3_mixed_blits.html

  * igt@i915_hangman@engine-hang@vcs0:
    - shard-apl:          NOTRUN -> [DMESG-WARN][39] ([i915#3457]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@i915_hangman@engine-hang@vcs0.html

  * igt@i915_hangman@engine-hang@vecs0:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][40] ([i915#3457]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@i915_hangman@engine-hang@vecs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][41] ([i915#454])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#1937])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#3457])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@i915_pm_rpm@cursor-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-skl:          NOTRUN -> [DMESG-WARN][45] ([i915#1982] / [i915#3475])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-tglb:         [PASS][46] -> [DMESG-WARN][47] ([i915#2411])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb5/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#3475])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl7/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-tglb:         [PASS][50] -> [DMESG-WARN][51] ([i915#2411] / [i915#3457])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb5/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@i915_pm_rps@waitboost:
    - shard-snb:          NOTRUN -> [DMESG-WARN][52] ([i915#3457]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@i915_pm_rps@waitboost.html

  * igt@i915_pm_sseu@full-enable:
    - shard-glk:          NOTRUN -> [DMESG-WARN][53] ([i915#3457])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@live@execlists:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][54] ([i915#3462])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl4/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][55] ([i915#2782])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][56] ([i915#3457])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl4/igt@i915_selftest@live@mman.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#110725] / [fdo#111614])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#110723])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2705])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_ccs@pipe-c-ccs-on-another-bo.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color@pipe-a-degamma:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([fdo#108145] / [i915#71])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk8/igt@kms_color@pipe-a-degamma.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk8/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color@pipe-b-legacy-gamma:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#71])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk5/igt@kms_color@pipe-b-legacy-gamma.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk5/igt@kms_color@pipe-b-legacy-gamma.html

  * igt@kms_color@pipe-c-degamma:
    - shard-iclb:         NOTRUN -> [FAIL][66] ([i915#1149])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_color@pipe-c-degamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][72] ([i915#1319])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-iclb:         [PASS][73] -> [FAIL][74] ([i915#3457])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
    - shard-kbl:          [PASS][75] -> [FAIL][76] ([i915#3444] / [i915#3457]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-skl:          NOTRUN -> [FAIL][77] ([i915#3444] / [i915#3457]) +9 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-glk:          NOTRUN -> [FAIL][78] ([i915#3444] / [i915#3457]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-apl:          [PASS][79] -> [FAIL][80] ([i915#3444] / [i915#3457])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-tglb:         [PASS][81] -> [FAIL][82] ([i915#2124] / [i915#3457]) +6 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          NOTRUN -> [FAIL][83] ([i915#3457]) +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
    - shard-iclb:         NOTRUN -> [FAIL][84] ([i915#3457]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-snb:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3457]) +34 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3457]) +19 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
    - shard-glk:          [PASS][87] -> [FAIL][88] ([i915#3444] / [i915#3457]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-apl:          NOTRUN -> [FAIL][89] ([i915#3444] / [i915#3457]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-kbl:          NOTRUN -> [FAIL][90] ([i915#3444] / [i915#3457]) +4 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3457]) +7 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3457]) +11 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [i915#3457]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-dpms:
    - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3457]) +5 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_cursor_crc@pipe-d-cursor-dpms.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274] / [fdo#109278]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271]) +93 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109274]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2642])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109280]) +7 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          NOTRUN -> [FAIL][103] ([i915#1188])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#533])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][105] ([fdo#108145] / [i915#265])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][107] ([i915#265])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-apl:          [PASS][108] -> [FAIL][109] ([fdo#108145] / [i915#265])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][110] ([fdo#108145] / [i915#265])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][111] ([i915#265])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-d-alpha-7efc:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109278]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_plane_alpha_blend@pipe-d-alpha-7efc.html

  * igt@kms_plane_cursor@pipe-a-primary-size-128:
    - shard-glk:          NOTRUN -> [FAIL][114] ([i915#2657])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_plane_cursor@pipe-a-primary-size-128.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-iclb:         NOTRUN -> [FAIL][115] ([i915#2657])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - shard-skl:          NOTRUN -> [FAIL][116] ([i915#2657])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_plane_cursor@pipe-a-primary-size-64.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-snb:          NOTRUN -> [FAIL][117] ([i915#2657]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb5/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - shard-kbl:          NOTRUN -> [FAIL][118] ([i915#2657])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_plane_cursor@pipe-b-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-c-primary-size-64:
    - shard-iclb:         NOTRUN -> [FAIL][119] ([i915#2657] / [i915#3457])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-64.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-128:
    - shard-skl:          NOTRUN -> [FAIL][120] ([i915#2657] / [i915#3457]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_plane_cursor@pipe-c-viewport-size-128.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#1779])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk5/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk6/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-ar

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/index.html

--===============4714636987181614791==
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
<tr><td><b>Series:</b></td><td>drm: Extract DPCD backlight helpers from i915, add support in nouveau (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84754/">https://patchwork.freedesktop.org/series/84754/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10100_full -&gt; Patchwork_20147_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20147_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20147_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20147_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_prime@basic-crc@second-to-first:<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_prime@basic-crc@second-to-first.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes}:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-bvec4-u64vec4 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-bvec4-u64vec4.html">INCOMPLETE</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-dvec2-i64vec2 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/pig-icl-1065g7/spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-dvec2-i64vec2.html">CRASH</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10100_full and Patchwork_20147_full:</p>
<h3>New Piglit tests (9)</h3>
<ul>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@frag-conversion-implicit-ivec3-i64vec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@frag-conversion-implicit-uint-uint64_t:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@geom-conversion-explicit-bvec4-u64vec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@geom-conversion-explicit-u64vec4-bvec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-bvec2-i64vec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-bvec4-u64vec4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-dvec2-i64vec2:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [0.55] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-dvec2-u64vec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@conversion@vert-conversion-explicit-u64vec3-ivec3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20147_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-noreloc-purge-cache-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@api_intel_bb@blit-noreloc-purge-cache-random.html">DMESG-FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@drm_read@fault-buffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@drm_read@fault-buffer.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@gem_ctx_engines@invalid-engines.html">INCOMPLETE</a> ([i915#3457] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@gem_ctx_persistence@engines-persistence@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_ctx_persistence@engines-persistence@rcs0.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence@vebox:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_ctx_persistence@legacy-engines-persistence@vebox.html">FAIL</a> ([i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb2/igt@gem_ctx_persistence@smoketest.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3457])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3354] / [i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@parallel@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk3/igt@gem_exec_fence@parallel@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk2/igt@gem_exec_fence@parallel@vcs0.html">FAIL</a> ([i915#3457]) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk1/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk1/igt@gem_exec_gttfill@basic.html">FAIL</a> ([i915#3457] / [i915#3491])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@gem_ppgtt@blt-vs-render-ctxn.html">FAIL</a> ([i915#3476])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy@default:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_spin_batch@legacy@default.html">FAIL</a> ([i915#2898] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@gen3_mixed_blits.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-hang@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@i915_hangman@engine-hang@vcs0.html">DMESG-WARN</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-hang@vecs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@i915_hangman@engine-hang@vecs0.html">DMESG-FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#1982] / [i915#3475])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb5/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#2411])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl7/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl4/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#3475])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb5/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb1/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#2411] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@i915_pm_rps@waitboost.html">DMESG-WARN</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@i915_pm_sseu@full-enable.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl4/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl4/igt@i915_selftest@live@mman.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_big_joiner@basic.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_ccs@pipe-c-ccs-on-another-bo.html">SKIP</a> ([fdo#109271] / [fdo#111304]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk8/igt@kms_color@pipe-a-degamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk8/igt@kms_color@pipe-a-degamma.html">FAIL</a> ([fdo#108145] / [i915#71])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-legacy-gamma:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk5/igt@kms_color@pipe-b-legacy-gamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk5/igt@kms_color@pipe-b-legacy-gamma.html">FAIL</a> ([i915#71])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_color@pipe-c-degamma.html">FAIL</a> ([i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">FAIL</a> ([i915#3457])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">FAIL</a> ([i915#3444] / [i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">FAIL</a> ([i915#3457]) +4 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">FAIL</a> ([i915#3457]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb7/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen.html">SKIP</a> ([fdo#109278] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-dpms:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_cursor_crc@pipe-d-cursor-dpms.html">SKIP</a> ([fdo#109271] / [i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> ([fdo#109271]) +93 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-alpha-7efc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_plane_alpha_blend@pipe-d-alpha-7efc.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk4/igt@kms_plane_cursor@pipe-a-primary-size-128.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-256:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_plane_cursor@pipe-a-primary-size-256.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-64:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_plane_cursor@pipe-a-primary-size-64.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-snb5/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-256:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-kbl3/igt@kms_plane_cursor@pipe-b-viewport-size-256.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-primary-size-64:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-viewport-size-128:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-skl3/igt@kms_plane_cursor@pipe-c-viewport-size-128.html">FAIL</a> ([i915#2657] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10100/shard-glk5/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20147/shard-glk6/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html">FAIL</a> ([i915#1779])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-ar</p>
</li>
</ul>

</body>
</html>

--===============4714636987181614791==--

--===============1851766989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1851766989==--
