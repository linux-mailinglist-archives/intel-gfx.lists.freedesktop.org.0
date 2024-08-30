Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BA49653BF
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 02:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5861E10E7B8;
	Fri, 30 Aug 2024 00:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0664810E7B8;
 Fri, 30 Aug 2024 00:02:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Miscelaneous_fixes_f?=
 =?utf-8?q?or_display_tracepoints?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2024 00:02:37 -0000
Message-ID: <172497615702.849885.13588598004736408505@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240829220106.80449-1-gustavo.sousa@intel.com>
In-Reply-To: <20240829220106.80449-1-gustavo.sousa@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Miscelaneous fixes for display tracepoints
URL   : https://patchwork.freedesktop.org/series/137978/
State : warning

== Summary ==

Error: dim checkpatch failed
0d985968394b drm/i915/display: Fix out-of-bounds access in pipe-related tracepoints
-:19: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#19: 
         testdisplay-6715  [002] 17591.063491: intel_pipe_enable:     dev=0000:00:02.0

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
9c55f3e323a3 drm/i915/display: Store pipe name in trace events
-:20: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#20: 
    # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_update_start/format

total: 0 errors, 1 warnings, 0 checks, 488 lines checked
29d4bb0aeb33 drm/i915/display: Do not use ids from enum pipe in TP_printk()
-:14: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#14: 
    # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_enable/format | grep '^print fmt'

total: 0 errors, 1 warnings, 0 checks, 51 lines checked
2256bbde484d drm/i915/display: Cover all possible pipes in TP_printk()
-:47: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#47: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:51:
+#define _PIPES_FRAME_AND_SCANLINE_VALUES					\
+	__entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A]		\
+	, __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B]	\
+	, __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C]	\
+	, __entry->frame[_TRACE_PIPE_D], __entry->scanline[_TRACE_PIPE_D]

total: 1 errors, 0 warnings, 0 checks, 68 lines checked


