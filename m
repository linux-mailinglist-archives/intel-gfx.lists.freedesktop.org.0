Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2D21DA4A2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 00:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71EC6E39E;
	Tue, 19 May 2020 22:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 614CD6E158;
 Tue, 19 May 2020 22:36:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FC4AA47DB;
 Tue, 19 May 2020 22:36:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 22:36:06 -0000
Message-ID: <158992776629.31236.8264312807671965236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519182213.13284-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200519182213.13284-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Suppress_some_random_warnings?=
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

Series: drm/i915/gem: Suppress some random warnings
URL   : https://patchwork.freedesktop.org/series/77431/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8506 -> Patchwork_17715
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17715/index.html

Known issues
------------

  Here are the changes found in Patchwork_17715 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][1] -> [FAIL][2] ([i915#262])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17715/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([i915#976])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17715/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-8809g:       [INCOMPLETE][5] ([i915#1874]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17715/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-tgl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8506 -> Patchwork_17715

  CI-20190529: 20190529
  CI_DRM_8506: d6a73e9084ff6adfabbad014bc294d254484f304 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5661: a772a7c7a761c6125bc0af5284ad603478107737 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17715: c47e2d0db5333eee93263b6a8fdd110fa51c8bb7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c47e2d0db533 drm/i915/gem: Suppress some random warnings

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17715/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
