Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF711DA5E8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 01:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9446E486;
	Tue, 19 May 2020 23:59:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EADBB6E47A;
 Tue, 19 May 2020 23:59:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4A94A0091;
 Tue, 19 May 2020 23:59:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 19 May 2020 23:59:20 -0000
Message-ID: <158993276093.31238.16626778601427555656@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev15=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev15)
URL   : https://patchwork.freedesktop.org/series/74739/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8506 -> Patchwork_17718
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17718 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17718, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17718/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17718:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@client:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-bsw-kefka/igt@i915_selftest@live@client.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17718/fi-bsw-kefka/igt@i915_selftest@live@client.html

  
Known issues
------------

  Here are the changes found in Patchwork_17718 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [PASS][3] -> [TIMEOUT][4] ([i915#1288])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17718/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#1874])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17718/fi-kbl-guc/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][7] -> [FAIL][8] ([i915#227])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17718/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-8809g:       [INCOMPLETE][9] ([i915#1874]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17718/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  
  [i915#1288]: https://gitlab.freedesktop.org/drm/intel/issues/1288
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#227]: https://gitlab.freedesktop.org/drm/intel/issues/227


Participating hosts (49 -> 44)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8506 -> Patchwork_17718

  CI-20190529: 20190529
  CI_DRM_8506: d6a73e9084ff6adfabbad014bc294d254484f304 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5661: a772a7c7a761c6125bc0af5284ad603478107737 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17718: 2be3fecc6320f61ccbd0898132dcb7eedae7640b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2be3fecc6320 drm/i915: Remove unneeded hack now for CDCLK
b74b713c823f drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
2405cfa20a90 drm/i915: Introduce for_each_dbuf_slice_in_mask macro
4765b732c387 drm/i915: Plane configuration affects CDCLK in Gen11+
cc857a15d370 drm/i915: Check plane configuration properly
a2e2a5f43cd7 drm/i915: Extract cdclk requirements checking to separate function
42922a1cf4d9 drm/i915: Decouple cdclk calculation from modeset checks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17718/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
