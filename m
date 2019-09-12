Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DBCB0F11
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 14:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1516ED27;
	Thu, 12 Sep 2019 12:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A8B46ED27
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 12:48:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18464153-1500050 for multiple; Thu, 12 Sep 2019 13:47:50 +0100
MIME-Version: 1.0
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Martin Wilck <Martin.Wilck@suse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAHk-=wjKv_Zw2zGHduyrQH_VQzxXYzwKdwwzzpsdnsdx=EK30Q@mail.gmail.com>
References: <ad70d1985e8d0227dc55fedeec769de166e63ae0.camel@suse.com>
 <156535522344.29541.9312856809559678262@skylake-alporthouse-com>
 <20190910142047.GB3029@papaya>
 <3dcff41048621ff440687dd6691aae31a8647a1e.camel@suse.com>
 <CAHk-=wjKv_Zw2zGHduyrQH_VQzxXYzwKdwwzzpsdnsdx=EK30Q@mail.gmail.com>
Message-ID: <156829246802.4926.7844021009098193103@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Sep 2019 13:47:48 +0100
Subject: Re: [Intel-gfx] 5.3-rc3: Frozen graphics with kcompactd migrating
 i915 pages
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
Cc: "leho@kraav.com" <leho@kraav.com>, "tiwai@suse.de" <tiwai@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Michal Koutny <MKoutny@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaW51cyBUb3J2YWxkcyAoMjAxOS0wOS0xMiAxMjo1OToyNSkKPiBPbiBUaHUsIFNl
cCAxMiwgMjAxOSBhdCAxMjo1MSBQTSBNYXJ0aW4gV2lsY2sgPE1hcnRpbi5XaWxja0BzdXNlLmNv
bT4gd3JvdGU6Cj4gPgo+ID4gSXMgdGhlcmUgYW4gYWx0ZXJuYXRpdmUgdG8gcmV2ZXJ0aW5nIGFh
NTZhMjkyY2U2MiAoImRybS9pOTE1L3VzZXJwdHI6Cj4gPiBBY3F1aXJlIHRoZSBwYWdlIGxvY2sg
YXJvdW5kIHNldF9wYWdlX2RpcnR5KCkiKT8gQW5kIGlmIHdlIGRvLCB3aGF0Cj4gPiB3b3VsZCBi
ZSB0aGUgY29uc2VxdWVuY2VzPyBXb3VsZCBvdGhlciBwYXRjaGVzIG5lZWQgdG8gYmUgcmV2ZXJ0
ZWQsCj4gPiB0b28/Cj4gCj4gTG9va2luZyBhdCB0aGF0IGNvbW1pdCwgYW5kIHRoZSBiYWNrdHJh
Y2Ugb2YgdGhlIGxvY2t1cCwgSSB0aGluayB0aGF0Cj4gcmV2ZXJ0aW5nIGl0IGlzIHRoZSBjb3Jy
ZWN0IHRoaW5nIHRvIGRvLgo+IAo+IFlvdSBjYW4ndCB0YWtlIHRoZSBwYWdlIGxvY2sgaW4gaW52
YWxpZGF0ZV9yYW5nZSgpLCBzaW5jZSBpdCdzIGNhbGxlZAo+IGZyb20gdHJ5X3RvX3VubWFwKCks
IHdoaWNoIGlzIGNhbGxlZCB3aXRoIHRoZSBwYWdlIGxvY2sgYWxyZWFkeSBoZWxkLgo+IAo+IFNv
IGNvbW1pdCBhYTU2YTI5MmNlNjIgaXMganVzdCBmdW5kYW1lbnRhbGx5IGNvbXBsZXRlbHkgd3Jv
bmcgYW5kCj4gc2hvdWxkIGJlIHJldmVydGVkLgoKVGhlcmUncyBzdGlsbCB0aGUgZGlsZW1tYSB0
aGF0IHdlIGdldCBjYWxsZWQgd2l0aG91dCB0aGUgcGFnZSBsb2NrLCBidXQKYXQgdGhpcyBtb21l
bnQgaW4gdGltZSBpbiBvcmRlciB0byBoaXQgNS4zLCBpdCBuZWVkcyBhIHJldmVydCBzZW50CmRp
cmVjdGx5IHRvIExpbnVzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
