Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0317F3DADF4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 22:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 683FC6EE70;
	Thu, 29 Jul 2021 20:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ED5866EE70;
 Thu, 29 Jul 2021 20:57:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7B6CA8832;
 Thu, 29 Jul 2021 20:57:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 29 Jul 2021 20:57:45 -0000
Message-ID: <162759226594.27327.9288814699996200028@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?emove_CNL_-_for_drm-intel-next_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Remove CNL - for drm-intel-next (rev2)
URL   : https://patchwork.freedesktop.org/series/93142/
State : failure

== Summary ==

Applying: drm/i915/display: remove PORT_F workaround for CNL
Applying: drm/i915/display: remove explicit CNL handling from intel_cdclk.c
Applying: drm/i915/display: remove explicit CNL handling from intel_color.c
Applying: drm/i915/display: remove explicit CNL handling from intel_combo_phy.c
Applying: drm/i915/display: remove explicit CNL handling from intel_crtc.c
Applying: drm/i915/display: remove explicit CNL handling from intel_ddi.c
Applying: drm/i915/display: remove explicit CNL handling from intel_display_debugfs.c
Applying: drm/i915/display: remove explicit CNL handling from intel_dmc.c
Applying: drm/i915/display: remove explicit CNL handling from intel_dp.c
Applying: drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/i915_reg.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0010 drm/i915/display: remove explicit CNL handling from intel_dpll_mgr.c
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
