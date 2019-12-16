Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8A9121302
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 18:58:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B84106E856;
	Mon, 16 Dec 2019 17:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE54F6E855;
 Mon, 16 Dec 2019 17:58:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBCF2A0118;
 Mon, 16 Dec 2019 17:58:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 16 Dec 2019 17:58:12 -0000
Message-ID: <157651909287.5613.14957635525096739663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness?=
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

Series: Per client engine busyness
URL   : https://patchwork.freedesktop.org/series/70977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7574 -> Patchwork_15789
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15789 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15789, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15789:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-pnv-d510/igt@runner@aborted.html
    - fi-gdg-551:         NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-gdg-551/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-snb-2520m/igt@runner@aborted.html
    - fi-whl-u:           NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-whl-u/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-bxt-dsi/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-blb-e6850/igt@runner@aborted.html
    - fi-snb-2600:        NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-snb-2600/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-elk-e7500/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15789 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-guc:         [FAIL][10] ([fdo#110943] / [fdo#111093]) -> [FAIL][11] ([fdo#111093])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/fi-icl-guc/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-icl-guc/igt@runner@aborted.html
    - fi-byt-j1900:       [FAIL][12] ([i915#816]) -> [FAIL][13] ([i915#418])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/fi-byt-j1900/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-byt-j1900/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][14] ([fdo#111764] / [i915#577]) -> [FAIL][15] ([i915#577])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/fi-cml-s/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/fi-cml-s/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#110943]: https://bugs.freedesktop.org/show_bug.cgi?id=110943
  [fdo#111093]: https://bugs.freedesktop.org/show_bug.cgi?id=111093
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#418]: https://gitlab.freedesktop.org/drm/intel/issues/418
  [i915#577]: https://gitlab.freedesktop.org/drm/intel/issues/577
  [i915#584]: https://gitlab.freedesktop.org/drm/intel/issues/584
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (53 -> 46)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7574 -> Patchwork_15789

  CI-20190529: 20190529
  CI_DRM_7574: 950244ca586c6f0efe243bf8c505c01ea5e579fa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15789: 24ccc195eaa84e9dfc3a82a77e556a72129a503f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

24ccc195eaa8 drm/i915: Add sysfs toggle to enable per-client engine stats
db6e83f57574 drm/i915: Expose per-engine client busyness
3caa68403667 drm/i915: Update client name on context create
de4bbb7cc78d drm/i915: Expose list of clients in sysfs
03aa1c71a788 drm/i915: Track per-context engine busyness

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15789/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
