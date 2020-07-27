Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C7522E8D8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 11:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39C4489CA1;
	Mon, 27 Jul 2020 09:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C19689CA1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 09:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id EB5B93F5DF;
 Mon, 27 Jul 2020 11:24:36 +0200 (CEST)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=d4bKdL+G; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.442
X-Spam-Level: 
X-Spam-Status: No, score=-2.442 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.343,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLIbT1SfhaRK; Mon, 27 Jul 2020 11:24:36 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 8A06A3F515;
 Mon, 27 Jul 2020 11:24:33 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 295AB360305;
 Mon, 27 Jul 2020 11:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1595841873; bh=LjvWITxRQuU+xFbmSCZGEX3gKYVgXjk4baHU9TR4Wb4=;
 h=Subject:To:References:From:Cc:Date:In-Reply-To:From;
 b=d4bKdL+GSUSrFtC7M/1ubzNqULnX7Y8OEi1ouAB+ZUALAwmTOUi2+pejmLquohRtx
 uR63PKxer9DsoSzjBQ+Vzr+7utQjkbAi+U0OobXh4qXW+gJXmmP8bno3eqOzfdtWfF
 d74zXP+/ShEbAYF2QHw5a5201EDDyvjf0uDKDpdk=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <dabc6756-3ba8-ee58-ca6c-e2ae2f0227ac@shipmail.org>
Date: Mon, 27 Jul 2020 11:24:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-11-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/66] drm/i915: Preallocate stashes for vma
 page-directories
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

It appears to me like this series is doing a lot of different things:

- Various optimizations
- Locking rework
- Adding schedulers
- Other misc fixes

Could you please separate out as much as possible the locking rework 
prerequisites in one series with cover letter, and most importantly the 
major part of the locking rework (only) with a more elaborate cover 
letter discussing, if not trivial, how each patch fits in and on design 
and future directions, Questions that I have stumbled on so far (being a 
new-to-the-driver reviewer):

- When are memory allocations disallowed? If we need to pre-allocate in 
execbuf, when? why?
- When is the request dma-fence published?
- Do we need to keep cpu asynchronous execbuf tasks after this? why?
- What about userptr pinning ending up in the dma_fence critical path?

And then move anything non-related to separate series?

Thanks,

Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
