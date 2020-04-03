Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A69EE19D721
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F276EB81;
	Fri,  3 Apr 2020 13:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BE9C6EB7F;
 Fri,  3 Apr 2020 13:05:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B737A47DF;
 Fri,  3 Apr 2020 13:05:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 13:05:48 -0000
Message-ID: <158591914804.13350.17204893399191385424@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403120150.17091-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403120150.17091-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Check_current_i915=5Fvma=2Epin=5Fcount_status_first_on?=
 =?utf-8?q?_unbind_=28rev6=29?=
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

Series: drm/i915: Check current i915_vma.pin_count status first on unbind (rev6)
URL   : https://patchwork.freedesktop.org/series/72529/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8244 -> Patchwork_17199
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/index.html

Known issues
------------

  Here are the changes found in Patchwork_17199 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [DMESG-WARN][1] ([IGT#4]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [FAIL][3] ([i915#262]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-cml-u2:          [FAIL][5] ([fdo#103375]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8244/fi-cml-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/fi-cml-u2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34


Participating hosts (48 -> 44)
------------------------------

  Additional (2): fi-kbl-7560u fi-bwr-2160 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bsw-kefka fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8244 -> Patchwork_17199

  CI-20190529: 20190529
  CI_DRM_8244: 55348aac86bd6f0c4ce4d3d8a0e227f6a20a72f9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5560: 213062c7dcf0cbc8069cbb5f91acbc494def33fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17199: 959059739471c0b4afb54f2bc9ddba88a9d7da12 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

959059739471 drm/i915: Check current i915_vma.pin_count status first on unbind

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17199/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
