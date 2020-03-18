Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF78F189D82
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:01:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033766E8FA;
	Wed, 18 Mar 2020 14:01:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754AE6E8F6
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:01:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20603586-1500050 for multiple; Wed, 18 Mar 2020 14:00:56 +0000
MIME-Version: 1.0
In-Reply-To: <20200318121138.909-9-tvrtko.ursulin@linux.intel.com>
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-9-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158454005479.6873.4857418466512127070@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 14:00:54 +0000
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

Quoting Tvrtko Ursulin (2020-03-18 12:11:37)
> +static u64
> +pphwsp_busy_add(struct i915_gem_context *ctx, unsigned int class)
> +{
> +       struct i915_gem_engines *engines = rcu_dereference(ctx->engines);
> +       struct i915_gem_engines_iter it;
> +       struct intel_context *ce;
> +       u64 total = 0;
> +
> +       for_each_gem_engine(ce, engines, it) {
> +               if (ce->engine->uabi_class == class)
> +                       total += ce->runtime.total;
> +       }
> +
> +       return total;
> +}
> +
> +static ssize_t
> +show_client_busy(struct device *kdev, struct device_attribute *attr, char *buf)
> +{
> +       struct i915_engine_busy_attribute *i915_attr =
> +               container_of(attr, typeof(*i915_attr), attr);
> +       unsigned int class = i915_attr->engine_class;
> +       struct i915_drm_client *client = i915_attr->client;
> +       u64 total = atomic64_read(&client->past_runtime[class]);
> +       struct list_head *list = &client->ctx_list;
> +       struct i915_gem_context *ctx;
> +
> +       rcu_read_lock();
> +       list_for_each_entry_rcu(ctx, list, client_link) {
> +               total += atomic64_read(&ctx->past_runtime[class]);
> +               total += pphwsp_busy_add(ctx, class);

Hmm. I would like to have some GEM context agnosticism here. At the
moment, all I have to offer is

struct client_runtime {
	struct list_head client_link;
	atomic64_t past_runtime;
	u64 (*cur_runtime)(struct client_runtime *);
};
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
