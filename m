Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB54D1200A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 18:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47F86896E7;
	Thu,  2 May 2019 16:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1CA896E7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 16:23:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16432058-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2019 17:23:24 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190502094119.17416-1-chris@chris-wilson.co.uk>
 <20190502141701.10112-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190502141701.10112-1-chris@chris-wilson.co.uk>
Message-ID: <155681420219.9023.11054147455647672163@skylake-alporthouse-com>
Date: Thu, 02 May 2019 17:23:22 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/execlists: Ensure arbitration
 is disabled for the breadcrumb
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMDIgMTU6MTc6MDEpCj4gSWYgd2UgaW50ZXJy
dXB0IGJ1aWxkaW5nIG9mIHRoZSByZXF1ZXN0LCB3ZSBtYXkgZW1pdCBhIHJlcXVlc3Qgd2l0aCBu
bwo+IHBheWxvYWQgYXQgYWxsLCB3aXRoIHRoZSBjb25zZXF1ZW5jZSB0aGF0IHdlIG5ldmVyIGRp
c2FibGUgYXJiaXRyYXRpb24KPiBwcmlvciB0byB0aGUgYnJlYWRjcnVtYi4gSWYgd2UgZ2V0IHBy
ZWVtcHRlZCBkdXJpbmcgdGhlIGJyZWFkY3J1bWIsIGl0Cj4gYXBwZWFycyBwb3NzaWJsZSB0byBs
b3NlIHRoZSBhc3NvY2lhdGlvbiBvZiB0aGUgaW50ZXJydXB0IHdpdGgKPiBicmVhZGNydW1iLCBh
bmQgdW5kZXIgdGhlIHJpZ2h0IGNvbmRpdGlvbnMgbWlzcyB0aGUgYnJlYWRjcnVtYiBpbnRlcnJ1
cHQKPiBlbnRpcmVseSwgbGVhdmluZyB0aGUgcmVxdWVzdCdzIHdhaXRlcnMgZGFuZ2xpbmcuCj4g
Cj4gTm93IHRoYXQgd2UgYWx3YXlzIGRpc2FibGUgdGhlIGFyYml0cmF0aW9uIGluIHRoZSBicmVh
ZGNydW1iLCB3ZSBjYW4KPiByZW1vdmUgdGhlIHJlZHVuZGFudCBjb21tYW5kIHRvIGRpc2FibGUg
aXQgYWZ0ZXIgZW1pdHRpbmcgdGhlIGJhdGNoLgo+IAo+IFRlc3RjYXNlOiBpZ3QvZ2VtX2NvbmN1
cnJlbnRfYmxpdAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgoKVGhhdCdzIG5vdCBpdCBlaXRoZXIuIE5leHQgaWRlYT8KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
