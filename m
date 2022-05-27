Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CA7535F1B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 13:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C68010EFCE;
	Fri, 27 May 2022 11:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2EEB910EFCE;
 Fri, 27 May 2022 11:17:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21300AADD6;
 Fri, 27 May 2022 11:17:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6911527500089729182=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 27 May 2022 11:17:57 -0000
Message-ID: <165365027708.25501.516499061250863674@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220527072452.2225610-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220527072452.2225610-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_user_experience_and_driver_robustness_under_SI?=
 =?utf-8?q?GINT_or_similar?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6911527500089729182==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve user experience and driver robustness under SIGINT or similar
URL   : https://patchwork.freedesktop.org/series/104444/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11705_full -> Patchwork_104444v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104444v1_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-3} (NEW):
    - {shard-dg1}:        NOTRUN -> [SKIP][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-3.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
    - {shard-tglu}:       [PASS][4] -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-dg1}:        [PASS][6] -> [FAIL][7] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-dg1}:        [PASS][8] -> [TIMEOUT][9] +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-12/igt@gem_exec_balancer@fairslice.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-dg1-18/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@nohangcheck:
    - {shard-dg1}:        NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-dg1-12/igt@gem_exec_balancer@nohangcheck.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen:
    - {shard-dg1}:        [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-15/igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-dg1-13/igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen.html

  * igt@kms_vblank@pipe-a-wait-forked-hang:
    - {shard-dg1}:        NOTRUN -> [SKIP][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-dg1-12/igt@kms_vblank@pipe-a-wait-forked-hang.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11705_full and Patchwork_104444v1_full:

### New IGT tests (119) ###

  * igt@gem_exec_balancer@hog:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 12.90] s

  * igt@gem_exec_balancer@sliced:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.52] s

  * igt@gem_exec_endless@dispatch:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_endless@dispatch@bcs0:
    - Statuses : 1 pass(s) 3 skip(s)
    - Exec time: [0.00] s

  * igt@gem_exec_endless@dispatch@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_endless@dispatch@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_endless@dispatch@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-concurrent0:
    - Statuses : 7 pass(s)
    - Exec time: [5.39, 5.68] s

  * igt@gem_exec_reloc@basic-concurrent16:
    - Statuses : 10 pass(s)
    - Exec time: [5.40, 5.88] s

  * igt@gem_exec_schedule@preempt-engines:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_schedule@preempt-engines@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.09, 1.55] s

  * igt@gem_exec_schedule@preempt-engines@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.08, 0.95] s

  * igt@gem_exec_schedule@preempt-engines@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.09, 0.94] s

  * igt@gem_exec_schedule@preempt-engines@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.09, 1.05] s

  * igt@gem_exec_schedule@submit-early-slice:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_schedule@submit-early-slice@bcs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.02, 0.03] s

  * igt@gem_exec_schedule@submit-early-slice@rcs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.02, 0.04] s

  * igt@gem_exec_schedule@submit-early-slice@vcs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.02, 0.04] s

  * igt@gem_exec_schedule@submit-early-slice@vcs1:
    - Statuses : 1 pass(s)
    - Exec time: [0.03] s

  * igt@gem_exec_schedule@submit-early-slice@vecs0:
    - Statuses : 2 pass(s)
    - Exec time: [0.02, 0.04] s

  * igt@gem_exec_schedule@submit-golden-slice:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_schedule@submit-golden-slice@bcs0:
    - Statuses : 8 pass(s)
    - Exec time: [0.02, 0.21] s

  * igt@gem_exec_schedule@submit-golden-slice@rcs0:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.23] s

  * igt@gem_exec_schedule@submit-golden-slice@vcs0:
    - Statuses : 8 pass(s)
    - Exec time: [0.02, 0.22] s

  * igt@gem_exec_schedule@submit-golden-slice@vcs1:
    - Statuses : 4 pass(s)
    - Exec time: [0.03, 0.04] s

  * igt@gem_exec_schedule@submit-golden-slice@vecs0:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.21] s

  * igt@gem_exec_schedule@submit-late-slice:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_schedule@submit-late-slice@bcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02, 0.22] s

  * igt@gem_exec_schedule@submit-late-slice@rcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02, 0.21] s

  * igt@gem_exec_schedule@submit-late-slice@vcs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02, 0.21] s

  * igt@gem_exec_schedule@submit-late-slice@vecs0:
    - Statuses : 4 pass(s)
    - Exec time: [0.02, 0.21] s

  * igt@i915_pciid:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.39] s

  * igt@i915_pm_lpsp@kms-lpsp:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp:
    - Statuses : 3 pass(s)
    - Exec time: [0.12, 0.52] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - Statuses : 1 fail(s) 1 skip(s)
    - Exec time: [0.00, 1.22] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_rc6_residency@rc6-fence:
    - Statuses : 6 pass(s) 2 warn(s)
    - Exec time: [12.21, 18.28] s

  * igt@i915_query@engine-info:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@i915_query@engine-info-invalid:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - Statuses : 10 pass(s) 1 skip(s)
    - Exec time: [0.0, 14.38] s

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 24.17] s

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - Statuses : 9 skip(s)
    - Exec time: [0.03, 0.26] s

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - Statuses : 6 pass(s)
    - Exec time: [1.55, 26.81] s

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 28.55] s

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.24] s

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - Statuses : 10 skip(s)
    - Exec time: [0.0, 0.25] s

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 24.35] s

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 16.25] s

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - Statuses : 6 skip(s)
    - Exec time: [0.0, 0.29] s

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - Statuses : 9 skip(s)
    - Exec time: [0.0, 0.28] s

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.63] s

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.10, 12.82] s

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - Statuses : 10 skip(s)
    - Exec time: [0.0, 0.25] s

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - Statuses : 1 skip(s)
    - Exec time: [0.06] s

  * igt@kms_big_fb@linear-addfb:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - Statuses : 9 pass(s)
    - Exec time: [1.19, 23.39] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - Statuses : 8 pass(s) 2 skip(s)
    - Exec time: [0.0, 4.02] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - Statuses : 9 skip(s)
    - Exec time: [0.0, 0.25] s

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - Statuses : 10 skip(s)
    - Exec time: [0.0, 0.31] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - Statuses : 9 pass(s)
    - Exec time: [1.49, 40.34] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - Statuses : 9 pass(s)
    - Exec time: [1.42, 39.39] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - Statuses : 6 skip(s)
    - Exec time: [0.0, 0.28] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - Statuses : 10 pass(s)
    - Exec time: [1.62, 28.42] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.60, 24.02] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - Statuses : 9 skip(s)
    - Exec time: [0.02, 0.23] s

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - Statuses : 10 skip(s)
    - Exec time: [0.02, 0.25] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - Statuses : 10 pass(s)
    - Exec time: [1.05, 17.97] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - Statuses : 8 pass(s) 2 skip(s)
    - Exec time: [0.0, 3.44] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.29] s

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.29] s

  * igt@kms_big_fb@x-tiled-addfb:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@x-tiled-addfb-size-overflow:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 34.55] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - Statuses : 7 pass(s) 2 skip(s)
    - Exec time: [0.0, 4.30] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
    - Statuses : 3 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.94] s

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - Statuses : 3 pass(s) 7 skip(s)
    - Exec time: [0.0, 2.00] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 68.36] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 65.61] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - Statuses : 6 pass(s) 3 skip(s)
    - Exec time: [0.0, 64.86] s

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - Statuses : 7 pass(s) 3 skip(s)
    - Exec time: [0.0, 62.44] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - Statuses : 2 pass(s) 2 skip(s)
    - Exec time: [0.0, 8.79] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 8.70] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - Statuses : 11 skip(s)
    - Exec time: [0.0, 0.26] s

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - Statuses : 9 skip(s)
    - Exec time: [0.0, 0.29] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 23.83] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - Statuses : 3 pass(s) 3 skip(s)
    - Exec time: [0.0, 3.42] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - Statuses : 9 skip(s)
    - Exec time: [0.0, 0.28] s

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.23] s

  * igt@kms_big_fb@y-tiled-addfb:
    - Statuses : 7 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - Statuses : 4 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - Statuses : 5 pass(s) 5 skip(s)
    - Exec time: [0.0, 36.76] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - Statuses : 5 pass(s) 5 skip(s)
    - Exec time: [0.0, 38.11] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - Statuses : 1 pass(s) 8 skip(s)
    - Exec time: [0.0, 1.76] s

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0, 1.86] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - Statuses : 5 pass(s) 4 skip(s)
    - Exec time: [0.0, 59.22] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - Statuses : 4 pass(s) 5 skip(s)
    - Exec time: [0.0, 57.38] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - Statuses : 2 fail(s) 2 pass(s) 6 skip(s)
    - Exec time: [0.0, 5.49] s

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - Statuses : 4 pass(s) 6 skip(s)
    - Exec time: [0.0, 64.33] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - Statuses : 11 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - Statuses : 11 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - Statuses : 10 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-addfb:
    - Statuses : 5 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - Statuses : 3 pass(s) 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - Statuses : 5 pass(s) 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_chamelium@hdmi-audio:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  

