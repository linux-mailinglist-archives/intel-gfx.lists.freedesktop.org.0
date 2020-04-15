Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D558E1A9BD6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 13:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F2976E965;
	Wed, 15 Apr 2020 11:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B559A6E964;
 Wed, 15 Apr 2020 11:11:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AEAE1A00C7;
 Wed, 15 Apr 2020 11:11:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 15 Apr 2020 11:11:35 -0000
Message-ID: <158694909571.21016.4716438644465775839@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Per_client_engine_busyness?=
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

Series: Per client engine busyness
URL   : https://patchwork.freedesktop.org/series/75967/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Expose list of clients in sysfs
Okay!

Commit: drm/i915: Update client name on context create
+drivers/gpu/drm/i915/i915_drm_client.c:130:23:    expected struct pid *pid
+drivers/gpu/drm/i915/i915_drm_client.c:130:23:    got struct pid [noderef] <asn:4> *pid
+drivers/gpu/drm/i915/i915_drm_client.c:130:23: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/i915_drm_client.c:131:21:    expected void const *
+drivers/gpu/drm/i915/i915_drm_client.c:131:21:    got char [noderef] <asn:4> *name
+drivers/gpu/drm/i915/i915_drm_client.c:131:21: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/i915_drm_client.c:232:17: error: incompatible types in comparison expression (different address spaces)

Commit: drm/i915: Make GEM contexts track DRM clients
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
