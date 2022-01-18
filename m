Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B98493045
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 23:01:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF4A10E2CA;
	Tue, 18 Jan 2022 22:01:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3F8110E19F;
 Tue, 18 Jan 2022 22:01:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0130AA914;
 Tue, 18 Jan 2022 22:01:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 18 Jan 2022 22:01:04 -0000
Message-ID: <164254326468.25099.2131434745942433312@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220118214357.33740-1-matthew.brost@intel.com>
In-Reply-To: <20220118214357.33740-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Flush_G2H_handler_during_a_GT_reset_=28rev2=29?=
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

Series: Flush G2H handler during a GT reset (rev2)
URL   : https://patchwork.freedesktop.org/series/98855/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
49cfdd902b91 drm/i915: Allocate intel_engine_coredump_alloc with ALLOW_FAIL
ac359b31efe8 drm/i915/guc: Add work queue to trigger a GT reset
7ccc4752e12a drm/i915/guc: Flush G2H handler during a GT reset
-:49: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Matthew Brost <matthew.brost@intel.com>' != 'Signed-off-by: Matthew Brost <mattthew.brost@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 30 lines checked


