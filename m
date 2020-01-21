Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8515D14451B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 20:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE87C6EE4D;
	Tue, 21 Jan 2020 19:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 895826EE4D;
 Tue, 21 Jan 2020 19:28:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8539AA00E9;
 Tue, 21 Jan 2020 19:28:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Tue, 21 Jan 2020 19:28:07 -0000
Message-ID: <157963488754.11480.2949610468713820908@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121134559.17355-1-wambui.karugax@gmail.com>
In-Reply-To: <20200121134559.17355-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_conversion_to_new_drm_logging_macros=2E?=
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

Series: drm/i915: conversion to new drm logging macros.
URL   : https://patchwork.freedesktop.org/series/72350/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
54f3b2457681 drm/i915/atomic: use struct drm_device logging macros
565e4c05e932 drm/i915/bios: convert to struct drm_device logging macros.
-:663: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "devdata->dsc"
#663: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1703:
+		    devdata->dsc != NULL);

total: 0 errors, 0 warnings, 1 checks, 771 lines checked
13f038ac6aef drm/i915/audio: convert to struct drm_device logging macros.
3889bdb08975 drm/i915/bw: convert to drm_device based logging macros
f0c27410776e drm/i915/cdclk: use new struct drm_device logging macros

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
