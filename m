Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1CE16FFD8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 14:22:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37406E29D;
	Wed, 26 Feb 2020 13:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19C936E296;
 Wed, 26 Feb 2020 13:22:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 104D3A41FB;
 Wed, 26 Feb 2020 13:22:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 13:22:18 -0000
Message-ID: <158272333803.21009.3915113497809261039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225082233.274530-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225082233.274530-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915=3A_Drop_assertion_that_a?=
 =?utf-8?q?ctive-=3Efence_is_unchanged_=28rev2=29?=
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

Series: series starting with [01/11] drm/i915: Drop assertion that active->fence is unchanged (rev2)
URL   : https://patchwork.freedesktop.org/series/73885/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8002_full -> Patchwork_16699_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16699_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16699_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16699/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16699_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8002/shard-tglb7/igt@i915_selftest@mock_requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16699/shard-tglb5/igt@i915_selftest@mock_requests.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16699/shard-tglb5/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16699_full that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@universal-planes-dpms:
    - shard-tglb:         [TIMEOUT][4] ([fdo#112126]) -> [TIMEOUT][5] ([fdo#112126] / [i915#1281]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8002/shard-tglb5/igt@i915_pm_rpm@universal-planes-dpms.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16699/shard-tglb1/igt@i915_pm_rpm@universal-planes-dpms.html

  
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [i915#1281]: https://gitlab.freedesktop.org/drm/intel/issues/1281


Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8002 -> Patchwork_16699

  CI-20190529: 20190529
  CI_DRM_8002: 9a201f217db6b51322008733fbc3e77e16c5dbfe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5464: 8cf2f8684992052ab89de1cf328c418224c0c2a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16699: b79648161fa451aa6a3d33dead10dc62a5dec136 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16699/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
