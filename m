Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7995CE7B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 13:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BDD2899A5;
	Tue,  2 Jul 2019 11:36:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C67899A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 11:36:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 04:36:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="154410277"
Received: from bgrossx-mobl.ger.corp.intel.com (HELO [10.249.141.25])
 ([10.249.141.25])
 by orsmga007.jf.intel.com with ESMTP; 02 Jul 2019 04:36:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-7-lionel.g.landwerlin@intel.com>
 <156199423121.1583.15553295046198978599@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8c9e2b4b-dbd2-6401-6473-90c0823a3fc1@intel.com>
Date: Tue, 2 Jul 2019 14:36:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156199423121.1583.15553295046198978599@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 06/11] drm/i915: introduce a mechanism to
 extend execbuf2
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

T24gMDEvMDcvMjAxOSAxODoxNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTI6MzQ6MzIpCj4+IFdlJ3JlIHBsYW5uaW5nIHRvIHVz
ZSB0aGlzIGZvciBhIGNvdXBsZSBvZiBuZXcgZmVhdHVyZSB3aGVyZSB3ZSBuZWVkCj4+IHRvIHBy
b3ZpZGUgYWRkaXRpb25hbCBwYXJhbWV0ZXJzIHRvIGV4ZWNidWYuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiBM
b29rcyBvaywgYXJlIHlvdSBjb252aW5jZWQgYnkgSTkxNV9FWEVDX0VYVD8gSXQgZG9lc24ndCBy
b2xsIG9mZiB0aGUKPiB0b25ndWUgdG9vIHdlbGwgZm9yIG1lLCBidXQgSSBndWVzcyBFWFQgaXMg
YSBiaXQgbW9yZSBpbmdyYWluZWQgaW4KPiB5b3VyIGNlcmVicmFsIGNvcnRleC4KCgpJJ20gb3Bl
biB0byBhbnkgc3VnZ2VzdGlvbiBmb3IgdGhlIG5hbWUgOikKCgo+Cj4+IC0tLQo+PiAgIC4uLi9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDMyICsrKysrKysrKysr
KysrKysrKy0KPj4gICBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAgICAg
ICAgfCAyNSArKysrKysrKysrKysrLS0KPj4gICAyIGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+PiBpbmRleCAxYzVkZmJmYWQ3MWIuLjk4ODdmYTllM2Fj
OCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNi
dWZmZXIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1
ZmZlci5jCj4+IEBAIC0yMyw2ICsyMyw3IEBACj4+ICAgI2luY2x1ZGUgImk5MTVfZ2VtX2NsZmx1
c2guaCIKPj4gICAjaW5jbHVkZSAiaTkxNV9nZW1fY29udGV4dC5oIgo+PiAgICNpbmNsdWRlICJp
OTE1X3RyYWNlLmgiCj4+ICsjaW5jbHVkZSAiaTkxNV91c2VyX2V4dGVuc2lvbnMuaCIKPj4gICAj
aW5jbHVkZSAiaW50ZWxfZHJ2LmgiCj4+ICAgCj4+ICAgZW51bSB7Cj4+IEBAIC0yNzEsNiArMjcy
LDEwIEBAIHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgewo+PiAgICAgICAgICAgKi8KPj4gICAgICAg
ICAgaW50IGx1dF9zaXplOwo+PiAgICAgICAgICBzdHJ1Y3QgaGxpc3RfaGVhZCAqYnVja2V0czsg
LyoqIGh0IGZvciByZWxvY2F0aW9uIGhhbmRsZXMgKi8KPj4gKwo+PiArICAgICAgIHN0cnVjdCB7
Cj4+ICsgICAgICAgICAgICAgICB1NjQgZmxhZ3M7IC8qKiBBdmFpbGFibGUgZXh0ZW5zaW9ucyBw
YXJhbWV0ZXJzICovCj4+ICsgICAgICAgfSBleHRlbnNpb25zOwo+PiAgIH07Cj4+ICAgCj4+ICAg
I2RlZmluZSBleGVjX2VudHJ5KEVCLCBWTUEpICgmKEVCKS0+ZXhlY1soVk1BKS0+ZXhlY19mbGFn
cyAtIChFQiktPmZsYWdzXSkKPj4gQEAgLTE5NjksNyArMTk3NCw3IEBAIHN0YXRpYyBib29sIGk5
MTVfZ2VtX2NoZWNrX2V4ZWNidWZmZXIoc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAq
ZXhlYykKPj4gICAgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4+ICAgCj4+ICAgICAgICAg
IC8qIEtlcm5lbCBjbGlwcGluZyB3YXMgYSBEUkkxIG1pc2ZlYXR1cmUgKi8KPj4gLSAgICAgICBp
ZiAoIShleGVjLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9BUlJBWSkpIHsKPj4gKyAgICAgICBp
ZiAoIShleGVjLT5mbGFncyAmIChJOTE1X0VYRUNfRkVOQ0VfQVJSQVkgfCBJOTE1X0VYRUNfRVhU
KSkpIHsKPj4gICAgICAgICAgICAgICAgICBpZiAoZXhlYy0+bnVtX2NsaXByZWN0cyB8fCBleGVj
LT5jbGlwcmVjdHNfcHRyKQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNl
Owo+PiAgICAgICAgICB9Cj4+IEBAIC0yMzQ3LDYgKzIzNTIsMjcgQEAgc2lnbmFsX2ZlbmNlX2Fy
cmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+PiAgICAgICAgICB9Cj4+ICAgfQo+PiAg
IAo+PiArc3RhdGljIGNvbnN0IGk5MTVfdXNlcl9leHRlbnNpb25fZm4gZXhlY2J1Zl9leHRlbnNp
b25zW10gPSB7Cj4+ICt9Owo+PiArCj4+ICtzdGF0aWMgaW50Cj4+ICtwYXJzZV9leGVjYnVmMl9l
eHRlbnNpb25zKHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgKmFyZ3MsCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4+ICt7Cj4+
ICsgICAgICAgZWItPmV4dGVuc2lvbnMuZmxhZ3MgPSAwOwo+PiArCj4+ICsgICAgICAgaWYgKCEo
YXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfRVhUKSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAw
Owo+PiArCj4+ICsgICAgICAgaWYgKGFyZ3MtPm51bV9jbGlwcmVjdHMgIT0gMCkKPj4gKyAgICAg
ICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIGk5MTVfdXNl
cl9leHRlbnNpb25zKHU2NF90b191c2VyX3B0cihhcmdzLT5jbGlwcmVjdHNfcHRyKSwKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXhlY2J1Zl9leHRlbnNpb25zLAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBUlJBWV9TSVpFKGV4ZWNidWZfZXh0
ZW5zaW9ucyksCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGViKTsKPj4g
K30KPj4gKwo+PiAgIHN0YXRpYyBpbnQKPj4gICBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZSwKPj4gQEAgLTIzOTMsNiArMjQxOSwxMCBAQCBpOTE1X2dlbV9kb19leGVjYnVm
ZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4+ICAgICAgICAgIGlmIChhcmdzLT5mbGFncyAm
IEk5MTVfRVhFQ19JU19QSU5ORUQpCj4+ICAgICAgICAgICAgICAgICAgZWIuYmF0Y2hfZmxhZ3Mg
fD0gSTkxNV9ESVNQQVRDSF9QSU5ORUQ7Cj4+ICAgCj4+ICsgICAgICAgZXJyID0gcGFyc2VfZXhl
Y2J1ZjJfZXh0ZW5zaW9ucyhhcmdzLCAmZWIpOwo+PiArICAgICAgIGlmIChlcnIpCj4+ICsgICAg
ICAgICAgICAgICByZXR1cm4gZXJyOwo+PiArCj4+ICAgICAgICAgIGlmIChhcmdzLT5mbGFncyAm
IEk5MTVfRVhFQ19GRU5DRV9JTikgewo+PiAgICAgICAgICAgICAgICAgIGluX2ZlbmNlID0gc3lu
Y19maWxlX2dldF9mZW5jZShsb3dlcl8zMl9iaXRzKGFyZ3MtPnJzdmQyKSk7Cj4+ICAgICAgICAg
ICAgICAgICAgaWYgKCFpbl9mZW5jZSkKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+PiBpbmRleCBlMjdhOGVk
YTkxMjEuLmVmYTE5NWQ2OTk0ZSAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9pOTE1
X2RybS5oCj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+PiBAQCAtMTAxMyw2
ICsxMDEzLDEwIEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19mZW5jZSB7Cj4+ICAgICAgICAg
IF9fdTMyIGZsYWdzOwo+PiAgIH07Cj4+ICAgCj4+ICtlbnVtIGRybV9pOTE1X2dlbV9leGVjYnVm
ZmVyX2V4dCB7Cj4+ICsgICAgICAgRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVJfRVhUX01BWCAvKiBu
b24tQUJJICovCj4gV2UgaGF2ZSBhIHdlaXJkIG1peCBvZiB0cnlpbmcgdG8gYXZvaWQgZHJtX2k5
MTVfZ2VtIGFuZCB5ZXQgaXQncwo+IHBsYXN0ZXJlZCBhbGwgb3ZlciB0aGUgc3RydWN0cy4gU2ln
aC4KCgpZZWFoLCBJIGNvdWxkbid0IGZpZ3VyZSBvdXQgd2hhdCBpcyBkZXNpcmVkLgoKSGFwcHkg
dG8gY2hhbmdlIGl0IGlmIHlvdSBoYXZlIGEgbmFtaW5nIHNjaGVtZS4KCgo+Cj4+ICt9Owo+IGVu
dW1zIG5leHQgdG8gdUFCSSBtYWtlIG1lIG5lcnZvdXMgOikKPgo+IFJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtQ2hyaXMKPgoKVGhhbmtzIGEg
bG90LAoKCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
