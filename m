Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E7C4B97A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C21286E3D2;
	Wed, 19 Jun 2019 13:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70846E3D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:12:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 06:12:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="182740179"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jun 2019 06:12:54 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 370DC5C09F1; Wed, 19 Jun 2019 16:12:46 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190618074153.16055-4-chris@chris-wilson.co.uk>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <20190618074153.16055-4-chris@chris-wilson.co.uk>
Date: Wed, 19 Jun 2019 16:12:46 +0300
Message-ID: <87fto57m7l.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/26] drm/i915: Flush the
 execution-callbacks on retiring
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSW4gdGhl
IHVubGlrZWx5IGNhc2UgdGhlIHJlcXVlc3QgY29tcGxldGVzIHdoaWxlIHdlIHJlZ2FyZCBpdCBh
cyBub3QgZXZlbgo+IGV4ZWN1dGluZyBvbiB0aGUgR1BVIChzZWUgdGhlIG5leHQgcGF0Y2ghKSwg
d2UgaGF2ZSB0byBmbHVzaCBhbnkgcGVuZGluZwo+IGV4ZWN1dGlvbiBjYWxsYmFja3MgYXQgcmV0
aXJlbWVudCBhbmQgZW5zdXJlIHRoYXQgd2UgZG8gbm90IGFkZCBhbnkKPiBtb3JlLgo+CgpJIGRp
ZCBzZWUgdGhlIG5leHQgcGF0Y2guIExvb2tlZCBsaWtlIGEgbW91bnRhaW4uCgpXZWxsIHdlIGRv
bid0IGxvc2Ugd2FybmluZ3MgYW5kIHdlIHNob3VsZCBuZXZlciBzZWUKYSBwcmVjb21wbGV0ZWQg
cmVxdWVzdCB3aXRoIGN1cnJlbnQgY29kZWJhc2Ugc28sCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8IDkzICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gaW5kZXggZDdmZDc3ZThhNzg5Li41
MWIwNjhhNTcxOTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1
ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+IEBAIC0x
MTksNiArMTE5LDUwIEBAIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGk5MTVfZmVuY2Vfb3Bz
ID0gewo+ICAJLnJlbGVhc2UgPSBpOTE1X2ZlbmNlX3JlbGVhc2UsCj4gIH07Cj4gIAo+ICtzdGF0
aWMgdm9pZCBpcnFfZXhlY3V0ZV9jYihzdHJ1Y3QgaXJxX3dvcmsgKndyaykKPiArewo+ICsJc3Ry
dWN0IGV4ZWN1dGVfY2IgKmNiID0gY29udGFpbmVyX29mKHdyaywgdHlwZW9mKCpjYiksIHdvcmsp
Owo+ICsKPiArCWk5MTVfc3dfZmVuY2VfY29tcGxldGUoY2ItPmZlbmNlKTsKPiArCWttZW1fY2Fj
aGVfZnJlZShnbG9iYWwuc2xhYl9leGVjdXRlX2NicywgY2IpOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
dm9pZCBpcnFfZXhlY3V0ZV9jYl9ob29rKHN0cnVjdCBpcnFfd29yayAqd3JrKQo+ICt7Cj4gKwlz
dHJ1Y3QgZXhlY3V0ZV9jYiAqY2IgPSBjb250YWluZXJfb2Yod3JrLCB0eXBlb2YoKmNiKSwgd29y
ayk7Cj4gKwo+ICsJY2ItPmhvb2soY29udGFpbmVyX29mKGNiLT5mZW5jZSwgc3RydWN0IGk5MTVf
cmVxdWVzdCwgc3VibWl0KSwKPiArCQkgJmNiLT5zaWduYWwtPmZlbmNlKTsKPiArCWk5MTVfcmVx
dWVzdF9wdXQoY2ItPnNpZ25hbCk7Cj4gKwo+ICsJaXJxX2V4ZWN1dGVfY2Iod3JrKTsKPiArfQo+
ICsKPiArc3RhdGljIHZvaWQgX19ub3RpZnlfZXhlY3V0ZV9jYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkKPiArewo+ICsJc3RydWN0IGV4ZWN1dGVfY2IgKmNiOwo+ICsKPiArCWxvY2tkZXBfYXNz
ZXJ0X2hlbGQoJnJxLT5sb2NrKTsKPiArCj4gKwlpZiAobGlzdF9lbXB0eSgmcnEtPmV4ZWN1dGVf
Y2IpKQo+ICsJCXJldHVybjsKPiArCj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGNiLCAmcnEtPmV4
ZWN1dGVfY2IsIGxpbmspCj4gKwkJaXJxX3dvcmtfcXVldWUoJmNiLT53b3JrKTsKPiArCj4gKwkv
Kgo+ICsJICogWFhYIFJvbGxiYWNrIG9uIF9faTkxNV9yZXF1ZXN0X3Vuc3VibWl0KCkKPiArCSAq
Cj4gKwkgKiBJbiB0aGUgZnV0dXJlLCBwZXJoYXBzIHdoZW4gd2UgaGF2ZSBhbiBhY3RpdmUgdGlt
ZS1zbGljaW5nIHNjaGVkdWxlciwKPiArCSAqIGl0IHdpbGwgYmUgaW50ZXJlc3RpbmcgdG8gdW5z
dWJtaXQgcGFyYWxsZWwgZXhlY3V0aW9uIGFuZCByZW1vdmUKPiArCSAqIGJ1c3l3YWl0cyBmcm9t
IHRoZSBHUFUgdW50aWwgdGhlaXIgbWFzdGVyIGlzIHJlc3RhcnRlZC4gVGhpcyBpcwo+ICsJICog
cXVpdGUgaGFpcnksIHdlIGhhdmUgdG8gY2FyZWZ1bGx5IHJvbGxiYWNrIHRoZSBmZW5jZSBhbmQg
ZG8gYQo+ICsJICogcHJlZW1wdC10by1pZGxlIGN5Y2xlIG9uIHRoZSB0YXJnZXQgZW5naW5lLCBh
bGwgdGhlIHdoaWxlIHRoZQo+ICsJICogbWFzdGVyIGV4ZWN1dGVfY2IgbWF5IHJlZmlyZS4KPiAr
CSAqLwo+ICsJSU5JVF9MSVNUX0hFQUQoJnJxLT5leGVjdXRlX2NiKTsKPiArfQo+ICsKPiAgc3Rh
dGljIGlubGluZSB2b2lkCj4gIGk5MTVfcmVxdWVzdF9yZW1vdmVfZnJvbV9jbGllbnQoc3RydWN0
IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKPiAgewo+IEBAIC0yNDYsNiArMjkwLDExIEBAIHN0YXRp
YyBib29sIGk5MTVfcmVxdWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gIAkJ
R0VNX0JVR19PTighYXRvbWljX3JlYWQoJnJxLT5pOTE1LT5ndF9wbS5ycHMubnVtX3dhaXRlcnMp
KTsKPiAgCQlhdG9taWNfZGVjKCZycS0+aTkxNS0+Z3RfcG0ucnBzLm51bV93YWl0ZXJzKTsKPiAg
CX0KPiArCWlmICghdGVzdF9iaXQoSTkxNV9GRU5DRV9GTEFHX0FDVElWRSwgJnJxLT5mZW5jZS5m
bGFncykpIHsKPiArCQlzZXRfYml0KEk5MTVfRkVOQ0VfRkxBR19BQ1RJVkUsICZycS0+ZmVuY2Uu
ZmxhZ3MpOwo+ICsJCV9fbm90aWZ5X2V4ZWN1dGVfY2IocnEpOwo+ICsJfQo+ICsJR0VNX0JVR19P
TighbGlzdF9lbXB0eSgmcnEtPmV4ZWN1dGVfY2IpKTsKPiAgCXNwaW5fdW5sb2NrKCZycS0+bG9j
ayk7Cj4gIAo+ICAJbG9jYWxfaXJxX2VuYWJsZSgpOwo+IEBAIC0yODUsNTAgKzMzNCw2IEBAIHZv
aWQgaTkxNV9yZXF1ZXN0X3JldGlyZV91cHRvKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICAJ
fSB3aGlsZSAoaTkxNV9yZXF1ZXN0X3JldGlyZSh0bXApICYmIHRtcCAhPSBycSk7Cj4gIH0KPiAg
Cj4gLXN0YXRpYyB2b2lkIGlycV9leGVjdXRlX2NiKHN0cnVjdCBpcnFfd29yayAqd3JrKQo+IC17
Cj4gLQlzdHJ1Y3QgZXhlY3V0ZV9jYiAqY2IgPSBjb250YWluZXJfb2Yod3JrLCB0eXBlb2YoKmNi
KSwgd29yayk7Cj4gLQo+IC0JaTkxNV9zd19mZW5jZV9jb21wbGV0ZShjYi0+ZmVuY2UpOwo+IC0J
a21lbV9jYWNoZV9mcmVlKGdsb2JhbC5zbGFiX2V4ZWN1dGVfY2JzLCBjYik7Cj4gLX0KPiAtCj4g
LXN0YXRpYyB2b2lkIGlycV9leGVjdXRlX2NiX2hvb2soc3RydWN0IGlycV93b3JrICp3cmspCj4g
LXsKPiAtCXN0cnVjdCBleGVjdXRlX2NiICpjYiA9IGNvbnRhaW5lcl9vZih3cmssIHR5cGVvZigq
Y2IpLCB3b3JrKTsKPiAtCj4gLQljYi0+aG9vayhjb250YWluZXJfb2YoY2ItPmZlbmNlLCBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0LCBzdWJtaXQpLAo+IC0JCSAmY2ItPnNpZ25hbC0+ZmVuY2UpOwo+IC0J
aTkxNV9yZXF1ZXN0X3B1dChjYi0+c2lnbmFsKTsKPiAtCj4gLQlpcnFfZXhlY3V0ZV9jYih3cmsp
Owo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCBfX25vdGlmeV9leGVjdXRlX2NiKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQo+IC17Cj4gLQlzdHJ1Y3QgZXhlY3V0ZV9jYiAqY2I7Cj4gLQo+IC0JbG9j
a2RlcF9hc3NlcnRfaGVsZCgmcnEtPmxvY2spOwo+IC0KPiAtCWlmIChsaXN0X2VtcHR5KCZycS0+
ZXhlY3V0ZV9jYikpCj4gLQkJcmV0dXJuOwo+IC0KPiAtCWxpc3RfZm9yX2VhY2hfZW50cnkoY2Is
ICZycS0+ZXhlY3V0ZV9jYiwgbGluaykKPiAtCQlpcnFfd29ya19xdWV1ZSgmY2ItPndvcmspOwo+
IC0KPiAtCS8qCj4gLQkgKiBYWFggUm9sbGJhY2sgb24gX19pOTE1X3JlcXVlc3RfdW5zdWJtaXQo
KQo+IC0JICoKPiAtCSAqIEluIHRoZSBmdXR1cmUsIHBlcmhhcHMgd2hlbiB3ZSBoYXZlIGFuIGFj
dGl2ZSB0aW1lLXNsaWNpbmcgc2NoZWR1bGVyLAo+IC0JICogaXQgd2lsbCBiZSBpbnRlcmVzdGlu
ZyB0byB1bnN1Ym1pdCBwYXJhbGxlbCBleGVjdXRpb24gYW5kIHJlbW92ZQo+IC0JICogYnVzeXdh
aXRzIGZyb20gdGhlIEdQVSB1bnRpbCB0aGVpciBtYXN0ZXIgaXMgcmVzdGFydGVkLiBUaGlzIGlz
Cj4gLQkgKiBxdWl0ZSBoYWlyeSwgd2UgaGF2ZSB0byBjYXJlZnVsbHkgcm9sbGJhY2sgdGhlIGZl
bmNlIGFuZCBkbyBhCj4gLQkgKiBwcmVlbXB0LXRvLWlkbGUgY3ljbGUgb24gdGhlIHRhcmdldCBl
bmdpbmUsIGFsbCB0aGUgd2hpbGUgdGhlCj4gLQkgKiBtYXN0ZXIgZXhlY3V0ZV9jYiBtYXkgcmVm
aXJlLgo+IC0JICovCj4gLQlJTklUX0xJU1RfSEVBRCgmcnEtPmV4ZWN1dGVfY2IpOwo+IC19Cj4g
LQo+ICBzdGF0aWMgaW50Cj4gIF9faTkxNV9yZXF1ZXN0X2F3YWl0X2V4ZWN1dGlvbihzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSwKPiAgCQkJICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnNpZ25h
bCwKPiAtLSAKPiAyLjIwLjEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
