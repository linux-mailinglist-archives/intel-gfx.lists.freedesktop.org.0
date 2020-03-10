Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4CA1808E1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:12:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B80AC6E8DA;
	Tue, 10 Mar 2020 20:12:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 987616E8DA
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:12:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20514343-1500050 for multiple; Tue, 10 Mar 2020 20:12:12 +0000
MIME-Version: 1.0
In-Reply-To: <9f190888-77f5-a7a0-c061-3578973e261e@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-9-tvrtko.ursulin@linux.intel.com>
 <158386512435.28297.9321243628022207699@build.alporthouse.com>
 <9f190888-77f5-a7a0-c061-3578973e261e@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158387113173.28297.4263001679670929491@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 20:12:11 +0000
Subject: Re: [Intel-gfx] [RFC 08/12] drm/i915: Expose per-engine client
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

Quoting Tvrtko Ursulin (2020-03-10 20:04:23)
> 
> On 10/03/2020 18:32, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-03-09 18:31:25)
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
> >> +       }
> >> +       rcu_read_unlock();
> >> +
> >> +       total *= RUNTIME_INFO(i915_attr->i915)->cs_timestamp_period_ns;
> > 
> > Planning early retirement? In 600 years, they'll have forgotten how to
> > email ;)
> 
> Shruggety shrug. :) I am guessing you would prefer both internal 
> representations (sw and pphwsp runtimes) to be consistently in 
> nanoseconds? I thought why multiply at various places when once at the 
> readout time is enough.

It's fine. I was just double checking overflow, and then remembered the
end result is 64b nanoseconds.

Keep the internal representation convenient for accumulation, and the
conversion at the boundary.
 
> And I should mention again how I am not sure at the moment how to meld 
> the two stats into one more "perfect" output.

One of the things that crossed my mind was wondering if it was possible
to throw in a pulse before reading the stats (if active etc). Usual
dilemma with non-preemptible contexts, so probably not worth it as those
hogs will remain hogs.

And I worry about the disparity between sw busy and hw runtime.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
