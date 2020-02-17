Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D40A16159F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 16:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457836E060;
	Mon, 17 Feb 2020 15:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 275D189BAF;
 Mon, 17 Feb 2020 15:11:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 204E0A0118;
 Mon, 17 Feb 2020 15:11:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 17 Feb 2020 15:11:30 -0000
Message-ID: <158195229011.16571.13410368841460318719@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200217095835.599827-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200217095835.599827-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Rearrange_code_to_silence_compiler?=
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

Series: drm/i915/gt: Rearrange code to silence compiler
URL   : https://patchwork.freedesktop.org/series/73533/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7954 -> Patchwork_16593
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16593/index.html

Known issues
------------

  Here are the changes found in Patchwork_16593 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [TIMEOUT][1] ([fdo#112271] / [i915#1084]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7954/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16593/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084


Participating hosts (50 -> 43)
------------------------------

  Additional (1): fi-ehl-1 
  Missing    (8): fi-hsw-4200u fi-bsw-n3050 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-n2820 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7954 -> Patchwork_16593

  CI-20190529: 20190529
  CI_DRM_7954: d7c1791394faaa869d3442705413dac8c0ecd677 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5444: c46bae259d427f53fcfcd5f05de0181a9e82d6fe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16593: 4806975145b511fb2842dd572b7bba3c2d344e66 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4806975145b5 drm/i915/gt: Rearrange code to silence compiler

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16593/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
