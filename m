Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A958436E301
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 03:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181816ECE0;
	Thu, 29 Apr 2021 01:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FD836ECE0;
 Thu, 29 Apr 2021 01:34:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C279A00CC;
 Thu, 29 Apr 2021 01:34:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 29 Apr 2021 01:34:27 -0000
Message-ID: <161966006715.20425.14687834517179642780@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429003410.69754-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20210429003410.69754-1-umesh.nerlige.ramappa@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/89615/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./include/uapi/drm/i915_drm.h:2234: warning: Incorrect use of kernel-doc format:          * Query Command Streamer timestamp register.
./include/uapi/drm/i915_drm.h:2420: warning: Incorrect use of kernel-doc format:          * Command streamer cycles as read from the command streamer
./include/uapi/drm/i915_drm.h:2429: warning: Incorrect use of kernel-doc format:          * CPU timestamp in ns. The timestamp is captured before reading the
./include/uapi/drm/i915_drm.h:2435: warning: Incorrect use of kernel-doc format:          * Time delta in ns captured around reading the lower dword of the
./include/uapi/drm/i915_drm.h:2441: warning: Incorrect use of kernel-doc format:          * Reference clock id for CPU timestamp. For definition, see
./include/uapi/drm/i915_drm.h:2450: warning: Function parameter or member 'engine' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2450: warning: Function parameter or member 'flags' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2450: warning: Function parameter or member 'cs_cycles' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2450: warning: Function parameter or member 'cs_frequency' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2450: warning: Function parameter or member 'cpu_timestamp' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2450: warning: Function parameter or member 'cpu_delta' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2450: warning: Function parameter or member 'clockid' not described in 'drm_i915_query_cs_cycles'
./include/uapi/drm/i915_drm.h:2450: warning: Function parameter or member 'rsvd' not described in 'drm_i915_query_cs_cycles'


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
