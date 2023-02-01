Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6426867B7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 14:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F72F10E149;
	Wed,  1 Feb 2023 13:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6910210E149;
 Wed,  1 Feb 2023 13:58:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65474AADE1;
 Wed,  1 Feb 2023 13:58:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Wed, 01 Feb 2023 13:58:11 -0000
Message-ID: <167525989141.25549.11651590575983328193@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230201135329.514677-1-luciano.coelho@intel.com>
In-Reply-To: <20230201135329.514677-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_make_dev=5Fpriv_usage_explitic_in_some_macros?=
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

Series: drm/i915: make dev_priv usage explitic in some macros
URL   : https://patchwork.freedesktop.org/series/113555/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/113555/revisions/1/mbox/ not applied
Applying: drm/i915: make dev_priv usage explitic in some macros
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_power.c
M	drivers/gpu/drm/i915/display/intel_dvo.c
M	drivers/gpu/drm/i915/display/intel_pps.c
M	drivers/gpu/drm/i915/display/vlv_dsi.c
M	drivers/gpu/drm/i915/display/vlv_dsi_pll.c
M	drivers/gpu/drm/i915/i915_reg.h
M	drivers/gpu/drm/i915/intel_gvt_mmio_table.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_gvt_mmio_table.c
Auto-merging drivers/gpu/drm/i915/i915_reg.h
Auto-merging drivers/gpu/drm/i915/display/vlv_dsi_pll.c
Auto-merging drivers/gpu/drm/i915/display/vlv_dsi.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/vlv_dsi.c
Auto-merging drivers/gpu/drm/i915/display/intel_pps.c
Auto-merging drivers/gpu/drm/i915/display/intel_dvo.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.c
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: make dev_priv usage explitic in some macros
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


