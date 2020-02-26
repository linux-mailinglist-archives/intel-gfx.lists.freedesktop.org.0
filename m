Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBD4170907
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 20:41:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F144D6EB99;
	Wed, 26 Feb 2020 19:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 29AC26E110;
 Wed, 26 Feb 2020 19:41:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21ACFA66C9;
 Wed, 26 Feb 2020 19:41:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Wed, 26 Feb 2020 19:41:56 -0000
Message-ID: <158274611611.21012.4166137277569291018@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_conversion_to_drm=5Fdevice_based_loggin?=
 =?utf-8?q?g_macros_=28rev3=29?=
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

Series: drm/i915/display: conversion to drm_device based logging macros (rev3)
URL   : https://patchwork.freedesktop.org/series/72760/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
72e7872cdf57 drm/i915/dsb: convert to drm_device based logging macros.
c68e5b9040f8 drm/i915/fbc: convert to drm_device based logging macros.
782a7fcbd91b drm/i915/fbdev: convert to drm_device based logging.
fbd00b0faa00 drm/i915/fifo_underrun: convert to drm_device based logging.
cb627a077a8e drm/i915/gmbus: convert to drm_device based logging,
412f8d7aa3dc drm/i915/hdcp: convert to struct drm_device based logging.
29a97de16bca drm/i915/hotplug: convert to drm_device based logging.
b9c4c5d444c7 drm/i915/lpe_audio: convert to drm_device based logging macros.
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
45d68227e680 drm/i915/lvds: convert to drm_device based logging macros.
6ee18198a19d drm/i915/overlay: convert to drm_device based logging.
-:91: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#91: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 41 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
