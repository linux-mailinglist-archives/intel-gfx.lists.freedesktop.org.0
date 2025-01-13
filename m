Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB80A0BC01
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 16:31:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8359510E6E3;
	Mon, 13 Jan 2025 15:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82EB610E6E3;
 Mon, 13 Jan 2025 15:31:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Fix_all_typos_in_i915_=28?=
 =?utf-8?q?rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2025 15:31:13 -0000
Message-ID: <173678227353.3280170.8411997725876492656@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250113102421.2431727-1-nitin.r.gote@intel.com>
In-Reply-To: <20250113102421.2431727-1-nitin.r.gote@intel.com>
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

Series: Fix all typos in i915 (rev2)
URL   : https://patchwork.freedesktop.org/series/143146/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/143146/revisions/2/mbox/ not applied
Applying: drm/i915/gt: fix typos in i915/gt files.
Applying: drm/i915/gvt: fix typos in i915/gvt files
Applying: drm/i915/gem: fix typos in i915/gem files
Applying: drm/i915/pxp: fix typos in i915/pxp files
Applying: drm/i915/selftests: fix typos in i915/selftests files
Applying: drm/i915/soc: fix typos in i915/soc files
Applying: drm/i915/display: fix typos in i915/display files
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/dvo_ns2501.c
M	drivers/gpu/drm/i915/display/icl_dsi.c
M	drivers/gpu/drm/i915/display/intel_cdclk.c
M	drivers/gpu/drm/i915/display/intel_crt.c
M	drivers/gpu/drm/i915/display/intel_ddi.c
M	drivers/gpu/drm/i915/display/intel_display_power.c
M	drivers/gpu/drm/i915/display/intel_display_types.h
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_dp_mst.c
M	drivers/gpu/drm/i915/display/intel_dvo_dev.h
M	drivers/gpu/drm/i915/display/intel_hdcp.c
M	drivers/gpu/drm/i915/display/intel_pmdemand.c
M	drivers/gpu/drm/i915/display/intel_sdvo.c
M	drivers/gpu/drm/i915/display/skl_scaler.c
M	drivers/gpu/drm/i915/display/skl_watermark.c
M	drivers/gpu/drm/i915/display/vlv_dsi.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/vlv_dsi.c
Auto-merging drivers/gpu/drm/i915/display/skl_watermark.c
Auto-merging drivers/gpu/drm/i915/display/skl_scaler.c
Auto-merging drivers/gpu/drm/i915/display/intel_sdvo.c
Auto-merging drivers/gpu/drm/i915/display/intel_pmdemand.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_pmdemand.c
Auto-merging drivers/gpu/drm/i915/display/intel_hdcp.c
Auto-merging drivers/gpu/drm/i915/display/intel_dvo_dev.h
Auto-merging drivers/gpu/drm/i915/display/intel_dp_mst.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.c
Auto-merging drivers/gpu/drm/i915/display/intel_ddi.c
Auto-merging drivers/gpu/drm/i915/display/intel_crt.c
Auto-merging drivers/gpu/drm/i915/display/intel_cdclk.c
Auto-merging drivers/gpu/drm/i915/display/icl_dsi.c
Auto-merging drivers/gpu/drm/i915/display/dvo_ns2501.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/i915/display: fix typos in i915/display files
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


