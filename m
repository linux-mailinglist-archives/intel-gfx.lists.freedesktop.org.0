Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AB71706ED
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 19:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C016EB47;
	Wed, 26 Feb 2020 18:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C32E66E442;
 Wed, 26 Feb 2020 18:04:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2FFAA47E8;
 Wed, 26 Feb 2020 18:04:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 26 Feb 2020 18:04:54 -0000
Message-ID: <158274029470.21012.16348260958164429939@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Proper_dbuf_global_state_=28rev2=29?=
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

Series: drm/i915: Proper dbuf global state (rev2)
URL   : https://patchwork.freedesktop.org/series/73421/
State : failure

== Summary ==

Applying: drm/i915: Handle some leftover s/intel_crtc/crtc/
Applying: drm/i915: Remove garbage WARNs
Applying: drm/i915: Add missing commas to dbuf tables
Applying: drm/i915: Use a sentinel to terminate the dbuf slice arrays
Applying: drm/i915: Make skl_compute_dbuf_slices() behave consistently for all platforms
Applying: drm/i915: Polish some dbuf debugs
Applying: drm/i915: Unify the low level dbuf code
Applying: drm/i915: Introduce proper dbuf state
Applying: drm/i915: Nuke skl_ddb_get_hw_state()
Applying: drm/i915: Move the dbuf pre/post plane update
Applying: drm/i915: Clean up dbuf debugs during .atomic_check()
Applying: drm/i915: Extract intel_crtc_ddb_weight()
Applying: drm/i915: Pass the crtc to skl_compute_dbuf_slices()
Applying: drm/i915: Introduce intel_dbuf_slice_size()
Applying: drm/i915: Introduce skl_ddb_entry_for_slices()
Applying: drm/i915: Move pipe ddb entries into the dbuf state
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0016 drm/i915: Move pipe ddb entries into the dbuf state
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
