Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C97E91BDA3C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 13:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3EFD6EE83;
	Wed, 29 Apr 2020 11:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 55DFC6EE82;
 Wed, 29 Apr 2020 11:04:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4E553A0099;
 Wed, 29 Apr 2020 11:04:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 29 Apr 2020 11:04:04 -0000
Message-ID: <158815824430.6697.15098214498776823402@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_FBC_fixes?=
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

Series: drm/i915: FBC fixes
URL   : https://patchwork.freedesktop.org/series/76714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8390 -> Patchwork_17507
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17507/index.html


Changes
-------

  No changes found


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8390 -> Patchwork_17507

  CI-20190529: 20190529
  CI_DRM_8390: 89473e10666c78c4df9e92c9caf03d7311c291cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17507: e3315c131c6d7813355fbd64c818dcd7eefba6ea @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e3315c131c6d drm/i915: Suppress spurious underruns on gen2
04289a752655 drm/i915: Fix g4x fbc watermark enable
46ddb82a1501 drm/i915/fbc: Reduce fbc1 compression interval to 1 second
04304c504db1 drm/i915/fbc: Store the fbc1 compression interval in the params
d39ccd00f107 drm/i915/fbc: Parametrize FBC_CONTROL
f5b2ff08e428 drm/i915/fbc: Allow FBC to recompress after a 3D workload on i85x/i865
db225e51ab61 drm/i915/fbc: Don't clear busy_bits for origin==GTT
873203fee92b drm/i915/fbc: Enable fbc on i865
184da4f02cce drm/i915/fbc: Fix nuke for pre-snb platforms
b91927c97ffd drm/i915/fbc: Fix fence_y_offset handling
db723f635b7f drm/i915/fbc: Use the correct plane stride
1c91198476c8 drm/i915/fbc: Require linear fb stride to be multiple of 512 bytes on gen9/glk

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17507/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
