Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F735A0553
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 02:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD34910EB70;
	Thu, 25 Aug 2022 00:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9ABF10E1FF;
 Thu, 25 Aug 2022 00:48:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9942CAA917;
 Thu, 25 Aug 2022 00:48:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 25 Aug 2022 00:48:28 -0000
Message-ID: <166138850859.24644.7567431980459224620@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220816202837.1778495-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220816202837.1778495-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?rop_version_numbers_from_firmware_files_=28rev2=29?=
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

Series: Drop version numbers from firmware files (rev2)
URL   : https://patchwork.freedesktop.org/series/107340/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/107340/revisions/2/mbox/ not applied
Applying: drm/i915/uc: Support for version reduced and multiple firmware files
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
M	drivers/gpu/drm/i915/i915_gpu_error.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_gpu_error.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_gpu_error.c
Auto-merging drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/uc: Support for version reduced and multiple firmware files
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


