Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D095E412
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 14:36:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D16C3898AA;
	Wed,  3 Jul 2019 12:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16863898AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 12:36:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17113844-1500050 for multiple; Wed, 03 Jul 2019 13:36:27 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190703123236.30907-1-chris@chris-wilson.co.uk>
References: <20190703123236.30907-1-chris@chris-wilson.co.uk>
Message-ID: <156215738491.20783.6376736431071772656@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 03 Jul 2019 13:36:24 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Defer the free for alloc
 error paths
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDMgMTM6MzI6MzYpCj4gSWYgd2UgaGl0IGFu
IGVycm9yIHdoaWxlIGFsbG9jYXRpbmcgdGhlIHBhZ2UgdGFibGVzLCB3ZSBoYXZlIHRvIHVud2lu
ZAo+IHRoZSBpbmNvbXBsZXRlIHVwZGF0ZXMsIGFuZCB3aXNoIHRvIGZyZWUgdGhlIHVudXNlZCBw
ZC4gSG93ZXZlciwgd2UgYXJlCj4gbm90IGFsbG93ZWQgdG8gYmUgaG9kaW5nIHRoZSBzcGlubG9j
ayBhdCB0aGF0IHBvaW50LCBhbmQgc28gbXVzdCB1c2UgdGhlCj4gbGF0ZXIgZnJlZSB0byBkZWZl
ciBpdCB1bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBsb2NrLgoKSnVzdCBpbiBjYXNlIGl0J3Mgbm90
IG9idmlvdXMgd2h5LAoKPDM+IFs0MTQuMzYzNzk1XSBCVUc6IHNsZWVwaW5nIGZ1bmN0aW9uIGNh
bGxlZCBmcm9tIGludmFsaWQgY29udGV4dCBhdCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYzo0NzIKPDM+IFs0MTQuMzY0MTY3XSBpbl9hdG9taWMoKTogMSwgaXJxc19kaXNhYmxl
ZCgpOiAwLCBwaWQ6IDM5MDUsIG5hbWU6IGk5MTVfc2VsZnRlc3QKPDQ+IFs0MTQuMzY0NDA2XSAz
IGxvY2tzIGhlbGQgYnkgaTkxNV9zZWxmdGVzdC8zOTA1Ogo8ND4gWzQxNC4zNjQ0MDhdICAjMDog
MDAwMDAwMDAzNGZlOGFhOCAoJmRldi0+bXV0ZXgpey4uLi59LCBhdDogZGV2aWNlX2RyaXZlcl9h
dHRhY2grMHgxOC8weDUwCjw0PiBbNDE0LjM2NDQxNV0gICMxOiAwMDAwMDAwMDZiZDhhNTYwICgm
ZGV2LT5zdHJ1Y3RfbXV0ZXgpeysuKy59LCBhdDogaWd0X2N0eF9leGVjKzB4YjcvMHg0MTAgW2k5
MTVdCjw0PiBbNDE0LjM2NDQ3Nl0gICMyOiAwMDAwMDAwMDNkZmRjNzY2ICgmKCZwZC0+bG9jaykt
PnJsb2NrKXsrLisufSwgYXQ6IGdlbjhfcHBndHRfYWxsb2NfcGRwKzB4NDQ4LzB4NTQwIFtpOTE1
XQo8Mz4gWzQxNC4zNjQ1MjldIFByZWVtcHRpb24gZGlzYWJsZWQgYXQ6Cjw0PiBbNDE0LjM2NDUz
MF0gWzwwMDAwMDAwMDAwMDAwMDAwPl0gMHgwCjw0PiBbNDE0LjM2NDY5Nl0gQ1BVOiAwIFBJRDog
MzkwNSBDb21tOiBpOTE1X3NlbGZ0ZXN0IFRhaW50ZWQ6IEcgICAgIFUgICAgICAgICAgICA1LjIu
MC1yYzctQ0ktQ0lfRFJNXzY0MDMrICMxCjw0PiBbNDE0LjM2NDY5OF0gSGFyZHdhcmUgbmFtZTog
UUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgcmVsLTEuMTAuMS0w
LWc4ODkxNjk3LXByZWJ1aWx0LnFlbXUtcHJvamVjdC5vcmcgMDQvMDEvMjAxNAo8ND4gWzQxNC4z
NjQ2OTldIENhbGwgVHJhY2U6Cjw0PiBbNDE0LjM2NDcwNF0gIGR1bXBfc3RhY2srMHg2Ny8weDli
Cjw0PiBbNDE0LjM2NDcwOF0gIF9fX21pZ2h0X3NsZWVwKzB4MTY3LzB4MjUwCjw0PiBbNDE0LjM2
NDc3N10gIHZtX2ZyZWVfcGFnZSsweDI0LzB4YzAgW2k5MTVdCjw0PiBbNDE0LjM2NDg1Ml0gIGZy
ZWVfcGQrMHhmLzB4MjAgW2k5MTVdCjw0PiBbNDE0LjM2NDg5N10gIGdlbjhfcHBndHRfYWxsb2Nf
cGRwKzB4NDg5LzB4NTQwIFtpOTE1XQo8ND4gWzQxNC4zNjQ5NDZdICBnZW44X3BwZ3R0X2FsbG9j
XzRsdmwrMHg4ZS8weDJlMCBbaTkxNV0KPDQ+IFs0MTQuMzY0OTkyXSAgcHBndHRfYmluZF92bWEr
MHgyZS8weDYwIFtpOTE1XQo8ND4gWzQxNC4zNjUwMzldICBpOTE1X3ZtYV9iaW5kKzB4ZTgvMHgy
YzAgW2k5MTVdCjw0PiBbNDE0LjM2NTA4OF0gIF9faTkxNV92bWFfZG9fcGluKzB4YTEvMHhkMjAg
W2k5MTVdCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
