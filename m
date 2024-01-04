Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19095823D24
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00CC10E3D2;
	Thu,  4 Jan 2024 08:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5122910E3D2;
 Thu,  4 Jan 2024 08:05:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/guc=3A_Change_wa?=
 =?utf-8?q?_and_EU=5FPERF=5FCNTL_registers_to_MCR_type_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shuicheng Lin" <shuicheng.lin@intel.com>
Date: Thu, 04 Jan 2024 08:05:07 -0000
Message-ID: <170435550733.1841.4942736538894258942@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231220234559.GD2808452@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20231220234559.GD2808452@mdroper-desk1.amr.corp.intel.com>
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

Series: drm/i915/guc: Change wa and EU_PERF_CNTL registers to MCR type (rev2)
URL   : https://patchwork.freedesktop.org/series/128095/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/128095/revisions/2/mbox/ not applied
Applying: drm/i915/guc: Change wa and EU_PERF_CNTL registers to MCR type
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/guc: Change wa and EU_PERF_CNTL registers to MCR type
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


