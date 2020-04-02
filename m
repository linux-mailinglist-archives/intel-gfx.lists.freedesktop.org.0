Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528DA19BC21
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 09:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CB6D89DEC;
	Thu,  2 Apr 2020 07:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D03989DEC;
 Thu,  2 Apr 2020 07:01:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86792A41FB;
 Thu,  2 Apr 2020 07:01:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 02 Apr 2020 07:01:39 -0000
Message-ID: <158581089952.24295.11905365527003746111@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402055241.24789-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200402055241.24789-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_WARN=5FON_and_WARN=5FON=5FONCE_overrides=2E?=
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

Series: drm/i915: Remove WARN_ON and WARN_ON_ONCE overrides.
URL   : https://patchwork.freedesktop.org/series/75390/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8236 -> Patchwork_17174
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/index.html

Known issues
------------

  Here are the changes found in Patchwork_17174 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][1] -> [FAIL][2] ([i915#262])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][3] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][4] ([i915#62] / [i915#92]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][5] ([i915#62] / [i915#92]) -> [DMESG-WARN][6] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8236/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 38)
------------------------------

  Additional (2): fi-hsw-peppy fi-elk-e7500 
  Missing    (11): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-glk-dsi fi-bsw-cyan fi-snb-2520m fi-kbl-7500u fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8236 -> Patchwork_17174

  CI-20190529: 20190529
  CI_DRM_8236: 698ce59acca37b93bfcdee6899504be3eb113097 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5556: 311cb1b360b7ae00fab80b822cd34fd512f08ce9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17174: 2328c1f4d826c1ee018403f89587d61bbad177e3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2328c1f4d826 drm/i915: Remove WARN_ON and WARN_ON_ONCE overrides.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17174/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
