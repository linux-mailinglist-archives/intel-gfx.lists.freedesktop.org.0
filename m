Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C36A294B7A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 12:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 703576E9B6;
	Wed, 21 Oct 2020 10:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from esa2.hc3370-68.iphmx.com (esa2.hc3370-68.iphmx.com
 [216.71.145.153])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD6AB6E9B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=citrix.com; s=securemail; t=1603277514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=c/6PNeJMbMhVj9+L62PuhzsK96Dd1mycxD6opnCaWi4=;
 b=UAYRjwenTnLvAY2kz6orNsg8u2YEPTaWc+9adujJ3isjmAZ+9byb0hc2
 9bVqz78x4sLCc6r0/Yz7Tpj78nA3wumXmGXQVxSgSsjjN128vb9LU5PRs
 M7PYh1b9PGDNQ7nfGR04nJ+AiHmNUh+AFS2zFdocl71SPiqYCDlpSZI2h 8=;
Authentication-Results: esa2.hc3370-68.iphmx.com;
 dkim=none (message not signed) header.i=none
IronPort-SDR: X/9pofebGbC3SRGOQ0k4b7miJU30ivGMOuKXiblO+/Q4ptsCuoRB0kCcx/bA11VMpJeXnYF9IN
 qbEVdA1UDdxhEOXi/TCf7/Pg78e5bKuYA+HVsDQRs9InfJeO8jUNSvli05givy+ICEu7kClzQZ
 4uUKg/l0zvwtTQVlMG5Achlzyr8OcBEpiigCdHkBlvRJzuYL3H8E+ecpaHvF3BsYt5xKvCN2Ie
 tKb3o0r01YZOsbdRn9Ld7S8VrPnljIs+cMSBp3H5bUUldPjozjtT6wMCpgk/O249BnQEOpEN8/
 9ro=
X-SBRS: 2.5
X-MesageID: 29471648
X-Ironport-Server: esa2.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.77,401,1596513600"; d="scan'208";a="29471648"
Date: Wed, 21 Oct 2020 12:51:10 +0200
From: Roger Pau =?utf-8?B?TW9ubsOp?= <roger.pau@citrix.com>
To: Jan Beulich <jbeulich@suse.com>
Message-ID: <20201021105110.w3nyd4xod363kp4d@Air-de-Roger>
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
 <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
 <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
 <a855e542-4e12-14e2-b663-75e2efceb937@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a855e542-4e12-14e2-b663-75e2efceb937@suse.com>
X-ClientProxiedBy: AMSPEX02CAS02.citrite.net (10.69.22.113) To
 FTLPEX02CL06.citrite.net (10.13.108.179)
Subject: Re: [Intel-gfx] i915 dma faults on Xen
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
Cc: Andrew Cooper <andrew.cooper3@citrix.com>, intel-gfx@lists.freedesktop.org,
 xen-devel <xen-devel@lists.xenproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMjEsIDIwMjAgYXQgMTI6MzM6MDVQTSArMDIwMCwgSmFuIEJldWxpY2ggd3Jv
