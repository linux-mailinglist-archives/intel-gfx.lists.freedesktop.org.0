Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBCF184705
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 13:39:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CCD76E48C;
	Fri, 13 Mar 2020 12:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB67B6E48C;
 Fri, 13 Mar 2020 12:39:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7F0FA0019;
 Fri, 13 Mar 2020 12:39:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Navik, Ankit P" <ankit.p.navik@intel.com>
Date: Fri, 13 Mar 2020 12:39:05 -0000
Message-ID: <158410314594.30351.9510149590254187497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
In-Reply-To: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Dynamic_EU_configuration_of_Slice/Sub-slice/EU_=28rev5=29?=
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

Series: Dynamic EU configuration of Slice/Sub-slice/EU (rev5)
URL   : https://patchwork.freedesktop.org/series/69980/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Get active pending request for given context
+drivers/gpu/drm/i915/gt/intel_lrc.c:2162:61:    expected struct atomic_t const [usertype] *v
+drivers/gpu/drm/i915/gt/intel_lrc.c:2162:61:    got struct atomic_t [noderef] <asn:4> *
+drivers/gpu/drm/i915/gt/intel_lrc.c:2162:61: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/gt/intel_lrc.c:2163:64:    expected struct atomic_t [usertype] *v
+drivers/gpu/drm/i915/gt/intel_lrc.c:2163:64:    got struct atomic_t [noderef] <asn:4> *
+drivers/gpu/drm/i915/gt/intel_lrc.c:2163:64: warning: incorrect type in argument 1 (different address spaces)

Commit: drm/i915: set optimum eu/slice/sub-slice configuration based on load type
+drivers/gpu/drm/i915/gt/intel_lrc.c:3047:59:    expected struct i915_gem_context *ctx
+drivers/gpu/drm/i915/gt/intel_lrc.c:3047:59:    got struct i915_gem_context [noderef] <asn:4> *const gem_context
+drivers/gpu/drm/i915/gt/intel_lrc.c:3047:59: warning: incorrect type in argument 1 (different address spaces)
+drivers/gpu/drm/i915/gt/intel_lrc.c:3077:15: warning: dereference of noderef expression
+drivers/gpu/drm/i915/gt/intel_lrc.c:3077:45: warning: dereference of noderef expression
+drivers/gpu/drm/i915/gt/intel_lrc.c:3078:19: warning: dereference of noderef expression
+drivers/gpu/drm/i915/gt/intel_lrc.c:3078:48: warning: dereference of noderef expression

Commit: drm/i915: Predictive governor to control slice/subslice/eu
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
