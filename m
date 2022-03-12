Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0934D6B81
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Mar 2022 01:43:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D19E310E037;
	Sat, 12 Mar 2022 00:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 28B9C10E036;
 Sat, 12 Mar 2022 00:43:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22C2CAA01E;
 Sat, 12 Mar 2022 00:43:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Sat, 12 Mar 2022 00:43:07 -0000
Message-ID: <164704578711.29600.12198650056957022275@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220312001344.1314090-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220312001344.1314090-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBB?=
 =?utf-8?q?dd_GuC_Error_Capture_Support?=
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

Series: Add GuC Error Capture Support
URL   : https://patchwork.freedesktop.org/series/101307/
State : failure

== Summary ==

Applying: drm/i915/guc: Update GuC ADS size for error capture lists
Applying: drm/i915/guc: Add XE_LP static registers for GuC error capture.
Applying: drm/i915/guc: Add XE_LP steered register lists support
Applying: drm/i915/guc: Add DG2 registers for GuC error state capture.
Applying: drm/i915/guc: Add Gen9 registers for GuC error state capture.
Applying: drm/i915/guc: Add GuC's error state capture output structures.
Applying: drm/i915/guc: Update GuC-log relay function names
Applying: drm/i915/guc: Add capture region into intel_guc_log
Applying: drm/i915/guc: Check sizing of guc_capture output
Applying: drm/i915/guc: Extract GuC error capture lists on G2H notification.
Applying: drm/i915/guc: Pre-allocate output nodes for extraction
Applying: drm/i915/guc: Plumb GuC-capture into gpu_coredump
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0012 drm/i915/guc: Plumb GuC-capture into gpu_coredump
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


