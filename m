Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA8B23EE9C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 16:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E9BE6E13B;
	Fri,  7 Aug 2020 14:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3BAE89242;
 Fri,  7 Aug 2020 14:07:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9DBD0A00E6;
 Fri,  7 Aug 2020 14:07:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 07 Aug 2020 14:07:24 -0000
Message-ID: <159680924461.26560.5140895635861729052@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200807125440.3419-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200807125440.3419-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915/gt=3A_Remove_defunc?=
 =?utf-8?q?t_intel=5Fvirtual=5Fengine=5Fget=5Fsibling=28=29?=
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

Series: series starting with [1/7] drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()
URL   : https://patchwork.freedesktop.org/series/80393/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f82f8ef253eb drm/i915/gt: Remove defunct intel_virtual_engine_get_sibling()
9d375c4552bf drm/i915/gt: Protect context lifetime with RCU
9676cd4fcbab drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
45d3f0fee88b drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
7f54c977c742 drm/i915/gt: Don't cancel the interrupt shadow too early
435242a104ce drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
<4>[  416.208555] list_add corruption. prev->next should be next (ffff8881951d5910), but was dead000000000100. (prev=ffff8882781bb870).

total: 0 errors, 1 warnings, 0 checks, 322 lines checked
cfd370c67224 drm/i915/gt: Free stale request on destroying the virtual engine


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
