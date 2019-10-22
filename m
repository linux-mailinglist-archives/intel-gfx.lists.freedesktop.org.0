Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 264CAE01F2
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 12:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821386E591;
	Tue, 22 Oct 2019 10:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE686E58E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 10:21:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 03:21:19 -0700
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="191416794"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Oct 2019 03:21:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191022101704.5618-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cf0b978d-f894-591a-962f-75d2046a6ecd@linux.intel.com>
Date: Tue, 22 Oct 2019 11:21:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022101704.5618-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Make the mman object
 busy everywhere
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

Ck9uIDIyLzEwLzIwMTkgMTE6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBMb29wIG92ZXIgYWxs
IGVuZ2luZXMsIGlzc3VpbmcgYSByZXF1ZXN0IGZvciB0aGUgb2JqZWN0IG9uIGVhY2ggaW4gb3Jk
ZXIKPiB0byBtYWtlIHN1cmUgd2UgbGVhdmUgbm8gc3RvbmUgdW50dXJuZWQgd2hlbiBjcmVhdGlu
ZyBhbiBhY3RpdmUgcmVmLiBUaGUKPiBwdXJwb3NlIGlzIHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGNh
biByZWFwIGEgem9tYmllIG9iamVjdCAob25lIHRoYXQgaXMKPiBvbmx5IGFsaXZlIGR1ZSB0byBh
biBhY3RpdmUgcmVmZXJlbmNlIG9uIHRoZSBHUFUpIG5vIG1hdHRlciB3aGVyZSB0aGF0Cj4gYWN0
aXZlIHJlZmVyZW5jZSBlbWFuYXRlcyBmcm9tLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbW1hbi5jICAgIHwgMjggKysrKysrKysrLS0tLS0tLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCj4gaW5k
ZXggNjVkNGRiZjkxOTk5Li5kNDVhOTM5MjhmZjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwo+IEBAIC01MTUsMjAgKzUx
NSwxOSBAQCBzdGF0aWMgaW50IG1ha2Vfb2JqX2J1c3koc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaikKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5
MTUob2JqLT5iYXNlLmRldik7Cj4gICAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+
IC0JZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Cj4gLQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiAt
CWludCBlcnI7Cj4gICAKPiAtCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgJmk5MTUtPmdn
dHQudm0sIE5VTEwpOwo+IC0JaWYgKElTX0VSUih2bWEpKQo+IC0JCXJldHVybiBQVFJfRVJSKHZt
YSk7Cj4gKwlmb3JfZWFjaF91YWJpX2VuZ2luZShlbmdpbmUsIGk5MTUpIHsKPiArCQlzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycTsKPiArCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiArCQlpbnQgZXJy
Owo+ICAgCj4gLQllcnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5fVVNFUik7Cj4gLQlp
ZiAoZXJyKQo+IC0JCXJldHVybiBlcnI7Cj4gKwkJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2Jq
LCAmZW5naW5lLT5ndC0+Z2d0dC0+dm0sIE5VTEwpOwo+ICsJCWlmIChJU19FUlIodm1hKSkKPiAr
CQkJcmV0dXJuIFBUUl9FUlIodm1hKTsKPiAgIAo+IC0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwg
aTkxNSwgaWQpIHsKPiAtCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiArCQllcnIgPSBpOTE1
X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5fVVNFUik7Cj4gKwkJaWYgKGVycikKPiArCQkJcmV0dXJu
IGVycjsKPiAgIAo+ICAgCQlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoZW5naW5lLT5rZXJuZWxf
Y29udGV4dCk7Cj4gICAJCWlmIChJU19FUlIocnEpKSB7Cj4gQEAgLTU0NCwxMiArNTQzLDEzIEBA
IHN0YXRpYyBpbnQgbWFrZV9vYmpfYnVzeShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KQo+ICAgCQlpOTE1X3ZtYV91bmxvY2sodm1hKTsKPiAgIAo+ICAgCQlpOTE1X3JlcXVlc3RfYWRk
KHJxKTsKPiArCQlpOTE1X3ZtYV91bnBpbih2bWEpOwo+ICsJCWlmIChlcnIpCj4gKwkJCXJldHVy
biBlcnI7Cj4gICAJfQo+ICAgCj4gLQlpOTE1X3ZtYV91bnBpbih2bWEpOwo+ICAgCWk5MTVfZ2Vt
X29iamVjdF9wdXQob2JqKTsgLyogbGVhdmUgaXQgb25seSBhbGl2ZSB2aWEgaXRzIGFjdGl2ZSBy
ZWYgKi8KPiAtCj4gLQlyZXR1cm4gZXJyOwo+ICsJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiAgIHN0
YXRpYyBib29sIGFzc2VydF9tbWFwX29mZnNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKPiAKClllcyB0aGF0J3MgYmV0dGVyLgoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
