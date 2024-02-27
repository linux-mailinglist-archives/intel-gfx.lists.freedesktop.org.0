Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C2A869FE8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 20:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D3310E982;
	Tue, 27 Feb 2024 19:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A3510E986;
 Tue, 27 Feb 2024 19:09:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Display_experiment_+_GuC_?=
 =?utf-8?q?Display_Metrics?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Feb 2024 19:09:08 -0000
Message-ID: <170906094815.351698.15139396743390122928@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240227145833.490328-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240227145833.490328-1-rodrigo.vivi@intel.com>
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

Series: Display experiment + GuC Display Metrics
URL   : https://patchwork.freedesktop.org/series/130437/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/130437/revisions/1/mbox/ not applied
Applying: drm/i915/display: Introduce intel_display_guc_metrics
Applying: drm/i915: Add experimental GuC SLPC display metrics
Applying: drm/xe: Add GuC SLPC Display Metrics
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/xe/xe_gt_debugfs.c
M	drivers/gpu/drm/xe/xe_guc_pc.c
M	drivers/gpu/drm/xe/xe_guc_pc.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/xe/xe_guc_pc.h
Auto-merging drivers/gpu/drm/xe/xe_guc_pc.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/xe/xe_guc_pc.c
Auto-merging drivers/gpu/drm/xe/xe_gt_debugfs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/xe: Add GuC SLPC Display Metrics
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


