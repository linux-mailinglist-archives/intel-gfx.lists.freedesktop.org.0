Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 643E5155A60
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 16:09:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02376E082;
	Fri,  7 Feb 2020 15:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85A796E081;
 Fri,  7 Feb 2020 15:09:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E98BA0071;
 Fri,  7 Feb 2020 15:09:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 07 Feb 2020 15:09:34 -0000
Message-ID: <158108817449.8754.2367478482242155261@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gem=3A_Don=27t_leak?=
 =?utf-8?q?_non-persistent_requests_on_changing_engines?=
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

Series: series starting with [1/3] drm/i915/gem: Don't leak non-persistent requests on changing engines
URL   : https://patchwork.freedesktop.org/series/73134/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9e3619244308 drm/i915/gem: Don't leak non-persistent requests on changing engines
-:249: WARNING:USE_SPINLOCK_T: struct spinlock should be spinlock_t
#249: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:184:
+		struct spinlock lock;

total: 0 errors, 1 warnings, 0 checks, 242 lines checked
faff3bde98f8 drm/i915: Disable use of hwsp_cacheline for kernel_context
8532f680f37f drm/i915/selftests: Relax timeout for error-interrupt reset processing

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
