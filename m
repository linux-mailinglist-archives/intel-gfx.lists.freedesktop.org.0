Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A391E6FE3
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 01:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3016E0C2;
	Thu, 28 May 2020 23:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E8806E096;
 Thu, 28 May 2020 23:02:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57AA0A0BC6;
 Thu, 28 May 2020 23:02:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 23:02:58 -0000
Message-ID: <159070697832.684.9922440788498861811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528211524.29107-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528211524.29107-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915/gt=3A_Start_timeslice_on?=
 =?utf-8?q?_partial_submission?=
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

Series: series starting with [01/11] drm/i915/gt: Start timeslice on partial submission
URL   : https://patchwork.freedesktop.org/series/77762/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8549 -> Patchwork_17809
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8549 and Patchwork_17809:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 41 pass(s)
    - Exec time: [0.03, 0.10] s

  


Changes
-------

  No changes found


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8549 -> Patchwork_17809

  CI-20190529: 20190529
  CI_DRM_8549: e50e9c6bf4efd00b02d91ff470993bbd0db94f67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5682: e5371a99a877be134c6ad5361a5f03843a66f775 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17809: 70c78cfa6ea58dde569696417b5e00d7ad6b7151 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

70c78cfa6ea5 drm/i915/gem: Make relocations atomic within execbuf
372342371047 drm/i915: Unpeel awaits on a proxy fence
eba65e7de8ae dma-buf: Proxy fence, an unsignaled fence placeholder
71c20a444d9e drm/i915/gem: Add all GPU reloc awaits/signals en masse
c2d55803a60c drm/i915/gem: Build the reloc request first
10ad05422c96 drm/i915/gem: Lift GPU relocation allocation
fb12696a43ec drm/i915/gem: Separate reloc validation into an earlier step
283e921c4b08 drm/i915: Add list_for_each_entry_safe_continue_reverse
7c0380bdfab2 drm/i915/gem: Async GPU relocations only
af3a1406b2d8 drm/i915/gem: Mark the buffer pool as active for the cmdparser
dc44da7a88e6 drm/i915/gt: Start timeslice on partial submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17809/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
