Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAF51776C9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 14:17:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524636E8B5;
	Tue,  3 Mar 2020 13:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BE816E8B5;
 Tue,  3 Mar 2020 13:17:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75CF7A47E6;
 Tue,  3 Mar 2020 13:17:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Tue, 03 Mar 2020 13:17:45 -0000
Message-ID: <158324146545.15379.18277725887373195007@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226101138.15435-1-wambui.karugax@gmail.com>
In-Reply-To: <20200226101138.15435-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display=3A_conversion_to_drm=5Fdevice_based_logging_mac?=
 =?utf-8?q?ros_=28rev5=29?=
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

Series: drm/i915/display: conversion to drm_device based logging macros (rev5)
URL   : https://patchwork.freedesktop.org/series/72760/
State : failure

== Summary ==

Applying: drm/i915/dsb: convert to drm_device based logging macros.
Applying: drm/i915/fbc: convert to drm_device based logging macros.
Applying: drm/i915/fbdev: convert to drm_device based logging.
Applying: drm/i915/fifo_underrun: convert to drm_device based logging.
Applying: drm/i915/gmbus: convert to drm_device based logging,
Applying: drm/i915/hdcp: convert to struct drm_device based logging.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_hdcp.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_hdcp.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_hdcp.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0006 drm/i915/hdcp: convert to struct drm_device based logging.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
