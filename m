Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE447192C05
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 16:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B58A6E877;
	Wed, 25 Mar 2020 15:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 808C76E876;
 Wed, 25 Mar 2020 15:15:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79FD5A47EB;
 Wed, 25 Mar 2020 15:15:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Mar 2020 15:15:42 -0000
Message-ID: <158514934249.29635.4106769244982554766@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200325140754.12636-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200325140754.12636-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Return_early_after_MISSING=5FCSAE_for_write=5F?=
 =?utf-8?q?dp=5Fsdp?=
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

Series: drm/i915/display: Return early after MISSING_CSAE for write_dp_sdp
URL   : https://patchwork.freedesktop.org/series/75075/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8187 -> Patchwork_17085
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17085/index.html

Known issues
------------

  Here are the changes found in Patchwork_17085 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-dsi:         [PASS][1] -> [DMESG-FAIL][2] ([fdo#108569])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8187/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17085/fi-icl-dsi/igt@i915_selftest@live@execlists.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569


Participating hosts (47 -> 35)
------------------------------

  Additional (1): fi-hsw-4770r 
  Missing    (13): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-elk-e7500 fi-bsw-kefka fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8187 -> Patchwork_17085

  CI-20190529: 20190529
  CI_DRM_8187: 8f00a062e7d2e609388afd9e92b5d6d8c22cfb14 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5537: 190245120758e754813d76b2c6c613413a0dba29 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17085: d54cf578ae291862bb0aa386fce316269a03fbef @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d54cf578ae29 drm/i915/display: Return early after MISSING_CSAE for write_dp_sdp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17085/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
