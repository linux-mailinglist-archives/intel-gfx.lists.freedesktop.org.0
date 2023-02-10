Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F167691FCE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 14:35:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29DD610ED16;
	Fri, 10 Feb 2023 13:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A79310ED16;
 Fri, 10 Feb 2023 13:35:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93932AA917;
 Fri, 10 Feb 2023 13:35:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Das, Nirmoy" <nirmoy.das@intel.com>
Date: Fri, 10 Feb 2023 13:35:49 -0000
Message-ID: <167603614958.7874.18359135944483911126@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230210131211.985640-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230210131211.985640-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display=3A_Pass_drm=5Fi915=5Fprivate_as_param_to_i915_f?=
 =?utf-8?q?uncs_=28rev4=29?=
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

Series: drm/i915/display: Pass drm_i915_private as param to i915 funcs (rev4)
URL   : https://patchwork.freedesktop.org/series/113083/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/113083/revisions/4/mbox/ not applied
Applying: drm/i915/display: Pass drm_i915_private as param to i915 funcs
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_fbdev.c
M	drivers/gpu/drm/i915/i915_driver.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_driver.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_driver.c
Auto-merging drivers/gpu/drm/i915/display/intel_fbdev.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/display: Pass drm_i915_private as param to i915 funcs
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


