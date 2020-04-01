Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 249C819AAE4
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 13:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838BE6E924;
	Wed,  1 Apr 2020 11:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCA876E098;
 Wed,  1 Apr 2020 11:37:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C711AA0118;
 Wed,  1 Apr 2020 11:37:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Apr 2020 11:37:39 -0000
Message-ID: <158574105978.25626.15445812513954374824@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401110435.30389-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200401110435.30389-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Peek_at_the_n?=
 =?utf-8?q?ext_submission_for_error_interrupts?=
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

Series: series starting with [1/2] drm/i915/execlists: Peek at the next submission for error interrupts
URL   : https://patchwork.freedesktop.org/series/75362/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8231 -> Patchwork_17168
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17168/index.html

Known issues
------------

  Here are the changes found in Patchwork_17168 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [PASS][1] -> [DMESG-WARN][2] ([IGT#4])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8231/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17168/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_wait@basic-await-all:
    - fi-byt-n2820:       [FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8231/fi-byt-n2820/igt@gem_wait@basic-await-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17168/fi-byt-n2820/igt@gem_wait@basic-await-all.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4


Participating hosts (49 -> 43)
------------------------------

  Additional (2): fi-skl-6770hq fi-tgl-dsi 
  Missing    (8): fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8231 -> Patchwork_17168

  CI-20190529: 20190529
  CI_DRM_8231: e262993871d01ae0ee71477ffc92752305cd2bb5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5550: 98927dfde17aecaecfe67bb9853ceca326ca2b23 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17168: cfc4b332219941e947762ea13f2e25a88d86c734 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cfc4b3322199 drm/i915/execlists: Record the active CCID from before reset
c77a5b25db60 drm/i915/execlists: Peek at the next submission for error interrupts

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17168/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
