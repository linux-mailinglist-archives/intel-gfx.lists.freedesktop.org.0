Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA452826BD3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 11:49:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C68110E17A;
	Mon,  8 Jan 2024 10:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A21210E07F;
 Mon,  8 Jan 2024 10:49:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Bigjoiner_refactoring?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 08 Jan 2024 10:49:41 -0000
Message-ID: <170471098149.195263.8908624485442766592@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240108085830.18584-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240108085830.18584-1-stanislav.lisovskiy@intel.com>
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

Series: Bigjoiner refactoring
URL   : https://patchwork.freedesktop.org/series/128311/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/128311/revisions/1/mbox/ not applied
Applying: drm/i915: Add bigjoiner force enable option to debugfs
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display_debugfs.c
M	drivers/gpu/drm/i915/display/intel_display_types.h
M	drivers/gpu/drm/i915/display/intel_dp.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display_debugfs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display_debugfs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Add bigjoiner force enable option to debugfs
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


