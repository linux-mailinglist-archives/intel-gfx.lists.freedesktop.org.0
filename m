Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C0A2F9A8E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 08:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE7B6E0EC;
	Mon, 18 Jan 2021 07:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 047F16E0EE;
 Mon, 18 Jan 2021 07:33:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F06BCA0019;
 Mon, 18 Jan 2021 07:33:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 18 Jan 2021 07:33:06 -0000
Message-ID: <161095518695.28164.5277911021350239578@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210118060730.15425-1-sean.z.huang@intel.com>
In-Reply-To: <20210118060730.15425-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?ntroduce_Intel_PXP_component_-_Mesa_single_session_=28rev22=29?=
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

Series: Introduce Intel PXP component - Mesa single session (rev22)
URL   : https://patchwork.freedesktop.org/series/84620/
State : failure

== Summary ==

Applying: drm/i915/pxp: Add plane decryption support
Applying: drm/i915/pxp: set KCR reg init during the boot time
Using index info to reconstruct a base tree...
A	drivers/gpu/drm/i915/pxp/intel_pxp.c
Falling back to patching base and 3-way merge...
CONFLICT (modify/delete): drivers/gpu/drm/i915/pxp/intel_pxp.c deleted in HEAD and modified in drm/i915/pxp: set KCR reg init during the boot time. Version drm/i915/pxp: set KCR reg init during the boot time of drivers/gpu/drm/i915/pxp/intel_pxp.c left in tree.
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915/pxp: set KCR reg init during the boot time
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
