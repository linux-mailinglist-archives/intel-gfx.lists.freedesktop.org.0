Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0013D347960
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 14:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032FF6E9FD;
	Wed, 24 Mar 2021 13:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E2F26E9D6;
 Wed, 24 Mar 2021 13:16:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8763AA9932;
 Wed, 24 Mar 2021 13:16:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 24 Mar 2021 13:16:48 -0000
Message-ID: <161659180852.19036.1948952778297658102@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210324121335.2307063-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210324121335.2307063-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Default_request/fence_expiry_+_watchdog_=28rev5=29?=
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

Series: Default request/fence expiry + watchdog (rev5)
URL   : https://patchwork.freedesktop.org/series/87930/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8fc435bf4d9f drm/i915: Extract active lookup engine to a helper
-:114: CHECK:LINE_SPACING: Please don't use multiple blank lines
#114: FILE: drivers/gpu/drm/i915/i915_request.c:290:
+
+

total: 0 errors, 0 warnings, 1 checks, 104 lines checked
eee19b9617fc drm/i915: Individual request cancellation
263ce11450a2 drm/i915: Restrict sentinel requests further
9d6ef50b29a0 drm/i915: Handle async cancellation in sentinel assert
d0d85357b1fb drm/i915: Request watchdog infrastructure
22d460cbf87f drm/i915: Fail too long user submissions by default
d81b27e279a2 drm/i915: Allow configuring default request expiry via modparam


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
