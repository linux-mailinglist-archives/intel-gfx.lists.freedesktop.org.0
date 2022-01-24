Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5C8499C8A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 23:09:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE49F10E203;
	Mon, 24 Jan 2022 22:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ADD5B10E1F3;
 Mon, 24 Jan 2022 22:09:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ABA00A00A0;
 Mon, 24 Jan 2022 22:09:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Adrian Larumbe" <adrian.larumbe@collabora.com>
Date: Mon, 24 Jan 2022 22:09:27 -0000
Message-ID: <164306216769.1344.3934392380792595950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
In-Reply-To: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?dd_basic_support_for_flat-CCS_bo_evictions?=
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

Series: Add basic support for flat-CCS bo evictions
URL   : https://patchwork.freedesktop.org/series/99248/
State : failure

== Summary ==

Applying: drm/i915/flat-CCS: Add GEM bo structure fields for flat-CCS
Applying: drm/i915/flat-CCS: Add flat CCS plane capabilities and modifiers
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_fb.c
M	drivers/gpu/drm/i915/display/intel_fb.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_fb.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_fb.h
Auto-merging drivers/gpu/drm/i915/display/intel_fb.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_fb.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915/flat-CCS: Add flat CCS plane capabilities and modifiers
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


