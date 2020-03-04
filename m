Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC5E1788C7
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 03:58:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A75616EAA5;
	Wed,  4 Mar 2020 02:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 463F26EAA5;
 Wed,  4 Mar 2020 02:58:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F0F7A0094;
 Wed,  4 Mar 2020 02:58:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 04 Mar 2020 02:58:18 -0000
Message-ID: <158329069825.431.3298930038093881811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915/perf=3A_add_OA_interrupt_support_=28rev5=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev5)
URL   : https://patchwork.freedesktop.org/series/54280/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915/perf: rework aging tail workaround
Okay!

Commit: drm/i915/perf: move pollin setup to non hw specific code
-O:drivers/gpu/drm/i915/i915_perf.c:1443:15: warning: memset with byte count of 16777216
-O:drivers/gpu/drm/i915/i915_perf.c:1499:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1443:15: warning: memset with byte count of 16777216
+drivers/gpu/drm/i915/i915_perf.c:1497:15: warning: memset with byte count of 16777216

Commit: drm/i915/perf: only append status when data is available
Okay!

Commit: drm/i915/perf: add new open param to configure polling of OA buffer
Okay!

Commit: drm/i915: handle interrupts from the OA unit
Okay!

Commit: drm/i915/perf: add interrupt enabling parameter
+drivers/gpu/drm/i915/i915_perf.c:569:9: warning: context imbalance in 'oa_buffer_check' - different lock contexts for basic block

Commit: drm/i915/perf: add flushing ioctl
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
