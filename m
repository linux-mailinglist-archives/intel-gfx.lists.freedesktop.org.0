Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071EA825F8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 22:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5A089F4A;
	Mon,  5 Aug 2019 20:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A453789F4A
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 20:19:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 13:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="164758473"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by orsmga007.jf.intel.com with ESMTP; 05 Aug 2019 13:19:20 -0700
Date: Mon, 5 Aug 2019 16:35:26 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190805203526.GA3842@intel.com>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-33-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614071023.17929-33-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 32/39] drm/i915: Allow vma binding to occur
 asynchronously
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDg6MTA6MTZBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IElmIHdlIGxldCBwYWdlcyBiZSBhbGxvY2F0ZWQgYXN5bmNocm9ub3VzbHksIHdlIGFs
c28gdGhlbiB3YW50IHRvIHB1c2gKPiB0aGUgYmluZGluZyBwcm9jZXNzIGludG8gYW4gYXN5bmNo
cm9ub3VzIHRhc2suIE1ha2UgaXQgc28sIHV0aWxpc2luZyB0aGUKPiByZWNlbnQgaW1wcm92ZW1l
bnRzIHRvIGZlbmNlIGVycm9yIHRyYWNraW5nIGFuZCBzdHJ1Y3RfbXV0ZXggcmVkdWN0aW9uLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IC0tLQpbc25pcF0KPiAgLyoqCj4gICAqIGk5MTVfdm1hX2JpbmQgLSBTZXRzIHVwIFBURXMg
Zm9yIGFuIFZNQSBpbiBpdCdzIGNvcnJlc3BvbmRpbmcgYWRkcmVzcyBzcGFjZS4KPiAgICogQHZt
YTogVk1BIHRvIG1hcAo+IEBAIC0zMDAsMTcgKzQxMiwxMiBAQCBpbnQgaTkxNV92bWFfYmluZChz
dHJ1Y3QgaTkxNV92bWEgKnZtYSwgZW51bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAo+
ICAJdTMyIHZtYV9mbGFnczsKPiAgCWludCByZXQ7Cj4gIAo+ICsJR0VNX0JVR19PTighZmxhZ3Mp
Owo+ICAJR0VNX0JVR19PTighZHJtX21tX25vZGVfYWxsb2NhdGVkKCZ2bWEtPm5vZGUpKTsKPiAg
CUdFTV9CVUdfT04odm1hLT5zaXplID4gdm1hLT5ub2RlLnNpemUpOwo+IC0KPiAtCWlmIChHRU1f
REVCVUdfV0FSTl9PTihyYW5nZV9vdmVyZmxvd3Modm1hLT5ub2RlLnN0YXJ0LAo+IC0JCQkJCSAg
ICAgIHZtYS0+bm9kZS5zaXplLAo+IC0JCQkJCSAgICAgIHZtYS0+dm0tPnRvdGFsKSkpCj4gLQkJ
cmV0dXJuIC1FTk9ERVY7Cj4gLQo+IC0JaWYgKEdFTV9ERUJVR19XQVJOX09OKCFmbGFncykpCj4g
LQkJcmV0dXJuIC1FSU5WQUw7Cj4gLQo+ICsJR0VNX0JVR19PTihyYW5nZV9vdmVyZmxvd3Modm1h
LT5ub2RlLnN0YXJ0LAo+ICsJCQkJICAgdm1hLT5ub2RlLnNpemUsCj4gKwkJCQkgICB2bWEtPnZt
LT50b3RhbCkpOwo+ICAJYmluZF9mbGFncyA9IDA7Cj4gIAlpZiAoZmxhZ3MgJiBQSU5fR0xPQkFM
KQo+ICAJCWJpbmRfZmxhZ3MgfD0gSTkxNV9WTUFfR0xPQkFMX0JJTkQ7Cj4gQEAgLTMyNSwxNiAr
NDMyLDIwIEBAIGludCBpOTE1X3ZtYV9iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCBlbnVtIGk5
MTVfY2FjaGVfbGV2ZWwgY2FjaGVfbGV2ZWwsCj4gIAlpZiAoYmluZF9mbGFncyA9PSAwKQo+ICAJ
CXJldHVybiAwOwo+ICAKPiAtCUdFTV9CVUdfT04oIXZtYS0+cGFnZXMpOwo+ICsJaWYgKChiaW5k
X2ZsYWdzICYgfnZtYV9mbGFncykgJiBJOTE1X1ZNQV9MT0NBTF9CSU5EKQo+ICsJCWJpbmRfZmxh
Z3MgfD0gSTkxNV9WTUFfQUxMT0NfQklORDsKPiAgCj4gIAl0cmFjZV9pOTE1X3ZtYV9iaW5kKHZt
YSwgYmluZF9mbGFncyk7Cj4gLQlyZXQgPSB2bWEtPm9wcy0+YmluZF92bWEodm1hLCBjYWNoZV9s
ZXZlbCwgYmluZF9mbGFncyk7Cj4gKwlpZiAoYmluZF9mbGFncyAmIEk5MTVfVk1BX0FMTE9DX0JJ
TkQpCj4gKwkJcmV0ID0gcXVldWVfYXN5bmNfYmluZCh2bWEsIGNhY2hlX2xldmVsLCBiaW5kX2Zs
YWdzKTsKPiArCWVsc2UKPiArCQlyZXQgPSBfX3ZtYV9iaW5kKHZtYSwgY2FjaGVfbGV2ZWwsIGJp
bmRfZmxhZ3MpOwo+ICAJaWYgKHJldCkKPiAgCQlyZXR1cm4gcmV0OwoKaTkxNV92bWFfcmVtb3Zl
KCkgZXhwZWN0cyB2bWEgaGFzIHBhZ2VzIHNldC4gVGhpcyBpcyBubyBsb25nZXIgdHJ1ZSB3aXRo
CmFzeW5jIGdldCBwYWdlcy4gU2hvdWxkbid0IHRoZSBjbGVhcl9wYWdlcygpIGNhbGxlZCBpZmYg
cGFnZXMgYXJlIHNldD8gCgpbc25pcF0KPiAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfdm1hX3Vu
bG9jayhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiAgewo+ICAJcmVzZXJ2YXRpb25fb2JqZWN0X3Vu
bG9jayh2bWEtPnJlc3YpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3Zt
YS5jCj4gaW5kZXggNTZjMWNhYzM2OGNjLi4zMGI4MzE0MDhiN2IgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV92bWEuYwo+IEBAIC0yMDQsOCArMjA0LDEwIEBAIHN0
YXRpYyBpbnQgaWd0X3ZtYV9jcmVhdGUodm9pZCAqYXJnKQo+ICAJCW1vY2tfY29udGV4dF9jbG9z
ZShjdHgpOwo+ICAJfQo+ICAKPiAtCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShvYmosIG9uLCAm
b2JqZWN0cywgc3RfbGluaykKPiArCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShvYmosIG9uLCAm
b2JqZWN0cywgc3RfbGluaykgewo+ICsJCWk5MTVfZ2VtX29iamVjdF93YWl0KG9iaiwgSTkxNV9X
QUlUX0FMTCwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOwo+ICAJCWk5MTVfZ2VtX29iamVjdF9wdXQo
b2JqKTsKPiArCX0KPiAgCXJldHVybiBlcnI7Cj4gIH0KPiAgCj4gLS0gCj4gMi4yMC4xCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
