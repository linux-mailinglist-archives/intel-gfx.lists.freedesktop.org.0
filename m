Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D4D1EDA51
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 03:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F0E89D9A;
	Thu,  4 Jun 2020 01:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A99F89D9A;
 Thu,  4 Jun 2020 01:19:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 938FAA47EA;
 Thu,  4 Jun 2020 01:19:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 04 Jun 2020 01:19:13 -0000
Message-ID: <159123355360.14552.15835652768974221537@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200604002359.17128-1-manasi.d.navare@intel.com>
In-Reply-To: <20200604002359.17128-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Reset_link_params_on_connector_disconnect?=
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

Series: drm/i915/dp: Reset link params on connector disconnect
URL   : https://patchwork.freedesktop.org/series/77974/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8579 -> Patchwork_17862
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17862 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17862, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17862/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17862:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17862/fi-cml-u2/igt@kms_chamelium@dp-hpd-fast.html
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-kbl-7500u/igt@kms_chamelium@dp-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17862/fi-kbl-7500u/igt@kms_chamelium@dp-hpd-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_17862 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * {igt@kms_flip@basic-flip-vs-wf_vblank@b-dvi-d1}:
    - fi-bwr-2160:        [FAIL][5] ([i915#1928]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@b-dvi-d1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17862/fi-bwr-2160/igt@kms_flip@basic-flip-vs-wf_vblank@b-dvi-d1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928


Participating hosts (51 -> 9)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17862 prevented too many machines from booting.

  Missing    (42): fi-kbl-soraka fi-bdw-gvtdvm fi-icl-u2 fi-apl-guc fi-snb-2520m fi-icl-y fi-skl-lmem fi-byt-n2820 fi-icl-guc fi-icl-dsi fi-skl-6600u fi-snb-2600 fi-bxt-dsi fi-bdw-5557u fi-cml-s fi-tgl-u fi-bsw-n3050 fi-byt-j1900 fi-glk-dsi fi-hsw-4770 fi-ivb-3770 fi-elk-e7500 fi-kbl-7560u fi-tgl-y fi-bsw-nick fi-skl-6700k2 fi-kbl-r fi-ilk-m540 fi-ehl-1 fi-tgl-dsi fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-guc fi-kbl-guc fi-whl-u fi-kbl-x1275 fi-bsw-kefka fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8579 -> Patchwork_17862

  CI-20190529: 20190529
  CI_DRM_8579: 289eb12c88c49a4ac8d325dc457d8878c7f5bdc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5694: a9b6c4c74bfddf7d3d2da3be08804fe315945cea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17862: 01ef52e818506813a16584526c1365017ca7aefa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

01ef52e81850 drm/i915/dp: Reset link params on connector disconnect

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17862/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
