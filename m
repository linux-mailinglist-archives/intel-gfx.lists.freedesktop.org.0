Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A7C304B2C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 22:21:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCE389C84;
	Tue, 26 Jan 2021 21:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632536E134
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 21:21:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23708140-1500050 for multiple; Tue, 26 Jan 2021 21:20:48 +0000
MIME-Version: 1.0
In-Reply-To: <YBBSuH3DQuVrd+oa@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-10-chris@chris-wilson.co.uk>
 <YBBSuH3DQuVrd+oa@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Tue, 26 Jan 2021 21:20:50 +0000
Message-ID: <161169605048.2943.1485030582286179368@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Improve DFS for priority
 inheritance
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

Quoting Andi Shyti (2021-01-26 17:34:48)
> Hi Chris,
> 
> On Wed, Jan 20, 2021 at 12:22:05PM +0000, Chris Wilson wrote:
> > The core of the scheduling algorithm is that we compute the topological
> > order of the fence DAG. Knowing that we have a DAG, we should be able to
> > use a DFS to compute the topological sort in linear time. However,
> > during the conversion of the recursive algorithm into an iterative one,
> > the memoization of how far we had progressed down a branch was
> 
> memoization?

I too believe it was originally misspelt ;) But that's the accepted term
for this technique of storing partial results in dynamic programming.
(The field is full of self-glorified terms.)
https://en.wikipedia.org/wiki/Memoization
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
