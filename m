Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B332169EB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 12:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4976E079;
	Tue,  7 Jul 2020 10:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CE76E079
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 10:19:06 +0000 (UTC)
IronPort-SDR: nS3OilHG41G5heXeG0uuUzPSGcotrvi0Eyfk+Wyrbao+m4T5n6kCcxi+YgOcSMZ7QXxQ8LxYmW
 TntdpyN3HhUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="212537007"
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="212537007"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 03:19:06 -0700
IronPort-SDR: cIF4Kut4TzR+BiElqMa+xFaElOjgjOKyfJRcKdUvzlzvR5xFB39kR8QjOPH1Mxwo2Yjf8ix3ov
 SqiLQLoPMvgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="279555501"
Received: from smenzel-mobl1.ger.corp.intel.com (HELO [10.252.40.251])
 ([10.252.40.251])
 by orsmga003.jf.intel.com with ESMTP; 07 Jul 2020 03:19:04 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-19-maarten.lankhorst@linux.intel.com>
 <017ac78c-8cfb-0d30-a686-91e34e5ecd14@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <1ba4f588-fb98-289a-4a1b-edd6f10e0ad1@linux.intel.com>
Date: Tue, 7 Jul 2020 12:19:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <017ac78c-8cfb-0d30-a686-91e34e5ecd14@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/i915: Dirty hack to fix selftests
 locking inversion
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

T3AgMDMtMDctMjAyMCBvbSAxNTo0OCBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Cj4gT24gMDMv
MDcvMjAyMCAxMzoyMiwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IFNvbWUgaTkxNSBzZWxm
dGVzdHMgc3RpbGwgdXNlIGk5MTVfdm1hX2xvY2soKSBhcyBpbm5lciBsb2NrLCBhbmQKPj4gaW50
ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdCgpIGludGVsX3RpbWVsaW5lLT5tdXRleCBhcyBvdXRl
ciBsb2NrLgo+PiBGb3J0dW5hdGVseSBmb3Igc2VsZnRlc3RzIHRoaXMgaXMgbm90IGFuIGlzc3Vl
LCB0aGV5IHNob3VsZCBiZSBmaXhlZAo+PiBidXQgd2UgY2FuIG1vdmUgYWhlYWQgYW5kIGNsZWFu
aWZ5IGxvY2tkZXAgbm93Lgo+Cj4gTWVudGlvbnMgYW5kIGV4aXN0ZW5jZSBvZiAiZGlydHkgaGFj
a3MiIHdpbGwgaG9wZWZ1bGx5IGJlIHJlbW92ZWQgZnJvbSB0aGUgc2VyaWVzIGJlZm9yZSBpdCBj
YW4gYmUgY29uc2lkZXJlZCBtZXJnZSByZWFkeT8KPgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28KPgo+
PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Y29udGV4dC5jIHwgMTIgKysrKysrKysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKPj4g
aW5kZXggNjQ5NDgzODY2MzBmLi5mZTlmZmY1YTYzYjEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKPj4gQEAgLTQ1OSw2ICs0NTksMTggQEAgc3RydWN0IGk5
MTVfcmVxdWVzdCAqaW50ZWxfY29udGV4dF9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2UpCj4+IMKgwqDCoMKgwqAgcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsKPj4g
wqDCoMKgwqDCoCBpbnRlbF9jb250ZXh0X3VucGluKGNlKTsKPj4gwqAgK8KgwqDCoCBpZiAoSVNf
RVJSKHJxKSkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBycTsKPj4gKwo+PiArwqDCoMKgIC8q
Cj4+ICvCoMKgwqDCoCAqIHRpbWVsaW5lLT5tdXRleCBzaG91bGQgYmUgdGhlIGlubmVyIGxvY2ss
IGJ1dCBpcyB1c2VkIGFzIG91dGVyIGxvY2suCj4+ICvCoMKgwqDCoCAqIEhhY2sgYXJvdW5kIHRo
aXMgdG8gc2h1dCB1cCBsb2NrZGVwIGluIHNlbGZ0ZXN0cy4uCj4+ICvCoMKgwqDCoCAqLwo+PiAr
wqDCoMKgIGxvY2tkZXBfdW5waW5fbG9jaygmY2UtPnRpbWVsaW5lLT5tdXRleCwgcnEtPmNvb2tp
ZSk7Cj4+ICvCoMKgwqAgbXV0ZXhfcmVsZWFzZSgmY2UtPnRpbWVsaW5lLT5tdXRleC5kZXBfbWFw
LCBfUkVUX0lQXyk7Cj4+ICvCoMKgwqAgbXV0ZXhfYWNxdWlyZSgmY2UtPnRpbWVsaW5lLT5tdXRl
eC5kZXBfbWFwLCBTSU5HTEVfREVQVEhfTkVTVElORywgMCwgX1JFVF9JUF8pOwo+PiArwqDCoMKg
IHJxLT5jb29raWUgPSBsb2NrZGVwX3Bpbl9sb2NrKCZjZS0+dGltZWxpbmUtPm11dGV4KTsKPj4g
Kwo+PiDCoMKgwqDCoMKgIHJldHVybiBycTsKPj4gwqAgfQo+PiDCoAoKSGV5LAoKV2UncmUgdHJ5
aW5nIHRvIGludmVydCB0aGUgbG9ja2luZyBvcmRlciB3aXRoIHZtYSBsb2NrIHZzIHJlcXVlc3Qg
bG9jaywgd2hpbGUgdGhpcyBpcyBhIGhhY2ssCml0IHdpbGwgbm90IGFmZmVjdCBub3JtYWwgcnVu
bmluZyBjb2RlLCBpdCdzIG9ubHkgbWVhbnQgdG8gc2h1dCB1cCBsb2NrZGVwIGluIHRoZSBzZWxm
dGVzdHMuCgpUaGlzIGlzIG1haW5seSBzbyB3ZSBjYW4gZml4IHRoZSBzZWxmdGVzdHMgb25lIGJ5
IG9uZSwgd2l0aG91dCBicmVha2luZyB0aGUgd29ybGQuIElkZWFsbHkKd2hlbiBtbS5vYmogbGFu
ZHMsIHdlIGFscmVhZHkgY29ycmVjdGVkIHRoZSBsb2NrIG9yZGVyaW5nLiBXZSBtYXkga2VlcCB0
aGlzIG1hY3JvIGZvciBzZWxmdGVzdHMsCmJ1dCB1bnRpbCBsb2NrIHJlb3JkZXJpbmcgaW4gc2Vs
ZnRlc3RzIGlzIGNvbXBsZXRlIHdlIHdpbGwgbmVlZCB0aGlzIHRlbXBvcmFyaWx5LgoKfk1hYXJ0
ZW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
