Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D971C195382
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 10:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 701C36E9D9;
	Fri, 27 Mar 2020 09:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 888696E9D9;
 Fri, 27 Mar 2020 09:04:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8153FA00E6;
 Fri, 27 Mar 2020 09:04:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Fri, 27 Mar 2020 09:04:14 -0000
Message-ID: <158529985450.17236.15520039882412629721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327072917.3676391-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200327072917.3676391-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?b?KHJldjgp?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev8)
URL   : https://patchwork.freedesktop.org/series/72853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8199 -> Patchwork_17110
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17110/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17110:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-u}:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17110/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17110 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [INCOMPLETE][2] ([i915#656]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8199/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17110/fi-ehl-1/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (47 -> 40)
------------------------------

  Missing    (7): fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-hsw-4770 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8199 -> Patchwork_17110

  CI-20190529: 20190529
  CI_DRM_8199: f2777988684dad7195833a8fd3af6d0c80506a38 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17110: e13352f5f6f9293034527947225263c7b41c4cc5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e13352f5f6f9 drm/i915/psr: Use new DP VSC SDP compute routine on PSR
fed461aaf55d drm/i915/dp: Add compute routine for DP PSR VSC SDP
804a029097a6 drm/i915: Stop sending DP SDPs on ddi disable
5c85efd1a87d drm/i915: Program DP SDPs on pipe updates
ba26e67883ab drm/i915: Fix enabled infoframe states of lspcon
981b5f349136 drm/i915: Add state readout for DP VSC SDP
87a34574b13b drm/i915: Add state readout for DP HDR Metadata Infoframe SDP
fefbe7eb3658 drm/i915: Program DP SDPs with computed configs
06523ebbf9d1 drm/i915: Include DP VSC SDP in the crtc state dump
d75c2cb52dad drm/i915: Include DP HDR Metadata Infoframe SDP in the crtc state dump
3fbfd7d45523 drm/i915: Include HDMI DRM infoframe in the crtc state dump
d4ac724cdbd3 drm: Add logging function for DP VSC SDP
26dab27abdb1 drm/i915/dp: Read out DP SDPs
63f769f40f4e video/hdmi: Add Unpack function for CTA-861-G DRM infoframe DataBytes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17110/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
