Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC47C18A2BB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 19:57:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 175696E945;
	Wed, 18 Mar 2020 18:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8C6E6E91A;
 Wed, 18 Mar 2020 18:57:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A14CEA010F;
 Wed, 18 Mar 2020 18:57:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 18 Mar 2020 18:57:50 -0000
Message-ID: <158455787065.25101.1206294297968822321@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Port_sync_for_skl+_=28rev2=29?=
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

Series: drm/i915: Port sync for skl+ (rev2)
URL   : https://patchwork.freedesktop.org/series/74691/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8152 -> Patchwork_17011
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17011 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17011, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17011/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17011:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-cml-u2:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17011/fi-cml-u2/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17011/fi-skl-6600u/igt@gem_exec_fence@basic-busy@vecs0.html

  


Participating hosts (44 -> 41)
------------------------------

  Additional (3): fi-cml-u2 fi-bwr-2160 fi-skl-6600u 
  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus fi-skl-6700k2 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8152 -> Patchwork_17011

  CI-20190529: 20190529
  CI_DRM_8152: ce1895bf390da53060aa60a90367b706d92bf431 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5522: bd2b01af69c9720d54e68a8702a23e4ff3637746 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17011: 02e6871f0ae39b3d02f496327a16d769b2647f4b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

02e6871f0ae3 drm/i915: Move the port sync DP_TP_CTL stuff to the encoder hook
50501c73ea1c drm/i915: Pass atomic state to encoder hooks
f6dcd889212e drm/i915: Do pipe updates after enables for everyone
04906e4ea040 drm/i915: Fix port sync code to work with >2 pipes
66a94a458d39 drm/i915: Eliminate port sync copy pasta
6a7a32a49547 drm/i915: Implement port sync for SKL+
c806976a0077 drm/i915: Store cpu_transcoder_mask in device info
03e8d170af68 drm/i915: Include port sync state in the state dump
ec27107db7e7 drm/i915: Use REG_FIELD_PREP() & co. for TRANS_DDI_FUNC_CTL2
61ac37e65386 drm/i915: Move icl_get_trans_port_sync_config() into the DDI code
632673745f50 drm/i915: Drop usless master_transcoder assignments
2c7d28920dca drm/i915: Move TRANS_DDI_FUNC_CTL2 programming where it belongs
d2cdf91643a0 drm/i915/mst: Use .compute_config_late() to compute master transcoder

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17011/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
