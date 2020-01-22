Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0064D144DD3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 09:42:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC4AA6F413;
	Wed, 22 Jan 2020 08:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E73226F413;
 Wed, 22 Jan 2020 08:42:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE476A0088;
 Wed, 22 Jan 2020 08:42:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Wed, 22 Jan 2020 08:42:50 -0000
Message-ID: <157968257088.22395.6658138890255794627@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121134559.17355-1-wambui.karugax@gmail.com>
In-Reply-To: <20200121134559.17355-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_conversion_to_new_drm_logging_macros=2E_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: conversion to new drm logging macros. (rev2)
URL   : https://patchwork.freedesktop.org/series/72350/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ad71a2dc560c drm/i915/atomic: use struct drm_device logging macros
1b633a003740 drm/i915/bios: convert to struct drm_device logging macros.
-:663: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "devdata->dsc"
#663: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1703:
+		    devdata->dsc != NULL);

total: 0 errors, 0 warnings, 1 checks, 771 lines checked
873b43cc3ac8 drm/i915/audio: convert to struct drm_device logging macros.
e9feee9f9ad2 drm/i915/bw: convert to drm_device based logging macros
b7c886ad12c3 drm/i915/cdclk: use new struct drm_device logging macros

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
