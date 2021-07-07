Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 088C03BE3DE
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 09:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EA3D6E833;
	Wed,  7 Jul 2021 07:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1596E831;
 Wed,  7 Jul 2021 07:46:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="207434324"
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="207434324"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 00:46:26 -0700
X-IronPort-AV: E=Sophos;i="5.83,331,1616482800"; d="scan'208";a="457388184"
Received: from jleigh1-mobl2.ger.corp.intel.com (HELO [10.213.192.58])
 ([10.213.192.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 00:46:23 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
 <20210701202427.1547543-9-matthew.d.roper@intel.com>
 <96b1625f-1b72-d28c-6d92-02bd5d255277@linux.intel.com>
 <20210706211503.la6t4lvvjuoycizd@ldmartin-desk2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ce5ca62f-5b8c-ee9e-bd10-69ba8e1a1c04@linux.intel.com>
Date: Wed, 7 Jul 2021 08:46:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706211503.la6t4lvvjuoycizd@ldmartin-desk2>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/53] drm/i915/xehp: Extra media engines -
 Part 2 (interrupts)
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA2LzA3LzIwMjEgMjI6MTUsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBPbiBGcmksIEp1
bCAwMiwgMjAyMSBhdCAwMTo0Mjo1OVBNICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4K
Pj4gT24gMDEvMDcvMjAyMSAyMToyMywgTWF0dCBSb3BlciB3cm90ZToKPj4+IEZyb206IEpvaG4g
SGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4+Pgo+Pj4gWGVfSFAgY2FuIGhh
dmUgYSBsb3Qgb2YgZXh0cmEgbWVkaWEgZW5naW5lcy4gVGhpcyBwYXRjaCBhZGRzIHRoZQo+Pj4g
aW50ZXJydXB0IGhhbmRsZXIgc3VwcG9ydCBmb3IgdGhlbS4KPj4+Cj4+PiBDYzogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+IENjOiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+Pj4gU2lnbmVkLW9mZi1i
eTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4+IFNpZ25lZC1v
ZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMgfCAxMyArKysrKysrKysr
KystCj4+PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmjCoMKgwqDCoMKgwqDCoCB8
wqAgMyArKysKPj4+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X2lycS5jIAo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEuYwo+
Pj4gaW5kZXggYzEzNDYyMjc0ZmU4Li5iMmRlODNiZTRkOTcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9pcnEuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfaXJxLmMKPj4+IEBAIC0xODQsNyArMTg0LDEzIEBAIHZvaWQg
Z2VuMTFfZ3RfaXJxX3Jlc2V0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4+PiDCoMKgwqDCoCBpbnRl
bF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU4xMV9CQ1NfUlNWRF9JTlRSX01BU0sswqDCoMKgIH4w
KTsKPj4+IMKgwqDCoMKgIGludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjExX1ZDUzBfVkNT
MV9JTlRSX01BU0sswqDCoMKgIH4wKTsKPj4+IMKgwqDCoMKgIGludGVsX3VuY29yZV93cml0ZSh1
bmNvcmUsIEdFTjExX1ZDUzJfVkNTM19JTlRSX01BU0sswqDCoMKgIH4wKTsKPj4+ICvCoMKgwqAg
aWYgKEhBU19FTkdJTkUoZ3QsIFZDUzQpIHx8IEhBU19FTkdJTkUoZ3QsIFZDUzUpKQo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjEyX1ZDUzRfVkNTNV9J
TlRSX01BU0sswqDCoCB+MCk7Cj4+PiArwqDCoMKgIGlmIChIQVNfRU5HSU5FKGd0LCBWQ1M2KSB8
fCBIQVNfRU5HSU5FKGd0LCBWQ1M3KSkKPj4+ICvCoMKgwqDCoMKgwqDCoCBpbnRlbF91bmNvcmVf
d3JpdGUodW5jb3JlLCBHRU4xMl9WQ1M2X1ZDUzdfSU5UUl9NQVNLLMKgwqAgfjApOwo+Pj4gwqDC
oMKgwqAgaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOMTFfVkVDUzBfVkVDUzFfSU5UUl9N
QVNLLMKgwqDCoCB+MCk7Cj4+PiArwqDCoMKgIGlmIChIQVNfRU5HSU5FKGd0LCBWRUNTMikgfHwg
SEFTX0VOR0lORShndCwgVkVDUzMpKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGludGVsX3VuY29yZV93
cml0ZSh1bmNvcmUsIEdFTjEyX1ZFQ1MyX1ZFQ1MzX0lOVFJfTUFTSywgfjApOwo+Pj4gwqDCoMKg
wqAgaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOMTFfR1BNX1dHQk9YUEVSRl9JTlRSX0VO
QUJMRSwgMCk7Cj4+PiDCoMKgwqDCoCBpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU4xMV9H
UE1fV0dCT1hQRVJGX0lOVFJfTUFTSyzCoCB+MCk7Cj4+PiBAQCAtMjE4LDggKzIyNCwxMyBAQCB2
b2lkIGdlbjExX2d0X2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+Pj4gwqDC
oMKgwqAgaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOMTFfQkNTX1JTVkRfSU5UUl9NQVNL
LCB+c21hc2spOwo+Pj4gwqDCoMKgwqAgaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOMTFf
VkNTMF9WQ1MxX0lOVFJfTUFTSywgfmRtYXNrKTsKPj4+IMKgwqDCoMKgIGludGVsX3VuY29yZV93
cml0ZSh1bmNvcmUsIEdFTjExX1ZDUzJfVkNTM19JTlRSX01BU0ssIH5kbWFzayk7Cj4+PiArwqDC
oMKgIGlmIChIQVNfRU5HSU5FKGd0LCBWQ1M0KSB8fCBIQVNfRU5HSU5FKGd0LCBWQ1M1KSkKPj4+
ICvCoMKgwqDCoMKgwqDCoCBpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU4xMl9WQ1M0X1ZD
UzVfSU5UUl9NQVNLLCB+ZG1hc2spOwo+Pj4gK8KgwqDCoCBpZiAoSEFTX0VOR0lORShndCwgVkNT
NikgfHwgSEFTX0VOR0lORShndCwgVkNTNykpCj4+PiArwqDCoMKgwqDCoMKgwqAgaW50ZWxfdW5j
b3JlX3dyaXRlKHVuY29yZSwgR0VOMTJfVkNTNl9WQ1M3X0lOVFJfTUFTSywgfmRtYXNrKTsKPj4+
IMKgwqDCoMKgIGludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjExX1ZFQ1MwX1ZFQ1MxX0lO
VFJfTUFTSywgfmRtYXNrKTsKPj4KPj4gUG9vciAwLTEgc2FuZHdpY2hlZCBiZXR3ZWVuIDQtNyBh
bmQgMi0zLiA7KSBXaXRoIGhvcGVmdWxseSBvcmRlciAKPj4gcmVzdG9yZWQ6Cj4gCj4gbm90IHN1
cmUgSSB1bmRlcnN0YW5kIHRoaXMsIG9yZGVyIGxvb2tzIGNvcnJlY3QgdG8gbWUuIEl0IGhhbmRs
ZXMgYWxsCj4gKHBvc3NpYmxlKSBWQ1MgZW5naW5lcywgYW5kIGxhdGVyIFZFQ1MKCk9vcHMgbXkg
YmFkLCBteSBleWVzIGNvbmZ1c2VkIFZDUyBhbmQgVkVDUyBibG9ja3MuCgpSZWdhcmRzLAoKVHZy
dGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
