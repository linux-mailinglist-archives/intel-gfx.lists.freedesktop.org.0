Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8AE5AA0B6
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 22:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D4210E213;
	Thu,  1 Sep 2022 20:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E4BC10E20D;
 Thu,  1 Sep 2022 20:11:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25B81AAA91;
 Thu,  1 Sep 2022 20:11:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Thu, 01 Sep 2022 20:11:38 -0000
Message-ID: <166206309813.11921.15500700904983435432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220901193228.255098-1-rodrigo.vivi@intel.com>
In-Reply-To: <20220901193228.255098-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Move_some_of_the?=
 =?utf-8?q?_request_decisions_out_of_rps=5Fboost_function=2E?=
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

Series: series starting with [1/2] drm/i915: Move some of the request decisions out of rps_boost function.
URL   : https://patchwork.freedesktop.org/series/108048/
State : warning

== Summary ==

Error: dim checkpatch failed
a285a0d0be8a drm/i915: Move some of the request decisions out of rps_boost function.
-:82: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#82: FILE: drivers/gpu/drm/i915/i915_request.h:631:
+	return i915_request_signaled(rq)
+		&& test_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);

total: 0 errors, 0 warnings, 1 checks, 45 lines checked
64ba2dbf4ab0 drm/i915: Don't try to disable host RPS when this was never enabled.


