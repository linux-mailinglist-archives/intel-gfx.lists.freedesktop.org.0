Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F4D1ABAF6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 10:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB476EB27;
	Thu, 16 Apr 2020 08:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 160526EB27;
 Thu, 16 Apr 2020 08:19:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DC44A0091;
 Thu, 16 Apr 2020 08:19:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Thu, 16 Apr 2020 08:19:21 -0000
Message-ID: <158702516104.20886.4609413273640061131@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200416074721.472-1-uma.shankar@intel.com>
In-Reply-To: <20200416074721.472-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Enable_DP_Display_Audio_WA_=28rev5=29?=
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

Series: drm/i915/display: Enable DP Display Audio WA (rev5)
URL   : https://patchwork.freedesktop.org/series/75582/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8307 -> Patchwork_17323
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17323/index.html

Known issues
------------

  Here are the changes found in Patchwork_17323 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6770hq:      [PASS][1] -> [FAIL][2] ([fdo#103375])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17323/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@ring_submission:
    - fi-bwr-2160:        [INCOMPLETE][3] ([i915#489]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/fi-bwr-2160/igt@i915_selftest@live@ring_submission.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17323/fi-bwr-2160/igt@i915_selftest@live@ring_submission.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (51 -> 46)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8307 -> Patchwork_17323

  CI-20190529: 20190529
  CI_DRM_8307: 547ca85e9cbca6fcfcadc6bf5e0e7b9a34a089d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5591: f57b7fdbe8d04ce3edf0433a03c7d9d5c3d96680 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17323: 877acfd0e6884dd609bef58ac69a69b827ee3cd2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

877acfd0e688 drm/i915/display: Enable DP Display Audio WA

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17323/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
