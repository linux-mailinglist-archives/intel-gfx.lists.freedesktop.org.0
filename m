Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E28C4ED02B
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 01:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CACFD10E1DA;
	Wed, 30 Mar 2022 23:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77FF510E1DA;
 Wed, 30 Mar 2022 23:31:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72C8FA47DF;
 Wed, 30 Mar 2022 23:31:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 30 Mar 2022 23:31:37 -0000
Message-ID: <164868309746.8658.5246963604638732768@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220330232858.3204283-1-matthew.d.roper@intel.com>
In-Reply-To: <20220330232858.3204283-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBp?=
 =?utf-8?q?915=3A_Explicit_handling_of_multicast_registers?=
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

Series: i915: Explicit handling of multicast registers
URL   : https://patchwork.freedesktop.org/series/101992/
State : failure

== Summary ==

Applying: drm/i915/gen8: Create separate reg definitions for new MCR registers
Applying: drm/i915/xehp: Create separate reg definitions for new MCR registers
Applying: drm/i915/gt: Drop a few unused register definitions
Applying: drm/i915/gt: Correct prefix on a few registers
Applying: drm/i915/xehp: Check for faults on all mslices
Applying: drm/i915: Drop duplicated definition of XEHPSDV_FLAT_CCS_BASE_ADDR
Applying: drm/i915: Move XEHPSDV_TILE0_ADDR_RANGE to GT register header
Applying: drm/i915: Define MCR registers explicitly
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gt/intel_gt_regs.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0008 drm/i915: Define MCR registers explicitly
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


