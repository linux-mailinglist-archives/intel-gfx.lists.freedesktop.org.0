Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85593181528
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 10:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDCAF6E961;
	Wed, 11 Mar 2020 09:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 195046E95B;
 Wed, 11 Mar 2020 09:40:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06FABA47E6;
 Wed, 11 Mar 2020 09:40:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Wed, 11 Mar 2020 09:40:30 -0000
Message-ID: <158391963002.13953.14750391492414807733@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311073256.6535-1-tiwai@suse.de>
In-Reply-To: <20200311073256.6535-1-tiwai@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Use_scnprintf=28=29_for_avoiding_potential_buffer_o?=
 =?utf-8?q?verflow?=
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

Series: drm/i915/gt: Use scnprintf() for avoiding potential buffer overflow
URL   : https://patchwork.freedesktop.org/series/74562/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8112 -> Patchwork_16919
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16919/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16919:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16919/fi-ehl-1/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16919/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16919 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][4] -> [DMESG-FAIL][5] ([fdo#108569])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-icl-y/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16919/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([CI#94] / [i915#402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16919/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch.html

  
#### Possible fixes ####

  * igt@kms_addfb_basic@unused-modifier:
    - fi-tgl-y:           [DMESG-WARN][8] ([CI#94] / [i915#402]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8112/fi-tgl-y/igt@kms_addfb_basic@unused-modifier.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16919/fi-tgl-y/igt@kms_addfb_basic@unused-modifier.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 33)
------------------------------

  Additional (4): fi-skl-6770hq fi-bsw-nick fi-skl-6600u fi-bsw-n3050 
  Missing    (15): fi-bdw-samus fi-kbl-7560u fi-tgl-dsi fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-kbl-7500u fi-gdg-551 fi-cfl-8109u fi-bsw-kefka fi-skl-lmem fi-blb-e6850 fi-byt-clapper fi-skl-6700k2 fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8112 -> Patchwork_16919

  CI-20190529: 20190529
  CI_DRM_8112: 032f2fe5c92eb1db6d417738431153c001a41bcc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16919: 00261fad413afe4c6529c8711b9eb8229811d917 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

00261fad413a drm/i915/gt: Use scnprintf() for avoiding potential buffer overflow

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16919/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
