Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC31826FA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 03:14:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD3486E029;
	Thu, 12 Mar 2020 02:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D51B16E029;
 Thu, 12 Mar 2020 02:14:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6AFDA0094;
 Thu, 12 Mar 2020 02:14:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 12 Mar 2020 02:14:55 -0000
Message-ID: <158397929578.4949.8292886742669222848@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Per_client_engine_busyness_=28rev6=29?=
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

Series: Per client engine busyness (rev6)
URL   : https://patchwork.freedesktop.org/series/70977/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Expose list of clients in sysfs
Okay!

Commit: drm/i915: Update client name on context create
+drivers/gpu/drm/i915/i915_drm_client.c:132:23:    expected struct pid *pid
+drivers/gpu/drm/i915/i915_drm_client.c:132:23:    got struct pid [noderef] <asn:4> *pid
+drivers/gpu/drm/i915/i915_drm_client.c:132:23: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/i915_drm_client.c:133:21:    expected void const *
+drivers/gpu/drm/i915/i915_drm_client.c:133:21:    got char [noderef] <asn:4> *name
+drivers/gpu/drm/i915/i915_drm_client.c:133:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/i915_drm_client.c:235:17: error: incompatible types in comparison expression (different address spaces)

Commit: drm/i915: Make GEM contexts track DRM clients
Okay!

Commit: drm/i915: Use explicit flag to mark unreachable intel_context
Okay!

Commit: drm/i915: Track runtime spent in unreachable intel_contexts
Okay!

Commit: drm/i915: Track runtime spent in closed GEM contexts
Okay!

Commit: drm/i915: Track all user contexts per client
Okay!

Commit: drm/i915: Expose per-engine client busyness
Okay!

Commit: drm/i915: Track context current active time
Okay!

Commit: drm/i915: Prefer software tracked context busyness
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
