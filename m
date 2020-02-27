Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7349171632
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 12:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D0E6E855;
	Thu, 27 Feb 2020 11:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E3E56E84F;
 Thu, 27 Feb 2020 11:43:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 271E7A3ECB;
 Thu, 27 Feb 2020 11:43:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 27 Feb 2020 11:43:42 -0000
Message-ID: <158280382212.29657.1149100996970072387@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226163054.9509-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200226163054.9509-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Set_up_PIPE=5FMISC_truncate_bit_on_tgl+?=
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

Series: drm/i915: Set up PIPE_MISC truncate bit on tgl+
URL   : https://patchwork.freedesktop.org/series/73960/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8010 -> Patchwork_16719
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16719/index.html

Known issues
------------

  Here are the changes found in Patchwork_16719 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#261])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-icl-dsi/igt@kms_flip@basic-flip-vs-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16719/fi-icl-dsi/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_active:
    - {fi-ehl-1}:         [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/fi-ehl-1/igt@i915_selftest@live_active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16719/fi-ehl-1/igt@i915_selftest@live_active.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#261]: https://gitlab.freedesktop.org/drm/intel/issues/261


Participating hosts (51 -> 42)
------------------------------

  Missing    (9): fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-tgl-y fi-bsw-cyan fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8010 -> Patchwork_16719

  CI-20190529: 20190529
  CI_DRM_8010: 97bbec4d80df1c6573fc7063ad830e8beefe07c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16719: c992e861fa194162dd6ed4add0b11e5eab3b47e5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c992e861fa19 drm/i915: Set up PIPE_MISC truncate bit on tgl+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16719/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
