Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B756B3ACAA8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 14:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C6F6E9FB;
	Fri, 18 Jun 2021 12:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 67C696E9FA;
 Fri, 18 Jun 2021 12:12:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E2FEA0078;
 Fri, 18 Jun 2021 12:12:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Werner Sembach" <wse@tuxedocomputers.com>
Date: Fri, 18 Jun 2021 12:12:38 -0000
Message-ID: <162401835837.1294.13410690560459760241@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210618091116.14428-1-wse@tuxedocomputers.com>
In-Reply-To: <20210618091116.14428-1-wse@tuxedocomputers.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTmV3?=
 =?utf-8?q?_uAPI_drm_properties_for_color_management_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0344017794=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0344017794==
Content-Type: multipart/alternative;
 boundary="===============8204628832322762224=="

--===============8204628832322762224==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: New uAPI drm properties for color management (rev2)
URL   : https://patchwork.freedesktop.org/series/91523/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10242_full -> Patchwork_20408_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20408_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20408_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20408_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-glk3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-glk2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_properties@get_properties-sanity-atomic:
    - shard-kbl:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-kbl2/igt@kms_properties@get_properties-sanity-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-kbl7/igt@kms_properties@get_properties-sanity-atomic.html
    - shard-tglb:         [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-tglb1/igt@kms_properties@get_properties-sanity-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-tglb3/igt@kms_properties@get_properties-sanity-atomic.html

  * igt@kms_properties@get_properties-sanity-non-atomic:
    - shard-iclb:         [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-iclb6/igt@kms_properties@get_properties-sanity-non-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-iclb7/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-apl:          [PASS][9] -> [FAIL][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-apl8/igt@kms_properties@get_properties-sanity-non-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-apl6/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-skl:          [PASS][11] -> [FAIL][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-skl2/igt@kms_properties@get_properties-sanity-non-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-skl5/igt@kms_properties@get_properties-sanity-non-atomic.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3 (NEW):
    - pig-snb-2600:       NOTRUN -> [FAIL][13] +25280 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/pig-snb-2600/spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10242_full and Patchwork_20408_full:

### New IGT tests (97) ###

  * igt@drm_mm@all@frag:
    - Statuses : 6 pass(s)
    - Exec time: [0.14, 1.55] s

  * igt@gem_ctx_engines@execute-allforone:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.09] s

  * igt@gem_ctx_engines@execute-one:
    - Statuses : 5 pass(s)
    - Exec time: [0.35, 4.18] s

  * igt@gem_ctx_engines@execute-oneforall:
    - Statuses : 5 pass(s)
    - Exec time: [0.29, 3.46] s

  * igt@gem_ctx_engines@idempotent:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_ctx_engines@independent:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_engines@invalid-engines:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_ctx_param@vm:
    - Statuses : 6 pass(s)
    - Exec time: [0.02, 15.40] s

  * igt@gem_ctx_shared@create-shared-gtt:
    - Statuses : 6 pass(s)
    - Exec time: [2.15, 2.17] s

  * igt@gem_ctx_shared@detached-shared-gtt:
    - Statuses : 6 pass(s)
    - Exec time: [2.15, 2.17] s

  * igt@gem_ctx_shared@disjoint-timelines:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.15] s

  * igt@gem_ctx_shared@q-smoketest-all:
    - Statuses : 5 pass(s)
    - Exec time: [32.25, 32.66] s

  * igt@gem_ctx_shared@single-timeline:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_balancer@bonded-cork:
    - Statuses : 6 pass(s)
    - Exec time: [1.11, 13.46] s

  * igt@gem_exec_balancer@bonded-dual:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@bonded-false-hang:
    - Statuses : 5 pass(s)
    - Exec time: [0.98, 13.10] s

  * igt@gem_exec_balancer@bonded-imm:
    - Statuses : 5 pass(s)
    - Exec time: [2.50, 13.42] s

  * igt@gem_exec_balancer@bonded-pair:
    - Statuses : 6 pass(s)
    - Exec time: [3.49, 32.21] s

  * igt@gem_exec_balancer@bonded-sync:
    - Statuses : 6 pass(s)
    - Exec time: [3.34, 14.85] s

  * igt@gem_exec_balancer@bonded-true-hang:
    - Statuses : 5 pass(s)
    - Exec time: [1.07, 15.86] s

  * igt@gem_exec_balancer@busy:
    - Statuses : 6 pass(s)
    - Exec time: [0.51, 6.90] s

  * igt@gem_exec_balancer@full:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@full-late:
    - Statuses : 6 pass(s)
    - Exec time: [1.26, 13.70] s

  * igt@gem_exec_balancer@full-late-pulse:
    - Statuses : 6 pass(s)
    - Exec time: [1.25, 14.01] s

  * igt@gem_exec_balancer@full-pulse:
    - Statuses : 6 pass(s)
    - Exec time: [1.25, 14.04] s

  * igt@gem_exec_balancer@indices:
    - Statuses : 6 pass(s)
    - Exec time: [1.03, 13.45] s

  * igt@gem_exec_balancer@individual:
    - Statuses : 6 pass(s)
    - Exec time: [1.25, 13.69] s

  * igt@gem_exec_balancer@invalid-balancer:
    - Statuses : 5 pass(s)
    - Exec time: [0.99, 13.58] s

  * igt@gem_exec_balancer@invalid-bonds:
    - Statuses : 5 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_exec_balancer@nop:
    - Statuses : 6 pass(s)
    - Exec time: [35.93, 51.49] s

  * igt@gem_exec_balancer@semaphore:
    - Statuses : 5 pass(s)
    - Exec time: [0.97, 13.35] s

  * igt@gem_exec_balancer@smoke:
    - Statuses : 6 pass(s)
    - Exec time: [1.11, 23.25] s

  * igt@gem_exec_reloc@basic-spin-others:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-spin-others@bcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-spin-others@rcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-spin-others@vcs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-spin-others@vcs1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@gem_exec_reloc@basic-spin-others@vecs0:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_vm_create@async-destroy:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_vm_create@create-ext:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_vm_create@execbuf:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_vm_create@invalid-create:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_vm_create@invalid-destroy:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_vm_create@isolation:
    - Statuses : 5 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@i915_selftest@mock@ring:
    - Statuses : 5 pass(s)
    - Exec time: [0.14, 1.48] s

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [1.46, 3.12] s

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels@edp-1-pipe-b:
    - Statuses : 3 pass(s)
    - Exec time: [1.14, 2.95] s

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [1.48, 3.69] s

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@edp-1-pipe-b:
    - Statuses : 3 pass(s)
    - Exec time: [1.14, 3.34] s

  * igt@kms_atomic_transition@plane-all-modeset-transition@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [6.61, 38.10] s

  * igt@kms_atomic_transition@plane-all-modeset-transition@dp-1-pipe-b:
    - Statuses : 2 pass(s)
    - Exec time: [6.70, 38.66] s

  * igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [36.65] s

  * igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-1-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [34.53] s

  * igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [36.54] s

  * igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [34.85] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@dp-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [3.89] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@dp-1-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [4.01] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [3.19, 4.79] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-b:
    - Statuses : 2 pass(s)
    - Exec time: [3.43, 4.64] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [5.49] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-1-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [4.73] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-2-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [5.27] s

  * igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-2-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [4.63] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.88, 3.88] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b:
    - Statuses : 2 pass(s)
    - Exec time: [1.01, 4.04] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [1.93, 4.78] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-b:
    - Statuses : 3 pass(s)
    - Exec time: [3.22, 4.67] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.25] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@hdmi-a-1-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [5.39] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@hdmi-a-2-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [6.08] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@hdmi-a-2-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [4.84] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.89, 3.90] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:
    - Statuses : 2 pass(s)
    - Exec time: [1.02, 4.06] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [1.64, 4.80] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-b:
    - Statuses : 3 pass(s)
    - Exec time: [3.00, 4.64] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [5.05] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [4.01] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-2-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [4.97] s

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-2-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [3.93] s

  * igt@kms_atomic_transition@plane-all-transition@dp-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.90] s

  * igt@kms_atomic_transition@plane-all-transition@dp-1-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [1.03] s

  * igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [1.63, 4.79] s

  * igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-b:
    - Statuses : 3 pass(s)
    - Exec time: [2.86, 4.65] s

  * igt@kms_atomic_transition@plane-all-transition@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [5.24] s

  * igt@kms_atomic_transition@plane-all-transition@hdmi-a-1-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [4.33] s

  * igt@kms_atomic_transition@plane-all-transition@hdmi-a-2-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [5.11] s

  * igt@kms_atomic_transition@plane-all-transition@hdmi-a-2-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [4.23] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@dp-1-pipe-a:
    - Statuses : 2 pass(s)
    - Exec time: [0.06, 0.13] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@dp-1-pipe-b:
    - Statuses : 2 pass(s)
    - Exec time: [0.20, 0.30] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a:
    - Statuses : 3 pass(s)
    - Exec time: [0.08, 0.54] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-b:
    - Statuses : 3 pass(s)
    - Exec time: [0.90, 1.40] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.35] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [0.26] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-2-pipe-a:
    - Statuses : 1 pass(s)
    - Exec time: [0.26] s

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-2-pipe-b:
    - Statuses : 1 pass(s)
    - Exec time: [0.24] s

  * igt@kms_chamelium@dp-audio-edid:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_chamelium@hdmi-audio-edid:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  


