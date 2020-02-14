Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E4415F6A6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 20:15:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E276E862;
	Fri, 14 Feb 2020 19:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B77E56E85C;
 Fri, 14 Feb 2020 19:15:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20230636-1500050 for multiple; Fri, 14 Feb 2020 19:14:31 +0000
MIME-Version: 1.0
To: Antonio Argenziano <antonio.argenziano@intel.com>,
 Dale B Stimson <dale.b.stimson@intel.com>, igt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158170648335.15393.7332630257064965325@skylake-alporthouse-com>
References: <20200213192606.63025-1-dale.b.stimson@intel.com>
 <9d522af3-470d-52f2-51e1-fef2ffdcfaa8@intel.com>
 <158170587922.15393.4799274587942949539@skylake-alporthouse-com>
 <158170648335.15393.7332630257064965325@skylake-alporthouse-com>
Message-ID: <158170766798.15393.15186944507704694722@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Feb 2020 19:14:28 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915/gem_engine_topology.c -
 intel_get_current_engine invalid result
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

Quoting Chris Wilson (2020-02-14 18:54:43)
> +static void libapi(int i915)
> +{
> +       I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 0);

I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 0) = {};
or
struct i915_gem_context_param_engines engines = {};

> +       struct drm_i915_gem_context_param p = {
> +               .ctx_id = gem_context_create(i915),
> +               .param = I915_CONTEXT_PARAM_ENGINES,
> +               .value = to_user_pointer(&engines),
> +               .size = sizeof(engines),
> +       };
> +       const struct intel_execution_engine2 *e;
> +       unsigned int count = 0;
> +
> +       gem_context_set_param(i915, &p);
> +
> +       for_each_context_engine(i915, p.ctx_id, e)
> +               count++;
> +       igt_assert_eq(count, 0);

Of course this says that this for_each_context_engine() loop doesn't
work anyway.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
