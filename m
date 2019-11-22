Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BB21066DF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 08:13:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0366E1F9;
	Fri, 22 Nov 2019 07:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CDF16E1F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 07:13:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19295261-1500050 for multiple; Fri, 22 Nov 2019 07:13:15 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20191121233021.507400-1-chris@chris-wilson.co.uk>
 <1a2bbb14c013c8d8bd31c545fc9213c0093c421f.camel@intel.com>
In-Reply-To: <1a2bbb14c013c8d8bd31c545fc9213c0093c421f.camel@intel.com>
Message-ID: <157440679261.8118.14081825335984323871@skylake-alporthouse-com>
Date: Fri, 22 Nov 2019 07:13:12 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Shorten infinite wait
 for sseu
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

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMTEtMjIgMDE6NTg6NDkpCj4gT24gVGh1LCAy
MDE5LTExLTIxIGF0IDIzOjMwICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBVc2Ugb3Vy
IG1vcmUgcmVndWxhciBpZ3RfZmx1c2hfdGVzdCgpIHRvIGJpbmQgdGhlIHdhaXQtZm9yLWlkbGUg
YW5kCj4gPiBlcnJvciBvdXQgaW5zdGVhZCBvZiB3YWl0aW5nIGFyb3VuZCBmb3JldmVyIG9uIGNy
aXRpY2FsIGZhaWx1cmUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4gCj4gWWVhaCwgc2VlbXMgbGlrZSBhIGJldHRlciBhcHByb2FjaCBo
ZXJlLiBTaG91bGQgd2UganVzdCBiZSBwYXNzaW5nIGd0Cj4gdG8gdGhhdCB0aG91Z2g/IERvZXNu
J3QgbG9vayBsaWtlIHdlIGFjdHVhbGx5IHVzZSB0aGUgcHJpdmF0ZSBkYXRhCj4gb3V0c2lkZSBv
ZiB0aGF0LiBPZiBjb3Vyc2UgdGhhdCdzIGNvbXBsZXRlbHkgdW5yZWxhdGVkIHRvIHRoaXMgY2hh
bmdlLgoKWWVzL25vLiBXZSBhY3R1YWxseSBuZWVkIHR3byBpZ3RfZmx1c2hfdGVzdCgpIHZhcmlh
bnRzLCBvbmUgZ3QgY2VudHJpYwphbmQgb25lIGRldmljZSBjZW50cmljLiBJIGRvIGhhdmUgYSBw
YXRjaCB0byBjb252ZXJ0IGlndF9mbHVzaF90ZXN0IG92ZXIKdG8gaW50ZWxfZ3QsIGFuZCB3aGls
ZSB0aGF0IGxvb2tzIGJldHRlciBpbnNpZGUgZ3QvLCBvdXRzaWRlIGl0CmZyZXF1ZW50bHkgbG9v
a3MgcmV2b2x0aW5nLiBTbyB0aGF0IHBhdGNoIGdvdCBzaGVsdmVkIHVudGlsIHNvbWVvbmUKZmlu
ZHMgYSBtb21lbnQgdG8gc29ydCBvdXQgdGhlIG5hbWVzIGFuZCBzZW1hbnRpY3Mgd2UgbmVlZC4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
