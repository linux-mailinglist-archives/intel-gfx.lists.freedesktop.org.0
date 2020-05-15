Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6995E1D5C71
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 00:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5454D6ED63;
	Fri, 15 May 2020 22:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FA3E6ED60;
 Fri, 15 May 2020 22:39:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A82DA432F;
 Fri, 15 May 2020 22:39:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 May 2020 22:39:50 -0000
Message-ID: <158958239027.26213.11330141894829092422@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200515200031.12034-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200515200031.12034-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Retry_faulthandlers_on_ENOSPC?=
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

Series: drm/i915/gem: Retry faulthandlers on ENOSPC
URL   : https://patchwork.freedesktop.org/series/77314/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8491 -> Patchwork_17676
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/index.html

Known issues
------------

  Here are the changes found in Patchwork_17676 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [INCOMPLETE][1] ([i915#1795] / [i915#656]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8491/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/fi-skl-guc/igt@i915_selftest@live@execlists.html

  
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (50 -> 45)
------------------------------

  Additional (2): fi-kbl-7560u fi-skl-6600u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8491 -> Patchwork_17676

  CI-20190529: 20190529
  CI_DRM_8491: 45b04894467fea442ac135a64318220fbf42cae5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5656: 3996584aa3fad5dd7a52cb90bb3cda87f645addf @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17676: 77fa47e76075fd4596dafd66b518ebe8a642d2c7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

77fa47e76075 drm/i915/gem: Retry faulthandlers on ENOSPC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17676/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
