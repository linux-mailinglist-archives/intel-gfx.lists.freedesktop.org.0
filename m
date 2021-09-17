Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37A240F8E4
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 15:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53D456EC7C;
	Fri, 17 Sep 2021 13:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 907436EC7B;
 Fri, 17 Sep 2021 13:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0aFLR2lUxEmXPmZLuYIXqDnPTX0rVncJ2dyBQNcXQtU=; b=GH6mH5HJGp5iS3e1ZDYfKy1Bds
 11LWULQPO2rmUbqSYx3wJ1e0vzwGT0rY04Rs0oikIFmIJP5V6X5doOEUP3jyKY90jvrTh5gH7Lrrv
 O8HmoJZlakpHvA9dfcVd1FH/6nTwQG+E+dCot3cqztnlCVv11344c7aGFKdg/FYUcqtLnmd5dl1yU
 hUAJIBnJNpNDzReYNbfc4ZEv4aG/5lUQdyIcZ6clv8nSx551RqRM1GUP0ihqXejnXIcXQ6QXttEWn
 7aZN2zg+9Yi+uK4tAupMtYBlDQlJNMFTQB8XERCObxXc4V9BLs1iBhgJuTXj/U+dKByWVrR2Hqtml
 6ZvK7TAw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRDg8-003sDR-Ty; Fri, 17 Sep 2021 13:13:21 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6958A30031A;
 Fri, 17 Sep 2021 15:13:19 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 4AF5920BC8BFC; Fri, 17 Sep 2021 15:13:19 +0200 (CEST)
Date: Fri, 17 Sep 2021 15:13:19 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org
Message-ID: <YUSUb+JP+e0f+00G@hirez.programming.kicks-ass.net>
References: <96ab9cf1-250a-8f34-51ec-4a7f66a87b39@linux.intel.com>
 <YTnETRSy9H0CRdpc@hirez.programming.kicks-ass.net>
 <a7e5d99d-39c4-6d27-3029-4689a2a1a17a@linux.intel.com>
 <YTtznr85mg5xXouP@hirez.programming.kicks-ass.net>
 <e8a7754e-23e7-0250-5718-101a56d008f0@linux.intel.com>
 <YUBGPdDDjKlxAuXJ@hirez.programming.kicks-ass.net>
 <205e1591-343b-fb77-cfca-9c16af1484bd@linux.intel.com>
 <YUCpfrbfPSZvD3Xl@phenom.ffwll.local>
 <a374d768-213e-58e7-d281-1c46d1c0c105@linux.intel.com>
 <YUNGaztoBrTzEuEG@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YUNGaztoBrTzEuEG@hirez.programming.kicks-ass.net>
Subject: Re: [Intel-gfx] [PATCH v2] kernel/locking: Add context to
 ww_mutex_trylock.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 16, 2021 at 03:28:11PM +0200, Peter Zijlstra wrote:
> On Thu, Sep 16, 2021 at 03:00:39PM +0200, Maarten Lankhorst wrote:
> 
> > > For merge logistics, can we pls have a stable branch? I expect that the
> > > i915 patches will be ready for 5.16.
> > >
> > > Or send it in for -rc2 so that the interface change doesn't cause needless
> > > conflicts, whatever you think is best.
> 
> > Yeah, some central branch drm could pull from, would make upstreaming patches that depends on it easier. :)
> 
> I think I'll make tip/locking/wwmutex and include that in
> tip/locking/core, let me have a poke.

This is now so. Enjoy!
