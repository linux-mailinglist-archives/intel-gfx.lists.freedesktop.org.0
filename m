Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5396EF92D7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1DA96EB46;
	Tue, 12 Nov 2019 14:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6B66EB44
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:39:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19174694-1500050 for multiple; Tue, 12 Nov 2019 14:39:07 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
 <20191112092854.869-24-chris@chris-wilson.co.uk>
 <87pnhx41y3.fsf@gaia.fi.intel.com>
In-Reply-To: <87pnhx41y3.fsf@gaia.fi.intel.com>
Message-ID: <157356954586.28106.8212068173225864161@skylake-alporthouse-com>
Date: Tue, 12 Nov 2019 14:39:05 +0000
Subject: Re: [Intel-gfx] [PATCH 24/27] drm/i915/gt: Set unused mocs entry to
 follow PTE on tgl as on all others
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTEyIDE0OjEzOjU2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBCZSBjb25zaXN0ZW50
IGluIG91ciBtb2NzIHNldHVwIG9uIFRpZ2VybGFrZSBhbmQgc2V0IHRoZSB1bnVzZWQgY29udHJv
bAo+ID4gdmFsdWUgdG8gZm9sbG93IHRoZSBQVEUgZW50cnkgYXMgd2UgcHJldmlvdXNseSBoYXZl
IGRvbmUuIFRoZSB1bnVzZWQKPiA+IHZhbHVlcyBhcmUgYmV5b25kIHRoZSBkZWZpbmVzIG9mIHRo
ZSBBQkksIHRoZSBjb25zaXN0ZW5jeSBzaW1wbGlmaWVzIG91cgo+ID4gY2hlY2tpbmcuCj4gCj4g
U2ltcGxpZmllcyBob3c/CgpCZWNhdXNlIGFsbCBwbGF0Zm9ybXMgZm9sbG93IHRoZSBzYW1lIHBh
dHRlcm4sIHdlIG9ubHkgbmVlZCBvbmUgcm91dGluZQpub3QgbXVsdGlwbGVzLgoKPiA+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgMiArLQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiA+IGluZGV4IDZlODgxYzczNWIyMC4uZDJiNDQ1
ZDZjMjU4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9j
cy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiA+IEBA
IC00ODksNyArNDg5LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9jc19pbml0X2dsb2JhbChzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KQo+ID4gICAgICAgZm9yICg7IGluZGV4IDwgdGFibGUubl9lbnRyaWVz
OyBpbmRleCsrKQo+ID4gICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0VOMTJfR0xPQkFMX01PQ1MoaW5k
ZXgpLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGFibGUudGFibGVbMF0u
Y29udHJvbF92YWx1ZSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0YWJs
ZS50YWJsZVtJOTE1X01PQ1NfUFRFXS5jb250cm9sX3ZhbHVlKTsKPiAKPiBUaGlzIHNldHMgaXQg
cG9pbnQgaW50byByZXNlcnZlZCwgc28gSSBhbSBjb25mdXNlZC4KCk91dHNpZGUgb2YgdGhlIEFC
SS4KCj4gQWxzbyB0aGUgY29tbWVudCBhYm92ZSBhbmQgdGhlIHBhcnQgaW4gZ2VuZXJpYyBNT0NT
IHRhYmxlcyB3aWxsCj4gYmUgc3RhbGUuCgpMb29rIGF0IHRoZSBuZXh0IHBhaXIgb2YgcGF0Y2hl
cyBmb3IgcmVtb3ZpbmcgbW9zdCBvZiB0aGUgZmlsZSwgbm93CnBvc3NpYmxlIGJlY2F1c2UgdGhl
IGRpc3NpbWlsYXJpdHkgaXMgcmVtb3ZlZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
