Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC6D232DCA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 10:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7A66E895;
	Thu, 30 Jul 2020 08:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07616E895
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 08:14:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21977791-1500050 for multiple; Thu, 30 Jul 2020 09:14:53 +0100
MIME-Version: 1.0
In-Reply-To: <20200730004826.8415-5-umesh.nerlige.ramappa@intel.com>
References: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
 <20200730004826.8415-5-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jul 2020 09:14:51 +0100
Message-ID: <159609689197.13987.5242365383566281041@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/perf: Whitelist OA report
 trigger registers
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

Quoting Umesh Nerlige Ramappa (2020-07-30 01:48:24)
> +void intel_engine_apply_oa_whitelist(struct intel_engine_cs *engine)
> +{
> +       struct i915_wa_list *w = &engine->whitelist;
> +       struct drm_i915_private *i915 = engine->i915;
> +
> +       if (IS_GEN(i915, 12))
> +               whitelist_build_perf_counters(w, gen12_oa_regs,
> +                                             ARRAY_SIZE(gen12_oa_regs));
> +       else if (INTEL_GEN(i915) > 8)
> +               whitelist_build_perf_counters(w, gen9_oa_regs,
> +                                             ARRAY_SIZE(gen9_oa_regs));
> +       else
> +               return;
> +
> +       intel_engine_apply_whitelist(engine);
> +}
> +
> +void intel_engine_remove_oa_whitelist(struct intel_engine_cs *engine)
> +{
> +       struct i915_wa_list *w = &engine->whitelist;
> +       struct drm_i915_private *i915 = engine->i915;
> +
> +       if (IS_GEN(i915, 12))
> +               whitelist_delete_perf_counters(w, gen12_oa_regs,
> +                                              ARRAY_SIZE(gen12_oa_regs));
> +       else if (INTEL_GEN(i915) > 8)
> +               whitelist_delete_perf_counters(w, gen9_oa_regs,
> +                                              ARRAY_SIZE(gen9_oa_regs));
> +       else
> +               return;

Keep the oa_regs in i915_perf, and make this pair of functions that
touch more generic by

intel_engine_add_whitelist(engine, i915_reg_t *reg, size_t count);

Hmm. The other can of worms would be to call it
intel_engine_allow_user_register_access()
intel_engine_deny_user_register_access()
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
