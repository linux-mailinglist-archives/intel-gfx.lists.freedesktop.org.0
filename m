Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B7719861D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 23:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B08089A4B;
	Mon, 30 Mar 2020 21:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB95689A4B;
 Mon, 30 Mar 2020 21:11:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3EFDA00E7;
 Mon, 30 Mar 2020 21:11:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Mon, 30 Mar 2020 21:11:22 -0000
Message-ID: <158560268291.13826.6825280533151306362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330144421.11632-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20200330144421.11632-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_do_AUD=5FFREQ=5FCNTRL_state_save_on_all_gen9+_platform?=
 =?utf-8?q?s_=28rev2=29?=
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

Series: drm/i915: do AUD_FREQ_CNTRL state save on all gen9+ platforms (rev2)
URL   : https://patchwork.freedesktop.org/series/74664/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8218 -> Patchwork_17136
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17136/index.html

Known issues
------------

  Here are the changes found in Patchwork_17136 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#1505])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8218/fi-icl-u2/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17136/fi-icl-u2/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-icl-dsi:         [INCOMPLETE][3] ([i915#189]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8218/fi-icl-dsi/igt@i915_pm_rpm@basic-rte.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17136/fi-icl-dsi/igt@i915_pm_rpm@basic-rte.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][5] ([i915#579]) -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8218/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17136/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (46 -> 38)
------------------------------

  Additional (6): fi-bdw-5557u fi-bsw-n3050 fi-gdg-551 fi-ivb-3770 fi-bsw-kefka fi-bsw-nick 
  Missing    (14): fi-hsw-4770r fi-ilk-m540 fi-bdw-samus fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-cfl-8109u fi-skl-lmem fi-kbl-7560u fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8218 -> Patchwork_17136

  CI-20190529: 20190529
  CI_DRM_8218: 34c4b933b4daa72079af3d5506113695a6ea10ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17136: bf7760c4d68f32856c655df7de7c868cbfd9bd4a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bf7760c4d68f drm/i915: do AUD_FREQ_CNTRL state save on all gen9+ platforms

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17136/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
