Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D256F214FFF
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 00:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88C56E1CF;
	Sun,  5 Jul 2020 22:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B630C6E1CF
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Jul 2020 22:07:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21723226-1500050 for multiple; Sun, 05 Jul 2020 23:07:17 +0100
MIME-Version: 1.0
In-Reply-To: <20200705220129.GA1217@intel.intel>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
 <20200702083225.20044-17-chris@chris-wilson.co.uk>
 <20200705220129.GA1217@intel.intel>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi.shyti@intel.com>
Date: Sun, 05 Jul 2020 23:07:21 +0100
Message-ID: <159398684101.24180.10346144443134786517@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 17/23] drm/i915/gem: Asynchronous GTT
 unbinding
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-07-05 23:01:29)
> Hi Chris,
> 
> > +static int gen6_fixup_ggtt(struct i915_vma *vma)
> 
> you create this function here and remove it in patch 21. This
> series is a bit confusing, can we have a final version of it?

It get's removed because the next patches reorder all the pinning around
this central function. Until that occurs, the fixup occurs after we do
the pinning.  And those patches depend on this to provide the central
pinning. So it's a circular dependency and this patch needs to provide
the fixup so that it works by itself.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
