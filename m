Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5A8189DF5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:34:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EBAC6E48B;
	Wed, 18 Mar 2020 14:34:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2D06E48B
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:34:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20604081-1500050 for multiple; Wed, 18 Mar 2020 14:34:35 +0000
MIME-Version: 1.0
In-Reply-To: <aec5ec90-0c1d-e1cb-f7c4-ff5b2112a005@linux.intel.com>
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-9-tvrtko.ursulin@linux.intel.com>
 <158454005479.6873.4857418466512127070@build.alporthouse.com>
 <aec5ec90-0c1d-e1cb-f7c4-ff5b2112a005@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158454207359.6873.1378980328900414497@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 14:34:33 +0000
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915: Expose per-engine client
 busyness
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

Quoting Tvrtko Ursulin (2020-03-18 14:15:31)
> 
> On 18/03/2020 14:00, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-03-18 12:11:37)
> >> +static u64
> >> +pphwsp_busy_add(struct i915_gem_context *ctx, unsigned int class)
> >> +{
> >> +       struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
> >> +       struct i915_gem_engines_iter it;
> >> +       struct intel_context *ce;
> >> +       u64 total = 0;
> >> +
> >> +       for_each_gem_engine(ce, engines, it) {
> >> +               if (ce->engine->uabi_class == class)
> >> +                       total += ce->runtime.total;
> >> +       }
> >> +
> >> +       return total;
> >> +}
> >> +
> >> +static ssize_t
> >> +show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
> >> +{
> >> +       struct i915_engine_busy_attribute *i915_attr =
> >> +               container_of(attr, typeof(*i915_attr), attr);
> >> +       unsigned int class = i915_attr->engine_class;
> >> +       struct i915_drm_client *client = i915_attr->client;
> >> +       u64 total = atomic64_read(&client->past_runtime[class]);
> >> +       struct list_head *list = &client->ctx_list;
> >> +       struct i915_gem_context *ctx;
> >> +
> >> +       rcu_read_lock();
> >> +       list_for_each_entry_rcu(ctx, list, client_link) {
> >> +               total += atomic64_read(&ctx->past_runtime[class]);
> >> +               total += pphwsp_busy_add(ctx, class);
> > 
> > Hmm. I would like to have some GEM context agnosticism here. At the
> > moment, all I have to offer is
> > 
> > struct client_runtime {
> >       struct list_head client_link;
> >       atomic64_t past_runtime;
> >       u64 (*cur_runtime)(struct client_runtime *);
> > };
> 
> What exactly do you mean here? Who keeps a list and of what and what 
> does the vfunc do?

This is what you've added to GEM context. Here in i915/i915_drm_client.c
we shouldn't have to know about i915/gem/i915_gem_context internals. So
the GEM context registers its client_runtime (by coupling that into the
list).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
