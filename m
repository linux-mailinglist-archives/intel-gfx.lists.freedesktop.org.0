Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE0F9A128F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 21:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39C7110E762;
	Wed, 16 Oct 2024 19:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29A8E10E764;
 Wed, 16 Oct 2024 19:32:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Miscelaneous_fixes_f?=
 =?utf-8?q?or_display_tracepoints_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2024 19:32:15 -0000
Message-ID: <172910713516.1275582.8104063942310023859@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241016135300.21428-1-gustavo.sousa@intel.com>
In-Reply-To: <20241016135300.21428-1-gustavo.sousa@intel.com>
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

Series: Miscelaneous fixes for display tracepoints (rev4)
URL   : https://patchwork.freedesktop.org/series/137978/
State : warning

== Summary ==

Error: dim checkpatch failed
8807b4f2c0c4 drm/i915/display: Fix out-of-bounds access in pipe-related tracepoints
-:22: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#22: 
         testdisplay-6715  [002] 17591.063491: intel_pipe_enable:     dev=0000:00:02.0

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
2bc22b4cfcdd drm/i915/display: Zero-initialize frame/scanline counts in tracepoints
-:22: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#22: 
[1] https://lore.kernel.org/all/20240918224927.GU5091@mdroper-desk1.amr.corp.intel.com/

total: 0 errors, 1 warnings, 0 checks, 37 lines checked
62c99970f3fd drm/i915/display: Store pipe name in trace events
-:23: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#23: 
    # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_update_start/format

total: 0 errors, 1 warnings, 0 checks, 488 lines checked
ff75151e8161 drm/i915/display: Do not use ids from enum pipe in TP_printk()
-:17: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#17: 
    # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_enable/format | grep '^print fmt'

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
baa85ea4de13 drm/i915/display: Cover all possible pipes in TP_printk()
-:52: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#52: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:52:
+#define _PIPES_FRAME_AND_SCANLINE_VALUES					\
+	__entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A]		\
+	, __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B]	\
+	, __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C]	\
+	, __entry->frame[_TRACE_PIPE_D], __entry->scanline[_TRACE_PIPE_D]

total: 1 errors, 0 warnings, 0 checks, 68 lines checked


