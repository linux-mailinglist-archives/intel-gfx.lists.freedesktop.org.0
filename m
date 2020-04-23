Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7011B6434
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 21:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C3C6E9B1;
	Thu, 23 Apr 2020 19:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D574D6E0C2;
 Thu, 23 Apr 2020 19:03:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDE8EA0099;
 Thu, 23 Apr 2020 19:03:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 23 Apr 2020 19:03:59 -0000
Message-ID: <158766863983.26749.184364498113000519@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423181937.25176-1-imre.deak@intel.com>
In-Reply-To: <20200423181937.25176-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/icl+=3A_Prevent_using_non-TypeC_AUX_channels_on_TypeC_por?=
 =?utf-8?q?ts?=
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

Series: drm/i915/icl+: Prevent using non-TypeC AUX channels on TypeC ports
URL   : https://patchwork.freedesktop.org/series/76405/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8354 -> Patchwork_17444
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17444/index.html

Known issues
------------

  Here are the changes found in Patchwork_17444 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [PASS][1] -> [FAIL][2] ([i915#976])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17444/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (48 -> 44)
------------------------------

  Additional (2): fi-kbl-7560u fi-bwr-2160 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8354 -> Patchwork_17444

  CI-20190529: 20190529
  CI_DRM_8354: 6ec6eeeda39e1733777f9115ba813a992a47b5fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5608: e7bcaf1dd251d454706c7cd64282f531aec50183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17444: bf5e56c5f4fe0da1b56e14c0b6247fefe501fec2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bf5e56c5f4fe drm/i915/icl+: Prevent using non-TypeC AUX channels on TypeC ports

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17444/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
