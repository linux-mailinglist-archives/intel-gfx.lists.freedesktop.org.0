Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0F8497C6D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA66410E14B;
	Mon, 24 Jan 2022 09:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9508510E14B;
 Mon, 24 Jan 2022 09:49:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91D88AA914;
 Mon, 24 Jan 2022 09:49:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Mon, 24 Jan 2022 09:49:18 -0000
Message-ID: <164301775856.1340.9744247748658886876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Async_flip_optimization_for_DG2_=28rev5=29?=
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

Series: Async flip optimization for DG2 (rev5)
URL   : https://patchwork.freedesktop.org/series/98981/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
58dc909288f9 drm/i915: Pass plane to watermark calculation functions
a8601bc34503 drm/i915: Introduce do_async_flip flag to intel_plane_state
aeefcd12bb9c drm/i915: Use wm0 only during async flips for DG2
-:9: WARNING:TYPO_SPELLING: 'perfomance' may be misspelled - perhaps 'performance'?
#9: 
This optimization allows to achieve higher perfomance
                                           ^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
bdb0b08414b0 drm/i915: Don't allocate extra ddb during async flip for DG2
-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.h:27:
+struct intel_plane *intel_crtc_get_plane(struct intel_crtc *crtc,
+					  enum plane_id plane_id);

total: 0 errors, 0 warnings, 1 checks, 116 lines checked


