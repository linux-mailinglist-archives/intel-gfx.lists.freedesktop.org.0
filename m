Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5A915B948
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 07:06:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354B16F550;
	Thu, 13 Feb 2020 06:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B9736EB32;
 Thu, 13 Feb 2020 06:06:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 035A9A0003;
 Thu, 13 Feb 2020 06:06:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2020 06:06:01 -0000
Message-ID: <158157396198.17961.6130232029789281383@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_pfit/scaler_rework_prep_stuff_=28rev2=29?=
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

Series: drm/i915: pfit/scaler rework prep stuff (rev2)
URL   : https://patchwork.freedesktop.org/series/68409/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926 -> Patchwork_16547
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16547/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16547:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-ehl-1}:         NOTRUN -> [WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16547/fi-ehl-1/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_16547 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][2] -> [INCOMPLETE][3] ([i915#45])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16547/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([fdo#111407])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16547/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - {fi-ehl-1}:         [INCOMPLETE][6] ([i915#937]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16547/fi-ehl-1/igt@gem_exec_suspend@basic-s0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (45 -> 38)
------------------------------

  Additional (6): fi-skl-6770hq fi-bdw-gvtdvm fi-glk-dsi fi-gdg-551 fi-bsw-kefka fi-kbl-r 
  Missing    (13): fi-ilk-m540 fi-bdw-samus fi-bdw-5557u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-cfl-8109u fi-skl-6700k2 fi-blb-e6850 fi-byt-clapper fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16547

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16547: 833bab58ec2fa453deb38303f5534118c328c5a5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

833bab58ec2f drm/i915: Have pfit calculations return an error code
6ea293f66e4d drm/i915: Pass connector state to pfit calculations
489d614c2d81 drm/i915: s/pipe_config/crtc_state/ in pfit functions
31b06d809c65 drm/i915: Use drm_rect to store the pfit window pos/size
29d781ef706b drm/i915: Flatten a bunch of the pfit functions
e78250ae53d0 drm/i915: Fix skl+ non-scaled pfit modes
0c04ecca2fc1 drm/i915: Use intel_de_write_fw() for skl+ scaler registers
0027eb6cbbdb drm/i915: Parametrize PFIT_PIPE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16547/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
