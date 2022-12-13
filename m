Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B509364B609
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 14:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD04110E0F0;
	Tue, 13 Dec 2022 13:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D430510E0F0;
 Tue, 13 Dec 2022 13:24:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CFB13AADD7;
 Tue, 13 Dec 2022 13:24:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 13 Dec 2022 13:24:51 -0000
Message-ID: <167093789184.25539.5724009602125596082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221213123917.4066375-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221213123917.4066375-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_fix_TLB_invalida?=
 =?utf-8?q?tion_for_Gen12=2E50_video_and_compute_engines?=
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

Series: series starting with [1/2] drm/i915: fix TLB invalidation for Gen12.50 video and compute engines
URL   : https://patchwork.freedesktop.org/series/111895/
State : warning

== Summary ==

Error: dim checkpatch failed
63a3c046d3e0 drm/i915: fix TLB invalidation for Gen12.50 video and compute engines
a48a6c2b60fa drm/i915: Consolidate TLB invalidation flow
-:128: ERROR:OPEN_BRACE: open brace '{' following struct go on the same line
#128: FILE: drivers/gpu/drm/i915/gt/intel_engine_types.h:350:
+struct intel_engine_tlb_inv
+{

total: 1 errors, 0 warnings, 0 checks, 299 lines checked


