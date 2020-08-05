Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A967923CC13
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 18:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EF36E825;
	Wed,  5 Aug 2020 16:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8332A6E825
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 16:22:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 16EA83F62F;
 Wed,  5 Aug 2020 18:22:13 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=efgyiLcs; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.559
X-Spam-Level: 
X-Spam-Status: No, score=-3.559 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.46,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h3vmjoPS01s5; Wed,  5 Aug 2020 18:22:11 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id A85213F5FA;
 Wed,  5 Aug 2020 18:22:10 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id EEE80361FBC;
 Wed,  5 Aug 2020 18:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596644532; bh=z61hTiX2ewFc5WSu+PPIPU6QHTBx57uSKFUDaBa3TS0=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=efgyiLcsw76u82EDJr+8KBpXOvEins0YQqCi2LfsDUEw0BNBXtEIOdA+tpRHkGwBR
 woNA6LOa35Nz34TTC6plLN7y142vOdXqeMjP5JxAh/s1nu6P1zi24YtStl0I7I+94k
 /9aHblZI+GdB0SFbhVuqTdeLZQYT6m6/AleeRQbo=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <8be11356-9899-cb6d-7ec5-e1388eb4c721@shipmail.org>
Date: Wed, 5 Aug 2020 18:22:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 00/37] Replace obj->mm.lock with
 reservation_ww_class
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Chris,


On 8/5/20 2:21 PM, Chris Wilson wrote:
> Long story short, we need to manage evictions using dma_resv & dma_fence
> tracking. The backing storage will then be managed using the ww_mutex
> borrowed from (and shared via) obj->base.resv, rather than the current
> obj->mm.lock.
>
> Skipping over the breadcrumbs,

While perhaps needed fixes, could we submit them as a separate series, 
since they, from what I can tell, are not a direct part of the locking 
rework, and some of them were actually part of a series that Dave NaK'ed 
and may require additional justification?


>   the first step is to remove the final
> crutches of struct_mutex from execbuf and to broaden the hold for the
> dma-resv to guard not just publishing the dma-fences, but for the
> duration of the execbuf submission (holding all objects and their
> backing store from the point of acquisition to publishing of the final
> GPU work, after which the guard is delegated to the dma-fences).
>
> This is of course made complicated by our history. On top of the user's
> objects, we also have the HW/kernel objects with their own lifetimes,
> and a bunch of auxiliary objects used for working around unhappy HW and
> for providing the legacy relocation mechanism. We add every auxiliary
> object to the list of user objects required, and attempt to acquire them
> en masse. Since all the objects can be known a priori, we can build a
> list of those objects and pass that to a routine that can resolve the
> -EDEADLK (and evictions). [To avoid relocations imposing a penalty on
> sane userspace that avoids them, we do not touch any relocations until
> necessary, at will point we have to unroll the state, and rebuild a new
> list with more auxiliary buffers to accommodate the extra copy_from_user].
> More examples are included as to how we can break down operations
> involving multiple objects into an acquire phase prior to those
> operations, keeping the -EDEADLK handling under control.
>
> execbuf is the unique interface in that it deals with multiple user
> and kernel buffers. After that, we have callers that in principle care
> about accessing a single buffer, and so can be migrated over to a helper
> that permits only holding one such buffer at a time. That enables us to
> swap out obj->mm.lock for obj->base.resv->lock, and use lockdep to spot
> illegal nesting, and to throw away the temporary pins by replacing them
> with holding the ww_mutex for the duration instead.
>
> What's changed? Some patch splitting and we need to pull in Matthew's
> patch to map the page directories under the ww_mutex.

I would still like to see a justification for the newly introduced async 
work, as opposed to add it as an optimizing / regression fixing series 
follow the locking rework. That async work introduces a bunch of code 
complexity and it would be beneficial to see a discussion of the 
tradeoffs and how it alignes with the upstream proposed dma-fence 
annotations

Thanks,

Thomas

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
