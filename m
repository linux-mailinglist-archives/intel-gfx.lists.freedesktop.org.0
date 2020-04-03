Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1429219E135
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 00:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FC36E9B7;
	Fri,  3 Apr 2020 22:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B1C9589E05;
 Fri,  3 Apr 2020 22:57:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA750A00C7;
 Fri,  3 Apr 2020 22:57:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 03 Apr 2020 22:57:13 -0000
Message-ID: <158595463366.13349.8328829028785496123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403222251.937740-1-lyude@redhat.com>
In-Reply-To: <20200403222251.937740-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?b?L2RwX21zdDogUmVtb3ZlIGRybV9kcF9tc3RfaGFzX2F1ZGlvKCk=?=
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

Series: drm/dp_mst: Remove drm_dp_mst_has_audio()
URL   : https://patchwork.freedesktop.org/series/75488/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8252 -> Patchwork_17209
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17209/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17209:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@busy@all}:
    - fi-bwr-2160:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8252/fi-bwr-2160/igt@gem_wait@busy@all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17209/fi-bwr-2160/igt@gem_wait@busy@all.html

  
Known issues
------------

  Here are the changes found in Patchwork_17209 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#189])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8252/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17209/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189


Participating hosts (51 -> 39)
------------------------------

  Missing    (12): fi-ilk-m540 fi-bdw-5557u fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bsw-kefka fi-skl-lmem fi-kbl-7560u fi-byt-n2820 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8252 -> Patchwork_17209

  CI-20190529: 20190529
  CI_DRM_8252: 3690abb8ed49d9a066f80de39e4e75792c86ac76 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5563: 7ab7807727262b7ed7e12197b78e867287a17ef6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17209: 021adaffa4ba4407444a9fec8a29e2c5cba3f755 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

021adaffa4ba drm/dp_mst: Remove drm_dp_mst_has_audio()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17209/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
