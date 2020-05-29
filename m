Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F98B1E7F0D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 15:45:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82DE66E8FF;
	Fri, 29 May 2020 13:45:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E13CE6E8FC;
 Fri, 29 May 2020 13:45:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0240A47E0;
 Fri, 29 May 2020 13:45:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Fri, 29 May 2020 13:45:07 -0000
Message-ID: <159075990784.3331.12468069538124451765@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529123317.20470-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20200529123317.20470-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_Drop_double_check_for_ACPI_companion_device?=
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

Series: drm/i915/dsi: Drop double check for ACPI companion device
URL   : https://patchwork.freedesktop.org/series/77785/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8553 -> Patchwork_17817
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17817/index.html

Known issues
------------

  Here are the changes found in Patchwork_17817 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [TIMEOUT][1] ([i915#1288]) -> [TIMEOUT][2] ([i915#1288] / [i915#1958])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8553/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17817/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
  [i915#1288]: https://gitlab.freedesktop.org/drm/intel/issues/1288
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8553 -> Patchwork_17817

  CI-20190529: 20190529
  CI_DRM_8553: 9f1b8b4fcb466dc714b1f825fd93e3bbd29c7de6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5683: 757b6e72d546fd2dbc3801a73796d67b0854021b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17817: faa5526ffe05ac74e4dfa156fa1d893db0c9835e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

faa5526ffe05 drm/i915/dsi: Drop double check for ACPI companion device

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17817/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
