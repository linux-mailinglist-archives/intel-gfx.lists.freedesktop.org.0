Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 251B95A0348
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 23:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF2ECAD9B;
	Wed, 24 Aug 2022 21:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F299CAC84;
 Wed, 24 Aug 2022 21:25:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 237D2AADD5;
 Wed, 24 Aug 2022 21:25:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Wed, 24 Aug 2022 21:25:43 -0000
Message-ID: <166137634311.9870.13832373879566796907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
In-Reply-To: <20220818193901.2974625-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_HWMON_support_=28rev4=29?=
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

Series: drm/i915: Add HWMON support (rev4)
URL   : https://patchwork.freedesktop.org/series/104278/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/104278/revisions/4/mbox/ not applied
Applying: drm/i915/hwmon: Add HWMON infrastructure
Applying: drm/i915/hwmon: Add HWMON current voltage support
Applying: drm/i915/hwmon: Power PL1 limit and TDP setting
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_reg.h
M	drivers/gpu/drm/i915/intel_mchbar_regs.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_mchbar_regs.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/intel_mchbar_regs.h
Auto-merging drivers/gpu/drm/i915/i915_reg.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915/hwmon: Power PL1 limit and TDP setting
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


