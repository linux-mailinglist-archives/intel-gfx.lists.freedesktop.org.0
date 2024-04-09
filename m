Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA7289DFB8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 17:53:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1081210F294;
	Tue,  9 Apr 2024 15:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F65210F294;
 Tue,  9 Apr 2024 15:53:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BA9D7618C4;
 Tue,  9 Apr 2024 15:53:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66968C433C7;
 Tue,  9 Apr 2024 15:52:59 +0000 (UTC)
Date: Tue, 9 Apr 2024 11:55:33 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Jani
 Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH 05/10] drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS
 with NOTRACE
Message-ID: <20240409115533.7c84b283@gandalf.local.home>
In-Reply-To: <20240409110601.FWFqmGjM@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240405142737.920626-6-bigeasy@linutronix.de>
 <20240408130650.6f9c1e1c@rorschach.local.home>
 <20240409110601.FWFqmGjM@linutronix.de>
X-Mailer: Claws Mail 3.19.1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 9 Apr 2024 13:06:01 +0200
Sebastian Andrzej Siewior <bigeasy@linutronix.de> wrote:

> among a few other things I was not aware of.
> So yes, this patch is not needed since it makes no difference but I still
> have trace points I would rather not have.
> If you a clue how to deal with this properly, I am all yours.

I believe you need to do it in the .c file:

Can you try something like this?

diff --git a/drivers/gpu/drm/i915/i915_trace_points.c b/drivers/gpu/drm/i915/i915_trace_points.c
index 463a7177997c..ad0de6110133 100644
--- a/drivers/gpu/drm/i915/i915_trace_points.c
+++ b/drivers/gpu/drm/i915/i915_trace_points.c
@@ -8,7 +8,7 @@
 
 #include "i915_drv.h"
 
-#ifndef __CHECKER__
+#if !DEFINED(__CHECKER__) && !DEFINED(CONFIG_PREEMPT_RT)
 #define CREATE_TRACE_POINTS
 #include "i915_trace.h"
 #endif


Or is it just that one set of trace events that is an issue?

Could you just do:

#if defined(CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS) && !defined(CONFIG_PREEMPT_RT)

 ?

-- Steve
