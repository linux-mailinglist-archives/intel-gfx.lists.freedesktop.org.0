Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C16F45F9EC
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 16:18:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3330F6E356;
	Thu,  4 Jul 2019 14:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497516E356
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 14:18:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 07:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="166840090"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 04 Jul 2019 07:18:48 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C9D075C1EB4; Thu,  4 Jul 2019 17:18:40 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156224894080.25091.9692052047615259807@skylake-alporthouse-com>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-2-chris@chris-wilson.co.uk>
 <877e8x3nzu.fsf@gaia.fi.intel.com>
 <156224894080.25091.9692052047615259807@skylake-alporthouse-com>
Date: Thu, 04 Jul 2019 17:18:40 +0300
Message-ID: <874l413mtb.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Defer obj->base.resv fini
 until RCU callback
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA0IDE0OjUzOjA5KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBTaW5jZSByZXNlcnZhdGlv
bl9vYmplY3RfZmluaSgpIGRvZXMgYW4gaW1tZWRpYXRlIGZyZWUsIHJhdGhlciB0aGFuCj4+ID4g
a2ZyZWVfcmN1IGFzIG5vcm1hbCwgd2UgaGF2ZSB0byBkZWxheSB0aGUgcmVsZWFzZSB1bnRpbCBh
ZnRlciB0aGUgUkNVCj4+ID4gZ3JhY2UgcGVyaW9kIGhhcyBlbGFwc2VkIChpLmUuIGZyb20gdGhl
IHJjdSBjbGVhbnVwIGNhbGxiYWNrKSBzbyB0aGF0IHdlCj4+ID4gY2FuIHJlbHkgb24gdGhlIFJD
VSBwcm90ZWN0ZWQgYWNjZXNzIHRvIHRoZSBmZW5jZXMgd2hpbGUgdGhlIG9iamVjdCBpcyBhCj4+
ID4gem9tYmllLgo+PiA+Cj4+ID4gaTkxNV9nZW1fYnVzeV9pb2N0bCByZWxpZXMgb24gaGF2aW5n
IGFuIFJDVSBiYXJyaWVyIHRvIHByb3RlY3QgdGhlCj4+ID4gcmVzZXJ2YXRpb24gaW4gb3JkZXIg
dG8gYXZvaWQgaGF2aW5nIHRvIHRha2UgYSByZWZlcmVuY2UgYW5kIHN0cm9uZwo+PiA+IG1lbW9y
eSBiYXJyaWVycy4KPj4gCj4+IE9rIHNvIGZvciBnZW0gYnVzeSB0byBiZSBhYmxlIHRvIG9wZXJh
dGUgb24gYSAndG8gYmUgZnJlZWQnIG9iamVjdAo+PiB3ZSBuZWVkIHRvIGtlZXAgdGhlIHJlc2Vy
dmF0aW9uIG9iamVjdCBhbGl2ZT8KPgo+IFl1cC4gSXQgY291bGQgZXF1YWxseSBiZSBrZXB0IGFs
aXZlIGlmIHJlc3Zfb2JqX2ZpbmkgdXNlZCBrZnJlZV9yY3UoKQo+IGluc3RlYWQsIGJ1dCB3ZSBh
bHJlYWR5IG5lZWQgYW4gUkNVIGJhcnJpZXIgZm9yIG91ciBvYmplY3QgbG9va3VwIHNvCj4gbWln
aHQgYXMgd2VsbCB1c2Ugb25lIHN0b25lIGZvciBib3RoIGJpcmRzLgo+Cj4+ID4gRml4ZXM6IGMw
MzQ2N2JhNDBmNyAoImRybS9pOTE1L2dlbTogRnJlZSBwYWdlcyBiZWZvcmUgcmN1LWZyZWVpbmcg
dGhlIG9iamVjdCIpCj4+ID4gVGVzdGNhc2U6IGlndC9nZW1fYnVzeS9jbG9zZS1yYWNlCj4+ID4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+
ID4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPj4gPiAtLS0KPj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIHwgMyArKy0KPj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMgIHwgNyArKysrKysr
Cj4+ID4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+
ID4KPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4+ID4g
aW5kZXggZDNlOTZmMDljNmI3Li4wZGNlZDRhMjBlMjAgMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4+ID4gQEAgLTE1Miw2ICsxNTIsNyBA
QCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0X3JjdShzdHJ1Y3QgcmN1X2hlYWQg
KmhlYWQpCj4+ID4gICAgICAgICAgICAgICBjb250YWluZXJfb2YoaGVhZCwgdHlwZW9mKCpvYmop
LCByY3UpOwo+PiA+ICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkx
NShvYmotPmJhc2UuZGV2KTsKPj4gPiAgCj4+ID4gKyAgICAgcmVzZXJ2YXRpb25fb2JqZWN0X2Zp
bmkoJm9iai0+YmFzZS5fcmVzdik7Cj4+ID4gICAgICAgaTkxNV9nZW1fb2JqZWN0X2ZyZWUob2Jq
KTsKPj4gPiAgCj4+ID4gICAgICAgR0VNX0JVR19PTighYXRvbWljX3JlYWQoJmk5MTUtPm1tLmZy
ZWVfY291bnQpKTsKPj4gPiBAQCAtMTk4LDcgKzE5OSw3IEBAIHN0YXRpYyB2b2lkIF9faTkxNV9n
ZW1fZnJlZV9vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+PiA+ICAgICAg
ICAgICAgICAgaWYgKG9iai0+YmFzZS5pbXBvcnRfYXR0YWNoKQo+PiA+ICAgICAgICAgICAgICAg
ICAgICAgICBkcm1fcHJpbWVfZ2VtX2Rlc3Ryb3koJm9iai0+YmFzZSwgTlVMTCk7Cj4+ID4gIAo+
PiA+IC0gICAgICAgICAgICAgZHJtX2dlbV9vYmplY3RfcmVsZWFzZSgmb2JqLT5iYXNlKTsKPj4g
PiArICAgICAgICAgICAgIGRybV9nZW1fZnJlZV9tbWFwX29mZnNldCgmb2JqLT5iYXNlKTsKPj4g
PiAgCj4+ID4gICAgICAgICAgICAgICAvKiBCdXQga2VlcCB0aGUgcG9pbnRlciBhbGl2ZSBmb3Ig
UkNVLXByb3RlY3RlZCBsb29rdXBzICovCj4+ID4gICAgICAgICAgICAgICBjYWxsX3JjdSgmb2Jq
LT5yY3UsIF9faTkxNV9nZW1fZnJlZV9vYmplY3RfcmN1KTsKPj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYwo+PiA+IGluZGV4IDE5ZDllY2RiMjg5NC4uZDJhMTE1
ODg2OGU3IDEwMDY0NAo+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zaG1lbS5jCj4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3No
bWVtLmMKPj4gPiBAQCAtNDE0LDYgKzQxNCwxMSBAQCBzaG1lbV9wd3JpdGUoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKPj4gPiAgICAgICByZXR1cm4gMDsKPj4gPiAgfQo+PiA+ICAK
Pj4gPiArc3RhdGljIHZvaWQgc2htZW1fcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKQo+PiA+ICt7Cj4+ID4gKyAgICAgZnB1dChvYmotPmJhc2UuZmlscCk7Cj4+IAo+PiBX
ZSBsb3NlIHRoZSBjaGVjayBmb3IgZmlscCBleGlzdGVuY2UuIEJ1dCBhcyBpbnRlcm5hbAo+PiBv
cHMgaGF2ZSB0aGVpciBvd24gbWVjaGFuaWNzLCB3ZSBzaG91bGQgYWx3YXlzIGhhdmUgdGhlIGZp
bHAuCj4KPiBFeGFjdGx5LiBkcm1fZ2VtX29iamVjdCBzaG91bGQgbm90IGhhdmUgZmlscCBhbnlt
b3JlLgoKLi5mb3IgaW50ZXJuYWwgb2JqZWN0cy4KCj4KPj4gV2UgbG9zZSBhIHdhcm4gZm9yIGRt
YV9idWYgZXhpc3RlbmNlIHRoby4KPgo+IEdvb2QuIExldCBtZSBoYW5kIHlvdSBhIHRpbnkgdmlv
bGluIDspCgpMZXQncyBzZWUgaG93IGl0IHBsYXlzIG91dC4KClJldmlld2VkLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
