Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A7B99C118
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 09:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B622210E394;
	Mon, 14 Oct 2024 07:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC2610E394;
 Mon, 14 Oct 2024 07:18:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Add_support_for_3_VDSC_en?=
 =?utf-8?q?gines_12_slices?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2024 07:18:46 -0000
Message-ID: <172889032643.1246429.3378114371316347656@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241014070226.2729008-1-ankit.k.nautiyal@intel.com>
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

Series: Add support for 3 VDSC engines 12 slices
URL   : https://patchwork.freedesktop.org/series/139934/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/139934/revisions/1/mbox/ not applied
Applying: drm/i915/display: Prepare for dsc 3 stream splitter
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_types.h
M	drivers/gpu/drm/i915/display/intel_dp.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/display: Prepare for dsc 3 stream splitter
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


