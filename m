Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F36BC7FD4
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 10:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005B710E221;
	Thu,  9 Oct 2025 08:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6aec98b87f92 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1317A10E221;
 Thu,  9 Oct 2025 08:19:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Preparatory_patches_for_g?=
 =?utf-8?q?uardband_optimization?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Oct 2025 08:19:14 -0000
Message-ID: <175999795406.21518.15246387056600462335@6aec98b87f92>
X-Patchwork-Hint: ignore
References: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
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

Series: Preparatory patches for guardband optimization
URL   : https://patchwork.freedesktop.org/series/155661/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/155661/revisions/1/mbox/ not applied
Applying: drm/i915/vrr: Use crtc_vsync_start/end for computing vrr.vsync_start/end
Applying: drm/i915/vrr: s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
Applying: drm/i915/vblank: Add helper to get correct vblank length
Applying: drm/i915/psr: Consider SCL lines when validating vblank for wake latency
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_psr.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_psr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_psr.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 drm/i915/psr: Consider SCL lines when validating vblank for wake latency
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


