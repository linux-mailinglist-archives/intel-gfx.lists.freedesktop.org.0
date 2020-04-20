Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B431B19DF
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 01:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C136E86A;
	Mon, 20 Apr 2020 23:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6DA786E868;
 Mon, 20 Apr 2020 23:00:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65F27A0099;
 Mon, 20 Apr 2020 23:00:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Date: Mon, 20 Apr 2020 23:00:52 -0000
Message-ID: <158742365238.29874.894275713486578448@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415193535.14597-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200415193535.14597-1-matthew.s.atwood@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Wa=5F14011059788_=28rev4=29?=
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

Series: drm/i915/tgl: Wa_14011059788 (rev4)
URL   : https://patchwork.freedesktop.org/series/75990/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8335 -> Patchwork_17393
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/index.html

Known issues
------------

  Here are the changes found in Patchwork_17393 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][1] ([i915#1580]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8335/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580


Participating hosts (51 -> 43)
------------------------------

  Missing    (8): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8335 -> Patchwork_17393

  CI-20190529: 20190529
  CI_DRM_8335: ad015a5ae83e52e4eac4975e27c0db4d633345ce @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17393: 538b756324678b9b392e2b7edc1fe6e1e67194c4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

538b75632467 drm/i915/tgl: Wa_14011059788

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17393/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
