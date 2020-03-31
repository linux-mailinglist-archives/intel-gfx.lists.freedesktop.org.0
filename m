Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A5519A26D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 01:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346B56E8A4;
	Tue, 31 Mar 2020 23:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 638236E8A3;
 Tue, 31 Mar 2020 23:25:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C82EA47E6;
 Tue, 31 Mar 2020 23:25:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 23:25:39 -0000
Message-ID: <158569713934.5566.2322724339454302309@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331162150.3635-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200331162150.3635-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Ignore_readonly_failures_when_updating_relocs?=
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

Series: drm/i915/gem: Ignore readonly failures when updating relocs
URL   : https://patchwork.freedesktop.org/series/75331/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8229 -> Patchwork_17161
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17161 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17161, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17161/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17161:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_wait@basic-busy-all:
    - fi-gdg-551:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8229/fi-gdg-551/igt@gem_wait@basic-busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17161/fi-gdg-551/igt@gem_wait@basic-busy-all.html

  


Participating hosts (47 -> 35)
------------------------------

  Additional (1): fi-skl-lmem 
  Missing    (13): fi-bdw-5557u fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ctg-p8600 fi-ivb-3770 fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8229 -> Patchwork_17161

  CI-20190529: 20190529
  CI_DRM_8229: 9ee7ea928ee3d5f76d5ca40d025d9c9b39a7f0fb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5550: 98927dfde17aecaecfe67bb9853ceca326ca2b23 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17161: 6b39b83d1e269d56fda0e07adacc0508e64c8c9e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6b39b83d1e26 drm/i915/gem: Ignore readonly failures when updating relocs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17161/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
