Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F531630A4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 20:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA60C6E3D2;
	Tue, 18 Feb 2020 19:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04D816E3C1;
 Tue, 18 Feb 2020 19:51:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F060FA0138;
 Tue, 18 Feb 2020 19:51:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 19:51:47 -0000
Message-ID: <158205550795.31431.8250307657637261575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915/gt=3A_Show_the_cumu?=
 =?utf-8?q?lative_context_runtime_in_engine_debug_=28rev3=29?=
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

Series: series starting with [1/6] drm/i915/gt: Show the cumulative context runtime in engine debug (rev3)
URL   : https://patchwork.freedesktop.org/series/73567/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e1dc2d81cb6a drm/i915/gt: Show the cumulative context runtime in engine debug
-:35: WARNING:LONG_LINE: line over 100 characters
#35: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1393:
+						DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
f8058a6a339b drm/i915/execlists: Check the sentinel is alone in the ELSP
95d5a65c62ea drm/i915/gt: Fix up missing error propagation for heartbeat pulses
51a299b7d6d2 drm/i915/gt: Prevent allocation on a banned context
6e9aa6de237d drm/i915/gem: Check that the context wasn't closed during setup
540b8e659c60 drm/i915/gem: Consolidate ctx->engines[] release

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
