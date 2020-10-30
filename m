Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5681C2A045F
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 12:37:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF6CD6EDB4;
	Fri, 30 Oct 2020 11:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F2966EDA2;
 Fri, 30 Oct 2020 11:37:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B2C8A8835;
 Fri, 30 Oct 2020 11:37:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 30 Oct 2020 11:37:35 -0000
Message-ID: <160405785510.23387.3977119399824166648@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201030111001.7685-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201030111001.7685-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915/gt=3A_Wrap_intel=5F?=
 =?utf-8?q?timeline=2Ehas=5Finitial=5Fbreadcrumb?=
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

Series: series starting with [1/7] drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
URL   : https://patchwork.freedesktop.org/series/83269/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a14ed43522cc drm/i915/gt: Wrap intel_timeline.has_initial_breadcrumb
ace8d5c1c529 drm/i915/gt: Track timeline GGTT offset seperately from subpage offset
-:4: WARNING:TYPO_SPELLING: 'seperately' may be misspelled - perhaps 'separately'?
#4: 
Subject: [PATCH] drm/i915/gt: Track timeline GGTT offset seperately from

total: 0 errors, 1 warnings, 0 checks, 147 lines checked
a9096b3c91b5 drm/i915/gt: Add timeline "mode"
53ec4f9202bb drm/i915/gt: Expose more parameters for emitting writes into the ring
8345610b1f7e drm/i915/gt: Use indices for writing into relative timelines
3e10e00a5e5c drm/i915/selftests: Exercise relative timeline modes
8b8654437016 drm/i915/gt: Use ppHWSP for unshared non-semaphore related timelines


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
