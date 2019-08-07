Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 035F484476
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 08:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F07189C9A;
	Wed,  7 Aug 2019 06:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF67089C9A;
 Wed,  7 Aug 2019 06:30:10 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 662B368B05; Wed,  7 Aug 2019 08:30:03 +0200 (CEST)
Date: Wed, 7 Aug 2019 08:30:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hugh Dickins <hughd@google.com>
Message-ID: <20190807063002.GG6627@lst.de>
References: <20190805160307.5418-1-sergey.senozhatsky@gmail.com>
 <20190805160307.5418-3-sergey.senozhatsky@gmail.com>
 <20190805181255.GH1131@ZenIV.linux.org.uk>
 <20190805182834.GI1131@ZenIV.linux.org.uk>
 <alpine.LSU.2.11.1908060007190.1941@eggly.anvils>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LSU.2.11.1908060007190.1941@eggly.anvils>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCHv2 2/3] i915: convert to new mount API
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMDYsIDIwMTkgYXQgMTI6NTA6MTBBTSAtMDcwMCwgSHVnaCBEaWNraW5zIHdy
b3RlOgo+IFRob3VnaCBwZXJzb25hbGx5IEknbSBhdmVyc2UgdG8gbWFuYWdpbmcgImYib2JqZWN0
cyB0aHJvdWdoCj4gIm0iaW50ZXJmYWNlcywgd2hpY2ggY2FuIGdldCByaWRpY3Vsb3VzIChub3Rh
Ymx5LCBNQURWX0hVR0VQQUdFIHdvcmtzCj4gb24gdGhlIHZpcnR1YWwgYWRkcmVzcyBvZiBhIG1h
cHBpbmcsIGJ1dCB0aGUgaHVnZS1vci1ub3QgYWxpZ25tZW50IG9mCj4gdGhhdCBtYXBwaW5nIG11
c3QgaGF2ZSBiZWVuIGRlY2lkZWQgcHJldmlvdXNseSkuICBJbiBHb29nbGUgd2UgZG8gdXNlCj4g
ZmNudGxzIEZfSFVHRVBBR0UgYW5kIEZfTk9IVUdFUEFHRSB0byBvdmVycmlkZSBvbiBhIHBlci1m
aWxlIGJhc2lzIC0KPiBvbmUgZGF5IEknbGwgZ2V0IHRvIHVwc3RyZWFtaW5nIHRob3NlLgoKU3Vj
aCBhbiBpbnRlcmZhY2Ugc2VlbXMgdmVyeSB1c2VmdWwsIGFsdGhvdWdoIHRoZSB0d28gZmNudGxz
IHNlZW0gYSBiaXQKb2RkLgoKQnV0IEkgdGhpbmsgdGhlIHBvaW50IGhlcmUgaXMgdGhhdCB0aGUg
aTkxNSBoYXMgaXRzIG93biBzb21ld2hhdCBvZGQKaW5zdGFuY2Ugb2YgdG1wZnMuICBJZiB3ZSBj
b3VsZCBwYXNzIHRoZSBlcXVpdmFsZW50IG9mIHRoZSBodWdlPSoKb3B0aW9ucyB0byBzaG1lbV9m
aWxlX3NldHVwIGFsbCB0aGF0IGdhcmJhZ2UgKGluY2x1ZGluZyB0aGUKc2htZW1fZmlsZV9zZXR1
cF93aXRoX21udCBmdW5jdGlvbikgY291bGQgZ28gYXdheS4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
