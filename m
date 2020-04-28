Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3AB1BBBEC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 13:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1D66E185;
	Tue, 28 Apr 2020 11:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38BBB6E370
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 11:07:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21044921-1500050 for multiple; Tue, 28 Apr 2020 12:07:16 +0100
MIME-Version: 1.0
In-Reply-To: <c793a64a-f441-57b7-1f44-886ec0cb3fe5@intel.com>
References: <20200428100816.951014-1-lionel.g.landwerlin@intel.com>
 <20200428100816.951014-3-lionel.g.landwerlin@intel.com>
 <158806914077.24122.4604283459575331296@build.alporthouse.com>
 <c793a64a-f441-57b7-1f44-886ec0cb3fe5@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158807203582.24122.14209677912072144205@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 28 Apr 2020 12:07:15 +0100
Subject: Re: [Intel-gfx] [PATCH v7 2/4] drm/i915/perf: stop using the kernel
 context
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

Quoting Lionel Landwerlin (2020-04-28 12:04:59)
> On 28/04/2020 13:19, Chris Wilson wrote:
> > Quoting Lionel Landwerlin (2020-04-28 11:08:14)
> >> @@ -2837,6 +2851,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
> >>   {
> >>          struct drm_i915_private *i915 = stream->perf->i915;
> >>          struct i915_perf *perf = stream->perf;
> >> +       struct intel_timeline *timeline;
> >>          int format_size;
> >>          int ret;
> >>   
> >> @@ -2946,10 +2961,30 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
> >>   
> >>          stream->ops = &i915_oa_stream_ops;
> >>   
> >> +       timeline = intel_timeline_create(stream->engine->gt, NULL);
> >> +       if (IS_ERR(timeline)) {
> >> +               ret = PTR_ERR(timeline);
> >> +               goto err_timeline;
> >> +       }
> >> +
> >> +       stream->config_context = intel_context_create(stream->engine);
> >> +       if (IS_ERR(stream->config_context)) {
> >> +               intel_timeline_put(timeline);
> >> +               ret = PTR_ERR(stream->config_context);
> >> +               goto err_timeline;
> >> +       }
> >> +
> >> +       stream->config_context->sseu = props->sseu;
> >> +       stream->config_context->timeline = timeline;
> > Timeline?
> >
> >> +
> >> +       ret = intel_context_pin(stream->config_context);
> > One is created for the context here [via intel_context_alloc].
> 
> 
> I don't see it :

intel_context_alloc_state. I was close.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
