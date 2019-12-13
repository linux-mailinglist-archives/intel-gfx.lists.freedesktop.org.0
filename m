Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1369D11ED29
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 22:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720C46EDE0;
	Fri, 13 Dec 2019 21:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 764996EDE0;
 Fri, 13 Dec 2019 21:48:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F429A0091;
 Fri, 13 Dec 2019 21:48:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Venkata Sandeep Dhanalakota" <venkata.s.dhanalakota@intel.com>
Date: Fri, 13 Dec 2019 21:48:26 -0000
Message-ID: <157627370645.23797.10947156602318868852@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213155152.69182-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191213155152.69182-1-venkata.s.dhanalakota@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/perf=3A_Register_sysctl_?=
 =?utf-8?q?path_globally?=
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

Series: series starting with [1/2] drm/i915/perf: Register sysctl path globally
URL   : https://patchwork.freedesktop.org/series/70888/
State : failure

== Summary ==

Applying: drm/i915/perf: Register sysctl path globally
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_pci.c
M	drivers/gpu/drm/i915/i915_perf.c
M	drivers/gpu/drm/i915/i915_perf.h
M	drivers/gpu/drm/i915/i915_perf_types.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_perf.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_perf.c
Auto-merging drivers/gpu/drm/i915/i915_pci.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0001 drm/i915/perf: Register sysctl path globally
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
