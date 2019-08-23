Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1BD9AF34
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 14:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3C86E06E;
	Fri, 23 Aug 2019 12:22:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C406E06E;
 Fri, 23 Aug 2019 12:22:55 +0000 (UTC)
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i18ab-0007UH-8z; Fri, 23 Aug 2019 12:22:45 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 48F1A307691;
 Fri, 23 Aug 2019 14:22:10 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 67A3B201E04D9; Fri, 23 Aug 2019 14:22:42 +0200 (CEST)
Date: Fri, 23 Aug 2019 14:22:42 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190823122242.GN2349@hirez.programming.kicks-ass.net>
References: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
 <20190820081902.24815-4-daniel.vetter@ffwll.ch>
 <20190820202440.GH11147@phenom.ffwll.local>
 <20190822161428.c9e4479207386d34745ea111@linux-foundation.org>
 <CAKMK7uGw_7uD=wH3bcR9xXSxAcAuYTLOZt3ue4TEvst1D0KzLQ@mail.gmail.com>
 <20190823121234.GB12968@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823121234.GB12968@ziepe.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V/BSRc/5Dyzi5nNWjFuzygHkjpKjWnqloHD8aW/Vxqo=; b=QhVuHj1dAZl1mSQGXJo2iAGCW
 hgIo2M3LHfplbLuqjQQKsp+jqghpnaWYkE+8TJagxpAooKMVQSfkyCiWzwg0J/FebKHV2fgd5dRkD
 62k1PTj5cLwTATA9cUqki8XfXOsA+hV4kL5THNjT0pglSIqU3PgXGRmhGuQI+/mv+yaebEm22DsFZ
 NsW/tHvQOSWbR9a8c7n66Br1OziopIZBpxN0M1Rr5TYPorCcXRqMoWvj4KXCSJZtqjcrT7O74s0uW
 yu/81Xxv4oF8izJ2tOAHVHMs3+/ib0gg12YdbCPetCqufa/tIbQUDfbnN9QLO9xSKQaHM0oj+tX+W
 gWXahD2LQ==;
Subject: Re: [Intel-gfx] [PATCH 3/4] kernel.h: Add non_block_start/end()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Feng Tang <feng.tang@intel.com>, Michal Hocko <mhocko@suse.com>,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jann Horn <jannh@google.com>, LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, David Rientjes <rientjes@google.com>,
 Wei Wang <wvw@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMDk6MTI6MzRBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgoKPiBJIHN0aWxsIGhhdmVuJ3QgaGVhcmQgYSBzYXRpc2ZhY3RvcnkgYW5zd2VyIHdo
eSBhIHdob2xlIG5ldyBzY2hlbWUgaXMKPiBuZWVkZWQgYW5kIGEgc2ltcGxlOgo+IAo+ICAgIGlm
IChJU19FTkFCTEVEKENPTkZJR19ERUJVR19BVE9NSUNfU0xFRVApKQo+ICAgICAgICAgcHJlZW1w
dF9kaXNhYmxlKCkKPiAKPiBpc24ndCBzdWZmaWNpZW50IHRvIGNhdGNoIHRoZSBwcm9ibGVtYXRp
YyBjYXNlcyBkdXJpbmcgZGVidWdnaW5nPz8KPiBJTUhPIHRoZSBmYWN0IHByZWVtcHQgaXMgY2hh
bmdlZCBieSB0aGUgYWJvdmUgd2hlbiBkZWJ1Z2dpbmcgaXMgbm90Cj4gbWF0ZXJpYWwgaGVyZS4g
SSB0aGluayB0aGF0IGluZm9ybWF0aW9uIHNob3VsZCBiZSBpbmNsdWRlZCBpbiB0aGUKPiBjb21t
aXQgbWVzc2FnZSBhdCBsZWFzdC4KClRoYXQgaGFzIGEgbXVjaCBsYXJnZXIgaW1wYWN0IGFuZCBh
Y3R1YWxseSBjaGFuZ2VzIGJlaGF2aW91ciwgd2hpbGUgdGhlCnJlbGF0aXZlbHkgc2ltcGxlIHBh
dGNoIERhbmllbCBwcm9wb3NlZCBvbmx5IGFkZHMgYSB3YXJuaW5nIGJ1dCBkb2Vzbid0CmFmZmVj
dCBiZWhhdmlvdXIuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
