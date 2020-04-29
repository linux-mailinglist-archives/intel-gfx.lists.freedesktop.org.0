Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B71861BE530
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 19:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52EE6E043;
	Wed, 29 Apr 2020 17:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A2C96E043;
 Wed, 29 Apr 2020 17:27:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13892A47E8;
 Wed, 29 Apr 2020 17:27:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 29 Apr 2020 17:27:51 -0000
Message-ID: <158818127105.6696.3638133124673799563@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_FBC_fixes_=28rev2=29?=
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

Series: drm/i915: FBC fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/76714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8392 -> Patchwork_17517
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/index.html


Changes
-------

  No changes found


Participating hosts (47 -> 41)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8392 -> Patchwork_17517

  CI-20190529: 20190529
  CI_DRM_8392: c5ceaac881b4dc4eca6473abeb27342663c898d3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17517: 15396082f189f069234e45031d13ee4568e0e64f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

15396082f189 drm/i915: Suppress spurious underruns on gen2
10255531ded0 drm/i915: Fix g4x fbc watermark enable
9ea3c9303844 drm/i915/fbc: Reduce fbc1 compression interval to 1 second
039571106777 drm/i915/fbc: Store the fbc1 compression interval in the params
42638b346f43 drm/i915/fbc: Parametrize FBC_CONTROL
9b69c1713be1 drm/i915/fbc: Allow FBC to recompress after a 3D workload on i85x/i865
f684c1d99dc1 drm/i915/fbc: Don't clear busy_bits for origin==GTT
392e1957dcdd drm/i915/fbc: Enable fbc on i865
bfe3b237394d drm/i915/fbc: Fix nuke for pre-snb platforms
1f2ef6c459ff drm/i915/fbc: Fix fence_y_offset handling
39ee6ccb2c59 drm/i915/fbc: Use the correct plane stride
781df50da31f drm/i915/fbc: Require linear fb stride to be multiple of 512 bytes on gen9/glk

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17517/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
