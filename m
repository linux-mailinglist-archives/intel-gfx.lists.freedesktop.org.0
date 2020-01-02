Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D0412E3FB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 09:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C6789C96;
	Thu,  2 Jan 2020 08:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C17D89C96
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 08:46:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19746344-1500050 for multiple; Thu, 02 Jan 2020 08:45:41 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200101220927.1074805-1-chris@chris-wilson.co.uk>
References: <20200101220736.1073007-2-chris@chris-wilson.co.uk>
 <20200101220927.1074805-1-chris@chris-wilson.co.uk>
Message-ID: <157795473958.3681.1106701283726857400@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 02 Jan 2020 08:45:39 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Support discontiguous lmem
 object maps
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-01-01 22:09:27)
> +               ptes = mem;
> +               for_each_sgt_daddr(addr, sgt_iter, sgt)
> +                       **ptes++ = io_wc_pte(addr);

Addr is just relative to the start of lmem, this needs the iobar offset
as well. That magic is that using any old physical address just works,
until you hit something important!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
