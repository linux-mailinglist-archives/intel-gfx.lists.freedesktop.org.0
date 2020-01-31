Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E868B14ECA5
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 13:46:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E621B6E210;
	Fri, 31 Jan 2020 12:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6242E6E210;
 Fri, 31 Jan 2020 12:46:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5AA33A010F;
 Fri, 31 Jan 2020 12:46:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Fri, 31 Jan 2020 12:46:50 -0000
Message-ID: <158047481034.13124.15229681961771244723@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131093416.28431-1-wambui.karugax@gmail.com>
In-Reply-To: <20200131093416.28431-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_conversion_to_new_struct_drm=5Fdevice_based_log?=
 =?utf-8?q?ging_macros=2E?=
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

Series: drm/i915: conversion to new struct drm_device based logging macros.
URL   : https://patchwork.freedesktop.org/series/72812/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
be9ed48fe6e7 drm/i915: conversion to drm_device logging macros when drm_i915_private is present.
-:86: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#86: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 727 lines checked
5e3766f431a0 drm/i915/debugfs: conversion to drm_device based logging macros.
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
cf40c77787e9 drm/i915/cmd_parser: conversion to struct drm_device logging macros.
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 55 lines checked
629879bbcc3c drm/i915/perf: conversion to struct drm_device based logging macros.
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

-:310: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#310: FILE: drivers/gpu/drm/i915/i915_perf.c:4053:
 	if (!oa_config) {
+		drm_dbg(&perf->i915->drm,

total: 0 errors, 2 warnings, 0 checks, 385 lines checked
9b2c54ed27f3 drm/i915/pci: conversion to drm_device based logging macros.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
