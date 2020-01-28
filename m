Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DBC14C131
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 20:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB28F6F3B5;
	Tue, 28 Jan 2020 19:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 191726F3B5;
 Tue, 28 Jan 2020 19:44:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10928A0134;
 Tue, 28 Jan 2020 19:44:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 28 Jan 2020 19:44:00 -0000
Message-ID: <158024064003.20535.6792906101773835177@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128104602.1459802-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200128104602.1459802-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm=3A_Complain_if_drivers_still_us?=
 =?utf-8?q?e_the_-=3Eload_callback?=
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

Series: series starting with [1/4] drm: Complain if drivers still use the ->load callback
URL   : https://patchwork.freedesktop.org/series/72652/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7833 -> Patchwork_16292
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16292 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16292, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16292:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-bwr-2160/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-bwr-2160/igt@core_auth@basic-auth.html
    - fi-kbl-guc:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-kbl-guc/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-kbl-guc/igt@core_auth@basic-auth.html
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-cfl-8700k/igt@core_auth@basic-auth.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-cfl-8700k/igt@core_auth@basic-auth.html
    - fi-blb-e6850:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-blb-e6850/igt@core_auth@basic-auth.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-blb-e6850/igt@core_auth@basic-auth.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16292 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - fi-icl-u2:          [PASS][10] -> [INCOMPLETE][11] ([i915#140])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-u2/igt@core_auth@basic-auth.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-icl-u2/igt@core_auth@basic-auth.html
    - fi-icl-guc:         [PASS][12] -> [INCOMPLETE][13] ([i915#140])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-guc/igt@core_auth@basic-auth.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-icl-guc/igt@core_auth@basic-auth.html
    - fi-elk-e7500:       [PASS][14] -> [INCOMPLETE][15] ([i915#66])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-elk-e7500/igt@core_auth@basic-auth.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-elk-e7500/igt@core_auth@basic-auth.html
    - fi-cml-s:           [PASS][16] -> [INCOMPLETE][17] ([i915#283])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-cml-s/igt@core_auth@basic-auth.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-cml-s/igt@core_auth@basic-auth.html
    - fi-icl-u3:          [PASS][18] -> [INCOMPLETE][19] ([i915#140])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-icl-u3/igt@core_auth@basic-auth.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-icl-u3/igt@core_auth@basic-auth.html
    - fi-gdg-551:         [PASS][20] -> [INCOMPLETE][21] ([i915#172])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/fi-gdg-551/igt@core_auth@basic-auth.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/fi-gdg-551/igt@core_auth@basic-auth.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66


Participating hosts (50 -> 13)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_16292 prevented too many machines from booting.

  Missing    (37): fi-apl-guc fi-pnv-d510 fi-icl-y fi-skl-lmem fi-byt-n2820 fi-icl-dsi fi-skl-6600u fi-snb-2600 fi-hsw-4770r fi-cml-u2 fi-bxt-dsi fi-bdw-5557u fi-tgl-u fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-hsw-4770 fi-ivb-3770 fi-kbl-7560u fi-skl-6700k2 fi-kbl-r fi-ilk-m540 fi-skl-guc fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-whl-u fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7833 -> Patchwork_16292

  CI-20190529: 20190529
  CI_DRM_7833: 8210f0f999e2d396a8611e0cabc2f6c6a52468de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5394: 991fd07bcd7add7a5beca2c95b72a994e62fbb75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16292: d229dd0db3a6f3d8c60fed5860754ef1dd765ebb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d229dd0db3a6 drm: Nerv drm_global_mutex BKL for good drivers
b3d3b03017d2 drm: Push drm_global_mutex locking in drm_open
51b7fc1c6674 drm/fbdev-helper: don't force restores
4b3af837d222 drm: Complain if drivers still use the ->load callback

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16292/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
