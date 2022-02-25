Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B38CC4C5205
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 00:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C5B110E1E2;
	Fri, 25 Feb 2022 23:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3D5710E1E2;
 Fri, 25 Feb 2022 23:23:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF100A00E8;
 Fri, 25 Feb 2022 23:23:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 25 Feb 2022 23:23:34 -0000
Message-ID: <164583141494.6271.13284425974548809032@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220225174118.1320237-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220225174118.1320237-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Fix_assert_in_i9?=
 =?utf-8?q?15=5Fggtt=5Fpin?=
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

Series: series starting with [1/2] drm/i915: Fix assert in i915_ggtt_pin
URL   : https://patchwork.freedesktop.org/series/100752/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4a30d90acaa9 drm/i915: Fix assert in i915_ggtt_pin
-:10: WARNING:TYPO_SPELLING: 'uknown' may be misspelled - perhaps 'unknown'?
#10: 
false positive are hit if lock state is uknown like after a previous
                                        ^^^^^^

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
a6883ad84986 dma-resv: Fix dma_resv_held


