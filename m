Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A75624AF642
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 17:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5245D8940F;
	Wed,  9 Feb 2022 16:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FBB78940F;
 Wed,  9 Feb 2022 16:14:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4ADF1A7DFB;
 Wed,  9 Feb 2022 16:14:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 16:14:13 -0000
Message-ID: <164442325327.23773.8448471499635276584@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220121113036.23240-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Futher_optimize_plane_updates_=28rev2=29?=
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

Series: drm/i915: Futher optimize plane updates (rev2)
URL   : https://patchwork.freedesktop.org/series/99149/
State : failure

== Summary ==

Applying: drm/i915: Clean up pre-skl primary plane registers
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/i9xx_plane.c
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/gvt/display.c
M	drivers/gpu/drm/i915/gvt/fb_decoder.c
M	drivers/gpu/drm/i915/i915_reg.h
M	drivers/gpu/drm/i915/intel_pm.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/intel_pm.c
Auto-merging drivers/gpu/drm/i915/i915_reg.h
Auto-merging drivers/gpu/drm/i915/gvt/fb_decoder.c
Auto-merging drivers/gpu/drm/i915/gvt/display.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gvt/display.c
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
Auto-merging drivers/gpu/drm/i915/display/i9xx_plane.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Clean up pre-skl primary plane registers
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


