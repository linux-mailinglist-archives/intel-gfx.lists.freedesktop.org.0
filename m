Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7CF58F01C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 18:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA0791188;
	Wed, 10 Aug 2022 16:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CBF8F549
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 16:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=t4MwVAfwkCB4EmT15HXtvuXRXMl6148oIcwvT5rWzH0=; b=kPMJXR6bwoyVWhfo3Q7xsHuiDo
 cu8JJgUYOjq7g3kEB5WIsh9x6nbEmYe6xEiLqmEL/GcqqRT1KRBcbdOcD0IQPc5DO2tLg0tFutO+n
 8jox7enRkWZGz1Xnf4MdfmCJVKzOq4mRpK+VYzdXJtVVQ2H5CJunExT5O4E0myfZ+CxWP/zb3jxwf
 fL8YjQ0IgMU+fDDCUbm8haoViYTGXvq78yp/5MjQ83XkXd+yz1/IUPk57t1LVhRD+3Rg2jNOETaC9
 Ua4TR8OXpDgLDsK0RXLQ6P9pLjXNifHs7hjH82RRbDD5IkjPI/38kLQtkqWzOwtuL6KxX+LEQ+h8d
 +RocqkeA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1oLoH3-00Gzln-Lb; Wed, 10 Aug 2022 16:09:37 +0000
Date: Wed, 10 Aug 2022 17:09:37 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Hugh Dickins <hughd@google.com>
Message-ID: <YvPYQeMjfyruTeGe@casper.infradead.org>
References: <584ae788-05e3-5824-8c85-cbb833677850@redhat.com>
 <f0dd80b2-97e1-c320-8517-7ebdb027f58a@redhat.com>
 <4a204620-7639-c844-455-10e55b372bcf@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a204620-7639-c844-455-10e55b372bcf@google.com>
Subject: Re: [Intel-gfx] i915: crash with 5.19-rc2
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 LKML <linux-kernel@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Zdenek Kabelac <zkabelac@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 10, 2022 at 08:55:32AM -0700, Hugh Dickins wrote:
> This is not a bug in zram or i915, but what Matthew fixes in
> https://lore.kernel.org/lkml/20220730042518.1264767-1-willy@infradead.org/

Thanks for tracking that down, Hugh.  Nice to know it's a crash rather
than a data corruption.  The fix is in Andrew's tree, so I think it's
already destined for upstream soon.

Andrew, I have two fixes that I don't see in your tree:

https://lore.kernel.org/linux-mm/20220808193430.3378317-2-willy@infradead.org/T/#u
https://lore.kernel.org/linux-mm/20220808193430.3378317-4-willy@infradead.org/T/#u

The first is of minor importance, the second I believe Hugh has hit in
his testing.

