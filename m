Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B0A186D9D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 15:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3054F6E426;
	Mon, 16 Mar 2020 14:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 428EE6E426;
 Mon, 16 Mar 2020 14:43:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AD12A011A;
 Mon, 16 Mar 2020 14:43:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 16 Mar 2020 14:43:23 -0000
Message-ID: <158436980321.18995.18407786566519152366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Port_sync_for_skl+?=
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

Series: drm/i915: Port sync for skl+
URL   : https://patchwork.freedesktop.org/series/74691/
State : failure

== Summary ==

Applying: drm/i915/mst: Use .compute_config_late() to compute master transcoder
Applying: drm/i915: Move TRANS_DDI_FUNC_CTL2 programming where it belongs
Applying: drm/i915: Drop usless master_transcoder assignments
Applying: drm/i915: Move icl_get_trans_port_sync_config() into the DDI code
Applying: drm/i915: Use REG_FIELD_PREP() & co. for TRANS_DDI_FUNC_CTL2
Applying: drm/i915: Include port sync state in the state dump
Applying: drm/i915: Store cpu_transcoder_mask in device info
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_drv.h
M	drivers/gpu/drm/i915/i915_pci.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_pci.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_pci.c
Auto-merging drivers/gpu/drm/i915/i915_drv.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0007 drm/i915: Store cpu_transcoder_mask in device info
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
