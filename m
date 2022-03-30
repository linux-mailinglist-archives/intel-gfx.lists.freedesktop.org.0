Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B894ED031
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 01:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D07A10E25F;
	Wed, 30 Mar 2022 23:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A871310E21A;
 Wed, 30 Mar 2022 23:32:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8639A47DF;
 Wed, 30 Mar 2022 23:32:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Casey Bowman" <casey.g.bowman@intel.com>
Date: Wed, 30 Mar 2022 23:32:27 -0000
Message-ID: <164868314768.8658.2467155064019081616@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220330233138.1210992-1-casey.g.bowman@intel.com>
In-Reply-To: <20220330233138.1210992-1-casey.g.bowman@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?plitting_intel-gtt_calls_for_non-x86_platforms_=28rev4=29?=
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

Series: Splitting intel-gtt calls for non-x86 platforms (rev4)
URL   : https://patchwork.freedesktop.org/series/101552/
State : failure

== Summary ==

Applying: drm/i915/gt: Split intel-gtt functions by arch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Makefile
M	drivers/gpu/drm/i915/gt/intel_ggtt.c
M	drivers/gpu/drm/i915/gt/intel_gt.c
M	drivers/gpu/drm/i915/gt/intel_gt.h
M	drivers/gpu/drm/i915/gt/intel_gtt.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_gtt.h
Auto-merging drivers/gpu/drm/i915/gt/intel_gt.h
Auto-merging drivers/gpu/drm/i915/gt/intel_gt.c
Auto-merging drivers/gpu/drm/i915/gt/intel_ggtt.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_ggtt.c
Auto-merging drivers/gpu/drm/i915/Makefile
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/gt: Split intel-gtt functions by arch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


