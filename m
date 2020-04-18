Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E6A1AE922
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2020 03:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D1F6EC5B;
	Sat, 18 Apr 2020 01:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 654086EC59;
 Sat, 18 Apr 2020 01:21:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F119A363B;
 Sat, 18 Apr 2020 01:21:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Sat, 18 Apr 2020 01:21:38 -0000
Message-ID: <158717289835.422.17542521131259787952@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417172835.15461-1-anshuman.gupta@intel.com>
In-Reply-To: <20200417172835.15461-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_ICL_PG3_PW_ID_for_EHL?=
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

Series: drm/i915: Add ICL PG3 PW ID for EHL
URL   : https://patchwork.freedesktop.org/series/76109/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8322 -> Patchwork_17358
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17358/index.html

Known issues
------------

  Here are the changes found in Patchwork_17358 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@uncore:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/fi-bwr-2160/igt@i915_selftest@live@uncore.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17358/fi-bwr-2160/igt@i915_selftest@live@uncore.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-ehl-1}:         [INCOMPLETE][3] ([i915#1737]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/fi-ehl-1/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17358/fi-ehl-1/igt@debugfs_test@read_all_entries.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][5] ([fdo#109271]) -> [FAIL][6] ([i915#62])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17358/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1737]: https://gitlab.freedesktop.org/drm/intel/issues/1737
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (51 -> 46)
------------------------------

  Additional (1): fi-cml-u2 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8322 -> Patchwork_17358

  CI-20190529: 20190529
  CI_DRM_8322: fd447e6b1ee13e6a9731bddc7694552640e8a01e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17358: b4f36b891d31d10dd034d873de2df0880fceca2b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b4f36b891d31 drm/i915: Add ICL PG3 PW ID for EHL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17358/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
