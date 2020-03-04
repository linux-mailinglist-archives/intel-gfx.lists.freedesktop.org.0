Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C8A178902
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 04:13:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2326EAA8;
	Wed,  4 Mar 2020 03:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 416416EAA8;
 Wed,  4 Mar 2020 03:13:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C66CA011C;
 Wed,  4 Mar 2020 03:13:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 04 Mar 2020 03:13:07 -0000
Message-ID: <158329158715.429.8961785751230417136@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915/perf=3A_add_OA_interrupt_support_=28rev5=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev5)
URL   : https://patchwork.freedesktop.org/series/54280/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/display/intel_dpll_mgr.h:285: warning: Function parameter or member 'get_freq' not described in 'intel_shared_dpll_funcs'
./drivers/gpu/drm/i915/i915_perf_types.h:238: warning: Incorrect use of kernel-doc format:          * half_full_count_last: Copy of the atomic half_full_count that was
./drivers/gpu/drm/i915/i915_perf_types.h:332: warning: Function parameter or member 'half_full_count_last' not described in 'i915_perf_stream'
./drivers/gpu/drm/i915/i915_perf_types.h:238: warning: Incorrect use of kernel-doc format:          * half_full_count_last: Copy of the atomic half_full_count that was
./drivers/gpu/drm/i915/i915_perf_types.h:238: warning: Incorrect use of kernel-doc format:          * half_full_count_last: Copy of the atomic half_full_count that was
./drivers/gpu/drm/i915/i915_perf.c:683: warning: Function parameter or member 'oastatus' not described in 'gen8_append_oa_reports'
./drivers/gpu/drm/i915/i915_perf.c:981: warning: Function parameter or member 'oastatus1' not described in 'gen7_append_oa_reports'

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
