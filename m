Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B25B12FFB61
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 04:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB46E6E85F;
	Fri, 22 Jan 2021 03:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66BB26E85F;
 Fri, 22 Jan 2021 03:49:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E509A8836;
 Fri, 22 Jan 2021 03:49:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dave Airlie" <airlied@gmail.com>
Date: Fri, 22 Jan 2021 03:49:49 -0000
Message-ID: <161128738935.14038.10016961717770976275@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210121215924.18964-1-airlied@gmail.com>
In-Reply-To: <20210121215924.18964-1-airlied@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/10=5D_drm/i915=3A_refactor_ddi_transl?=
 =?utf-8?q?ations_into_a_separate_file_=28v2=29?=
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

Series: series starting with [01/10] drm/i915: refactor ddi translations into a separate file (v2)
URL   : https://patchwork.freedesktop.org/series/86157/
State : failure

== Summary ==

Applying: drm/i915: refactor ddi translations into a separate file (v2)
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Makefile
M	drivers/gpu/drm/i915/display/intel_ddi.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_ddi.c
Auto-merging drivers/gpu/drm/i915/Makefile
Applying: drm/i915: migrate hsw fdi code to new file.
Applying: drm/i915: migrate skl planes code new file (v4)
.git/rebase-apply/patch:5048: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Makefile
M	drivers/gpu/drm/i915/display/intel_ddi.c
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display.h
M	drivers/gpu/drm/i915/display/intel_display_types.h
M	drivers/gpu/drm/i915/display/intel_psr.c
M	drivers/gpu/drm/i915/display/intel_sprite.c
M	drivers/gpu/drm/i915/intel_pm.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_pm.c
Auto-merging drivers/gpu/drm/i915/display/intel_sprite.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_sprite.c
Auto-merging drivers/gpu/drm/i915/display/intel_psr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_psr.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display.h
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
Auto-merging drivers/gpu/drm/i915/display/intel_ddi.c
Auto-merging drivers/gpu/drm/i915/Makefile
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915: migrate skl planes code new file (v4)
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
