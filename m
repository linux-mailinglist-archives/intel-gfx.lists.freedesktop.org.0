Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F60018D535
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 18:02:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE956E1A3;
	Fri, 20 Mar 2020 17:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1F886E198;
 Fri, 20 Mar 2020 17:02:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAC6AA432F;
 Fri, 20 Mar 2020 17:02:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 20 Mar 2020 17:02:49 -0000
Message-ID: <158472376973.11039.2387129953423769202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200320103400.8754-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200320103400.8754-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Pull_tasklet_interrupt-bh_local_to_direct_su?=
 =?utf-8?q?bmission_=28rev2=29?=
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

Series: drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission (rev2)
URL   : https://patchwork.freedesktop.org/series/74914/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8167 -> Patchwork_17035
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17035 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17035, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17035:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-bsw-kefka/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-skl-lmem:        [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-bdw-5557u:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
    - fi-skl-6770hq:      NOTRUN -> [DMESG-FAIL][29]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-skl-6770hq/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [PASS][30] -> [DMESG-FAIL][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-ehl-1/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17035 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-icl-y:           [PASS][32] -> [DMESG-FAIL][33] ([i915#765])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-icl-y/igt@i915_selftest@live@active.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-icl-y/igt@i915_selftest@live@active.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][34] ([CI#94]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][36] ([fdo#109635] / [i915#217]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][38] ([fdo#111407]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (49 -> 42)
------------------------------

  Additional (1): fi-skl-6770hq 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8167 -> Patchwork_17035

  CI-20190529: 20190529
  CI_DRM_8167: b51a7e7f4f72cf780661a1e4b479e2b27ddbafc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17035: 3086ce6dc34b20f51503cff79daeb9e3a369f20a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3086ce6dc34b drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17035/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
