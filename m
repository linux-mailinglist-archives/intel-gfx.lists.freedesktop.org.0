Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF33155F83
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 21:24:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0B96E103;
	Fri,  7 Feb 2020 20:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58B776E103;
 Fri,  7 Feb 2020 20:24:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54CEDA0094;
 Fri,  7 Feb 2020 20:24:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 07 Feb 2020 20:24:05 -0000
Message-ID: <158110704534.8753.9512121434129531526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Per_client_engine_busyness_=28rev4=29?=
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

Series: Per client engine busyness (rev4)
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
+drivers/gpu/drm/i915/i915_drm_client.c:208:17: error: incompatible types in comparison expression (different address spaces)

Commit: drm/i915: Make GEM contexts track DRM clients
Okay!

Commit: drm/i915: Track per-context engine busyness
Okay!

Commit: drm/i915: Track per drm client engine class busyness
Okay!

Commit: drm/i915: Expose per-engine client busyness
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
