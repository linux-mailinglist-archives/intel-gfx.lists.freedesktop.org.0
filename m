Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F101196499E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 17:15:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6238710E6F6;
	Thu, 29 Aug 2024 15:15:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99A5E10E6F6;
 Thu, 29 Aug 2024 15:15:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Consolidation_of_DSS_Cont?=
 =?utf-8?q?rol_in_Separate_Files_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2024 15:15:11 -0000
Message-ID: <172494451162.832174.11732926121887777124@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
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

Series: Consolidation of DSS Control in Separate Files (rev2)
URL   : https://patchwork.freedesktop.org/series/137789/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/137789/revisions/2/mbox/ not applied
Applying: drm/i915/display: Move all DSS control registers to a new file
Applying: drm/i915/dss_regs: Use REG_* macros for the DSS ctl bits
Applying: drm/i915/ddi: Move all mso related helpers to a new file
Applying: drm/i915/dss: Move to struct intel_display
Applying: drm/i915/icl_dsi: Avoid using intel_dsi in configure_dual_link_mode
Applying: drm/i915/icl_dsi: Use intel_display in configure_dual_link_mode
Applying: drm/i915/icl_dsi: Move helpers to configure dsi dual link to intel_dss
Applying: drm/i915/vdsc: Rename helper to check if the pipe supports dsc
Applying: drm/i915/vdsc: Move all dss stuff in dss files
Applying: drm/i915/dss: Use struct intel_display in dss dsc helpers
Applying: drm/i915/display: Move dss stuff in intel_dss files
Applying: drm/i915/display: Rename static functions that use joiner
Applying: drm/i915/display: Separate out joiner stuff in a new file
Applying: drm/i915/display: Move intel_crtc_joined_pipe_mask to intel_joiner
Applying: drm/i915/display: Move helpers for primary joiner to intel_joiner
Applying: drm/i915/display: Move intel_crtc_is_joiner_secondary to intel_joiner
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0016 drm/i915/display: Move intel_crtc_is_joiner_secondary to intel_joiner
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


