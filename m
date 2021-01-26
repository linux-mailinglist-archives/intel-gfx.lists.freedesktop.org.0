Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFC23045E9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 19:05:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757096E069;
	Tue, 26 Jan 2021 18:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 9.mo178.mail-out.ovh.net (9.mo178.mail-out.ovh.net
 [46.105.75.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CD436E069
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 18:05:49 +0000 (UTC)
Received: from player739.ha.ovh.net (unknown [10.108.42.215])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 106F0C1510
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 19:05:45 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player739.ha.ovh.net (Postfix) with ESMTPSA id 86F0D166442E6;
 Tue, 26 Jan 2021 18:05:40 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-102R0042d14994e-7b33-486a-8b93-e01c29217ec2,
 FCD1BBE7D880F588B4D98BD35E77FB0D8B597664) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Tue, 26 Jan 2021 20:05:38 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YBBZ8lbpS4QW49UX@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-8-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120122205.2808-8-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 6483213139481379337
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvdeigdegiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpeejtdfhveefteegvdduieeikeeugeelfeefgefghfdvuedvtdfftedvvefgvdevueenucffohhmrghinhepfhhrvggvuggvshhkthhophdrohhrghenucfkpheptddrtddrtddrtddpvddufedrvdegfedrudeguddrieegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/selftests: Measure
 set-priority duration
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 20, 2021 at 12:22:03PM +0000, Chris Wilson wrote:
> As a topological sort, we expect it to run in linear graph time,
> O(V+E). In removing the recursion, it is no longer a DFS but rather a
> BFS, and performs as O(VE). Let's demonstrate how bad this is with a few
> examples, and build a few test cases to verify a potential fix.

very noble purpose, but...

[...]

> +static int sparse(struct drm_i915_private *i915,
> +		  bool (*fn)(struct i915_request *rq,
> +			     unsigned long v, unsigned long e))
> +{
> +	return chains(i915, sparse_chain, fn);
> +}

... this is quite an intricate web of functions calling each
other.

Is there any simplier way to do this? This is that kind of code
that if you go on holiday for a few days you forget what you
wrote.

I do need three drawing boards and 24 fingers for keeping track
of what's happening here. :)

> +
> +static void report(const char *what, unsigned long v, unsigned long e, u64 dt)
> +{
> +	pr_info("(%4lu, %7lu), %s:%10lluns\n", v, e, what, dt);
> +}
> +
> +static u64 __set_priority(struct i915_request *rq, int prio)
> +{
> +	u64 dt;
> +
> +	preempt_disable();
> +	dt = ktime_get_raw_fast_ns();
> +	i915_request_set_priority(rq, prio);
> +	dt = ktime_get_raw_fast_ns() - dt;
> +	preempt_enable();
> +
> +	return dt;
> +}
> +
> +static bool set_priority(struct i915_request *rq,
> +			 unsigned long v, unsigned long e)
> +{
> +	report("set-priority", v, e, __set_priority(rq, I915_PRIORITY_BARRIER));

can't we pr_info directly here and spare a function?

> +	return true;
> +}
> +
> +static int single_priority(void *arg)
> +{
> +	return single(arg, set_priority);
> +}
> +
> +static int wide_priority(void *arg)
> +{
> +	return wide(arg, set_priority);
> +}
> +
> +static int inv_priority(void *arg)
> +{
> +	return inv(arg, set_priority);
> +}
> +
> +static int sparse_priority(void *arg)
> +{
> +	return sparse(arg, set_priority);
> +}
> +
> +int i915_scheduler_perf_selftests(struct drm_i915_private *i915)
> +{
> +	static const struct i915_subtest tests[] = {
> +		SUBTEST(single_priority),
> +		SUBTEST(wide_priority),
> +		SUBTEST(inv_priority),
> +		SUBTEST(sparse_priority),
> +	};
> +	static const struct {
> +		const char *name;
> +		size_t sz;
> +	} types[] = {
> +#define T(t) { #t, sizeof(struct t) }
> +		T(i915_priolist),
> +		T(i915_sched_attr),
> +		T(i915_sched_node),
> +#undef T

is this really making the code better? Is it a big deal to
clearly use

		{ i915_priolist, sizeof(i915_priolist) },
		{ i915_sched_attr, sizeof(i915_sched_attr) },
		{ i915_sched_node, sizeof(i915_sched_node) },

> +		{}
> +	};
> +	typeof(*types) *t;
> +
> +	for (t = types; t->name; t++)
> +		pr_info("sizeof(%s): %zd\n", t->name, t->sz);
> +
> +	return i915_subtests(tests, i915);
> +}
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
