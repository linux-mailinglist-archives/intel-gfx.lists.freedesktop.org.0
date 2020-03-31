Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5E9199DC6
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 20:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 384286E873;
	Tue, 31 Mar 2020 18:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FC16E873
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 18:08:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20756029-1500050 for multiple; Tue, 31 Mar 2020 19:08:50 +0100
MIME-Version: 1.0
In-Reply-To: <20200331114821.81957-3-lionel.g.landwerlin@intel.com>
References: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
 <20200331114821.81957-3-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158567812981.5852.12449950625595064091@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 31 Mar 2020 19:08:49 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/perf: enable filtering on
 multiple contexts
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

Quoting Lionel Landwerlin (2020-03-31 12:48:21)
> Add 2 new properties to the i915-perf open ioctl to specify an array
> of GEM context handles as well as the length of the array.

Hmm. The other thought is ctx->engine[] where one context may have more
than one logical context instance that OA could track. The extension to
track multiple pinned contexts should equally work for multiple engines.

	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 64) = {};
	struct drm_i915_gem_context_param p = {
		.ctx_id = gem_context_create(i915),
		.param = I915_CONTEXT_PARAM_ENGINES,
		.value = to_user_pointer(&engines),
		.size = sizeof(struct i915_context_param_engines),
	};
	gem_context_set_param(i915, &p);

would do the trick in creating one context with 64 rcs0 that they may
want to track. And that also opens the door to virtual engines over top.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
