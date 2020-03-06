Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F1717B518
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 04:48:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829676EC58;
	Fri,  6 Mar 2020 03:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 505F26EC58;
 Fri,  6 Mar 2020 03:48:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4CD9DA3ECB;
 Fri,  6 Mar 2020 03:48:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Fri, 06 Mar 2020 03:48:08 -0000
Message-ID: <158346648831.3080.12937165955637219132@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305201236.152307-1-sean@poorly.run>
In-Reply-To: <20200305201236.152307-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_=28rev5?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev5)
URL   : https://patchwork.freedesktop.org/series/70393/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8073 -> Patchwork_16845
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/index.html

Known issues
------------

  Here are the changes found in Patchwork_16845 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2] ([i915#877])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#943])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([i915#217])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@prime_vgem@basic-gtt:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([CI#94] / [i915#402])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-tgl-y/igt@prime_vgem@basic-gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/fi-tgl-y/igt@prime_vgem@basic-gtt.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][9] ([i915#44]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8073/fi-tgl-y/igt@vgem_basic@create.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/fi-tgl-y/igt@vgem_basic@create.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943


Participating hosts (47 -> 38)
------------------------------

  Additional (2): fi-kbl-soraka fi-elk-e7500 
  Missing    (11): fi-bdw-5557u fi-hsw-4200u fi-skl-6770hq fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-cfl-8109u fi-blb-e6850 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8073 -> Patchwork_16845

  CI-20190529: 20190529
  CI_DRM_8073: 04042aee59126471bb37cec526ccaf44b4e8d506 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16845: 910e44eeaee67752558b7a4f86d81989a8602dd4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

910e44eeaee6 drm/i915: Add HDCP 1.4 support for MST connectors
ed43091c9480 drm/i915: Print HDCP version info for all connectors
bbf7c097884e drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
76ae56e95efc drm/i915: Add connector to hdcp_shim->check_link()
c10d2e023dd1 drm/i915: Plumb port through hdcp init
e63dce8c2a3f drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
7ea37f514e7b drm/i915: Use ddi_update_pipe in intel_dp_mst
c9622c22eb06 drm/i915: Support DP MST in enc_to_dig_port() function
7d468b95ce7a drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
a53b07c7917d drm/i915: Protect workers against disappearing connectors
ef2cfbb9e130 drm/i915: Factor out hdcp->value assignments
5bdc5dc77094 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
16e8d618fa38 drm/i915: Intercept Aksv writes in the aux hooks
729375a1130b drm/i915: WARN if HDCP signalling is enabled upon disable
c8f617e7591f drm/i915: Clear the repeater bit on HDCP disable
f3d9bb7dc10f drm/i915: Fix sha_text population code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16845/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
