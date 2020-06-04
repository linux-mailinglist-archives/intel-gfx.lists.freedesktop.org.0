Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4881EE3FB
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 14:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC0A6E351;
	Thu,  4 Jun 2020 12:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 314156E34C;
 Thu,  4 Jun 2020 12:06:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2B562A47DF;
 Thu,  4 Jun 2020 12:06:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Jun 2020 12:06:26 -0000
Message-ID: <159127238615.14553.564684845605068396@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200604103751.18816-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/22=5D_drm/i915/gem=3A_Mark_the_buffer_p?=
 =?utf-8?q?ool_as_active_for_the_cmdparser?=
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

Series: series starting with [01/22] drm/i915/gem: Mark the buffer pool as active for the cmdparser
URL   : https://patchwork.freedesktop.org/series/77996/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8581 -> Patchwork_17866
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17866 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17866, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17866:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-icl-y:           [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-icl-y/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-icl-y/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-snb-2520m/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8581 and Patchwork_17866:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 41 pass(s)
    - Exec time: [0.03, 0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_17866 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-icl-guc:         [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-icl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [DMESG-WARN][10] ([i915#1982]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * {igt@kms_flip@basic-plain-flip@d-dsi1}:
    - {fi-tgl-dsi}:       [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-tgl-dsi/igt@kms_flip@basic-plain-flip@d-dsi1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-tgl-dsi/igt@kms_flip@basic-plain-flip@d-dsi1.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-tgl-y:           [DMESG-WARN][14] ([i915#1982]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][17] ([i915#62] / [i915#92]) +5 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8581/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8581 -> Patchwork_17866

  CI-20190529: 20190529
  CI_DRM_8581: a3ae560b4c2a6dfb0d550cc40471a7b0c7043500 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17866: f155632b03efee471b40239252a862a43ffd022d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f155632b03ef drm/i915/gem: Make relocations atomic within execbuf
e665d3e71c75 drm/i915: Unpeel awaits on a proxy fence
1f32dc179ff3 dma-buf: Proxy fence, an unsignaled fence placeholder
7cb671e36bbd drm/i915/gem: Add all GPU reloc awaits/signals en masse
38ad7f8804a1 drm/i915/gem: Build the reloc request first
37ab424926eb drm/i915/gem: Lift GPU relocation allocation
a5768b96efc5 drm/i915/gem: Separate reloc validation into an earlier step
dd90a9050b61 drm/i915: Add list_for_each_entry_safe_continue_reverse
cfed75109fb2 drm/i915/gem: Async GPU relocations only
2ff1bb716df2 drm/i915/gt: Enable ring scheduling for gen6/7
2cdc09a8fc16 drm/i915/gt: Implement ring scheduler for gen6/7
d8fa9292586c drm/i915/gt: Track if an engine requires forcewake w/a
f5112dc2ae3b drm/i915/gt: Enable busy-stats for ring-scheduler
710e6262e4f4 drm/i915/gt: Infrastructure for ring scheduling
ce8cae5ec931 drm/i915/gt: Use client timeline address for seqno writes
cba96e7cdecf drm/i915/gt: Support creation of 'internal' rings
fb7bb70a7283 drm/i915/gt: Couple tasklet scheduling for all CS interrupts
b26c3cc35bd3 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
7e77d0a206b9 drm/i915/gt: Always check to enable timeslicing if not submitting
00d105eacda7 drm/i915/gt: Set timeslicing priority from queue
7ec3c01e7a42 drm/i915: Trim set_timer_ms() intervals
47e5bfbf30e3 drm/i915/gem: Mark the buffer pool as active for the cmdparser

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17866/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
