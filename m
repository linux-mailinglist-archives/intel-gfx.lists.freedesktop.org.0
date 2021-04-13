Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060E435D843
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 08:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D268938B;
	Tue, 13 Apr 2021 06:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org
 [IPv6:2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B4BE8938B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 06:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jwxAycbsASm0GWf+9F+ExTwdizKmiUk4L1b8AT82ci4=; b=B1tSGz0kmdSV5QlZ5Htwor9uWY
 n3hiBIHetYE7C+PLuxLVRKAkmPHzukonxNO9wdGDplzNkZkqs7jVTeXkKXvwft2StBK7bDB3N8LGL
 aWl0vqGkhfGBpr035kdhDvJg1a2Em9vaduUClXR6ZOBGMarfChN3JMwbBQhV5BkzvnakKWM4kZGTF
 s8f0ifOQdMYU1boXKX1/2NVB1cZgW2YHV+HBs0a3SNMVNhNm6qtWAauEgQLqz11MRTviRcl8TByo6
 XvK24VGuMw8jh9RhTIpfiQrqsPrCtQJQKyAZnja2HwOjidBQ8k0Z7IBdqdre9yDaLNR4yslgM/GAt
 lWQzuIrA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lWCw5-008RQa-Im; Tue, 13 Apr 2021 06:54:09 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 78477300036;
 Tue, 13 Apr 2021 08:54:06 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 2B80E200CF8CA; Tue, 13 Apr 2021 08:54:06 +0200 (CEST)
Date: Tue, 13 Apr 2021 08:54:06 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <YHVADhpkETMQGD5X@hirez.programming.kicks-ass.net>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.769864829@infradead.org>
 <202104121302.57D7EF8@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202104121302.57D7EF8@keescook>
Subject: Re: [Intel-gfx] [PATCH 4/7] mm: Introduce verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk,
 linux-mm@kvack.org, boris.ostrovsky@oracle.com, hch@lst.de,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 01:05:09PM -0700, Kees Cook wrote:
> On Mon, Apr 12, 2021 at 10:00:16AM +0200, Peter Zijlstra wrote:
> > +struct vpr_data {
> > +	int (*fn)(pte_t pte, unsigned long addr, void *data);
> > +	void *data;
> > +};
> 
> Eeerg. This is likely to become an attack target itself. Stored function
> pointer with stored (3rd) argument.

You got some further reading on that? How exactly are those exploited?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
