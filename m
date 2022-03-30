Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC01B4ED06F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 01:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7176010E07A;
	Wed, 30 Mar 2022 23:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15E5910E07A;
 Wed, 30 Mar 2022 23:53:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 11568A0078;
 Wed, 30 Mar 2022 23:53:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Casey Bowman" <casey.g.bowman@intel.com>
Date: Wed, 30 Mar 2022 23:53:18 -0000
Message-ID: <164868439803.8653.6429976806480540494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220330234809.1218210-1-casey.g.bowman@intel.com>
In-Reply-To: <20220330234809.1218210-1-casey.g.bowman@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBT?=
 =?utf-8?q?plitting_intel-gtt_calls_for_non-x86_platforms_=28rev5=29?=
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

Series: Splitting intel-gtt calls for non-x86 platforms (rev5)
URL   : https://patchwork.freedesktop.org/series/101552/
State : failure

== Summary ==

Applying: drm/i915/gt: Split intel-gtt functions by arch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_ggtt.c
M	drivers/gpu/drm/i915/gt/intel_gtt.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_gtt.h
Auto-merging drivers/gpu/drm/i915/gt/intel_ggtt.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_ggtt.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/gt: Split intel-gtt functions by arch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


