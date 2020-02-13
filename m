Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A73915C29E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 16:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13C4F6E332;
	Thu, 13 Feb 2020 15:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 964B06E332;
 Thu, 13 Feb 2020 15:36:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D9B3A73C8;
 Thu, 13 Feb 2020 15:36:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 13 Feb 2020 15:36:30 -0000
Message-ID: <158160819055.17959.3701780284299092369@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213132045.6631-1-jani.nikula@intel.com>
In-Reply-To: <20200213132045.6631-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsc=3A_force_full_modeset_whenever_DSC_is_enabled_at_prob?=
 =?utf-8?q?e?=
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

Series: drm/i915/dsc: force full modeset whenever DSC is enabled at probe
URL   : https://patchwork.freedesktop.org/series/73410/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7932 -> Patchwork_16556
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/index.html

Known issues
------------

  Here are the changes found in Patchwork_16556 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45


Participating hosts (44 -> 46)
------------------------------

  Additional (9): fi-hsw-peppy fi-skl-6770hq fi-bwr-2160 fi-kbl-r fi-gdg-551 fi-skl-lmem fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7932 -> Patchwork_16556

  CI-20190529: 20190529
  CI_DRM_7932: da6301c2a1bda78897e67fb22e011c1574b7c6a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5439: ed1f7d96d4d5d4565bcd3adb3a23b2002a25419e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16556: 042be97b434710f869f7a59990ee249fd899a810 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

042be97b4347 drm/i915/dsc: force full modeset whenever DSC is enabled at probe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
