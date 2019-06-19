Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F073D4C093
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:13:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0316E444;
	Wed, 19 Jun 2019 18:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0BCC6E444
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:13:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16957063-1500050 for multiple; Wed, 19 Jun 2019 19:13:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
 <20190619180312.31817-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20190619180312.31817-4-ville.syrjala@linux.intel.com>
Message-ID: <156096798229.664.7419060579907299875@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 19:13:02 +0100
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/sdvo: Shrink sdvo_cmd_names[]
 strings
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA2LTE5IDE5OjAzOjEwKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gRHJvcCB0aGUg
cmVkdW5kYW50ICJTRFZPX0NNRF8iIHByZWZpeCBmcm9tIHRoZSBjb21tYW5kIG5hbWUKPiBzdHJp
bmdzIGluIHNkdm9fY21kX25hbWVzW10uCj4gCj4gV2hpbGUgYXQgaXQgdGhyb3cgYXdheSB0aGUg
dW51c2VkIHN0cnVjdCBuYW1lLCBhbmQgdW5kZWYKPiBTRFZPX0NNRF9OQU1FX0VOVFJZKCkgd2hl
biB3ZSdyZSBkb25lLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfc2R2by5jIHwgMjE5ICsrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDExMSBpbnNlcnRpb25zKCspLCAxMDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKPiBpbmRleCAyZGU3OTQ4YjcyNzgu
LmQxZmQyYmMwMWQ4MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nkdm8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c2R2by5jCj4gQEAgLTI3NCwxMjQgKzI3NCwxMjcgQEAgc3RhdGljIGJvb2wgaW50ZWxfc2R2b19y
ZWFkX2J5dGUoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sIHU4IGFkZHIsIHU4ICpjaCkK
PiAgICAgICAgIHJldHVybiBmYWxzZTsKPiAgfQo+ICAKPiAtI2RlZmluZSBTRFZPX0NNRF9OQU1F
X0VOVFJZKGNtZCkge2NtZCwgI2NtZH0KPiArI2RlZmluZSBTRFZPX0NNRF9OQU1FX0VOVFJZKGNt
ZF8pIHsgLmNtZCA9IFNEVk9fQ01EXyAjIyBjbWRfLCAubmFtZSA9ICNjbWRfIH0KClNob3J0ZXIg
cHJldHR5IG5hbWUgYXMgd2VsbCwgYnV0IHRoYXQgd2lsbCBvYnZpb3VzIGZyb20gY29udGV4dC4K
ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
