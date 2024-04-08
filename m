Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E614789CA65
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 19:06:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E17AA1128C3;
	Mon,  8 Apr 2024 17:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A5B21128C3;
 Mon,  8 Apr 2024 17:06:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 66C0C612FB;
 Mon,  8 Apr 2024 17:06:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D84FC433C7;
 Mon,  8 Apr 2024 17:06:52 +0000 (UTC)
Date: Mon, 8 Apr 2024 13:06:50 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Jani
 Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH 05/10] drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS
 with NOTRACE
Message-ID: <20240408130650.6f9c1e1c@rorschach.local.home>
In-Reply-To: <20240405142737.920626-6-bigeasy@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240405142737.920626-6-bigeasy@linutronix.de>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
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

On Fri,  5 Apr 2024 16:18:23 +0200
Sebastian Andrzej Siewior <bigeasy@linutronix.de> wrote:

> The order of the header files is important. If this header file is
> included after tracepoint.h was included then the NOTRACE here becomes a
> nop. Currently this happens for two .c files which use the tracepoitns
> behind DRM_I915_LOW_LEVEL_TRACEPOINTS.

The NOTRACE should not be included in the individual trace files.

Can you show where this is an issue. I think this is fixing the symptom
and not the bug itself.

-- Steve


> 
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  drivers/gpu/drm/i915/i915_trace.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index c54653cf72c95..3c51620d011b1 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -326,7 +326,7 @@ DEFINE_EVENT(i915_request, i915_request_add,
>  	     TP_ARGS(rq)
>  );
>  
> -#if defined(CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS)
> +#if defined(CONFIG_DRM_I915_LOW_LEVEL_TRACEPOINTS) && !defined(NOTRACE)
>  DEFINE_EVENT(i915_request, i915_request_guc_submit,
>  	     TP_PROTO(struct i915_request *rq),
>  	     TP_ARGS(rq)

