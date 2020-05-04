Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 665571C37F8
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 13:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB6586E384;
	Mon,  4 May 2020 11:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B321D6E384
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 11:23:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21105924-1500050 for multiple; Mon, 04 May 2020 12:23:00 +0100
MIME-Version: 1.0
In-Reply-To: <20200504111249.1367096-3-lionel.g.landwerlin@intel.com>
References: <20200504111249.1367096-1-lionel.g.landwerlin@intel.com>
 <20200504111249.1367096-3-lionel.g.landwerlin@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158859137783.10831.4161881093634565173@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 04 May 2020 12:22:57 +0100
Subject: Re: [Intel-gfx] [PATCH v12 2/4] drm/i915/perf: stop using the
 kernel context
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2020-05-04 12:12:47)
> +static int i915_perf_stream_sync(struct i915_perf_stream *stream,
> +                                bool enable)
> +{
> +       struct i915_active *active;
> +       int err = 0;
> +
> +       active = i915_active_create();
> +       if (!active)
> +               return -ENOMEM;
> +
> +       if (enable)
> +               err = stream->perf->ops.enable_metric_set(stream, active);
> +       else
> +               stream->perf->ops.disable_metric_set(stream, active);
> +       if (err == 0)
> +               __i915_active_wait(active, TASK_UNINTERRUPTIBLE);
> +
> +       i915_active_put(active);
> +       return err;
> +}
> +
>  static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>  {
>         struct i915_perf *perf = stream->perf;
> +       int err;
>  
>         BUG_ON(stream != perf->exclusive_stream);
>  
> @@ -1367,7 +1389,14 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>          * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
>          */
>         WRITE_ONCE(perf->exclusive_stream, NULL);
> -       perf->ops.disable_metric_set(stream);
> +       err = i915_perf_stream_sync(stream, false /* enable */);
> +       if (err) {
> +               drm_err(&perf->i915->drm,
> +                       "Error while disabling OA stream\n");
> +       }

And that error should be impossible, so explosions are fine :)

> +       intel_context_unpin(stream->config_context);
> +       intel_context_put(stream->config_context);

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
