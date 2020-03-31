Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF0519A005
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 22:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15B36E889;
	Tue, 31 Mar 2020 20:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 924806E353;
 Tue, 31 Mar 2020 20:38:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83E57A47E6;
 Tue, 31 Mar 2020 20:38:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 20:38:31 -0000
Message-ID: <158568711151.5566.3483973555463818365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331120502.14713-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200331120502.14713-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Include_a_few_tracek_for_timeslicing?=
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

Series: drm/i915/gt: Include a few tracek for timeslicing
URL   : https://patchwork.freedesktop.org/series/75317/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8228 -> Patchwork_17158
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/index.html

Known issues
------------

  Here are the changes found in Patchwork_17158 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8228/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/fi-skl-guc/igt@i915_selftest@live@execlists.html

  
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (48 -> 38)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (11): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-skl-lmem fi-kbl-7560u fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8228 -> Patchwork_17158

  CI-20190529: 20190529
  CI_DRM_8228: 1f33fcd4f840355af75a61ce7204f39bafc52018 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5548: d9e70dc1b35633b7d5c81cbfa165e331189eb260 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17158: 4174b93dfb0038366d84304435d6f22dd921feb2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4174b93dfb00 drm/i915/gt: Include a few tracek for timeslicing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17158/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
