Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8355E132F01
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 20:08:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A7216E836;
	Tue,  7 Jan 2020 19:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3E266E836;
 Tue,  7 Jan 2020 19:08:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B9DFA47DF;
 Tue,  7 Jan 2020 19:08:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Tue, 07 Jan 2020 19:08:51 -0000
Message-ID: <157842413160.8940.17158820244199388346@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1578409433.git.wambui.karugax@gmail.com>
In-Reply-To: <cover.1578409433.git.wambui.karugax@gmail.com>
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
URL   : https://patchwork.freedesktop.org/series/71698/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9baa398403ea drm/i915: convert to using the drm_dbg_kms() macro.
1cae57305c57 drm/i915: use new struct drm_device logging macros.
-:524: WARNING:LONG_LINE: line over 100 characters
#524: FILE: drivers/gpu/drm/i915/intel_pm.c:5337:
+				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res_l,

-:534: WARNING:LONG_LINE: line over 100 characters
#534: FILE: drivers/gpu/drm/i915/intel_pm.c:5347:
+				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res_l);

total: 0 errors, 2 warnings, 0 checks, 634 lines checked
ea6cb30e7a0c drm/i915: use new struct drm_device based logging macros.
9209ec64ba41 drm/i915: convert to using new struct drm_device logging macros
4bfa0a3eef65 drm/i915: use new struct drm_device based macros.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
