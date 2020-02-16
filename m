Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366591604F2
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 18:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F166E219;
	Sun, 16 Feb 2020 17:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A1456E045;
 Sun, 16 Feb 2020 17:14:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12343A66C7;
 Sun, 16 Feb 2020 17:14:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 16 Feb 2020 17:14:56 -0000
Message-ID: <158187329604.23349.2710494097672704609@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200216161746.500258-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200216161746.500258-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Avoid_potential_division-by-zero_in_computing_CS_times?=
 =?utf-8?q?tamp_period?=
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

Series: drm/i915: Avoid potential division-by-zero in computing CS timestamp period
URL   : https://patchwork.freedesktop.org/series/73506/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7950 -> Patchwork_16590
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16590/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16590:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16590/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16590 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-bxt-dsi:         [PASS][2] -> [TIMEOUT][3] ([fdo#112271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16590/fi-bxt-dsi/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [PASS][4] -> [INCOMPLETE][5] ([fdo#108569])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7950/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16590/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271


Participating hosts (40 -> 43)
------------------------------

  Additional (9): fi-hsw-peppy fi-ilk-650 fi-snb-2520m fi-ivb-3770 fi-bsw-kefka fi-blb-e6850 fi-byt-n2820 fi-skl-6700k2 fi-kbl-r 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7950 -> Patchwork_16590

  CI-20190529: 20190529
  CI_DRM_7950: eebe6906446d83547d0a3f29ffa3f124a8971b40 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5444: c46bae259d427f53fcfcd5f05de0181a9e82d6fe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16590: b82aca351b49349019c6bb4e08f3e148bb5b77a7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b82aca351b49 drm/i915: Avoid potential division-by-zero in computing CS timestamp period

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16590/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
