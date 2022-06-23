Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 905FB5583CD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 19:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DFC810E31B;
	Thu, 23 Jun 2022 17:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A6E510E031;
 Thu, 23 Jun 2022 17:35:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D653A8169;
 Thu, 23 Jun 2022 17:35:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tangudu, Tilak" <tilak.tangudu@intel.com>
Date: Thu, 23 Jun 2022 17:35:28 -0000
Message-ID: <165600572835.17070.5572934681559324934@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_D3Cold-Off_support_for_runtime-pm_=28rev2=29?=
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

Series: drm/i915: Add D3Cold-Off support for runtime-pm (rev2)
URL   : https://patchwork.freedesktop.org/series/105427/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/105427/revisions/2/mbox/ not applied
Applying: drm/i915: Avoid rpm helpers in intel_guc_global_policies_update
Applying: drm/i915: Avoid rpm helpers in intel_guc_slpc_set_media_ratio_mode
Applying: drm/i915: Avoid rpm helpers in intel_gt_suspend_late
Applying: drm/i915: Added is_intel_rpm_allowed helper
error: patch failed: drivers/gpu/drm/i915/intel_runtime_pm.c:369
error: drivers/gpu/drm/i915/intel_runtime_pm.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/intel_runtime_pm.c
Patch failed at 0004 drm/i915: Added is_intel_rpm_allowed helper
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


