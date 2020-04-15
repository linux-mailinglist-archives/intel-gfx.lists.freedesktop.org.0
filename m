Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CC21A9C59
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 13:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023D86E973;
	Wed, 15 Apr 2020 11:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E97BF6E973;
 Wed, 15 Apr 2020 11:34:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB362A0BA8;
 Wed, 15 Apr 2020 11:34:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 15 Apr 2020 11:34:36 -0000
Message-ID: <158695047687.21013.74990144404526356@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness?=
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

Series: Per client engine busyness
URL   : https://patchwork.freedesktop.org/series/75967/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8300 -> Patchwork_17306
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/index.html

Known issues
------------

  Here are the changes found in Patchwork_17306 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2] ([i915#1580])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][3] -> [FAIL][4] ([i915#976])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (48 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8300 -> Patchwork_17306

  CI-20190529: 20190529
  CI_DRM_8300: 02f5d84db84f885cba1f8d258b23e9ea0f2d922e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5590: c7b4a43942be32245b1c00b5b4a38401d8ca6e0d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17306: e9b16b5095f854deeaee59534fa4047771ace61e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e9b16b5095f8 drm/i915: Prefer software tracked context busyness
a89a065b63bf drm/i915: Track context current active time
96b05255f5c0 drm/i915: Expose per-engine client busyness
80f8fe2f733c drm/i915: Track all user contexts per client
7d61e2172ad1 drm/i915: Track runtime spent in closed GEM contexts
0cd24e79ea05 drm/i915: Track runtime spent in unreachable intel_contexts
7aaaba098c18 drm/i915: Make GEM contexts track DRM clients
a763b56f5eed drm/i915: Update client name on context create
027b0636d391 drm/i915: Expose list of clients in sysfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