dGU6Cj4gT24gMjEuMTAuMjAyMCAxMTo1OCwgUm9nZXIgUGF1IE1vbm7DqSB3cm90ZToKPiA+IE9u
IEZyaSwgT2N0IDE2LCAyMDIwIGF0IDEyOjIzOjIyUE0gLTA0MDAsIEphc29uIEFuZHJ5dWsgd3Jv
dGU6Cj4gPj4gVGhlIFJNUlJzIGFyZToKPiA+PiAoWEVOKSBbVlQtRF1Ib3N0IGFkZHJlc3Mgd2lk
dGggMzkKPiA+PiAoWEVOKSBbVlQtRF1mb3VuZCBBQ1BJX0RNQVJfRFJIRDoKPiA+PiAoWEVOKSBb
VlQtRF0gIGRtYXJ1LT5hZGRyZXNzID0gZmVkOTAwMDAKPiA+PiAoWEVOKSBbVlQtRF1kcmhkLT5h
ZGRyZXNzID0gZmVkOTAwMDAgaW9tbXUtPnJlZyA9IGZmZmY4MmMwMDAyMWQwMDAKPiA+PiAoWEVO
KSBbVlQtRF1jYXAgPSAxYzAwMDBjNDA2NjA0NjIgZWNhcCA9IDE5ZTJmZjA1MDVlCj4gPj4gKFhF
TikgW1ZULURdIGVuZHBvaW50OiAwMDAwOjAwOjAyLjAKPiA+PiAoWEVOKSBbVlQtRF1mb3VuZCBB
Q1BJX0RNQVJfRFJIRDoKPiA+PiAoWEVOKSBbVlQtRF0gIGRtYXJ1LT5hZGRyZXNzID0gZmVkOTEw
MDAKPiA+PiAoWEVOKSBbVlQtRF1kcmhkLT5hZGRyZXNzID0gZmVkOTEwMDAgaW9tbXUtPnJlZyA9
IGZmZmY4MmMwMDAyMWYwMDAKPiA+PiAoWEVOKSBbVlQtRF1jYXAgPSBkMjAwOGM0MDY2MDQ2MiBl
Y2FwID0gZjA1MGRhCj4gPj4gKFhFTikgW1ZULURdIElPQVBJQzogMDAwMDowMDoxZS43Cj4gPj4g
KFhFTikgW1ZULURdIE1TSSBIUEVUOiAwMDAwOjAwOjFlLjYKPiA+PiAoWEVOKSBbVlQtRF0gIGZs
YWdzOiBJTkNMVURFX0FMTAo+ID4+IChYRU4pIFtWVC1EXWZvdW5kIEFDUElfRE1BUl9STVJSOgo+
ID4+IChYRU4pIFtWVC1EXSBlbmRwb2ludDogMDAwMDowMDoxNC4wCj4gPj4gKFhFTikgW1ZULURd
ZG1hci5jOjYxNTogICBSTVJSIHJlZ2lvbjogYmFzZV9hZGRyIDc4ODYzMDAwIGVuZF9hZGRyIDc4
ODgyZmZmCj4gPj4gKFhFTikgW1ZULURdZm91bmQgQUNQSV9ETUFSX1JNUlI6Cj4gPj4gKFhFTikg
W1ZULURdIGVuZHBvaW50OiAwMDAwOjAwOjAyLjAKPiA+PiAoWEVOKSBbVlQtRF1kbWFyLmM6NjE1
OiAgIFJNUlIgcmVnaW9uOiBiYXNlX2FkZHIgN2QwMDAwMDAgZW5kX2FkZHIgN2Y3ZmZmZmYKPiA+
PiAoWEVOKSBbVlQtRF1mb3VuZCBBQ1BJX0RNQVJfUk1SUjoKPiA+PiAoWEVOKSBbVlQtRF0gZW5k
cG9pbnQ6IDAwMDA6MDA6MTYuNwo+ID4+IChYRU4pIFtWVC1EXWRtYXIuYzo1ODE6ICBOb24tZXhp
c3RlbnQgZGV2aWNlICgwMDAwOjAwOjE2LjcpIGlzCj4gPj4gcmVwb3J0ZWQgaW4gUk1SUiAoNzg5
MDcwMDAsIDc4OTg2ZmZmKSdzIHNjb3BlIQo+ID4+IChYRU4pIFtWVC1EXWRtYXIuYzo1OTY6ICAg
SWdub3JlIHRoZSBSTVJSICg3ODkwNzAwMCwgNzg5ODZmZmYpIGR1ZSB0bwo+ID4gCj4gPiBUaGlz
IGlzIGFsc28gcGFydCBvZiBhIHJlc2VydmVkIHJlZ2lvbiwgc28gc2hvdWxkIGJlIGFkZGVkIHRv
IHRoZQo+ID4gaW9tbXUgcGFnZSB0YWJsZXMgYW55d2F5IHJlZ2FyZGxlc3Mgb2YgdGhpcyBtZXNz
YWdlLgo+IAo+IENvdWxkIHlvdSBjbGFyaWZ5IHdoeSB5b3UgdGhpbmsgc28/IFJNUlJzIGFyZSB0
aWVkIHRvIGRldmljZXMsIHNvCj4gaWYgYSBkZXZpY2UgaW4gcmVhbGl0eSBkb2Vzbid0IGV4aXN0
IChhbmQgbm8gb3RoZXIgb25lIHVzZXMgdGhlCj4gc2FtZSByYW5nZSksIEkgZG9uJ3Qgc2VlIHdo
eSBhbiBJT01NVSBtYXBwaW5nIHdvdWxkIGJlIG5lZWRlZAo+ICh1bmxlc3MgdG8gd29yayBhcm91
bmQgc29tZSByZWxhdGVkIGZpcm13YXJlIGJ1ZykuIFBsdXMgYWl1aSBub25lCj4gb2YgdGhlIElP
TU1VIGZhdWx0cyBhY3R1YWxseSByZXBvcnQgdGhpcyByYW5nZSBhcyBoYXZpbmcgZ290Cj4gYWNj
ZXNzZWQuCgpTaW5jZSBpdCdzIHRoZSBoYXJkd2FyZSBkb21haW4gdGhhdCBnZXRzIHRoZSBnZngg
Y2FyZCBhc3NpZ25lZCBoZXJlIGl0CndpbGwgZ2V0IGFueSByZXNlcnZlZCByZWdpb25zIGFkZGVk
IHRvIHRoZSBJT01NVSBwYWdlIHRhYmxlcyBpbgphcmNoX2lvbW11X2h3ZG9tX2luaXQuIEkgYWdy
ZWUgaXQncyBub3QgcmVsZXZhbnQgaGVyZSwgc2luY2UgdGhvc2UgYXJlCm5vdCB0aGUgcmVnaW9u
cyByZXBvcnRlZCBpbiB0aGUgSU9NTVUgZmF1bHRzLgoKUm9nZXIuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
