Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBD989F957
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 16:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E5711332E;
	Wed, 10 Apr 2024 14:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6782F10FF96;
 Wed, 10 Apr 2024 14:06:34 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7F99C61BE9;
 Wed, 10 Apr 2024 14:06:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38980C433C7;
 Wed, 10 Apr 2024 14:06:32 +0000 (UTC)
Date: Wed, 10 Apr 2024 10:09:08 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Jani
 Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH 05/10] drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS
 with NOTRACE
Message-ID: <20240410100908.7d13393c@gandalf.local.home>
In-Reply-To: <20240410110857.BBV2fQYP@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240405142737.920626-6-bigeasy@linutronix.de>
 <20240408130650.6f9c1e1c@rorschach.local.home>
 <20240409110601.FWFqmGjM@linutronix.de>
 <20240409115533.7c84b283@gandalf.local.home>
 <20240410110857.BBV2fQYP@linutronix.de>
X-Mailer: Claws Mail 3.19.1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 10 Apr 2024 13:08:57 +0200
Sebastian Andrzej Siewior <bigeasy@linutronix.de> wrote:

> On 2024-04-09 11:55:33 [-0400], Steven Rostedt wrote:
> > I believe you need to do it in the .c file:
> >=20
> > Can you try something like this?
> >  =20
> =E2=80=A6
> >  ? =20
>=20
> I tried and nothing changed because the lowlevel config option isn't the
> problem. What about I drop this and replace 4/10 from this series with
> the patch below? After enabling all tracing I don't see any events in
> events/i915.

I don't see anything wrong with this approach.

>=20
> Sebastian
>=20
> --------------------->8---------------------------- =20
>=20
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Date: Thu, 6 Dec 2018 09:52:20 +0100
> Subject: [PATCH] drm/i915: Disable tracing points on PREEMPT_RT
>=20
> Luca Abeni reported this:
> | BUG: scheduling while atomic: kworker/u8:2/15203/0x00000003
> | CPU: 1 PID: 15203 Comm: kworker/u8:2 Not tainted 4.19.1-rt3 #10
> | Call Trace:
> |  rt_spin_lock+0x3f/0x50
> |  gen6_read32+0x45/0x1d0 [i915]
> |  g4x_get_vblank_counter+0x36/0x40 [i915]
> |  trace_event_raw_event_i915_pipe_update_start+0x7d/0xf0 [i915]
>=20
> The tracing events use trace_i915_pipe_update_start() among other events
> use functions acquire spinlock_t locks which are transformed into
> sleeping locks on PREEMPT_RT. A few trace points use
> intel_get_crtc_scanline(), others use ->get_vblank_counter() wich also
> might acquire a sleeping locks on PREEMPT_RT.
> At the time the arguments are evaluated within trace point, preemption
> is disabled and so the locks must not be acquired on PREEMPT_RT.
>=20
> Based on this I don't see any other way than disable trace points on
> PREMPT_RT.
>=20
> Reported-by: Luca Abeni <lucabe72@gmail.com>
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>  drivers/gpu/drm/i915/display/intel_display_trace.h | 4 ++++
>  drivers/gpu/drm/i915/i915_trace.h                  | 4 ++++
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers=
/gpu/drm/i915/display/intel_display_trace.h
> index 7862e7cefe027..e4608d855bfba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -9,6 +9,10 @@
>  #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_RE=
AD)
>  #define __INTEL_DISPLAY_TRACE_H__
> =20
> +#ifdef CONFIG_PREEMPT_RT

Hmm, should these be:

 #if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)

?

because it's not protected due to the TRACE_HEADER_MULTI_READ.

-- Steve


> +#define NOTRACE
> +#endif
> +
>  #include <linux/string_helpers.h>
>  #include <linux/types.h>
>  #include <linux/tracepoint.h>
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i91=
5_trace.h
> index ce1cbee1b39dd..c54653cf72c95 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -6,6 +6,10 @@
>  #if !defined(_I915_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
>  #define _I915_TRACE_H_
> =20
> +#ifdef CONFIG_PREEMPT_RT
> +#define NOTRACE
> +#endif
> +
>  #include <linux/stringify.h>
>  #include <linux/types.h>
>  #include <linux/tracepoint.h>

