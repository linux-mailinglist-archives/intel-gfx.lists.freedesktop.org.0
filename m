Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6679E14F80B
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 15:26:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74476E50E;
	Sat,  1 Feb 2020 14:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 127016E50E;
 Sat,  1 Feb 2020 14:25:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0AADEA011C;
 Sat,  1 Feb 2020 14:25:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Sat, 01 Feb 2020 14:25:58 -0000
Message-ID: <158056715801.32694.11216361200109367048@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200201135231.104080-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200201135231.104080-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Stop_using_mutex_while_sending_CTB_messages_=28rev?=
 =?utf-8?q?2=29?=
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

Series: drm/i915/guc: Stop using mutex while sending CTB messages (rev2)
URL   : https://patchwork.freedesktop.org/series/72827/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7854 -> Patchwork_16376
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16376 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16376, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16376:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-cfl-guc:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/fi-cfl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16376 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [PASS][2] -> [DMESG-WARN][3] ([i915#289])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7854/fi-icl-u2/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([fdo#111096] / [i915#323])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7854/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-icl-dsi:         [PASS][6] -> [DMESG-WARN][7] ([i915#109])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7854/fi-icl-dsi/igt@vgem_basic@dmabuf-fence.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/fi-icl-dsi/igt@vgem_basic@dmabuf-fence.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][8] ([i915#263]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7854/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Warnings ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [FAIL][10] ([i915#323]) -> [DMESG-WARN][11] ([IGT#4] / [i915#263])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7854/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-glk-dsi:         [FAIL][12] ([k.org#202321]) -> [FAIL][13] ([k.org#202321] / [k.org#204565])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7854/fi-glk-dsi/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/fi-glk-dsi/igt@runner@aborted.html

  
  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (48 -> 46)
------------------------------

  Additional (5): fi-hsw-peppy fi-gdg-551 fi-ivb-3770 fi-skl-lmem fi-kbl-7560u 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7854 -> Patchwork_16376

  CI-20190529: 20190529
  CI_DRM_7854: 727605cdef77d1e7eafb7e4c05b0ee74132a0930 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5410: 9d3872ede14307ef4adb0866f8474f5c41e6b1c1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16376: b716634512706ee0f820df7c55f6b36404428cbe @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b71663451270 drm/i915/guc: Stop using mutex while sending CTB messages

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16376/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
