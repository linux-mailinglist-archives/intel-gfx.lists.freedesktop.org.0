Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CA6729CF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 10:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2455D6E49C;
	Wed, 24 Jul 2019 08:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972576E49C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 08:19:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17557726-1500050 for multiple; Wed, 24 Jul 2019 09:19:46 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190724022153.8927-7-daniele.ceraolospurio@intel.com>
References: <20190724022153.8927-1-daniele.ceraolospurio@intel.com>
 <20190724022153.8927-7-daniele.ceraolospurio@intel.com>
Message-ID: <156395638435.31349.15923031690949143492@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 24 Jul 2019 09:19:44 +0100
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915/guc: Set GuC init params
 only once
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTI0IDAzOjIxOjUxKQo+IEFs
bCB0aGUgR3VDIG9iamVjdHMgYXJlIHBlcm1hLXBpbm5lZCwgc28gdGhlaXIgb2Zmc2V0IGNhbid0
IGNoYW5nZSBhdAo+IHJ1bnRpbWUuIFdlIGNhbiB0aGVyZWZvcmUgc2V0IChhbmQgbG9nISkgdGhl
IHBhcmFtZXRlcnMgb25seSBvbmNlIGR1cmluZwo+IGJvb3QuCgpNdWNoIGJldHRlciwgYnV0IEkg
c3RpbGwgaGF2ZSB0aGUgc2FtZSBpbmZvcm1hdGlvbiAoZncgbG9hZGVkKSByZXBlYXRlZC4KCjw3
PlsgIDM0NS40MzI5OTVdIFtkcm06aW50ZWxfdWNfZndfdXBsb2FkIFtpOTE1XV0gSHVDIGZ3IGxv
YWQgaTkxNS9rYmxfaHVjX3ZlcjAyXzAwXzE4MTAuYmluCjw3PlsgIDM0NS40MzM1ODldIFtkcm06
aW50ZWxfdWNfZndfdXBsb2FkIFtpOTE1XV0gSHVDIGZ3IGxvYWQgY29tcGxldGVkCjw2PlsgIDM0
NS40MzM1OTJdIFtkcm1dIEh1QzogTG9hZGVkIGZpcm13YXJlIGk5MTUva2JsX2h1Y192ZXIwMl8w
MF8xODEwLmJpbiAodmVyc2lvbiAyLjApCjw3PlsgIDM0NS40MzM2ODZdIFtkcm06aW50ZWxfdWNf
ZndfdXBsb2FkIFtpOTE1XV0gR3VDIGZ3IGxvYWQgaTkxNS9rYmxfZ3VjXzMzLjAuMC5iaW4KPDc+
WyAgMzQ1LjQzNDA0Nl0gW2RybTppbnRlbF91Y19md191cGxvYWQgW2k5MTVdXSBHdUMgZncgbG9h
ZCBjb21wbGV0ZWQKPDY+WyAgMzQ1LjQzNDA0OF0gW2RybV0gR3VDOiBMb2FkZWQgZmlybXdhcmUg
aTkxNS9rYmxfZ3VjXzMzLjAuMC5iaW4gKHZlcnNpb24gMzMuMCkKPDc+WyAgMzQ1LjQzNjU3OF0g
W2RybTppbnRlbF9ndWNfZndfdXBsb2FkIFtpOTE1XV0gR3VDIHN0YXR1cyAweDgwMDJmMGVjCjw2
PlsgIDM0NS40MzY2NDNdIFtkcm1dIEd1QyBjb21tdW5pY2F0aW9uIGVuYWJsZWQKPDY+WyAgMzQ1
LjQzNjcxOF0gaTkxNSAwMDAwOjAwOjAyLjA6IEd1QyBmaXJtd2FyZSB2ZXJzaW9uIDMzLjAKPDY+
WyAgMzQ1LjQzNjcxOV0gaTkxNSAwMDAwOjAwOjAyLjA6IEd1QyBzdWJtaXNzaW9uIGRpc2FibGVk
Cjw2PlsgIDM0NS40MzY3MjBdIGk5MTUgMDAwMDowMDowMi4wOiBIdUMgZW5hYmxlZAo8Nz5bICAz
NDUuNDM3OTEwXSBbZHJtOmludGVsX3VjX2Z3X3VwbG9hZCBbaTkxNV1dIEh1QyBmdyBsb2FkIGk5
MTUva2JsX2h1Y192ZXIwMl8wMF8xODEwLmJpbgo8Nz5bICAzNDUuNDM4NTkxXSBbZHJtOmludGVs
X3VjX2Z3X3VwbG9hZCBbaTkxNV1dIEh1QyBmdyBsb2FkIGNvbXBsZXRlZAo8Nj5bICAzNDUuNDM4
NTkzXSBbZHJtXSBIdUM6IExvYWRlZCBmaXJtd2FyZSBpOTE1L2tibF9odWNfdmVyMDJfMDBfMTgx
MC5iaW4gKHZlcnNpb24gMi4wKQo8Nz5bICAzNDUuNDM4NzI0XSBbZHJtOmludGVsX3VjX2Z3X3Vw
bG9hZCBbaTkxNV1dIEd1QyBmdyBsb2FkIGk5MTUva2JsX2d1Y18zMy4wLjAuYmluCjw3PlsgIDM0
NS40MzkwODVdIFtkcm06aW50ZWxfdWNfZndfdXBsb2FkIFtpOTE1XV0gR3VDIGZ3IGxvYWQgY29t
cGxldGVkCjw2PlsgIDM0NS40MzkwODZdIFtkcm1dIEd1QzogTG9hZGVkIGZpcm13YXJlIGk5MTUv
a2JsX2d1Y18zMy4wLjAuYmluICh2ZXJzaW9uIDMzLjApCjw3PlsgIDM0NS40NDE1OTRdIFtkcm06
aW50ZWxfZ3VjX2Z3X3VwbG9hZCBbaTkxNV1dIEd1QyBzdGF0dXMgMHg4MDAyZjBlYwo8Nj5bICAz
NDUuNDQxNjUyXSBbZHJtXSBHdUMgY29tbXVuaWNhdGlvbiBlbmFibGVkCjw2PlsgIDM0NS40NDE3
MjddIGk5MTUgMDAwMDowMDowMi4wOiBHdUMgZmlybXdhcmUgdmVyc2lvbiAzMy4wCjw2PlsgIDM0
NS40NDE3MjhdIGk5MTUgMDAwMDowMDowMi4wOiBHdUMgc3VibWlzc2lvbiBkaXNhYmxlZAo8Nj5b
ICAzNDUuNDQxNzI5XSBpOTE1IDAwMDA6MDA6MDIuMDogSHVDIGVuYWJsZWQKCkFsc28gbm90ZSB0
aGF0IHdlIGFyZSByZXBlYXRpbmcgYXQgS0VSTl9JTkZPIHRoZSBzYW1lIGluZm9ybWF0aW9uIChm
dwpsb2FkZWQpLgoKSGF2aW5nIHRoZSBwYXRoIGJlZm9yZSBsb2FkaW5nIGlzIHJlYXNvbmFibGUg
KG9yIHJhdGhlciBJIGV4cGVjdApyZWFzb25hYmxlIG9iamVjdCB0byBhbnkgcmVxdWVzdCB0byBk
cm9wIGl0IHVudGlsIGVycm9yKSwgYnV0IHRoZQpyZXBlYXRlZCBjb21wbGV0aW9uIGluZm9ybWF0
aW9uIGNvdWxkIGJlIHdoaXR0bGVkIGRvd24gOikKCj4gU3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWljaGFsIFdhamRlY3pr
byA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gLS0tCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Yy5oCj4gaW5kZXggZjUxYzRjM2MxZDBiLi43MTRlOTg5MmFhZmYgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaAo+IEBAIC03Niw2ICs3Niw5
IEBAIHN0cnVjdCBpbnRlbF9ndWMgewo+ICAgICAgICAgLyogQ3ljbGljIGNvdW50ZXIgbW9kIHBh
Z2VzaXplICAqLwo+ICAgICAgICAgdTMyIGRiX2NhY2hlbGluZTsKPiAgCj4gKyAgICAgICAvKiBD
b250cm9sIHBhcmFtcyBmb3IgZncgaW5pdGlhbGl6YXRpb24gKi8KPiArICAgICAgIHUzMiBwYXJh
bXNbR1VDX0NUTF9NQVhfRFdPUkRTXTsKPiArCgpVcG9uIGluaXQsIHNhdmUgcGFyYW1ldGVycyB0
byBpbnRlbF9ndWMuIFRoZW4gd3JpdGUgZnJvbSBndWMtPnBhcmFtcwppbnN0ZWFkIG9mIHRoZSBs
b2NhbCBzdGFjay4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
