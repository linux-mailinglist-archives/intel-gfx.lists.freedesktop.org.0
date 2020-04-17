Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 580181ADCCE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 14:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF676EBC6;
	Fri, 17 Apr 2020 12:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96FD06EBC6;
 Fri, 17 Apr 2020 12:01:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90B0EA47EA;
 Fri, 17 Apr 2020 12:01:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 17 Apr 2020 12:01:00 -0000
Message-ID: <158712486058.10465.5059997146624893884@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417065132.23048-1-jani.nikula@intel.com>
In-Reply-To: <20200417065132.23048-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/audio=3A_error_log_non-zero_audio_power_refcount_after_un?=
 =?utf-8?q?bind?=
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

Series: drm/i915/audio: error log non-zero audio power refcount after unbind
URL   : https://patchwork.freedesktop.org/series/76061/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8314 -> Patchwork_17339
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17339/index.html

Known issues
------------

  Here are the changes found in Patchwork_17339 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#1713])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8314/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17339/fi-icl-dsi/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1713]: https://gitlab.freedesktop.org/drm/intel/issues/1713
  [i915#1725]: https://gitlab.freedesktop.org/drm/intel/issues/1725


Participating hosts (51 -> 46)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8314 -> Patchwork_17339

  CI-20190529: 20190529
  CI_DRM_8314: e8a432aa7e81e2bf5b6d4b23e3598f9fea947b83 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5598: 276b8a3f24837e009ff38512f7eeb07029e52616 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17339: 32f920f53cb511940869075a600fd2de3d4b0a73 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

32f920f53cb5 drm/i915/audio: error log non-zero audio power refcount after unbind

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17339/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
