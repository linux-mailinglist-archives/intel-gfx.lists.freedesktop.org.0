Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B647158B3D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 09:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7618C6EDE3;
	Tue, 11 Feb 2020 08:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BCFE6E47E;
 Tue, 11 Feb 2020 08:28:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24403A0099;
 Tue, 11 Feb 2020 08:28:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 11 Feb 2020 08:28:19 -0000
Message-ID: <158140969914.23971.5254020324434101957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211074657.231405-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200211074657.231405-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?b?KHJldjcp?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev7)
URL   : https://patchwork.freedesktop.org/series/72853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7905 -> Patchwork_16516
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/index.html

Known issues
------------

  Here are the changes found in Patchwork_16516 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/fi-byt-j1900/igt@gem_exec_parallel@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/fi-byt-j1900/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][3] -> [DMESG-FAIL][4] ([i915#722])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][5] ([fdo#112271] / [i915#1084] / [i915#816]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][7] ([i915#424]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-soraka:      [FAIL][9] ([fdo#109383] / [fdo#111012]) -> [FAIL][10] ([i915#192] / [i915#193] / [i915#194])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7905/fi-kbl-soraka/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/fi-kbl-soraka/igt@runner@aborted.html

  
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (46 -> 36)
------------------------------

  Additional (3): fi-glk-dsi fi-snb-2520m fi-kbl-r 
  Missing    (13): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-hsw-4770 fi-gdg-551 fi-ivb-3770 fi-blb-e6850 fi-byt-clapper fi-bsw-nick fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7905 -> Patchwork_16516

  CI-20190529: 20190529
  CI_DRM_7905: db98da3dd757a19dbaaeaef8640276fe7be2fc4e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5433: 6a96c17f3a1b4e1f90b1a0b0ce42a7219875d1a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16516: 290fe3c7dbc4fabe23502e3eb9a1b286a993da4e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

290fe3c7dbc4 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
f6ab721ac385 drm/i915/dp: Add compute routine for DP PSR VSC SDP
6413aa289f40 drm/i915: Stop sending DP SDPs on ddi disable
ccc1b44c6c82 drm/i915: Program DP SDPs on pipe updates
5607ed3e0895 drm/i915: Fix enabled infoframe states of lspcon
200d6124205f drm/i915: Add state readout for DP VSC SDP
db92d92142fa drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
8b34cb1487f9 drm/i915: Program DP SDPs with computed configs
ff2f055f0051 drm/i915: Include DP VSC SDP in the crtc state dump
bb7d7c0a22b5 drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
b5e53b152b57 drm/i915: Include HDMI DRM infoframe in the crtc state dump
4984b40cd894 drm: Add logging function for DP VSC SDP
e8ae4c96f04b drm/i915/dp: Read out DP SDPs
31791cfcf1fd video/hdmi: Add Unpack only function for DRM infoframe
314cbcc618a4 drm/i915/dp: Add writing of DP SDPs
716fa531cfc4 drm/i915/dp: Add compute routine for DP HDR Metadata Infoframe SDP
af98f8569ec0 drm/i915/dp: Add compute routine for DP VSC SDP
1ec55bed0178 drm: Add DP1.4 VSC SDP Payload related Data Structures

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16516/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
