Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A0E9B4E1A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 16:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD75110E682;
	Tue, 29 Oct 2024 15:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1FE10E694;
 Tue, 29 Oct 2024 15:34:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/display=3A_use_x?=
 =?utf-8?q?100_version_for_full_version_and_release_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2024 15:34:43 -0000
Message-ID: <173021608381.1359138.17364703778916701528@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241028201207.4005020-1-jani.nikula@intel.com>
In-Reply-To: <20241028201207.4005020-1-jani.nikula@intel.com>
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

Series: drm/i915/display: use x100 version for full version and release (rev3)
URL   : https://patchwork.freedesktop.org/series/140454/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/140454/revisions/3/mbox/ not applied
Applying: drm/i915/display: use x100 version for full version and release
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_cx0_phy.c
M	drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
M	drivers/gpu/drm/i915/display/intel_display_device.h
M	drivers/gpu/drm/i915/display/intel_display_power.c
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_pmdemand.c
M	drivers/gpu/drm/i915/display/intel_psr.c
M	drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
Auto-merging drivers/gpu/drm/i915/display/intel_psr.c
Auto-merging drivers/gpu/drm/i915/display/intel_pmdemand.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_device.h
Auto-merging drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
Auto-merging drivers/gpu/drm/i915/display/intel_cx0_phy.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_cx0_phy.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/display: use x100 version for full version and release
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


