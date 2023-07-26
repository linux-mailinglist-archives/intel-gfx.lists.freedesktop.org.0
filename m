Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76D1763FD3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 21:37:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB85510E4B4;
	Wed, 26 Jul 2023 19:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AC0310E4B3;
 Wed, 26 Jul 2023 19:37:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1422BAADDA;
 Wed, 26 Jul 2023 19:37:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Date: Wed, 26 Jul 2023 19:37:07 -0000
Message-ID: <169040022707.23472.18438572484733247561@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?eplace_acronym_with_full_platform_name_in_defines=2E?=
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

Series: Replace acronym with full platform name in defines.
URL   : https://patchwork.freedesktop.org/series/121385/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/121385/revisions/1/mbox/ not applied
Applying: drm/i915/hsw: s/HSW/HASWELL for platform/subplatform defines
Applying: drm/i915/bdw: s/BDW/BROADWELL for platform/subplatform defines
Applying: drm/i915/skl: s/SKL/SKYLAKE for platform/subplatform defines
Applying: drm/i915/kbl: s/KBL/KABYLAKE for platform/subplatform defines
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/gen8_engine_cs.c
M	drivers/gpu/drm/i915/gt/intel_workarounds.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_workarounds.c
Auto-merging drivers/gpu/drm/i915/gt/gen8_engine_cs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/gen8_engine_cs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 drm/i915/kbl: s/KBL/KABYLAKE for platform/subplatform defines
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


