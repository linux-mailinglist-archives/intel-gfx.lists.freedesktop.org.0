Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0E1436D51
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 00:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4026E4D2;
	Thu, 21 Oct 2021 22:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 594A76E4D2;
 Thu, 21 Oct 2021 22:15:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D6DCA77A5;
 Thu, 21 Oct 2021 22:15:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cooper Chiou" <cooper.chiou@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 22:15:59 -0000
Message-ID: <163485455928.20173.12377931586331796986@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200916180745.627-1-cooper.chiou@intel.com>
In-Reply-To: <20200916180745.627-1-cooper.chiou@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Enable_WaProgramMgsrForCorrectSliceSpecificMmioReads?=
 =?utf-8?q?_for_Gen9_=28rev8=29?=
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

Series: drm/i915: Enable WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9 (rev8)
URL   : https://patchwork.freedesktop.org/series/81764/
State : failure

== Summary ==

Applying: drm/i915: Enable WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_workarounds.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_workarounds.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_workarounds.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Enable WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


