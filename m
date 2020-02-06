Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 975B015406E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 09:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101916E488;
	Thu,  6 Feb 2020 08:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3E8F6E488;
 Thu,  6 Feb 2020 08:38:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC9F8A0119;
 Thu,  6 Feb 2020 08:38:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Thu, 06 Feb 2020 08:38:41 -0000
Message-ID: <158097832181.14484.13127530500225248515@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200206080014.13759-1-wambui.karugax@gmail.com>
In-Reply-To: <20200206080014.13759-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_convert_to_drm=5Fdevice_based_logging_m?=
 =?utf-8?q?acros=2E?=
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

Series: drm/i915/display: convert to drm_device based logging macros.
URL   : https://patchwork.freedesktop.org/series/73076/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
084fb714840f drm/i915/dp: convert to struct drm_device based logging macros.
00134e74d58c drm/i915/dp_link_training: convert to drm_device based logging macros.
a15192ef82c4 drm/i915/atomic: conversion to drm_device based logging macros.
bf10d2305813 drm/i915/color: conversion to drm_device based logging macros.
ed844d1a4fe8 drm/i915/crt: automatic conversion to drm_device based logging macros.
25d25fc63ed0 drm/i915/dp_aux_backlight: convert to drm_device based logging macros.
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 192 lines checked
d008d40f8b87 drm/i915/dpll_mgr: convert to drm_device based logging macros.
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 566 lines checked
beaf3a241dec drm/i915/combo_phy: convert to struct drm_device logging macros.
-:93: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#93: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 53 lines checked
af180d98a062 drm/i915/dp_mst: convert to drm_device based logging macros.
0964b01e0885 drm/i915/dsi_vbt: convert to drm_device based logging macros.
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 321 lines checked
5c740db3c96b drm/i915/hdmi: convert to struct drm_device based logging macros.
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 516 lines checked
a8d8be1ba250 drm/i915/dpio_phy: convert to drm_device based logging macros.
-:92: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#92: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 72 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
