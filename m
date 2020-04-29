Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3841BE9A4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 23:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A406EB12;
	Wed, 29 Apr 2020 21:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C60566EB12;
 Wed, 29 Apr 2020 21:09:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDC5EA363D;
 Wed, 29 Apr 2020 21:09:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Wed, 29 Apr 2020 21:09:39 -0000
Message-ID: <158819457974.6696.10274463744628048040@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429195502.39919-1-sean@poorly.run>
In-Reply-To: <20200429195502.39919-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_HDCP_1=2E4_over_MST_connectors_=28rev6?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Add support for HDCP 1.4 over MST connectors (rev6)
URL   : https://patchwork.freedesktop.org/series/70393/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8394 -> Patchwork_17521
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/index.html

Known issues
------------

  Here are the changes found in Patchwork_17521 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][1] ([fdo#109271]) -> [FAIL][2] ([i915#665] / [i915#704])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][3] ([i915#62]) -> [SKIP][4] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#665]: https://gitlab.freedesktop.org/drm/intel/issues/665
  [i915#704]: https://gitlab.freedesktop.org/drm/intel/issues/704


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8394 -> Patchwork_17521

  CI-20190529: 20190529
  CI_DRM_8394: 532afb6da86a1c6ae10469908814f7a4f46afd88 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5615: 7605cfd9463a6778ebb7ebae294a97c5779a6c7f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17521: 7ef7fff8d44fb997dddf5b37e06ed497717b5c38 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7ef7fff8d44f drm/i915: Add HDCP 1.4 support for MST connectors
61361de16c42 drm/i915: Print HDCP version info for all connectors
02a575d5925b drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband message
cfcc0a390986 drm/i915: Add connector to hdcp_shim->check_link()
9b2d1bea4bd1 drm/i915: Plumb port through hdcp init
05c8e3ab9587 drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
02cdf8b227d5 drm/i915: Use ddi_update_pipe in intel_dp_mst
2d2715a81d8a drm/i915: Support DP MST in enc_to_dig_port() function
52711d976c11 drm/i915: Don't fully disable HDCP on a port if multiple pipes are using it
911130714349 drm/i915: Protect workers against disappearing connectors
cd2f5f723997 drm/i915: Factor out hdcp->value assignments
72c447d80879 drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP signalling
5f5874553395 drm/i915: Intercept Aksv writes in the aux hooks
77560570cb05 drm/i915: WARN if HDCP signalling is enabled upon disable
56a12ebb5f87 drm/i915: Clear the repeater bit on HDCP disable
7c5a77a1d31e drm/i915: Fix sha_text population code

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17521/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
