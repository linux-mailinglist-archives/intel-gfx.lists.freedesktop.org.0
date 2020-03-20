Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA1718C413
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 01:04:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF586EAAD;
	Fri, 20 Mar 2020 00:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF2076EAAD;
 Fri, 20 Mar 2020 00:04:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6E3DA432F;
 Fri, 20 Mar 2020 00:04:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 20 Mar 2020 00:04:52 -0000
Message-ID: <158466269281.11039.6208920039110090566@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_add_OA_interrupt_support_=28rev7=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev7)
URL   : https://patchwork.freedesktop.org/series/54280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8161 -> Patchwork_17030
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17030/index.html

Known issues
------------

  Here are the changes found in Patchwork_17030 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [INCOMPLETE][1] ([i915#189]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8161/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17030/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [INCOMPLETE][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8161/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17030/fi-ehl-1/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [INCOMPLETE][5] ([fdo#112259] / [i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8161/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17030/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (36 -> 40)
------------------------------

  Additional (7): fi-bdw-5557u fi-kbl-7560u fi-bsw-n3050 fi-ivb-3770 fi-cfl-8109u fi-blb-e6850 fi-skl-6600u 
  Missing    (3): fi-byt-clapper fi-bsw-cyan fi-bwr-2160 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8161 -> Patchwork_17030

  CI-20190529: 20190529
  CI_DRM_8161: b2b8d8634bf653904ef3268ca7ccedf51f6405af @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5523: cf6d524007ac51a7d5a48503ea3dd5f01fd4ebab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17030: 4bfbbb959b1f835f6857b7b5320171291e0ebc3e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4bfbbb959b1f drm/i915/perf: add new open param to configure polling of OA buffer
3874f27479a6 drm/i915/perf: move pollin setup to non hw specific code
d7bd4aaf5bf3 drm/i915/perf: rework aging tail workaround

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17030/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
