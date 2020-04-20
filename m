Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 865241B1990
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 00:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A30589F2A;
	Mon, 20 Apr 2020 22:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B111389E11;
 Mon, 20 Apr 2020 22:33:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A25AEA3C0D;
 Mon, 20 Apr 2020 22:33:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Apr 2020 22:33:08 -0000
Message-ID: <158742198863.29873.10821246744697649756@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420203040.8984-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200420203040.8984-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Show_the_pstate_limits_on_any_failure_to_res?=
 =?utf-8?q?et_min?=
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

Series: drm/i915/selftests: Show the pstate limits on any failure to reset min
URL   : https://patchwork.freedesktop.org/series/76214/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8335 -> Patchwork_17392
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17392 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17392, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17392/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17392:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/fi-apl-guc/igt@gem_exec_fence@basic-await@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17392/fi-apl-guc/igt@gem_exec_fence@basic-await@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17392 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][3] ([i915#1580]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17392/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8335 -> Patchwork_17392

  CI-20190529: 20190529
  CI_DRM_8335: ad015a5ae83e52e4eac4975e27c0db4d633345ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17392: a768fba3d8d9177eb720b9ceb55aa8c42ae8d39c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a768fba3d8d9 drm/i915/selftests: Show the pstate limits on any failure to reset min

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17392/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
