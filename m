Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5842A173F26
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 19:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8437E6F4AE;
	Fri, 28 Feb 2020 18:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01FFA6F4B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 18:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CmBWpIKnnVWtlhcroBgVPn++r+PthFu+2xU5l1vUPNA=; b=Wa3ZaFhtWJ4Hy9wtAsjYEfN2o4
 V0PZ+M9bh68HsduPFTOqG8No+xXjnGXslx1yHoBU+ikNAFzs6lLd6T6nYgR4khNxBJsLWySctRIi4
 /ggGthuLa2kTOn2v7eqBXJQ6ntSg7Hh7FC874lLxj5htTN2H+hfB/HBxFaiw7ER/zIYGRDEu4SjoB
 NwLVY7/kRcm34FMiRHvzAvORSt42Ol1iaTbeFuKK48t6P0K36fo+0dnVzHD1A62iVCWzDu59ohPKp
 wkOva5VlewEX9Eob2QG+yRVZqOCWfp9e9SbCWjoUDkNuMfgLJghiy2egmjYD9RteV09lT+btsA67j
 QlDIFWYA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7k0B-0004dA-Ox; Fri, 28 Feb 2020 18:04:43 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id CCFB030067C;
 Fri, 28 Feb 2020 19:02:44 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 386F3209E76B5; Fri, 28 Feb 2020 19:04:41 +0100 (CET)
Date: Fri, 28 Feb 2020 19:04:41 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Message-ID: <20200228180441.GL18400@hirez.programming.kicks-ass.net>
References: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
 <20200227223542.GE23230@ZenIV.linux.org.uk>
 <20200228010342.3j3awgvvgvitif7z@treble>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228010342.3j3awgvvgvitif7z@treble>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Minimize uaccess exposure in
 i915_gem_execbuffer2_ioctl()
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
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Randy Dunlap <rdunlap@infradead.org>, Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 07:03:42PM -0600, Josh Poimboeuf wrote:
> > And why not mark gen8_canonical_addr() __always_inline?
> 
> Right, marking those two functions as __always_inline is the other
> option.  The problem is, if you keep doing it, eventually you end up
> with __always_inline-itis spreading all over the place.  And it affects
> all the other callers, at least in the CONFIG_CC_OPTIMIZE_FOR_SIZE case.
> At least this fix is localized.

I'm all for __always_inline in this case, the compiler not inlining sign
extention is just retarded,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