### New Piglit tests (24823) ###

  * fast_color_clear@all-colors:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fast-slow-clear-interaction:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * fast_color_clear@fcc-blit-between-clears:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-after-clear blit rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-after-clear blit tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-after-clear copy rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear copy tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@fcc-read-after-clear read_pixels rb:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear read_pixels tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * fast_color_clear@fcc-read-after-clear sample tex:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * fast_color_clear@fcc-read-to-pbo-after-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * fast_color_clear@non-redundant-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * fast_color_clear@redundant-clear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-read-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-read-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-read-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-read-window-stencil0:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-depth-read-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-stencil-test-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-stencil-test-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-stencil-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-stencil-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-depth-test-fbo-d24-s0:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-depth-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * hiz@hiz-depth-test-window-stencil0:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-depth-test-window-stencil1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-read-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * hiz@hiz-stencil-read-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-read-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-read-window-depth0:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * hiz@hiz-stencil-read-window-depth1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-test-fbo-d0-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-test-fbo-d24-s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-stencil-test-fbo-d24s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * hiz@hiz-stencil-test-window-depth0:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * hiz@hiz-stencil-test-window-depth1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@buffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@buffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@buffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@buffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@buffer with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@buffer with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@framebuffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@framebuffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * object namespace pollution@framebuffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@framebuffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@framebuffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@framebuffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@framebuffer with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@program with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@program with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@program with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@program with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@program with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@program with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@program with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@program with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@renderbuffer with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@renderbuffer with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@renderbuffer with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@renderbuffer with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@renderbuffer with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@renderbuffer with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@renderbuffer with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@renderbuffer with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@texture with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@texture with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@texture with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@texture with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@texture with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glbitmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glblitframebuffer:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glclear:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glcleartexsubimage:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glcopyimagesubdata:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@vertex-array with glcopypixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * object namespace pollution@vertex-array with glcopytexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with gldrawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * object namespace pollution@vertex-array with glgeneratemipmap:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * object namespace pollution@vertex-array with glgetteximage:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * object namespace pollution@vertex-array with glgetteximage-compressed:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * object namespace pollution@vertex-array with gltexsubimage2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * security@initialized-fbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * security@initialized-texmemory:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * security@initialized-vbo:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@activeprogram-bad-program:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * shaders@activeprogram-get:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@attribute0:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@complex-loop-analysis-bug:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@createshaderprogram-attached-shaders:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@createshaderprogram-bad-type:
    - Statuses : 1 fail(s)
    - Exec time: [0.11] s

  * shaders@dead-code-break-interaction:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@dependency-hints@exp2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@fragcoord_w:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@getuniform-01:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@getuniform-02:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@getuniform-03:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl link two programs, global initializer:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-add-add-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-add-add-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-add-3:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-add-4:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-add-sub-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-sub-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-add-zero:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-add-zero-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * shaders@glsl-algebraic-div-one:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-algebraic-div-one-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.03] s

  * shaders@glsl-algebraic-logicand-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicand-false-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicand-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicand-true-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-logicor-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicor-false-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-logicor-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-logicor-true-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-logicxor-false:
    - Statuses : 1 fail(s)
    - Exec time: [0.06] s

  * shaders@glsl-algebraic-logicxor-true:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-mul-mul-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-mul-one:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-mul-one-2:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-mul-zero:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-neg-neg:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-not-equals:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * shaders@glsl-algebraic-not-notequals:
    - Statuses : 1 fail(s)
    - Exec time: [0.05] s

  * shaders@glsl-algebraic-pow-two:
    - Statuses : 1 fail(s)
    - Exec time: [0.04] s

  * s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/index.html

