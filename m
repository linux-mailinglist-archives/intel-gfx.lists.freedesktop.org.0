Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0585160528
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 18:43:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72F28996E;
	Sun, 16 Feb 2020 17:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C02FE89956;
 Sun, 16 Feb 2020 17:43:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B889DA0003;
 Sun, 16 Feb 2020 17:43:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 16 Feb 2020 17:43:16 -0000
Message-ID: <158187499672.23349.1287663982268014518@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200216163445.555786-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200216163445.555786-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Read_rawclk=5Ffreq_earlier?=
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

Series: drm/i915: Read rawclk_freq earlier
URL   : https://patchwork.freedesktop.org/series/73507/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7950 -> Patchwork_16591
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16591/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16591:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16591/fi-tgl-dsi/igt@i915_selftest@live_gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Participating hosts (40 -> 40)
------------------------------

  Additional (7): fi-hsw-peppy fi-ilk-650 fi-ivb-3770 fi-bsw-kefka fi-byt-n2820 fi-skl-6700k2 fi-kbl-r 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bwr-2160 fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7950 -> Patchwork_16591

  CI-20190529: 20190529
  CI_DRM_7950: eebe6906446d83547d0a3f29ffa3f124a8971b40 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5444: c46bae259d427f53fcfcd5f05de0181a9e82d6fe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16591: f8d26a310444c22043961f0482ea10ef8768e60d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f8d26a310444 drm/i915: Read rawclk_freq earlier

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16591/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
