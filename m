Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE6919025E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 01:01:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193296E439;
	Tue, 24 Mar 2020 00:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEF4B6E439;
 Tue, 24 Mar 2020 00:01:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE31BA011B;
 Tue, 24 Mar 2020 00:01:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khor, Swee Aun" <swee.aun.khor@intel.com>
Date: Tue, 24 Mar 2020 00:01:04 -0000
Message-ID: <158500806474.4558.2277222346719292025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200318113009.16757-1-uma.shankar@intel.com>
In-Reply-To: <20200318113009.16757-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Trigger_Modeset_at_boot_for_audio_codec_init_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/display: Trigger Modeset at boot for audio codec init (rev2)
URL   : https://patchwork.freedesktop.org/series/74828/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8180_full -> Patchwork_17056_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17056_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17056_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  


Changes
-------

  No changes found


Participating hosts (10 -> 2)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_17056_full prevented too many machines from booting.

  Missing    (8): shard-skl shard-tglb shard-iclb shard-apl shard-glk shard-hsw shard-kbl shard-snb 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5530 -> None
  * Linux: CI_DRM_8180 -> Patchwork_17056

  CI-20190529: 20190529
  CI_DRM_8180: 257af0ddcea3a234dcb79579600f971edd47353f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5530: 2020d743940f06294d06006bb737be43fcd2881e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17056: 0db59c6d9bd50ac3f03b40c76535eac49d25adb2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17056/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