--===============8204628832322762224==
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
<tr><td><b>Series:</b></td><td>New uAPI drm properties for color management (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91523/">https://patchwork.freedesktop.org/series/91523/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10242_full -&gt; Patchwork_20408_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20408_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20408_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20408_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-glk3/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-glk2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-atomic:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-kbl2/igt@kms_properties@get_properties-sanity-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-kbl7/igt@kms_properties@get_properties-sanity-atomic.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-tglb1/igt@kms_properties@get_properties-sanity-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-tglb3/igt@kms_properties@get_properties-sanity-atomic.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-non-atomic:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-iclb6/igt@kms_properties@get_properties-sanity-non-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-iclb7/igt@kms_properties@get_properties-sanity-non-atomic.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-apl8/igt@kms_properties@get_properties-sanity-non-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-apl6/igt@kms_properties@get_properties-sanity-non-atomic.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10242/shard-skl2/igt@kms_properties@get_properties-sanity-non-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/shard-skl5/igt@kms_properties@get_properties-sanity-non-atomic.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3 (NEW):<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20408/pig-snb-2600/spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3.html">FAIL</a> +25280 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10242_full and Patchwork_20408_full:</p>
<h3>New IGT tests (97)</h3>
<ul>
<li>
<p>igt@drm_mm@all@frag:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.14, 1.55] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@execute-allforone:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.01, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@execute-one:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.35, 4.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@execute-oneforall:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.29, 3.46] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@idempotent:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@independent:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@vm:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.02, 15.40] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@create-shared-gtt:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.15, 2.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@detached-shared-gtt:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.15, 2.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@disjoint-timelines:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.01, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-smoketest-all:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [32.25, 32.66] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@single-timeline:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-cork:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.11, 13.46] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.98, 13.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-imm:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [2.50, 13.42] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [3.49, 32.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [3.34, 14.85] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [1.07, 15.86] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@busy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.51, 6.90] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.26, 13.70] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late-pulse:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.25, 14.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-pulse:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.25, 14.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@indices:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.03, 13.45] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@individual:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.25, 13.69] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-balancer:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.99, 13.58] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.01, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [35.93, 51.49] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@semaphore:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.97, 13.35] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@smoke:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.11, 23.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@bcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@rcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@vcs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@vcs1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin-others@vecs0:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@async-destroy:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@create-ext:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@execbuf:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@invalid-create:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@invalid-destroy:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@isolation:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.01, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@ring:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.14, 1.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.46, 3.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels@edp-1-pipe-b:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.14, 2.95] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.48, 3.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels@edp-1-pipe-b:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.14, 3.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [6.61, 38.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@dp-1-pipe-b:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [6.70, 38.66] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [36.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-1-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [34.53] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [36.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@hdmi-a-2-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [34.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.89] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@dp-1-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.19, 4.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-b:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.43, 4.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [5.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-1-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [5.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@hdmi-a-2-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.88, 3.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@dp-1-pipe-b:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.01, 4.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.93, 4.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@edp-1-pipe-b:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [3.22, 4.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@hdmi-a-1-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [5.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@hdmi-a-2-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.84] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.89, 3.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@dp-1-pipe-b:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.02, 4.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.64, 4.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-b:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [3.00, 4.64] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [5.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-1-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.97] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@hdmi-a-2-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.93] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@dp-1-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.63, 4.79] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-b:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.86, 4.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [5.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@hdmi-a-1-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [5.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@hdmi-a-2-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@dp-1-pipe-a:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.06, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@dp-1-pipe-b:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.20, 0.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.08, 0.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-b:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.90, 1.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-2-pipe-a:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-2-pipe-b:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-audio-edid:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New Piglit tests (24823)</h3>
<ul>
<li>
<p>fast_color_clear@all-colors:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fast-slow-clear-interaction:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-blit-between-clears:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear blit rb:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear blit tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear copy rb:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear copy tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear read_pixels rb:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear read_pixels tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-after-clear sample tex:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@fcc-read-to-pbo-after-clear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@non-redundant-clear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>fast_color_clear@redundant-clear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-fbo-d24-s0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-window-stencil0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-read-window-stencil1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d0-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d24-s0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-stencil-test-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-fbo-d24-s0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-window-stencil0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-depth-test-window-stencil1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d0-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-window-depth0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-read-window-depth1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-fbo-d0-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-fbo-d24-s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-fbo-d24s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-window-depth0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>hiz@hiz-stencil-test-window-depth1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@buffer with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@framebuffer with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@program with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@renderbuffer with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@texture with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glbitmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glblitframebuffer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glclear:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcleartexsubimage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcopyimagesubdata:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcopypixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glcopytexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with gldrawpixels:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glgeneratemipmap:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glgetteximage:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with glgetteximage-compressed:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>object namespace pollution@vertex-array with gltexsubimage2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>security@initialized-fbo:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>security@initialized-texmemory:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>security@initialized-vbo:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@activeprogram-bad-program:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>shaders@activeprogram-get:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@attribute0:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@complex-loop-analysis-bug:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@createshaderprogram-attached-shaders:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@createshaderprogram-bad-type:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>shaders@dead-code-break-interaction:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@dependency-hints@exp2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@fragcoord_w:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-01:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-02:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@getuniform-03:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl link two programs, global initializer:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-add-4:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-sub-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-sub-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-zero:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-add-zero-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-div-one:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-div-one-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-false-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicand-true-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-false-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicor-true-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicxor-false:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-logicxor-true:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-mul-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-one:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-one-2:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-mul-zero:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-neg-neg:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-not-equals:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-not-notequals:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>shaders@glsl-algebraic-pow-two:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>s</p>
</li>
</ul>

</body>
</html>

--===============8204628832322762224==--

--===============0344017794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0344017794==--
