Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B79B154904
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 17:24:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83EC6FA9E;
	Thu,  6 Feb 2020 16:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 274B16FA9E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 16:24:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20138679-1500050 for multiple; Thu, 06 Feb 2020 16:23:58 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200206161232.2553300-1-chris@chris-wilson.co.uk>
References: <20200206152325.2521787-1-chris@chris-wilson.co.uk>
 <20200206161232.2553300-1-chris@chris-wilson.co.uk>
Message-ID: <158100623556.7306.572507111354238028@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 06 Feb 2020 16:23:55 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Prevent queuing retire
 workers on the virtual engine
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

Quoting Chris Wilson (2020-02-06 16:12:32)
> +static void __ve_request_submit(const struct virtual_engine *ve,
> +                               struct i915_request *rq)
> +{
> +       /*
> +        * Select a real engine to act as our permanent storage
> +        * and signaler for the stale request, and prevent
> +        * this virtual engine from leaking into the execution state.
> +        */
> +       rq->engine = ve->siblings[0]; /* chosen at random! */
> +       __i915_request_submit(rq);

Wait just a minute, who's lock do you think this is!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
