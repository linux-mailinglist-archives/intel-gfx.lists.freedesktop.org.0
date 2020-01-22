Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5CE14581A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:47:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAD76F56C;
	Wed, 22 Jan 2020 14:47:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D5D6F569;
 Wed, 22 Jan 2020 14:47:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19971902-1500050 for multiple; Wed, 22 Jan 2020 14:47:01 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200122144028.27346-1-tvrtko.ursulin@linux.intel.com>
References: <20200122101043.21347-1-tvrtko.ursulin@linux.intel.com>
 <20200122144028.27346-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157970441989.7477.13168128747438871488@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 Jan 2020 14:46:59 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2]
 i915/gem_engine_topology: Generate engine names based on class
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-22 14:40:28)
>  static void init_engine(struct intel_execution_engine2 *e2,
>                         int class, int instance, uint64_t flags)
>  {
> -       const struct intel_execution_engine2 *__e2;
> -       static const char *unknown_name = "unknown",
> -                         *virtual_name = "virtual";
> +       int ret;
>  
>         e2->class    = class;
>         e2->instance = instance;
> -       e2->flags    = flags;
>  
>         /* engine is a virtual engine */
>         if (class == I915_ENGINE_CLASS_INVALID &&
>             instance == I915_ENGINE_CLASS_INVALID_VIRTUAL) {

Can this ever match?  instance is 65534 and INVALID_VIRTUAL is -2.
int class/instance should be u16?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
