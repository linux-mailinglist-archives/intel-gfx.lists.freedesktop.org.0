Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2D41C33DB
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 09:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D417D6E339;
	Mon,  4 May 2020 07:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B15D6E339;
 Mon,  4 May 2020 07:51:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93B44A0BC6;
 Mon,  4 May 2020 07:51:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sultan Alsawaf" <sultan@kerneltoast.com>
Date: Mon, 04 May 2020 07:51:03 -0000
Message-ID: <158857866357.5817.9510964066755528895@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430214654.51314-1-sultan@kerneltoast.com>
In-Reply-To: <20200430214654.51314-1-sultan@kerneltoast.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_enable_WaIncreaseLatencyIPCEnabled_when_IPC_is?=
 =?utf-8?q?_disabled?=
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

Series: drm/i915: Don't enable WaIncreaseLatencyIPCEnabled when IPC is disabled
URL   : https://patchwork.freedesktop.org/series/76889/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8415 -> Patchwork_17562
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17562/index.html

Known issues
------------

  Here are the changes found in Patchwork_17562 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [INCOMPLETE][1] ([i915#1436]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17562/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436


Participating hosts (48 -> 43)
------------------------------

  Additional (2): fi-tgl-u fi-pnv-d510 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-gdg-551 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8415 -> Patchwork_17562

  CI-20190529: 20190529
  CI_DRM_8415: a20d5d8cc2cec9962cf4241fd8ac4b0c4bb4d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17562: 7839d28f2393d1ab8f010684bf2e871d572c99db @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7839d28f2393 drm/i915: Don't enable WaIncreaseLatencyIPCEnabled when IPC is disabled

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17562/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