Known issues
------------

  Here are the changes found in Patchwork_104444v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [FAIL][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37]) ([i915#5032]) -> ([PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl9/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl9/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl9/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl4/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl3/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl10/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl10/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl10/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-glk:          NOTRUN -> [SKIP][61] ([fdo#109271]) +33 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][62] ([i915#180]) +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#2410]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb7/igt@gem_ctx_persistence@hostile.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb7/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#1888])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][66] ([i915#2842])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][69] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-kbl:          NOTRUN -> [FAIL][70] ([i915#2842])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][71] -> [DMESG-WARN][72] ([i915#118]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#768])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_softpin@evict-single-offset:
    - shard-glk:          NOTRUN -> [FAIL][77] ([i915#4171])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@input-checking:
    - shard-glk:          NOTRUN -> [DMESG-WARN][78] ([i915#4991])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#3297])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@gem_userptr_blits@unsync-unmap.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a (NEW):
    - {shard-tglu}:       NOTRUN -> [FAIL][80] ([i915#3825])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglu-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#1902])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109293] / [fdo#109506])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#110892])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#5286])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#5286]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-0 (NEW):
    - {shard-rkl}:        [PASS][86] -> ([SKIP][87], [PASS][88]) ([i915#1845] / [i915#4098])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-4/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-16bpp-rotate-270 (NEW):
    - {shard-rkl}:        NOTRUN -> [SKIP][89] ([i915#1845] / [i915#4098]) +5 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-4/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-64bpp-rotate-0 (NEW):
    - {shard-rkl}:        [SKIP][90] ([i915#1845] / [i915#4098]) -> ([PASS][91], [SKIP][92]) ([i915#1845] / [i915#4098]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-270 (NEW):
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#110725] / [fdo#111614])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@linear-64bpp-rotate-90 (NEW):
    - {shard-tglu}:       NOTRUN -> [SKIP][94] ([fdo#111614])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglu-2/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90 (NEW):
    - {shard-rkl}:        [SKIP][95] ([i915#1845] / [i915#4098]) -> [SKIP][96] ([fdo#111614] / [i915#3638]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][97] ([i915#3743])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270 (NEW):
    - {shard-rkl}:        [PASS][98] -> [SKIP][99] ([i915#1845] / [i915#4098])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90 (NEW):
    - {shard-dg1}:        NOTRUN -> [SKIP][100] ([i915#3638]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-dg1-12/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180 (NEW):
    - {shard-tglu}:       NOTRUN -> [SKIP][101] ([fdo#111615])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90 (NEW):
    - {shard-rkl}:        [SKIP][102] ([i915#1845] / [i915#4098]) -> [SKIP][103] ([fdo#110723])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180 (NEW):
    - {shard-rkl}:        [SKIP][104] ([i915#1845] / [i915#4098]) -> ([SKIP][105], [SKIP][106]) ([fdo#110723] / [i915#1845] / [i915#4098])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270 (NEW):
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#111615])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90 (NEW):
    - {shard-rkl}:        [SKIP][108] ([fdo#110723]) -> ([SKIP][109], [SKIP][110]) ([i915#1845] / [i915#4098])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#110723])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][112] ([i915#3689])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#111615] / [i915#3689])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][114] ([i915#6095])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#3886]) +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#3886]) +2 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#109278] / [i915#3886]) +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
    - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#3886])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#3886]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109278]) +11 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271]) +89 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-tglb:         NOTRUN -> [SKIP][123] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl3/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-glk:          NOTRUN -> [SKIP][126] ([fdo#109271] / [fdo#111827])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#3359])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][129] -> [DMESG-WARN][130] ([i915#180]) +2 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271]) +123 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-tglb:         NOTRUN -> [SKIP][132] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109274] / [fdo#109278])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#4103])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          NOTRUN -> [FAIL][135] ([i915#4767])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][136] -> [FAIL][137] ([i915#2122])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#109274])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][139] -> [FAIL][140] ([i915#79])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][141] -> [FAIL][142] ([i915#79])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][143] -> [FAIL][144] ([i915#2122]) +3 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][145] -> [SKIP][146] ([i915#3701])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [PASS][147] -> [FAIL][148] ([i915#4911])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-skl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#3701])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][151] ([fdo#109280]) +7 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@static-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][152] ([i915#3555])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#533])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-skl:          NOTRUN -> [FAIL][154] ([fdo#108145] / [i915#265])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][155] ([fdo#108145] / [i915#265]) +1 similar issue
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][156] ([i915#265])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-kbl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#658]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#658])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
    - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#111068] / [i915#658]) +1 similar issue
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-skl:          NOTRUN -> [SKIP][160] ([fdo#109271] / [i915#658])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglb:         NOTRUN -> [SKIP][161] ([i915#1911])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][162] -> [SKIP][163] ([fdo#109441])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb6/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][164] ([fdo#109441]) +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][165] -> [DMESG-WARN][166] ([i915#180]) +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-busy:
    - shard-snb:          [PASS][167] -> [SKIP][168] ([fdo#109271]) +2 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-snb2/igt@kms_vblank@pipe-b-wait-busy.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-snb7/igt@kms_vblank@pipe-b-wait-busy.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-glk:          [PASS][169] -> [SKIP][170] ([fdo#109271])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][171] ([fdo#109271]) +32 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][172] ([i915#3555])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@pipe-a-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][173] ([i915#2530])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@nouveau_crc@pipe-a-source-outp-complete.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][174] ([i915#2530])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][175] ([fdo#109278] / [i915#2530])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][176] ([fdo#109289])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@perf@unprivileged-single-ctx-counters.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-iclb:         NOTRUN -> [SKIP][177] ([fdo#109295])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@prime_vgem@fence-flip-hang.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][178] ([fdo#109271] / [i915#2994])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-glk:          NOTRUN -> [SKIP][179] ([fdo#109271] / [i915#2994])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-50:
    - shard-tglb:         NOTRUN -> [SKIP][180] ([i915#2994])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@sysfs_clients@sema-50.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          NOTRUN -> [FAIL][181] ([i915#1731]) +1 similar issue
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-nonblock:
    - {shard-rkl}:        [SKIP][182] ([i915#4098]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-iclb:         [INCOMPLETE][184] ([i915#3371]) -> [PASS][185]
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][186] ([i915#2846]) -> [PASS][187]
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-glk7/igt@gem_exec_fair@basic-deadline.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][188] ([i915#2842]) -> [PASS][189]
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-snb:          [SKIP][190] ([fdo#109271]) -> [PASS][191] +2 similar issues
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-tglu}:       [SKIP][192] ([i915#4281]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglu-4/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][194] ([i915#1397]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][196] ([i915#3614]) -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@i915_suspend@debugfs-reader.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][198] ([i915#180]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][200] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][201] +1 similar issue
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - {shard-rkl}:        [SKIP][202] ([fdo#112022] / [i915#4070]) -> [PASS][203] +3 similar issues
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][204] ([i915#180]) -> [PASS][205] +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - {shard-rkl}:        [SKIP][206] ([fdo#111825] / [i915#4070]) -> [PASS][207] +3 similar issues
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [FAIL][208] ([i915#2346]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - {shard-rkl}:        [SKIP][210] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][211] +3 similar issues
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_fbcon_fbt@psr:
    - {shard-rkl}:        [SKIP][212] ([fdo#110189] / [i915#3955]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@nonexisting-fb@a-edp1:
    - shard-skl:          [DMESG-WARN][214] ([i915#1982]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl3/igt@kms_flip@nonexisting-fb@a-edp1.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl6/igt@kms_flip@nonexisting-fb@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][216] ([i915#2122]) -> [PASS][217] +1 similar issue
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][218] ([i915#1849] / [i915#4098]) -> [PASS][219] +11 similar issues
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_invalid_mode@zero-hdisplay:
    - {shard-rkl}:        [SKIP][220] ([i915#4278]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_invalid_mode@zero-hdisplay.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:
    - shard-tglb:         [INCOMPLETE][222] -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html

  * igt@kms_plane@plane-position-covered@pipe-b-planes:
    - {shard-rkl}:        [SKIP][224] ([i915#3558]) -> [PASS][225] +1 similar issue
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-b-planes.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - {shard-rkl}:        [SKIP][226] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][228] ([fdo#108145] / [i915#265]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - {shard-rkl}:        [SKIP][230] ([i915#1845] / [i915#4098]) -> [PASS][231] +11 similar issues
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - {shard-dg1}:        [FAIL][232] -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-dg1-18/igt@kms_plane_lowres@pipe-b-tiling-x.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-dg1-15/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-x:
    - {shard-rkl}:        [SKIP][234] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html

  * igt@kms_properties@plane-properties-legacy:
    - {shard-rkl}:        [SKIP][236] ([i915#1849]) -> [PASS][237] +1 similar issue
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][238] ([fdo#109441]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb8/igt@kms_psr@psr2_sprite_render.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_psr@sprite_blt:
    - {shard-rkl}:        [SKIP][240] ([i915#1072]) -> [PASS][241] +1 similar issue
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_psr@sprite_blt.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_psr@sprite_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][242] ([i915#5519]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
    - {shard-rkl}:        [SKIP][244] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][245] +1 similar issue
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [DMESG-WARN][246] ([i915#5614]) -> [SKIP][247] ([i915#4525])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-skl:          [SKIP][248] ([fdo#109271] / [i915#6095]) -> [SKIP][249] ([fdo#109271]) +10 similar issues
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
    - shard-iclb:         [SKIP][250] ([fdo#109278] / [i915#6095]) -> [SKIP][251] ([fdo#109278]) +11 similar issues
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb6/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][252] ([i915#5939]) -> [SKIP][253] ([fdo#109642] / [fdo#111068] / [i915#658])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][254], [FAIL][255], [FAIL][256], [FAIL][257], [FAIL][258], [FAIL][259], [FAIL][260], [FAIL][261], [FAIL][262], [FAIL][263], [FAIL][264], [FAIL][265], [FAIL][266]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][267], [FAIL][268], [FAIL][269], [FAIL][270], [FAIL][271], [FAIL][272], [FAIL][273], [FAIL][274], [FAIL][275], [FAIL][276], [FAIL][277], [FAIL][278]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@aborted.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@runner@aborted.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl4/igt@runner@aborted.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl3/igt@runner@aborted.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@aborted.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl1/igt@runner@aborted.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@runner@aborted.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@runner@aborted.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl7/igt@runner@aborted.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl1/igt@runner@aborted.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl3/igt@runner@aborted.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@runner@aborted.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@runner@aborted.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl7/igt@runner@aborted.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@runner@aborted.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@runner@aborted.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][279], [FAIL][280], [FAIL][281], [FAIL][282]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][283], [FAIL][284], [FAIL][285], [FAIL][286], [FAIL][287]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl2/igt@runner@aborted.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@aborted.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl3/igt@runner@aborted.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@aborted.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl7/igt@runner@aborted.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl3/igt@runner@aborted.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl4/igt@runner@aborted.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl7/igt@runner@aborted.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][288], [FAIL][289], [FAIL][290]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][291], [FAIL][292]) ([i915#4312] / [i915#5257])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/igt@runner@aborted.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/igt@runner@aborted.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/igt@runner@aborted.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl9/igt@runner@aborted.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4521]: https://gitlab.freedesktop.org/drm/intel/issues/4521
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11705 -> Patchwork_104444v1

  CI-20190529: 20190529
  CI_DRM_11705: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6495: 7e2033da45f024a0348e6034fcb7f70a91b80ee9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104444v1: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/index.html

--===============6911527500089729182==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Improve user experience and driver=
 robustness under SIGINT or similar</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104444/">https://patchwork.freedesktop.org/series/104444/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104444v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104444v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11705_full -&gt; Patchwork_104444v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104444v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>{igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-=
a-hdmi-a-3} (NEW):<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-dg1-18/igt@kms_plane_scaling@plane-d=
ownscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> +3 simil=
ar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11705/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v=
1/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11705/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444=
v1/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@bcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104444v1/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@bcs0.html">FAI=
L</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-12/igt@gem_exec_balancer@fairslice.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1=
/shard-dg1-18/igt@gem_exec_balancer@fairslice.html">TIMEOUT</a> +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nohangcheck:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-dg1-12/igt@gem_exec_balancer@nohangc=
heck.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-offscreen:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-15/igt@kms_cursor_crc@pipe-d-cursor-256x256-offscre=
en.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104444v1/shard-dg1-13/igt@kms_cursor_crc@pipe-d-cursor-256x256-o=
ffscreen.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-wait-forked-hang:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-dg1-12/igt@kms_vblank@pipe-a-wait-fo=
rked-hang.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11705_full and Patchwork_1=
04444v1_full:</p>
<h3>New IGT tests (119)</h3>
<ul>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 12.90] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 13.52] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>Statuses : 1 pass(s) 3 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.39, 5.68] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [5.40, 5.88] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.09, 1.55] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.08, 0.95] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.09, 0.94] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.09, 1.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@bcs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.02, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@rcs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.02, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vcs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.02, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vcs1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-early-slice@vecs0:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.02, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice@bcs0:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.02, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice@rcs0:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice@vcs0:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.02, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice@vcs1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.03, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-golden-slice@vecs0:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-late-slice:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-late-slice@bcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-late-slice@rcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-late-slice@vcs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@submit-late-slice@vecs0:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.02, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@i915_pciid:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.39] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.12, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>Statuses : 1 fail(s) 1 skip(s)</li>
<li>Exec time: [0.00, 1.22] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>Statuses : 6 pass(s) 2 warn(s)</li>
<li>Exec time: [12.21, 18.28] s</li>
</ul>
</li>
<li>
<p>igt@i915_query@engine-info:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@i915_query@engine-info-invalid:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>Statuses : 10 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 14.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 24.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.03, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.55, 26.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 28.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>Statuses : 10 skip(s)</li>
<li>Exec time: [0.0, 0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 24.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 16.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 13.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.10, 12.82] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>Statuses : 10 skip(s)</li>
<li>Exec time: [0.0, 0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-addfb:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-0:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.19, 23.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>Statuses : 8 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 4.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0, 0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>Statuses : 10 skip(s)</li>
<li>Exec time: [0.0, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.49, 40.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [1.42, 39.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [1.62, 28.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.60, 24.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.02, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>Statuses : 10 skip(s)</li>
<li>Exec time: [0.02, 0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [1.05, 17.97] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>Statuses : 8 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 3.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-addfb:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-addfb-size-overflow:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 34.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>Statuses : 7 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 4.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-270:</p>
<ul>
<li>Statuses : 3 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-90:</p>
<ul>
<li>Statuses : 3 pass(s) 7 skip(s)</li>
<li>Exec time: [0.0, 2.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 68.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 65.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>Statuses : 6 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 64.86] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>Statuses : 7 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 62.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>Statuses : 2 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 8.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 8.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>Statuses : 11 skip(s)</li>
<li>Exec time: [0.0, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 23.83] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>Statuses : 3 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 3.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>Statuses : 7 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>Statuses : 4 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>Statuses : 4 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>Statuses : 5 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 36.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>Statuses : 5 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 38.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>Statuses : 1 pass(s) 8 skip(s)</li>
<li>Exec time: [0.0, 1.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 1.86] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>Statuses : 5 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 59.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>Statuses : 4 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 57.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>Statuses : 2 fail(s) 2 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 5.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>Statuses : 4 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 64.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>Statuses : 11 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>Statuses : 11 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>Statuses : 10 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>Statuses : 5 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>Statuses : 3 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>Statuses : 5 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-=
hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-=
hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-d-=
hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104444v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11705/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11705/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/sha=
rd-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11705/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11705/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11705/shard-skl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-sk=
l3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1705/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl10/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/sh=
ard-skl10/boot.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-s=
kl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_104444v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v=
1/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104444v1/shard-skl8/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104444v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_104444v1/shard-skl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-sk=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104444v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104444v1/shard-skl4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104444v1/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_104444v1/shard-skl2/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104444v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl1/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/=
shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104444v1/shard-skl10/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl10/boot.=
html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@gem_ccs@ctrl-surf-copy-new-=
ctx.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@gem_ctx_isolation@preservat=
ion-s3@vcs0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-tglb7/igt@gem_ctx_persistence@hostile.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/=
shard-tglb7/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2410">i915#2410</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@gem_exec_balancer@parallel-=
out-fence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@gem_exec_fair@basic-none-s=
hare@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v=
1/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@gem_exec_fair@basic-pace-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@gem_exec_fair@basic-pace-sol=
o@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1044=
44v1/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@gem_lmem_swapping@verify-ra=
ndom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@gem_render_copy@yf-tiled-t=
o-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@gem_softpin@evict-single-of=
fset.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4171">i915#4171</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a (NEW):</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglu-2/igt@i915_pm_lpsp@kms-lpsp@kms=
-lpsp-hdmi-a.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3825">i915#3825</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@i915_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1902">i915#1902</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@i915_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110892">fdo#110892</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-0.html">PASS</=
a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
444v1/shard-rkl-4/igt@kms_big_fb@linear-16bpp-rotate-0.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rk=
l-6/igt@kms_big_fb@linear-16bpp-rotate-0.html">PASS</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270 (NEW):</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-rkl-4/igt@kms_big_fb@linear-16bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1=
845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">=
i915#4098</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104444v1/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-0.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10444=
4v1/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-0.html">SKIP</a>) (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270 (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_big_fb@linear-64bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110725">fdo#110725</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90 (NEW):</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglu-2/igt@kms_big_fb@linear-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915=
#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104444v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614=
">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3638">i915#3638</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04444v1/shard-rkl-1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90 (NEW):</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-dg1-12/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3638">i915#3638</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180 (NEW):</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i91=
5#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104444v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1107=
23">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104444v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104444v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP=
</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">fd=
o#110723</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270 (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90 (NEW):</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">fd=
o#110723</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104444v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">=
SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
444v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915=
#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_ccs@pipe-a-bad-rotatio=
n-90-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-=
data-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-=
rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue=
</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-anothe=
r-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_ccs@pipe-c-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@kms_ccs@pipe-d-crc-primary=
-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +11 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@kms_ccs@pipe-d-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +89 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@kms_chamelium@dp-hpd-with-=
enabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_chamelium@vga-edid-rea=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_chamelium@vga-hpd-for-e=
ach-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-kbl3/igt@kms_chamelium@vga-hpd-witho=
ut-ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@kms_color_chamelium@pipe-a-=
ctm-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_color_chamelium@pipe-d-=
ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_cursor_crc@pipe-a-curs=
or-32x10-offscreen.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04444v1/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl3/igt@kms_cursor_edge_walk@pipe-b=
-256x256-left-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +123 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_cursor_legacy@2x-long-=
flip-vs-cursor-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_cursor_legacy@2x-long-=
nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdm=
i-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104444v1/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ab-hdm=
i-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_flip@2x-wf_vblank-ts-c=
heck-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104444v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104444v1/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_104444v1/shard-skl6/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb2/igt@kms_flip_scaled_crc@=
flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_104444v1/shard-glk8/igt@kms_flip_scaled_crc@flip=
-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4911">i915#4911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl3/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +7 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-=
b-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-=
b-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl3/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1911">i915#1911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-i=
clb6/igt@kms_psr@psr2_no_drrs.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@kms_psr@psr2_sprite_plane_=
move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104444v1/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-busy:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-snb2/igt@kms_vblank@pipe-b-wait-busy.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/s=
hard-snb7/igt@kms_vblank@pipe-b-wait-busy.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104444v1/shard-glk2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-apl1/igt@kms_vblank@pipe-d-ts-contin=
uation-idle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@nouveau_crc@pipe-a-source-=
outp-complete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@nouveau_crc@pipe-c-source-=
rg.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb3/igt@nouveau_crc@pipe-d-source-=
rg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-iclb5/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl7/igt@sysfs_clients@fair-0.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-glk7/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-tglb1/igt@sysfs_clients@sema-50.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994=
">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104444v1/shard-skl3/igt@sysfs_heartbeat_interval@mi=
xed@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1731">i915#1731</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#409=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104444v1/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3371">i915#337=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104444v1/shard-iclb3/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
444v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04444v1/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104444v1/shard-snb4/igt@gem_exec_flush@basic-batch-kernel-de=
fault-uc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/=
shard-tglu-4/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/=
shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3614">i915#3=
614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104444v1/shard-kbl6/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_104444v1/shard-apl1/igt@i915_suspend@fence-restore-tiled2until=
ed.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_color@pipe-a-ctm-blue-to-red.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1=
149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-r=
ed.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
2022">fdo#112022</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-=
256x85-sliding.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104444v1/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825=
">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-=
legacy.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">=
i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104444v1/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-toggle.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytile=
d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_draw_crc@draw-=
method-rgb565-mmap-wc-ytiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10444=
4v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl3/igt@kms_flip@nonexisting-fb@a-edp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i91=
5#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104444v1/shard-skl6/igt@kms_flip@nonexisting-fb@a-edp1.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104444v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">PASS</a> +11 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_invalid_mode@zero-hdisplay.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104444v1/shard-rkl-6/igt@kms_invalid_mode@zero-hdisplay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-tglb8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pip=
e-b.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_pipe_crc_basic@disable-crc-a=
fter-crtc-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_plane@plane-position-covered@pipe-b-plane=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_plane@plane-position-covered@p=
ipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
ax.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_plane_alpha_blend=
@pipe-a-constant-alpha-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104444v1/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-cover=
age-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_plane_cursor@pipe-b-viewport-size-64.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845=
">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_plane_cursor@pipe-b-viewport-s=
ize-64.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-dg1-18/igt@kms_plane_lowres@pipe-b-tiling-x.html">FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
444v1/shard-dg1-15/igt@kms_plane_lowres@pipe-b-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-x:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-b-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-2/igt@kms_properties@plane-properties-legacy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104444v1/shard-rkl-6/igt@kms_properties@plane-properties-legacy.htm=
l">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb8/igt@kms_psr@psr2_sprite_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4444v1/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/sha=
rd-rkl-6/igt@kms_psr@sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104444v1/shard-tglb1/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-a-sanity:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sa=
nity.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104444v1/shard-rkl-6/igt@kms_universal_plane=
@universal-plane-pipe-a-sanity.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/561=
4">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104444v1/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/452=
5">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl4/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled=
_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl8/igt@kms_ccs@pipe-b-cr=
c-sprite-planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +10 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4_til=
ed_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-iclb6/igt@kms_ccs@pipe-c=
-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +11 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5939">i915#5939</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1044=
44v1/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#6=
58</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11705/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11705/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1705/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1170=
5/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11705/shard-kbl7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shar=
d-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104444v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4444v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl3/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104444v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104444v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-kb=
l4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104444v1/shard-kbl4/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1=
/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11705/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104444v1/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl4/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104444v1/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-apl7/igt=
@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11705/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11705/shard-skl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11705/shard-skl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104444=
v1/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104444v1/shard-skl2/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11705 -&gt; Patchwork_104444v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11705: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6495: 7e2033da45f024a0348e6034fcb7f70a91b80ee9 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104444v1: 18a2e6dbca526f996da04741cf5ef169e810a50e @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6911527500089729182==--
