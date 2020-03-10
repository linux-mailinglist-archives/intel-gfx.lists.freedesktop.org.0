Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFBF1804E0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 18:33:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C9A76E364;
	Tue, 10 Mar 2020 17:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5E6E6E8BA;
 Tue, 10 Mar 2020 17:33:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD182A47DF;
 Tue, 10 Mar 2020 17:33:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Tue, 10 Mar 2020 17:33:56 -0000
Message-ID: <158386163681.24168.17866192007996227484@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1583766715.git.jani.nikula@intel.com>
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_conversion_to_drm=5Fdevice_based_loggin?=
 =?utf-8?q?g_macros_=28rev6=29?=
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

Series: drm/i915/display: conversion to drm_device based logging macros (rev6)
URL   : https://patchwork.freedesktop.org/series/72760/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9af612966bd6 drm/i915/dsb: convert to drm_device based logging macros.
ffc752ecce02 drm/i915/fbc: convert to drm_device based logging macros.
-:137: WARNING:LONG_LINE: line over 100 characters
#137: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:536:
+		drm_info_once(&dev_priv->drm, "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);

total: 0 errors, 1 warnings, 0 checks, 90 lines checked
6c4d85ced842 drm/i915/fbdev: convert to drm_device based logging.
33f35a10a5da drm/i915/fifo_underrun: convert to drm_device based logging.
d013e210c934 drm/i915/gmbus: convert to drm_device based logging,
8e4437f36baf drm/i915/hdcp: convert to struct drm_device based logging.
0538804f90d2 drm/i915/hotplug: convert to drm_device based logging.
62a278bf95cb drm/i915/lpe_audio: convert to drm_device based logging macros.
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 68 lines checked
1eca7c5e271a drm/i915/lvds: convert to drm_device based logging macros.
4d3a4d7c1f64 drm/i915/overlay: convert to drm_device based logging.
-:91: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#91: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 41 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
