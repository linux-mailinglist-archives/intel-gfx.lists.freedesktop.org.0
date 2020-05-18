Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A38881D7288
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 10:08:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1CF89D83;
	Mon, 18 May 2020 08:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CDCF89D83
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 08:08:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21226195-1500050 for multiple; Mon, 18 May 2020 09:07:33 +0100
MIME-Version: 1.0
In-Reply-To: <20200518075750.17223-5-chris@chris-wilson.co.uk>
References: <20200518075750.17223-1-chris@chris-wilson.co.uk>
 <20200518075750.17223-5-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158978925274.10809.10440443638846746841@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 09:07:32 +0100
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Incorporate the virtual
 engine into timeslicing
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

Quoting Chris Wilson (2020-05-18 08:57:47)
> @@ -5519,7 +5537,9 @@ static void virtual_submission_tasklet(unsigned long data)
>  submit_engine:
>                 GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
>                 node->prio = prio;
> -               if (first && prio > sibling->execlists.queue_priority_hint)
> +               if (first &&
> +                   prio >= min(sibling->execlists.switch_priority_hint,
> +                               sibling->execlists.queue_priority_hint))

Ignore this chunk. The wakeup is just based on the queue_priority_hint.
If there is only one request on the engine, it will be INT_MIN. If there
are more than one at the same priority as the hint, it will be
timeslicing already.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
