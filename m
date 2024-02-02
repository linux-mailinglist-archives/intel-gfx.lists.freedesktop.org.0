Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC4F846720
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 05:53:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BDB010E11C;
	Fri,  2 Feb 2024 04:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F61610E0B6;
 Fri,  2 Feb 2024 04:53:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBzZXJpZXMgc3RhcnRpbmcgd2l0?=
 =?utf-8?b?aCBbQ0ksMS8zXSBkcm06IEFkZCBkcm1fdmJsYW5rX3dvcmtfZmx1c2hfYWxsKCku?=
 =?utf-8?b?IChyZXYyKQ==?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 04:53:42 -0000
Message-ID: <170684962245.935547.555587153951655949@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240131121028.614096-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240131121028.614096-1-maarten.lankhorst@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [CI,1/3] drm: Add drm_vblank_work_flush_all(). (rev2)
URL   : https://patchwork.freedesktop.org/series/129369/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/129369/revisions/2/mbox/ not applied
Applying: drm: Add drm_vblank_work_flush_all().
Applying: drm/i915: Use vblank worker to unpin old legacy cursor fb safely
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_cursor.c
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_types.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
Auto-merging drivers/gpu/drm/i915/display/intel_cursor.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_cursor.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915: Use vblank worker to unpin old legacy cursor fb safely
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


