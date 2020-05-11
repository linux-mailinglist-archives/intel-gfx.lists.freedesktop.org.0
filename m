Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8768C1CE15B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 19:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F1F6E50C;
	Mon, 11 May 2020 17:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1874189D00;
 Mon, 11 May 2020 17:15:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05D8CA47E1;
 Mon, 11 May 2020 17:15:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pascal Terjan" <pterjan@google.com>
Date: Mon, 11 May 2020 17:15:07 -0000
Message-ID: <158921730702.13117.1840445462121427450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200510212521.128869-1-pterjan@google.com>
In-Reply-To: <20200510212521.128869-1-pterjan@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_unused_HAS=5FFWTABLE_macro?=
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

Series: drm/i915: Remove unused HAS_FWTABLE macro
URL   : https://patchwork.freedesktop.org/series/77158/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8466 -> Patchwork_17627
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17627/index.html

Known issues
------------

  Here are the changes found in Patchwork_17627 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8466/fi-bwr-2160/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17627/fi-bwr-2160/igt@i915_selftest@live@hangcheck.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8466 -> Patchwork_17627

  CI-20190529: 20190529
  CI_DRM_8466: eea130b942bec4cb8c19514b3a63aed25e4dec27 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5646: 5a5a3162a7638b3ae38b6dc2545622c204d1b97c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17627: e3dc906cf5dbe7fa3ab94c3053b490c3657d9c08 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e3dc906cf5db drm/i915: Remove unused HAS_FWTABLE macro

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17627/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
