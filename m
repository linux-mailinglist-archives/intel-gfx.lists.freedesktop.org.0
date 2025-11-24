Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 797B1C8273E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 21:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38B810E0ED;
	Mon, 24 Nov 2025 20:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D786310E0ED;
 Mon, 24 Nov 2025 20:56:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/display=3A_switc?=
 =?utf-8?q?h_from_intel=5Fwakeref=5Ft_to_struct_ref=5Ftracker_*?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Nov 2025 20:56:12 -0000
Message-ID: <176401777287.21836.16802123058959008554@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <cover.1763729370.git.jani.nikula@intel.com>
In-Reply-To: <cover.1763729370.git.jani.nikula@intel.com>
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

Series: drm/i915/display: switch from intel_wakeref_t to struct ref_tracker *
URL   : https://patchwork.freedesktop.org/series/157906/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/157906/revisions/1/mbox/ not applied
Applying: drm/i915/pps: drop wakeref parameter from with_intel_pps_lock()
Applying: drm/i915/pps: convert intel_wakeref_t to struct ref_tracker *
Applying: drm/i915/power: drop wakeref parameter from with_intel_display_power*()
Applying: drm/i915/power: convert intel_wakeref_t to struct ref_tracker *
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0004 drm/i915/power: convert intel_wakeref_t to struct ref_tracker *
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


