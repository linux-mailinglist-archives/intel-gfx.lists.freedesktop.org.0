Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0C61E4FEC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 23:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA2E6E0EC;
	Wed, 27 May 2020 21:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A9B76E0EC;
 Wed, 27 May 2020 21:17:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C376A47DF;
 Wed, 27 May 2020 21:17:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 27 May 2020 21:17:11 -0000
Message-ID: <159061423101.342.14867892720971693646@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Minor_link_training_logic_fixes_for_dp=5Fmst?=
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

Series: drm/i915: Minor link training logic fixes for dp_mst
URL   : https://patchwork.freedesktop.org/series/77716/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8544 -> Patchwork_17797
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/index.html

Known issues
------------

  Here are the changes found in Patchwork_17797 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [FAIL][1] ([i915#262]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8544/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262


Participating hosts (49 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8544 -> Patchwork_17797

  CI-20190529: 20190529
  CI_DRM_8544: c6c0a18e985d7a3fd4451e0e786e6522371ea9ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17797: d865c402a9c66c553cdf73d076f84cc5b9e017af @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d865c402a9c6 drm/i915: Minor link training logic fixes for dp_mst

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17797/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
