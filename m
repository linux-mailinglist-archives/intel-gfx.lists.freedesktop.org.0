Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C75B18772A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 01:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16276E570;
	Tue, 17 Mar 2020 00:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2B4F6E52A;
 Tue, 17 Mar 2020 00:56:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9AB24A00C7;
 Tue, 17 Mar 2020 00:56:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 17 Mar 2020 00:56:39 -0000
Message-ID: <158440659960.5180.11521045712322224204@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev2=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev2)
URL   : https://patchwork.freedesktop.org/series/74739/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8138 -> Patchwork_16987
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/index.html

Known issues
------------

  Here are the changes found in Patchwork_16987 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/fi-cfl-guc/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - fi-bwr-2160:        [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-bwr-2160/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/fi-bwr-2160/igt@i915_selftest@live@perf.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-cml-u2:          [FAIL][5] ([i915#217]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8138/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/fi-cml-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (40 -> 36)
------------------------------

  Additional (5): fi-bdw-5557u fi-hsw-peppy fi-gdg-551 fi-cfl-8109u fi-snb-2600 
  Missing    (9): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-elk-e7500 fi-skl-lmem fi-bdw-samus fi-tgl-y fi-skl-6600u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8138 -> Patchwork_16987

  CI-20190529: 20190529
  CI_DRM_8138: 652084cff0971058d1acb1746001f89ef8ea7321 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5512: f6fef7eff6f121e5e89afd7e70116f471ccd5b8b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16987: 49c577d1644782a7a8e1dfdf41c57436c825880a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

49c577d16447 drm/i915: Remove unneeded hack now for CDCLK
bc0c89d0cbd8 drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
7c4650598e71 drm/i915: Decouple cdclk calculation from modeset checks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16987/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
