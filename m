Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA90E189DBB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:22:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEBFD6E907;
	Wed, 18 Mar 2020 14:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 035156E905;
 Wed, 18 Mar 2020 14:22:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EEB7EA0094;
 Wed, 18 Mar 2020 14:22:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Mar 2020 14:22:55 -0000
Message-ID: <158454137595.25099.13233909691788507418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318134344.11601-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200318134344.11601-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Prefer_=27=25ps=27_for_printing_function_symbol_names?=
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

Series: drm/i915: Prefer '%ps' for printing function symbol names
URL   : https://patchwork.freedesktop.org/series/74831/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8147 -> Patchwork_17007
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17007/index.html

Known issues
------------

  Here are the changes found in Patchwork_17007 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8147/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17007/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][3] ([i915#323]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8147/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17007/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323


Participating hosts (43 -> 42)
------------------------------

  Additional (4): fi-skl-lmem fi-cfl-8109u fi-bwr-2160 fi-snb-2600 
  Missing    (5): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8147 -> Patchwork_17007

  CI-20190529: 20190529
  CI_DRM_8147: cb6e45333c342a56b74e6b935ee47ee55a28d53e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5521: 9c74586ea8e051d074864bce72baf5a688a0a437 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17007: 2761ea5b840e6f033e9a36541b5b378f0c7e5099 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2761ea5b840e drm/i915: Prefer '%ps' for printing function symbol names

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17007/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
