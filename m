Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C2C71CB8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 18:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BDF189C69;
	Tue, 23 Jul 2019 16:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3876089C69
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 16:19:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17539414-1500050 for multiple; Tue, 23 Jul 2019 17:19:11 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156389646739.31349.6589162843200275452@skylake-alporthouse-com>
References: <20190723153733.19401-1-daniele.ceraolospurio@intel.com>
 <156389646739.31349.6589162843200275452@skylake-alporthouse-com>
Message-ID: <156389874956.31349.7743743461142295564@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 17:19:09 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: fix status check
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMjMgMTY6NDE6MDcpCj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTIzIDE2OjM3OjMzKQo+ID4gRml4IGJvdGNoZWQg
cmVmYWN0b3Jpbmcgb2YgdGhlIGNvZGUgdGhhdCB1bmNvcnJlY3RseSBzcGxpdCBhIGNoZWNrIG9u
IGEKPiA+IGJvb2wsIHRyZWF0aW5nIGl0IGFzIGEgdTMyLgo+ID4gCj4gPiBSZXBvcnRlZC1ieTog
RGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgo+ID4gRml4ZXM6IDg0YjFj
YTJmMGU2OCAoImRybS9pOTE1L3VjOiBwcmVmZXIgaW50ZWxfZ3Qgb3ZlciBpOTE1IGluIEd1Qy9I
dUMgcGF0aHMiKQo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFu
aWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiA+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gKHdobyBmZWVscyByYXRoZXIgc2lsbHkgZm9yIHNraW1taW5nIG92
ZXIgaXQpCgpBcHBsaWVkLCB0aGFua3MgZm9yIHRoZSByZXBvcnQgYW5kIHF1aWNrIGZpeC4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
