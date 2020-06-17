Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EBF1FD192
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 18:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A233B6E0FB;
	Wed, 17 Jun 2020 16:08:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD12F6E0FB
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 16:08:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21527306-1500050 for multiple; Wed, 17 Jun 2020 17:07:55 +0100
MIME-Version: 1.0
In-Reply-To: <20200617160120.16555-2-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-2-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <159241007493.19488.13894581877702829359@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 17 Jun 2020 17:07:54 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 01/10] gem_wsim: Rip out userspace
 balancing
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

Quoting Tvrtko Ursulin (2020-06-17 17:01:11)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Evaluation of userspace load balancing options was how this tool started
> but since we have settled on doing it in the kernel.
> 
> Tomorrow we will want to update the tool for new engine interfaces and all
> this legacy code will just be a distraction.
> 
> Rip out everything not related to explicit load balancing implemented via
> context engine maps and adjust the workloads to use it.

I'm still using busy & contexts to ground i915. Any chance of a
reprieve? At least for context with -R?

Or shall I just keep a pristine copy?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
