Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 148611AE5DE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:35:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E566E823;
	Fri, 17 Apr 2020 19:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95CF26E823;
 Fri, 17 Apr 2020 19:35:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92A8BA0138;
 Fri, 17 Apr 2020 19:35:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 17 Apr 2020 19:35:00 -0000
Message-ID: <158715210059.10467.7701356998591031230@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i195=3A_Pass_encoder_to_intel?=
 =?utf-8?b?X2RkaV9lbmFibGVfcGlwZV9jbG9jaygp?=
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

Series: series starting with [1/4] drm/i195: Pass encoder to intel_ddi_enable_pipe_clock()
URL   : https://patchwork.freedesktop.org/series/76097/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8319 -> Patchwork_17350
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17350/index.html

Known issues
------------

  Here are the changes found in Patchwork_17350 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][1] -> [INCOMPLETE][2] ([i915#189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8319/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17350/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189


Participating hosts (51 -> 45)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (7): fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8319 -> Patchwork_17350

  CI-20190529: 20190529
  CI_DRM_8319: 18043327e8a9cba095bca9f80cdc70900a51f92c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17350: 0cf01a5dabf796c1438b394844567e70d59749f0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0cf01a5dabf7 drm/i915: Pass encoder all the way to intel_ddi_transcoder_func_reg_val_get()
7948852d83fc drm/i915: Push TRANS_DDI_FUNC_CTL into the encoder->enable() hook
97ad2767af80 drm/i915: Move the TRANS_DDI_FUNC_CTL enable to a later point
061836a62d28 drm/i195: Pass encoder to intel_ddi_enable_pipe_clock()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17350/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
