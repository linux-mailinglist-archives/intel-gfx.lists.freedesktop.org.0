Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BD53002A7
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 13:15:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C23A6E9BC;
	Fri, 22 Jan 2021 12:15:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89AA6E9BC;
 Fri, 22 Jan 2021 12:15:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23670650-1500050 for multiple; Fri, 22 Jan 2021 12:15:34 +0000
MIME-Version: 1.0
In-Reply-To: <20210122115524.768221-1-tvrtko.ursulin@linux.intel.com>
References: <20210121181005.762333-1-tvrtko.ursulin@linux.intel.com>
 <20210122115524.768221-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Fri, 22 Jan 2021 12:15:34 +0000
Message-ID: <161131773470.3166.13248329911713611140@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v6] intel-gpu-top: Support
 for client stats
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

Quoting Tvrtko Ursulin (2021-01-22 11:55:24)
> +static int client_cmp(const void *_a, const void *_b)
> +{
> +       const struct client *a = _a;
> +       const struct client *b = _b;
> +       long tot_a, tot_b;
> +
> +       /*
> +        * Sort clients in descending order of runtime in the previous sampling
> +        * period for active ones, followed by inactive. Tie-breaker is client
> +        * id.
> +        */
> +
> +       tot_a = a->status == ALIVE ? a->total : -1;
> +       tot_b = b->status == ALIVE ? b->total : -1;
> +
> +       tot_b -= tot_a;
> +       if (!tot_b)
> +               return (int)b->id - a->id;
> +
> +       if (tot_b > 0)
> +               return 1;
> +       if (tot_b < 0)
> +               return -1;
> +       return 0;

Nit, this is clearly now

	if (tot_b > 0)
               return 1;
	if (tot_b < 0)
               return -1;

	return (int)b->id - a->id;

And the decision flow now neatly matches the comment.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
