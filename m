Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F68A1625A8
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 12:41:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C8B6E9EB;
	Tue, 18 Feb 2020 11:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA8C36E9EA;
 Tue, 18 Feb 2020 11:41:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2D57A47E9;
 Tue, 18 Feb 2020 11:41:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 11:41:37 -0000
Message-ID: <158202609763.31432.14594036448582925212@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218111624.1198504-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915/gt=3A_Show_the_cumu?=
 =?utf-8?q?lative_context_runtime_in_engine_debug?=
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

Series: series starting with [1/6] drm/i915/gt: Show the cumulative context runtime in engine debug
URL   : https://patchwork.freedesktop.org/series/73567/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bc3998499b8b drm/i915/gt: Show the cumulative context runtime in engine debug
-:35: WARNING:LONG_LINE: line over 100 characters
#35: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1393:
+						DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
a5a21f76779e drm/i915/execlists: Check the sentinel is alone in the ELSP
6f9a3708f010 drm/i915/gt: Fix up missing error propagation for heartbeat pulses
0b1cbf2f8e55 drm/i915/gt: Prevent allocation on a banned context
80b24ffec43b drm/i915/gem: Check that the context wasn't closed during setup
25201c4b415a drm/i915/gem: Consolidate ctx->engines[] release

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
