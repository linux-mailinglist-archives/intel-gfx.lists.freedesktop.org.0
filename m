Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACECD17E81F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 20:13:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143EF6E51C;
	Mon,  9 Mar 2020 19:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DA366E51C;
 Mon,  9 Mar 2020 19:13:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96135A011C;
 Mon,  9 Mar 2020 19:13:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 09 Mar 2020 19:13:51 -0000
Message-ID: <158378123158.9451.3446320726967490637@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Per_client_engine_busyness_=28rev5=29?=
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

Series: Per client engine busyness (rev5)
URL   : https://patchwork.freedesktop.org/series/70977/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Expose list of clients in sysfs
Okay!

Commit: drm/i915: Update client name on context create
+drivers/gpu/drm/i915/i915_drm_client.c:102:23:    expected struct pid *pid
+drivers/gpu/drm/i915/i915_drm_client.c:102:23:    got struct pid [noderef] <asn:4> *pid
+drivers/gpu/drm/i915/i915_drm_client.c:102:23: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/i915_drm_client.c:211:17: error: incompatible types in comparison expression (different address spaces)

Commit: drm/i915: Make GEM contexts track DRM clients
Okay!

Commit: drm/i915: Use explicit flag to mark unreachable intel_context
+drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2551:24: error: incompatible types in comparison expression (different address spaces)

Commit: drm/i915: Track runtime spent in unreachable intel_contexts
Okay!

Commit: drm/i915: Track runtime spent in closed GEM contexts
Okay!

Commit: drm/i915: Track all user contexts per client
Okay!

Commit: drm/i915: Expose per-engine client busyness
Okay!

Commit: drm/i915: Track per-context engine busyness
Okay!

Commit: drm/i915: Carry over past software tracked context runtime
Okay!

Commit: drm/i915: Prefer software tracked context busyness
Okay!

Commit: compare runtimes
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
