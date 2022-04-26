Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA92510A18
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 22:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A1110E449;
	Tue, 26 Apr 2022 20:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F1A910E231;
 Tue, 26 Apr 2022 20:15:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D28EAADD1;
 Tue, 26 Apr 2022 20:15:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 26 Apr 2022 20:15:57 -0000
Message-ID: <165100415724.12384.1992850686928708256@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220426183717.27099-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220426183717.27099-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Start_reordering_modeset_clock_calculations_=28rev6?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Start reordering modeset clock calculations (rev6)
URL   : https://patchwork.freedesktop.org/series/101789/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/101789/revisions/6/mbox/ not applied
Applying: drm/i915: Split shared dpll .get_dplls() into compute and get phases
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_dpll.c
M	drivers/gpu/drm/i915/display/intel_dpll_mgr.c
M	drivers/gpu/drm/i915/display/intel_dpll_mgr.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dpll_mgr.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dpll_mgr.h
Auto-merging drivers/gpu/drm/i915/display/intel_dpll_mgr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dpll_mgr.c
Auto-merging drivers/gpu/drm/i915/display/intel_dpll.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dpll.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Split shared dpll .get_dplls() into compute and get phases
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


