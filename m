Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F161C14C29D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 23:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C86E6E133;
	Tue, 28 Jan 2020 22:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0359D6E133
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 22:08:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20041219-1500050 for multiple; Tue, 28 Jan 2020 22:08:37 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0f1a8ffd-e146-95a5-0c65-c48d77bc12ef@intel.com>
References: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
 <20200128204318.4182039-5-chris@chris-wilson.co.uk>
 <0f1a8ffd-e146-95a5-0c65-c48d77bc12ef@intel.com>
Message-ID: <158024931625.7621.2130972792240757300@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 28 Jan 2020 22:08:36 +0000
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/gt: Split logical ring context
 manipulation into intel_lrc.c
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

Quoting Daniele Ceraolo Spurio (2020-01-28 21:55:02)
> 
> 
> On 1/28/20 12:43 PM, Chris Wilson wrote:
> > Extract the core functions for setting up the machine dependent logical
> > ring context to intel_lrc.c. This will be shared by all submission
> > backends that utilise logical ring contexts.
> > 
> 
> I still don't understand why you don't want to put the lrc and ring 
> object creation and initial setup (populate_lr_context) somewhere 

The initial setup is common in intel_lrc.c, the rest is really just
mapping the local context layout, which will vary depending on the
different abstractions for the backends.

> common. I see no way we could do that differently for GuC submission, 
> since the HW obviously requires the same objects and IMO it makes sense 
> to keep the same initialization flow, so we'd have to copy that logic 
> and maintain 2 identical copies of it. The redzone is the only thing 
> that is not hw-enforced, but I believe it makes sense to keep that on 
> the GuC side as well to catch possible issues. Or am I missing something?

They don't have the same execution flow, and I expect the differences in
context bookkeeping will continue to grow. Certainly there's an
abstraction around virtual engines to come, because the current struct
is heavily tied into the backend.

populate_lr_context is one that might be shared, but I just didn't see
much point in sharing a couple of very minor routines, when the
common mechanism is available. I'm still waiting for the other shoe to
fall and wide-contexts to become a necessity again.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
