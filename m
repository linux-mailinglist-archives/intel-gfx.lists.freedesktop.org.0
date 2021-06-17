Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E671E3ABDC7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90CD36E952;
	Thu, 17 Jun 2021 21:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38F616E930;
 Thu, 17 Jun 2021 21:07:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34B37A0BCB;
 Thu, 17 Jun 2021 21:07:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 17 Jun 2021 21:07:49 -0000
Message-ID: <162396406921.3751.5658374235498703036@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210616004213.1705079-1-matthew.d.roper@intel.com>
In-Reply-To: <20210616004213.1705079-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBF?=
 =?utf-8?q?xplicity_steer_l3bank_multicast_reads_when_necessary_=28rev6=29?=
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

Series: Explicity steer l3bank multicast reads when necessary (rev6)
URL   : https://patchwork.freedesktop.org/series/91485/
State : failure

== Summary ==

Applying: drm/i915: extract steered reg access to common function
Applying: drm/i915: Add GT support for multiple types of multicast steering
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_gt.c
M	drivers/gpu/drm/i915/gt/intel_gt_types.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_gt_types.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_gt_types.h
Auto-merging drivers/gpu/drm/i915/gt/intel_gt.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915: Add GT support for multiple types of multicast steering
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
