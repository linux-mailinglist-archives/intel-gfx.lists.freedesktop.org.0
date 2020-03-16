Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB9E18741A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 21:34:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428C889F2E;
	Mon, 16 Mar 2020 20:34:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3D5589F53;
 Mon, 16 Mar 2020 20:34:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ABC49A41FB;
 Mon, 16 Mar 2020 20:34:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 16 Mar 2020 20:34:22 -0000
Message-ID: <158439086267.18994.3097949581215135928@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK?=
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

Series: Consider DBuf bandwidth when calculating CDCLK
URL   : https://patchwork.freedesktop.org/series/74739/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8137 -> Patchwork_16978
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16978 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16978, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16978:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-hsw-peppy:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-hsw-peppy/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-pnv-d510/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-hsw-peppy/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-snb-2520m/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-byt-j1900/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-elk-e7500/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16978 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bdw-5557u:       [PASS][9] -> [INCOMPLETE][10] ([i915#146])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-bdw-5557u/igt@gem_exec_suspend@basic-s0.html
    - fi-bsw-n3050:       [PASS][11] -> [INCOMPLETE][12] ([i915#392])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-j1900:       [PASS][13] -> [INCOMPLETE][14] ([i915#45])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][15] -> [INCOMPLETE][16] ([fdo#103927] / [i915#1430] / [i915#656])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-icl-dsi:         [PASS][17] -> [INCOMPLETE][18] ([i915#140])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-icl-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][19] ([CI#94]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [FAIL][21] ([i915#217]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8137/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (48 -> 36)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (13): fi-bdw-samus fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-ivb-3770 fi-cfl-8109u fi-bsw-kefka fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8137 -> Patchwork_16978

  CI-20190529: 20190529
  CI_DRM_8137: 5786b5e77cc17a1b494b9bdf3c3f29eedc2e2e7d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5510: e100092d50105463f58db531fa953c70cc58bb10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16978: a2e501b7cf7c01c4cf7e6fc7052a1fc875c9a08f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a2e501b7cf7c drm/i915: Remove unneeded hack now for CDCLK
01a1b24738fd drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
70a984e1e806 drm/i915: Decouple cdclk calculation from modeset checks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16978/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
