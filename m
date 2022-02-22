Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E984BF9DD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 14:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD41210E7D6;
	Tue, 22 Feb 2022 13:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5B5A10E7D6;
 Tue, 22 Feb 2022 13:52:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1012AADD4;
 Tue, 22 Feb 2022 13:52:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Tue, 22 Feb 2022 13:52:42 -0000
Message-ID: <164553796275.23041.8951593917116833691@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222104854.3188643-1-alexander.usyskin@intel.com>
In-Reply-To: <20220222104854.3188643-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBh?=
 =?utf-8?q?dd_support_for_GSC_in_XeHP_SDV_platform?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: add support for GSC in XeHP SDV platform
URL   : https://patchwork.freedesktop.org/series/100560/
State : failure

== Summary ==

Applying: drm/i915/gsc: skip irq initialization if using polling
Using index info to reconstruct a base tree...
A	drivers/gpu/drm/i915/gt/intel_gsc.c
Falling back to patching base and 3-way merge...
CONFLICT (modify/delete): drivers/gpu/drm/i915/gt/intel_gsc.c deleted in HEAD and modified in drm/i915/gsc: skip irq initialization if using polling. Version drm/i915/gsc: skip irq initialization if using polling of drivers/gpu/drm/i915/gt/intel_gsc.c left in tree.
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/gsc: skip irq initialization if using polling
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


