Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA67F19F825
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 16:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8696E0A8;
	Mon,  6 Apr 2020 14:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E79596E0A8;
 Mon,  6 Apr 2020 14:43:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E150CA00C7;
 Mon,  6 Apr 2020 14:43:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Mon, 06 Apr 2020 14:43:38 -0000
Message-ID: <158618421889.4193.15183210202299794727@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406135514.569205-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200406135514.569205-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/perf=3A_break_OA_config_bu?=
 =?utf-8?q?ffer_object_in_2?=
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

Series: series starting with [1/3] drm/i915/perf: break OA config buffer object in 2
URL   : https://patchwork.freedesktop.org/series/75550/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8260 -> Patchwork_17220
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17220/index.html

Known issues
------------

  Here are the changes found in Patchwork_17220 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [PASS][1] -> [DMESG-WARN][2] ([i915#203]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8260/fi-skl-6770hq/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17220/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][3] -> [SKIP][4] ([fdo#109271]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8260/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17220/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [PASS][5] -> [DMESG-WARN][6] ([i915#106])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8260/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17220/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203


Participating hosts (53 -> 46)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8260 -> Patchwork_17220

  CI-20190529: 20190529
  CI_DRM_8260: fa5519e01f097b7f69259be38606ff5f1bc3cc6c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5572: 6c124b5c8501d900966c033ac86c3dc55c16a2da @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17220: 18728c0bc637aab4293092615a268bbd3e9f83a5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

18728c0bc637 drm/i915/perf: enable filtering on multiple contexts
122d52d6d979 drm/i915/perf: prepare driver to receive multiple ctx handles
d78a933fe510 drm/i915/perf: break OA config buffer object in 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17220/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
