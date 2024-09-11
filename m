Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E42975AD6
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 21:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4025910E6EE;
	Wed, 11 Sep 2024 19:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A8910E6EE;
 Wed, 11 Sep 2024 19:29:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Ultrajoiner_basic_functio?=
 =?utf-8?q?nality_series_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2024 19:29:36 -0000
Message-ID: <172608297622.987763.16233118236732047429@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

Series: Ultrajoiner basic functionality series (rev8)
URL   : https://patchwork.freedesktop.org/series/133800/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/133800/revisions/8/mbox/ not applied
Applying: drm/i915/display: Check whether platform supports joiner
Applying: drm/i915/display: Modify debugfs for joiner to force n pipes
Applying: drm/i915/display_debugfs: Allow force joiner only if supported
Applying: drm/i915/dp: Add helper to compute num pipes joined
Applying: drm/i915/display: Add debugfs support to avoid joiner
Applying: drm/i915/display: Simplify intel_joiner_num_pipes and its usage
Applying: drm/i915/display: Use joined pipes in intel_dp_joiner_needs_dsc
Applying: drm/i915/display: Use joined pipes in intel_mode_valid_max_plane_size
Applying: drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0009 drm/i915/display: Use joined pipes in dsc helpers for slices, bpp
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


