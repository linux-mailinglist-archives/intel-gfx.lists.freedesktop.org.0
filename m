Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FF12D512C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 04:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDDD16E2C8;
	Thu, 10 Dec 2020 03:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C1666E2C0;
 Thu, 10 Dec 2020 03:16:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7538DA008A;
 Thu, 10 Dec 2020 03:16:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 03:16:44 -0000
Message-ID: <160757020445.19120.7539455984386813716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201209233618.4287-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201209233618.4287-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Move_move_con?=
 =?utf-8?q?text_layout_registers_and_offsets_to_lrc=5Freg=2Eh?=
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

Series: series starting with [CI,1/3] drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h
URL   : https://patchwork.freedesktop.org/series/84750/
State : failure

== Summary ==

Applying: drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_engine_cs.c
M	drivers/gpu/drm/i915/gt/intel_gt_irq.c
A	drivers/gpu/drm/i915/gt/intel_lrc.h
M	drivers/gpu/drm/i915/gt/intel_lrc_reg.h
M	drivers/gpu/drm/i915/gvt/mmio_context.h
Falling back to patching base and 3-way merge...
CONFLICT (modify/delete): drivers/gpu/drm/i915/gt/intel_lrc.h deleted in HEAD and modified in drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h. Version drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h of drivers/gpu/drm/i915/gt/intel_lrc.h left in tree.
Auto-merging drivers/gpu/drm/i915/gt/intel_engine_cs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
