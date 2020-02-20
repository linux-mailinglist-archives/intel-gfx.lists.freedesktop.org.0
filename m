Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0630B165820
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 08:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F303989217;
	Thu, 20 Feb 2020 07:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42A0C89217;
 Thu, 20 Feb 2020 07:02:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B680A47E4;
 Thu, 20 Feb 2020 07:02:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kees Cook" <keescook@chromium.org>
Date: Thu, 20 Feb 2020 07:02:45 -0000
Message-ID: <158218216521.17407.9136042757973379744@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220062258.68854-1-keescook@chromium.org>
In-Reply-To: <20200220062258.68854-1-keescook@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Distribute_switch_variables_for_initialization?=
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

Series: drm/i915: Distribute switch variables for initialization
URL   : https://patchwork.freedesktop.org/series/73690/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7970 -> Patchwork_16641
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/index.html

Known issues
------------

  Here are the changes found in Patchwork_16641 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [PASS][3] -> [INCOMPLETE][4] ([i915#45])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_hangcheck:
    - fi-skl-guc:         [PASS][5] -> [INCOMPLETE][6] ([fdo#108744])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-skl-guc/igt@i915_selftest@live_hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-skl-guc/igt@i915_selftest@live_hangcheck.html

  * igt@i915_selftest@live_sanitycheck:
    - fi-icl-u3:          [PASS][7] -> [DMESG-WARN][8] ([i915#585])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-icl-u3/igt@i915_selftest@live_sanitycheck.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][9] -> [FAIL][10] ([i915#217] / [i915#976])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [TIMEOUT][11] ([fdo#112271] / [i915#1084]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_execlists:
    - {fi-tgl-dsi}:       [INCOMPLETE][13] ([i915#529] / [i915#647]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-tgl-dsi/igt@i915_selftest@live_execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-tgl-dsi/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [TIMEOUT][15] ([fdo#112271]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-kbl-7500u/igt@i915_selftest@live_gtt.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-byt-n2820:       [FAIL][17] ([i915#999]) -> [FAIL][18] ([i915#816])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7970/fi-byt-n2820/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/fi-byt-n2820/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108744]: https://bugs.freedesktop.org/show_bug.cgi?id=108744
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (48 -> 45)
------------------------------

  Additional (4): fi-gdg-551 fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7970 -> Patchwork_16641

  CI-20190529: 20190529
  CI_DRM_7970: 6b8b833350142345f4b1a6af9486db7d316a7ff1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5452: c05dc6cd816feb1cc518ce777ab3fd6c81893113 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16641: a76a3fd3503c76419c76ac7df15e92298051e1bf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a76a3fd3503c drm/i915: Distribute switch variables for initialization

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16641/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
