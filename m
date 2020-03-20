Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D8518D707
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 19:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC6886EB5F;
	Fri, 20 Mar 2020 18:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA2A36EB63;
 Fri, 20 Mar 2020 18:28:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C47EDA432F;
 Fri, 20 Mar 2020 18:28:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 20 Mar 2020 18:28:02 -0000
Message-ID: <158472888280.11036.3078977024802537767@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Hotplug_cleanups_=28rev6=29?=
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

Series: drm/i915: Hotplug cleanups (rev6)
URL   : https://patchwork.freedesktop.org/series/72348/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8167 -> Patchwork_17038
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/index.html

Known issues
------------

  Here are the changes found in Patchwork_17038 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-glk-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#58] / [i915#656] / [k.org#198133])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/fi-glk-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [FAIL][3] ([fdo#109635] / [i915#217]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][5] ([fdo#111407]) -> [FAIL][6] ([i915#323])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][7] ([i915#1209]) -> [FAIL][8] ([i915#1485] / [i915#192] / [i915#193] / [i915#194])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/fi-kbl-8809g/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/fi-kbl-8809g/igt@runner@aborted.html

  
  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (49 -> 37)
------------------------------

  Additional (2): fi-skl-6770hq fi-kbl-7560u 
  Missing    (14): fi-cml-u2 fi-ilk-m540 fi-bdw-5557u fi-cml-s fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-cfl-8109u fi-bsw-kefka fi-blb-e6850 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8167 -> Patchwork_17038

  CI-20190529: 20190529
  CI_DRM_8167: b51a7e7f4f72cf780661a1e4b479e2b27ddbafc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17038: 5ea9c1e2721b47853a773f52d426920ac5c4c633 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5ea9c1e2721b drm/i915: Use stashed away hpd isr bits in intel_digital_port_connected()
9bdedc5134f0 drm/i915: Stash hpd status bits under dev_priv
7a2933ed6c37 drm/i915: Turn intel_digital_port_connected() in a vfunc

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
