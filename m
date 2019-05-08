Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F64175F1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 12:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ED6489402;
	Wed,  8 May 2019 10:26:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F379589402
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 10:26:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 03:26:22 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 08 May 2019 03:26:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <20190508080704.24223-12-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <81eb9e11-6b67-bb92-1971-f1ac3f8b814f@linux.intel.com>
Date: Wed, 8 May 2019 11:26:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508080704.24223-12-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 12/40] drm/i915: Re-expose SINGLE_TIMELINE
 flags for context creation
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA4LzA1LzIwMTkgMDk6MDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgU0lOR0xFX1RJ
TUVMSU5FIGZsYWcgY2FuIGJlIHVzZWQgdG8gY3JlYXRlIGEgY29udGV4dCBzdWNoIHRoYXQgYWxs
Cj4gZW5naW5lIGluc3RhbmNlcyB3aXRoaW4gdGhhdCBjb250ZXh0IHNoYXJlIGEgY29tbW9uIHRp
bWVsaW5lLiBUaGlzIGNhbgo+IGJlIHVzZWZ1bCBmb3IgbWl4aW5nIG9wZXJhdGlvbnMgYmV0d2Vl
biByZWFsIGFuZCB2aXJ0dWFsIGVuZ2luZXMsIG9yCj4gd2hlbiB1c2luZyBhIGNvbXBvc2l0ZSBj
b250ZXh0IGZvciBhIHNpbmdsZSBjbGllbnQgQVBJIGNvbnRleHQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jb250ZXh0LmMgfCA0IC0tLS0KPiAgIGluY2x1ZGUv
dWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICB8IDMgKystCj4gICAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fY29udGV4dC5jCj4gaW5kZXggNWZkYjQ0NzE0YTVjLi45Y2Q2NzEyOThkYWYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTk2LDgg
Kzk2LDYgQEAKPiAgICNpbmNsdWRlICJpOTE1X3RyYWNlLmgiCj4gICAjaW5jbHVkZSAiaTkxNV91
c2VyX2V4dGVuc2lvbnMuaCIKPiAgIAo+IC0jZGVmaW5lIEk5MTVfQ09OVEVYVF9DUkVBVEVfRkxB
R1NfU0lOR0xFX1RJTUVMSU5FICgxIDw8IDEpCj4gLQo+ICAgI2RlZmluZSBBTExfTDNfU0xJQ0VT
KGRldikgKDEgPDwgTlVNX0wzX1NMSUNFUyhkZXYpKSAtIDEKPiAgIAo+ICAgc3RhdGljIHN0cnVj
dCBpOTE1X2dsb2JhbF9nZW1fY29udGV4dCB7Cj4gQEAgLTUwNSw4ICs1MDMsNiBAQCBpOTE1X2dl
bV9jcmVhdGVfY29udGV4dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHVuc2ln
bmVkIGludCBmbGFncykKPiAgIAo+ICAgCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRldl9wcml2LT5k
cm0uc3RydWN0X211dGV4KTsKPiAgIAo+IC0JQlVJTERfQlVHX09OKEk5MTVfQ09OVEVYVF9DUkVB
VEVfRkxBR1NfU0lOR0xFX1RJTUVMSU5FICYKPiAtCQkgICAgIH5JOTE1X0NPTlRFWFRfQ1JFQVRF
X0ZMQUdTX1VOS05PV04pOwo+ICAgCWlmIChmbGFncyAmIEk5MTVfQ09OVEVYVF9DUkVBVEVfRkxB
R1NfU0lOR0xFX1RJTUVMSU5FICYmCj4gICAJICAgICFIQVNfRVhFQ0xJU1RTKGRldl9wcml2KSkK
PiAgIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFw
aS9kcm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+IGluZGV4IDgy
YmQ0ODhlZDBkMS4uOTU3YmE4ZTYwZTAyIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+IEBAIC0xNDY5
LDggKzE0NjksOSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2V4dCB7Cj4g
ICAJX191MzIgY3R4X2lkOyAvKiBvdXRwdXQ6IGlkIG9mIG5ldyBjb250ZXh0Ki8KPiAgIAlfX3Uz
MiBmbGFnczsKPiAgICNkZWZpbmUgSTkxNV9DT05URVhUX0NSRUFURV9GTEFHU19VU0VfRVhURU5T
SU9OUwkoMXUgPDwgMCkKPiArI2RlZmluZSBJOTE1X0NPTlRFWFRfQ1JFQVRFX0ZMQUdTX1NJTkdM
RV9USU1FTElORQkoMXUgPDwgMSkKPiAgICNkZWZpbmUgSTkxNV9DT05URVhUX0NSRUFURV9GTEFH
U19VTktOT1dOIFwKPiAtCSgtKEk5MTVfQ09OVEVYVF9DUkVBVEVfRkxBR1NfVVNFX0VYVEVOU0lP
TlMgPDwgMSkpCj4gKwkoLShJOTE1X0NPTlRFWFRfQ1JFQVRFX0ZMQUdTX1NJTkdMRV9USU1FTElO
RSA8PCAxKSkKPiAgIAlfX3U2NCBleHRlbnNpb25zOwo+ICAgfTsKPiAgIAo+IAoKUmV2aWV3ZWQt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
