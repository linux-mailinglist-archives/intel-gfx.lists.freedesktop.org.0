Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDF2172E75
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C246EDB4;
	Fri, 28 Feb 2020 02:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E99DF6E993;
 Fri, 28 Feb 2020 02:02:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2069A3C0D;
 Fri, 28 Feb 2020 02:02:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ross Zwisler" <zwisler@google.com>
Date: Fri, 28 Feb 2020 02:02:16 -0000
Message-ID: <158285533689.7474.17251310730710139690@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <877e08shcs.fsf@intel.com>
In-Reply-To: <877e08shcs.fsf@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/psr=3A_Force_PSR_probe_only_after_full_initialization_?=
 =?utf-8?b?KHJldjgp?=
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

Series: drm/i915/psr: Force PSR probe only after full initialization (rev8)
URL   : https://patchwork.freedesktop.org/series/73436/
State : failure

== Summary ==

Applying: drm/i915/psr: Force PSR probe only after full initialization
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_psr.c
M	drivers/gpu/drm/i915/display/intel_psr.h
M	drivers/gpu/drm/i915/i915_drv.c
M	drivers/gpu/drm/i915/i915_drv.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_drv.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_drv.h
Auto-merging drivers/gpu/drm/i915/i915_drv.c
Auto-merging drivers/gpu/drm/i915/display/intel_psr.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0001 drm/i915/psr: Force PSR probe only after full initialization
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
