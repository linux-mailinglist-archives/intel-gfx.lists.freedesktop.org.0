Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11CF9C6DEC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 12:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9818D10E1FA;
	Wed, 13 Nov 2024 11:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D94A10E6D8;
 Wed, 13 Nov 2024 11:35:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/cx0=5Fphy=3A_Upd?=
 =?utf-8?q?ate_HDMI_TMDS_C20_algorithm_value?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2024 11:35:04 -0000
Message-ID: <173149770437.3544921.9194888557842992526@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241113104453.1813674-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20241113104453.1813674-1-dnyaneshwar.bhadane@intel.com>
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

Series: drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
URL   : https://patchwork.freedesktop.org/series/141280/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/141280/revisions/1/mbox/ not applied
Applying: drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_cx0_phy.c
M	drivers/gpu/drm/i915/display/intel_cx0_phy.h
M	drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
M	include/drm/intel/pciids.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/intel/pciids.h
CONFLICT (content): Merge conflict in include/drm/intel/pciids.h
Auto-merging drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
Auto-merging drivers/gpu/drm/i915/display/intel_cx0_phy.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_cx0_phy.h
Auto-merging drivers/gpu/drm/i915/display/intel_cx0_phy.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


