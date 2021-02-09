Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17333314BDD
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 10:39:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665666EAAA;
	Tue,  9 Feb 2021 09:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 421716EAB3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 09:39:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23819445-1500050 for multiple; Tue, 09 Feb 2021 09:39:50 +0000
MIME-Version: 1.0
In-Reply-To: <20210209021918.16234-3-ville.syrjala@linux.intel.com>
References: <20210209021918.16234-1-ville.syrjala@linux.intel.com>
 <20210209021918.16234-3-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 09 Feb 2021 09:39:51 +0000
Message-ID: <161286359136.7943.3112800560212828589@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Warn when releasing a
 frontbuffer while in use
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIxLTAyLTA5IDAyOjE5OjE4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gTGV0J3Mgc2Ny
ZWFtIGlmIHdlIGFyZSBhYm91dCB0byByZWxlYXNlIGEgZnJvbnRidWZmZXIgd2hpY2gKPiBpcyBz
dGlsbCBpbiB1c2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZnJvbnRidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZnJvbnRidWZmZXIuYwo+IGluZGV4IDdiMzhlZWU5OTgwZi4uNmZjNjk2NWI2MTMzIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYwo+
IEBAIC0yMjQsNiArMjI0LDggQEAgc3RhdGljIHZvaWQgZnJvbnRidWZmZXJfcmVsZWFzZShzdHJ1
Y3Qga3JlZiAqcmVmKQo+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9
IGZyb250LT5vYmo7Cj4gICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiAgCj4gKyAgICAg
ICBkcm1fV0FSTl9PTihvYmotPmJhc2UuZGV2LCBhdG9taWNfcmVhZCgmZnJvbnQtPmJpdHMpKTsK
CkkgaGFkIHRvIGRvdWJsZSBjaGVjayB0aGUgbWVhbmluZyBvZiBiaXRzLCBhbmQgaW5kZWVkIHRo
ZXkgYXJlIGNsZWFyZWQKYnkgaW50ZWxfZnJvbnRidWZmZXJfdHJhY2sgYXMgdGhlIHNjYW5vdXQg
aXMgc3dpdGNoZWQgYXdheSBmcm9tIHRoZQpvYmplY3QuIEEgc3RhY2t0cmFjZSBoZXJlIGlzbid0
IHBhcnRpY3VsYXJseSB1c2VmdWwgZm9yIHRyYWNraW5nIGRvd24KdGhlIGxlYWssIGJ1dCBpdCBp
cyBhIHRyaXZpYWwgbWV0aG9kIHRvIG1ha2UgQ0kgcGF5IGF0dGVudGlvbi4KClJldmlld2VkLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
