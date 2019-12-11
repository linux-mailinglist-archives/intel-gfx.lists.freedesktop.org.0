Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28F011BA3B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 18:25:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE5156EB51;
	Wed, 11 Dec 2019 17:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 309AA6EB51
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 17:25:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 09:25:11 -0800
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; d="scan'208";a="207765203"
Received: from jmcrann-mobl1.ger.corp.intel.com (HELO [10.252.9.248])
 ([10.252.9.248])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Dec 2019 09:25:10 -0800
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
References: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
 <d7b95242-51d0-f052-aabb-fae4ab66e9c3@linux.intel.com>
 <96a54ef7-86d2-0e9b-e0bc-20878883cfea@linux.intel.com>
 <20191211171318.GE47225@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <523c2634-b786-9c3d-30a3-1922909fb373@linux.intel.com>
Date: Wed, 11 Dec 2019 17:25:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211171318.GE47225@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Register sysctl path
 globally
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzEyLzIwMTkgMTc6MTMsIFZlbmthdGEgU2FuZGVlcCBEaGFuYWxha290YSB3cm90ZToK
PiBPbiAxOS8xMi8xMSAwNDozOSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Cj4+IE9uIDExLzEy
LzIwMTkgMTY6MzEsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+Pj4gT24gMTEvMTIvMjAxOSAxNjow
NywgVmVua2F0YSBTYW5kZWVwIERoYW5hbGFrb3RhIHdyb3RlOgo+Pj4+IFdlIGRvIG5vdCByZXF1
aXJlIHRvIHJlZ2lzdGVyIHRoZSBzeXNjdGwgcGF0aHMgcGVyIGluc3RhbmNlLAo+Pj4+IHNvIG1h
a2luZyByZWdpc3RyYXRpb24gZ2xvYmFsLgo+Pj4+Cj4+Pj4gQ2M6IFN1ZGVlcCBEdXR0IDxzdWRl
ZXAuZHV0dEBpbnRlbC5jb20+Cj4+Pj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGlu
dGVsLmNvbT4KPj4+PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4K
Pj4+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+Pj4gQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTog
VmVua2F0YSBTYW5kZWVwIERoYW5hbGFrb3RhCj4+Pj4gPHZlbmthdGEucy5kaGFuYWxha290YUBp
bnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jwqDCoMKgwqDCoMKgIHwgMTAgKysrKysrKystLQo+Pj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmZfdHlwZXMuaCB8wqAgMSAtCj4+Pj4gIMKgIDIgZmlsZXMgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYwo+Pj4+IGluZGV4IDhkMmUzNzk0OWY0Ni4uNDI2ZDA0MjE0YTVkIDEwMDY0
NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4+PiBAQCAtMzg3LDYgKzM4Nyw4IEBA
IHN0cnVjdCBpOTE1X29hX2NvbmZpZ19ibyB7Cj4+Pj4gIMKgwqDCoMKgwqAgc3RydWN0IGk5MTVf
dm1hICp2bWE7Cj4+Pj4gIMKgIH07Cj4+Pj4gK3N0YXRpYyBzdHJ1Y3QgY3RsX3RhYmxlX2hlYWRl
ciAqc3lzY3RsX2hlYWRlcjsKPj4+PiArCj4+Pj4gIMKgIHN0YXRpYyBlbnVtIGhydGltZXJfcmVz
dGFydCBvYV9wb2xsX2NoZWNrX3RpbWVyX2NiKHN0cnVjdCBocnRpbWVyCj4+Pj4gKmhydGltZXIp
Owo+Pj4+ICDCoCB2b2lkIGk5MTVfb2FfY29uZmlnX3JlbGVhc2Uoc3RydWN0IGtyZWYgKnJlZikK
Pj4+PiBAQCAtNDM0NSw3ICs0MzQ3LDggQEAgdm9pZCBpOTE1X3BlcmZfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIG9hX3NhbXBsZV9y
YXRlX2hhcmRfbGltaXQgPSAxMDAwICoKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHogLyAyKTsKPj4+
PiAtwqDCoMKgwqDCoMKgwqAgcGVyZi0+c3lzY3RsX2hlYWRlciA9IHJlZ2lzdGVyX3N5c2N0bF90
YWJsZShkZXZfcm9vdCk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICghc3lzY3RsX2hlYWRlcikK
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzeXNjdGxfaGVhZGVyID0gcmVnaXN0ZXJfc3lz
Y3RsX3RhYmxlKGRldl9yb290KTsKPj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIG11dGV4X2luaXQo
JnBlcmYtPm1ldHJpY3NfbG9jayk7Cj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBpZHJfaW5pdCgm
cGVyZi0+bWV0cmljc19pZHIpOwo+Pj4+IEBAIC00Mzk1LDcgKzQzOTgsMTAgQEAgdm9pZCBpOTE1
X3BlcmZfZmluaShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4+PiAgwqDCoMKgwqDC
oCBpZHJfZm9yX2VhY2goJnBlcmYtPm1ldHJpY3NfaWRyLCBkZXN0cm95X2NvbmZpZywgcGVyZik7
Cj4+Pj4gIMKgwqDCoMKgwqAgaWRyX2Rlc3Ryb3koJnBlcmYtPm1ldHJpY3NfaWRyKTsKPj4+PiAt
wqDCoMKgIHVucmVnaXN0ZXJfc3lzY3RsX3RhYmxlKHBlcmYtPnN5c2N0bF9oZWFkZXIpOwo+Pj4+
ICvCoMKgwqAgaWYgKHN5c2N0bF9oZWFkZXIpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgdW5yZWdp
c3Rlcl9zeXNjdGxfdGFibGUoc3lzY3RsX2hlYWRlcik7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHN5
c2N0bF9oZWFkZXIgPSBOVUxMOwo+Pj4+ICvCoMKgwqAgfQo+Pj4KPj4+IEkgYW0gbm90IHN1cmUg
aWYgdGhpcyBjb3VsZCBiZSByYWN5IHdpdGggbWFudWFsIHVuYmluZCBmcm9tIHN5c2ZzLiBEb2Vz
Cj4+PiBQQ0kgY29yZSBzZXJpYWxpemUgZm9yIHVzPwo+Pgo+PiBBY3R1YWxseSB3aXRoIHR3byBk
ZXZpY2VzIHlvdSBhbHNvIG5lZWQgdG8gcmVmZXJlbmNlIGNvdW50IGl0IHNpbmNlIHlvdQo+PiBk
b24ndCB3YW50IHJlbW92YWwgb2YgdGhlIGZpcnN0IGRldmljZSB0byByZW1vdmUgdGhlIG5vZGUg
YnV0IGxhc3QuCj4+Cj4gQXBwYXJlbnRseSB0aGlzIGlzIG5vdCBjYWxsZWQgZHVyaW5nIG1vZHVs
ZSBleGl0LCB1c2luZyBrcmVmcyBpcwo+IHdheSBnbyB0byBvciBoYXZlIHNvbWUgaGVscGVyIHdo
aWNoIGFyZSBjYWxsZWQgZHVyaW5nIG1vZHVsZSBpbml0L2V4aXQuCgpXaGF0IGlzIG5vdCBjYWxs
ZWQ/IGk5MTVfcGVyZl9maW5pPyBJdCBiZXR0ZXIgYmUhIDopCgpSZWdhcmRzLAoKVHZydGtvCgo+
IAo+IHZvaWQgaTkxNV9wZXJmX3N5c2N0bF9yZWdpc3RlcigpIHsKPiAJc3lzY3RsX2hlYWRlciA9
IHJlZ2lzdGVyX3N5c2N0bF90YWJsZShkZXZfcm9vdCk7Cj4gfQo+IAo+IHZvaWQgaTkxNV9wZXJm
X3N5c2N0bF91bnJlZ2lzdGVyKCkgewo+IAl1bnJlZ2lzdGVyX3N5c2N0bF90YWJsZShzeXNjdGxf
aGVhZGVyKTsKPiB9Cj4gCj4gCj4+PiBSZWdhcmRzLAo+Pj4KPj4+IFR2cnRrbwo+Pj4KPj4+PiAg
wqDCoMKgwqDCoCBtZW1zZXQoJnBlcmYtPm9wcywgMCwgc2l6ZW9mKHBlcmYtPm9wcykpOwo+Pj4+
ICDCoMKgwqDCoMKgIHBlcmYtPmk5MTUgPSBOVUxMOwo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaAo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmX3R5cGVzLmgKPj4+PiBpbmRleCA3NGRkYzIwYTBkMzcuLjQ1ZTU4MTQ1NWY1
ZCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMu
aAo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oCj4+Pj4g
QEAgLTM4MCw3ICszODAsNiBAQCBzdHJ1Y3QgaTkxNV9wZXJmIHsKPj4+PiAgwqDCoMKgwqDCoCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsKPj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3Qga29i
amVjdCAqbWV0cmljc19rb2JqOwo+Pj4+IC3CoMKgwqAgc3RydWN0IGN0bF90YWJsZV9oZWFkZXIg
KnN5c2N0bF9oZWFkZXI7Cj4+Pj4gIMKgwqDCoMKgwqAgLyoKPj4+PiAgwqDCoMKgwqDCoMKgICog
TG9jayBhc3NvY2lhdGVkIHdpdGggYWRkaW5nL21vZGlmeWluZy9yZW1vdmluZyBPQSBjb25maWdz
Cj4+Pj4KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
