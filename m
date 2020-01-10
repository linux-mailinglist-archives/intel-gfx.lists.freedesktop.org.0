Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EE11377B6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 21:10:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8190289394;
	Fri, 10 Jan 2020 20:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7BAC89394
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 20:10:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19839361-1500050 for multiple; Fri, 10 Jan 2020 20:10:22 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
 <20200110183228.8199-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200110183228.8199-3-ville.syrjala@linux.intel.com>
Message-ID: <157868702182.10140.3845285222269351007@skylake-alporthouse-com>
Date: Fri, 10 Jan 2020 20:10:21 +0000
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Stop looking at plane->state
 in intel_prepare_plane_fb()
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAxLTEwIDE4OjMyOjI1KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gU3dpdGNoIG92
ZXIgdG8gdXNpbmcgZXhwbGljaXQgb2xkL25ldyBwbGFuZXMgc3RhdGVzIGluc3RlYWQgb2YKPiBk
aWdnaW5nIHRoZSBvbGQgc3RhdGUgb3V0IHZpYSBwbGFuZS0+c3RhdGUuIFRoZSBtYWluIGlzc3Vl
IGlzIHRoYXQKPiBwbGFuZS0+c3RhdGUgd2lsbCBwb2ludCB0byB0aGUgdWFwaSBzdGF0ZSB3aGlj
aCB3ZSBnZW5lcmFsbHkgZG9uJ3QKPiBldmVuIHdhbnQgdG8gbG9vayBhdC4KPiAKPiBBbHNvIGl0
IHNldHMgYSBiYWQgZXhhbXBsZSBhcyB1c2luZyBwbGFuZS0+c3RhdGUgZHVyaW5nIGNvbW1pdF90
YWlsKCkKPiB3b3VsZCBiZSBhIGJ1Zy4gSGVyZSB3ZSdyZSBzdGlsbCBob2xkaW5nIHRoZSBtb2Rl
c2V0IGxvY2tzIHNvIGl0J3MKPiBhY3R1YWxseSBzYWZlLCBidXQgYmVzdCBub3QgZ2l2ZSBwZW9w
bGUgYmFkIGlkZWFzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTYgKysrKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMGExZjI1NjRkZWEwLi4w
ZGYwNzE5YjBhYzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IEBAIC0xNTc0OSwyMyArMTU3NDksMjUgQEAgc3RhdGljIHZvaWQgZmJfb2Jq
X2J1bXBfcmVuZGVyX3ByaW9yaXR5KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4g
ICAqIFJldHVybnMgMCBvbiBzdWNjZXNzLCBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUu
Cj4gICAqLwo+ICBpbnQKPiAtaW50ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5l
ICpwbGFuZSwKPiAraW50ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpfcGxh
bmUsCj4gICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpfbmV3
X3BsYW5lX3N0YXRlKQo+ICB7Cj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lID0g
dG9faW50ZWxfcGxhbmUoX3BsYW5lKTsKPiAgICAgICAgIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqbmV3X3BsYW5lX3N0YXRlID0KPiAgICAgICAgICAgICAgICAgdG9faW50ZWxfcGxhbmVfc3Rh
dGUoX25ld19wbGFuZV9zdGF0ZSk7Cj4gICAgICAgICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICppbnRlbF9zdGF0ZSA9Cj4gICAgICAgICAgICAgICAgIHRvX2ludGVsX2F0b21pY19zdGF0ZShu
ZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3RhdGUpOwo+IC0gICAgICAgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShwbGFuZS0+ZGV2KTsKPiAtICAgICAgIHN0cnVjdCBk
cm1fZnJhbWVidWZmZXIgKmZiID0gbmV3X3BsYW5lX3N0YXRlLT5ody5mYjsKPiAtICAgICAgIHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBpbnRlbF9mYl9vYmooZmIpOwo+IC0gICAg
ICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9sZF9vYmogPSBpbnRlbF9mYl9vYmoocGxh
bmUtPnN0YXRlLT5mYik7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7Cj4gKyAgICAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSA9Cj4gKyAgICAgICAgICAgICAgIGludGVs
X2F0b21pY19nZXRfb2xkX3BsYW5lX3N0YXRlKGludGVsX3N0YXRlLCBwbGFuZSk7Cj4gKyAgICAg
ICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gaW50ZWxfZmJfb2JqKG5ld19wbGFu
ZV9zdGF0ZS0+aHcuZmIpOwo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9s
ZF9vYmogPSBpbnRlbF9mYl9vYmoob2xkX3BsYW5lX3N0YXRlLT5ody5mYik7CgppbnRlbF9zdGF0
ZSBiZWluZyB0aGUgb2xkIG9uZSBvdXQuIE9mdGVuIGNhbGxlZCBqdXN0IHN0YXRlIGluIG90aGVy
CmZ1bmN0aW9ucz8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
