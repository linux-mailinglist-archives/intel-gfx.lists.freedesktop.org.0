Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DFA26A5EC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 15:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A54286E29B;
	Tue, 15 Sep 2020 13:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431BA6E297
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 13:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7NBf7Gx3NEoEBeWF+X5RA2TyfqQ9s1ho0GYQa3vJ+Jk=; b=ZO9myoY4N8MfiF8r9ZsvVUTGB0
 OpnTN/gQGj4PpxFg8LiE+oarC9K2KzEtQiyaBPyHtovx7UQS5tW+8bfbZDtPpgRuvDKMNJaZJbnec
 DrMTvRg1f1Te744UlXOkbnaopigPono/kBlyjwnNfR0ZoKnhZnaFfm2koAZUL1lyoGn01IeqbSwFC
 yDxXO8ABXfJxT5Vh8Kv5VpEcNU5zbsf0MhVPYtVLKyR8o2A2dpQz9WFvK8WbHRf/K1mH/HftDS0+k
 XVucUsuZ1mjpTCkcuCujL50iA09RUSUuTMire+garHju3WRwUpM7Qwp53r2bIHF2mw1nW9mACo6pG
 7bLfhU2w==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kIAhU-0000rc-Od; Tue, 15 Sep 2020 13:08:48 +0000
Date: Tue, 15 Sep 2020 14:08:48 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Message-ID: <20200915130848.GD5449@casper.infradead.org>
References: <20200910183318.20139-1-willy@infradead.org>
 <alpine.LSU.2.11.2009150059310.1550@eggly.anvils>
 <CA+G9fYvqbKPHoYbU7w2bPkOF_vgbYgEHavLDxXQ4O5xUFHGCuw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+G9fYvqbKPHoYbU7w2bPkOF_vgbYgEHavLDxXQ4O5xUFHGCuw@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH v2 0/8] Return head pages from find_*_entry
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 William Kucharski <william.kucharski@oracle.com>,
 intel-gfx@lists.freedesktop.org, Huang Ying <ying.huang@intel.com>,
 Hugh Dickins <hughd@google.com>, open list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm <linux-mm@kvack.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, lkft-triage@lists.linaro.org,
 Johannes Weiner <hannes@cmpxchg.org>, Cgroups <cgroups@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, ricardo.canuelo@collabora.com,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 15, 2020 at 06:23:27PM +0530, Naresh Kamboju wrote:
> While running kselftest mincore tests the following kernel BUG reported on the
> linux next-20200915 tag on x86_64, i386 and arm64.

https://lore.kernel.org/linux-mm/20200914112738.GM6583@casper.infradead.org/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
