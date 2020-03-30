Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3729519851B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 22:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B106E48E;
	Mon, 30 Mar 2020 20:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C49286E48E;
 Mon, 30 Mar 2020 20:07:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD9C9A47E8;
 Mon, 30 Mar 2020 20:07:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 30 Mar 2020 20:07:21 -0000
Message-ID: <158559884174.13826.8347426218266883070@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200328000422.98978-1-Jason@zx2c4.com>
In-Reply-To: <20200328000422.98978-1-Jason@zx2c4.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_check_to_see_if_the_FPU_is_available_before_using_it?=
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

Series: drm/i915: check to see if the FPU is available before using it
URL   : https://patchwork.freedesktop.org/series/75249/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8217 -> Patchwork_17134
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/index.html

Known issues
------------

  Here are the changes found in Patchwork_17134 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-cml-s:           [DMESG-FAIL][1] ([i915#841]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/fi-cml-s/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/fi-cml-s/igt@i915_selftest@live@execlists.html
    - {fi-tgl-u}:         [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8217/fi-tgl-u/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/fi-tgl-u/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#841]: https://gitlab.freedesktop.org/drm/intel/issues/841


Participating hosts (45 -> 38)
------------------------------

  Additional (3): fi-skl-guc fi-bdw-5557u fi-skl-6600u 
  Missing    (10): fi-bsw-n3050 fi-hsw-4200u fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-cfl-8109u fi-bsw-kefka fi-blb-e6850 fi-byt-clapper fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8217 -> Patchwork_17134

  CI-20190529: 20190529
  CI_DRM_8217: f4a6243de1bb9c5be618b8d2cb4ced7610153465 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17134: 90ca26365082ea560e6753d808afff2033e43d9d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

90ca26365082 drm/i915: check to see if the FPU is available before using it

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17134/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
