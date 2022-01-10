Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFCC489FFA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 20:14:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9EC10F2D7;
	Mon, 10 Jan 2022 19:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1136D10F3D6;
 Mon, 10 Jan 2022 19:14:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12EF1A00FD;
 Mon, 10 Jan 2022 19:14:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>
Date: Mon, 10 Jan 2022 19:14:09 -0000
Message-ID: <164184204907.28742.11201355311583992959@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211222090552.25972-1-jose.exposito89@gmail.com>
In-Reply-To: <20211222090552.25972-1-jose.exposito89@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?dd_missing_format=5Fmod=5Fsupported_functions_=28rev2=29?=
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

Series: Add missing format_mod_supported functions (rev2)
URL   : https://patchwork.freedesktop.org/series/98680/
State : failure

== Summary ==

Applying: drm/plane: Make format_mod_supported truly optional
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/drm_plane.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/drm_plane.c
No changes -- Patch already applied.
Applying: drm/plane: Fix typo in format_mod_supported documentation
Using index info to reconstruct a base tree...
M	include/drm/drm_plane.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/simple-kms: Drop format_mod_supported function
Applying: drm/i915/display: Drop format_mod_supported function
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_cursor.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_cursor.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_cursor.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 drm/i915/display: Drop format_mod_supported function
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


