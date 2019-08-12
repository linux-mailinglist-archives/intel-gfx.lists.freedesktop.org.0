Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5200B89F4B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 15:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CA506E509;
	Mon, 12 Aug 2019 13:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453D06E508;
 Mon, 12 Aug 2019 13:12:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17969214-1500050 for multiple; Mon, 12 Aug 2019 14:12:21 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87pnla7g87.fsf@gaia.fi.intel.com>
References: <20190812103224.30163-1-chris@chris-wilson.co.uk>
 <87pnla7g87.fsf@gaia.fi.intel.com>
Message-ID: <156561553834.2301.5514448065180767393@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 14:12:18 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915: Trim ring measurement by one
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEyIDEyOjUyOjU2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBCZSBhIGxpdHRsZSBt
b3JlIGNvbnNlcnZhdGl2ZSBpbiBvdXIgcmluZyBtZWFzdXJlbWVudCBhbmQgZXhjbHVkZSBvbmUK
PiA+IGJhdGNoIHRvIGxlYXZlIHJvb20gaW4gY2FzZSBvdXIgdXNlciBuZWVkcyB0byB3cmFwICh3
aGVyZSBhIHJlcXVlc3Qgd2lsbAo+ID4gYmUgZXhwYW5kZWQgdG8gY292ZXIgdGhlIHVudXNlZCBz
cGFjZSBhdCB0aGUgZW5kIG9mIHRoZSByaW5nKS4KPiA+Cj4gCj4gZGlkIHJlYWQgdGhlIHdyYXBw
aW5nIHBhcnQgYW5kIHRoYXQgc2VlbXMgdG8gYmUgdGhlIGNhc2UgdGhhdAo+IHdlIGVubGFyZ2Ug
dGhlIHdyYXBwaW5nIHJlcXVlc3QuCj4gCj4gSG93ZXZlciBkbyB3ZSBsb3NlIHNvbWUgY292ZXJh
Z2Ugb24gdGhlIGFjdHVhbCB3cmFwIHRlc3RzPwoKVGhlcmUncyBvbmx5IG9uZSB3aXRoIHRoYXQg
aWRlYSBpbiBtaW5kLCBnZW1fcmluZ2ZpbGwoKS4gV2hpY2ggaXMKYWxyZWFkeSAiYnJva2VuIiBi
ZWNhdXNlIGl0IGFzc3VtZXMgdGhhdCBhbGwgZW5naW5lcyBoYXZlIHRoZSBzYW1lIHJpbmcKc2l6
ZSwgc28gd2Ugd2lsbCBiZSB1bmRlcmZpbGxpbmcgbW9zdC4gQ291bGQgYWxzbyBkbyB3aXRoIGFu
IEFMTF9FTkdJTkVTCm1vZGUuCgpUaGVyZSdzIG5vdGhpbmcgdGhhdCBleHBsaWNpdGx5IHRyaWVz
IHRvIGhpdCBhbGwgdGhlIHBvc3NpYmxlIHdheXMgaW4Kd2hpY2ggcmluZyB3cmFwcGluZyBvY2N1
cnMsIGl0IHRlbmRzIHRvIGZhbGxvdXQgb2YgZmF1eC1zdHJlc3MgdGVzdHMKbGlrZSBnZW1fZXhl
Y19wYXJhbGxlbCBvciBnZW1fY3R4X2NyZWF0ZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
