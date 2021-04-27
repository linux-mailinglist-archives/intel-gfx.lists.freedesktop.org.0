Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2739536CE86
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 00:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CD26E9F0;
	Tue, 27 Apr 2021 22:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8ABD16E9EC;
 Tue, 27 Apr 2021 22:16:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81C6BA3ECB;
 Tue, 27 Apr 2021 22:16:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 27 Apr 2021 22:16:24 -0000
Message-ID: <161956178452.17486.14500946875179429122@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427214913.46956-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210427214913.46956-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIEFk?=
 =?utf-8?q?d_support_for_querying_engine_cycles?=
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

Series: Add support for querying engine cycles
URL   : https://patchwork.freedesktop.org/series/89560/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./include/uapi/drm/i915_drm.h:2234: warning: Incorrect use of kernel-doc format:          * Query Command Streamer timestamp register.
./include/uapi/drm/i915_drm.h:2420: warning: Incorrect use of kernel-doc format:          * Command streamer cycles as read from the command streamer
./include/uapi/drm/i915_drm.h:2429: warning: Incorrect use of kernel-doc format:          * CPU timestamps in ns. cpu_timestamp[0] is captured before reading the
./include/uapi/drm/i915_drm.h:2437: warning: Incorrect use of kernel-doc format:          * Reference clock id for CPU timestamp. For definition, see
./include/uapi/drm/i915_drm.h:2446: warning: Function parameter or member 'engine' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2446: warning: Function parameter or member 'flags' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2446: warning: Function parameter or member 'cs_cycles' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2446: warning: Function parameter or member 'cs_frequency' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2446: warning: Function parameter or member 'cpu_timestamp' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2446: warning: Function parameter or member 'clockid' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2446: warning: Function parameter or member 'rsvd' not described in 'drm_i915_query_cs_cycles'


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
