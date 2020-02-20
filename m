Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C60416564B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 05:34:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950C96ECD4;
	Thu, 20 Feb 2020 04:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 273EE6ECD3;
 Thu, 20 Feb 2020 04:33:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F791A0088;
 Thu, 20 Feb 2020 04:33:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Feb 2020 04:33:59 -0000
Message-ID: <158217323909.17409.4208146894689220904@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220014325.1527804-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200220014325.1527804-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/4=5D_drm/i915=3A_Add_mechanism_to_sub?=
 =?utf-8?q?mit_a_context_WA_on_ring_submission?=
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

Series: series starting with [1/4] drm/i915: Add mechanism to submit a context WA on ring submission
URL   : https://patchwork.freedesktop.org/series/73688/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Add mechanism to submit a context WA on ring submission
Okay!

Commit: drm/i915/gen7: Clear all EU/L3 residual contexts
+drivers/gpu/drm/i915/gt/gen7_5_clearbuffer.h:14:11: warning: symbol 'hsw_eu_kernel' was not declared. Should it be static?
+drivers/gpu/drm/i915/gt/gen7_clearbuffer.h:14:11: warning: symbol 'ivb_eu_kernel' was not declared. Should it be static?

Commit: fix
Okay!

Commit: tidy
-O:drivers/gpu/drm/i915/gt/gen7_5_clearbuffer.h:14:11: warning: symbol 'hsw_eu_kernel' was not declared. Should it be static?
-O:drivers/gpu/drm/i915/gt/gen7_clearbuffer.h:14:11: warning: symbol 'ivb_eu_kernel' was not declared. Should it be static?
+

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
