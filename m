Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8C31831B3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 14:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F066E203;
	Thu, 12 Mar 2020 13:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E10C6E203
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 13:36:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 06:36:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="289721776"
Received: from borgmann-mobl1.ger.corp.intel.com (HELO [10.252.38.215])
 ([10.252.38.215])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Mar 2020 06:36:53 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200309211057.38575-1-umesh.nerlige.ramappa@intel.com>
 <a1dbc0a4-a31a-24ed-6d56-691ba9d70eef@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <83b85a04-475d-8dce-f651-c64e6083504c@intel.com>
Date: Thu, 12 Mar 2020 15:36:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a1dbc0a4-a31a-24ed-6d56-691ba9d70eef@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Invalidate OA TLB on when
 closing perf stream
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAvMDMvMjAyMCAxMTowMywgTGlvbmVsIExhbmR3ZXJsaW4gd3JvdGU6Cj4gT24gMDkvMDMv
MjAyMCAyMzoxMCwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+PiBPbiBydW5uaW5nIHNl
dmVyYWwgYmFjayB0byBiYWNrIHBlcmYgY2FwdHVyZSBzZXNzaW9ucyBpbnZvbHZpbmcgY2xvc2lu
Zwo+PiBhbmQgb3BlbmluZyB0aGUgcGVyZiBzdHJlYW0sIGludmFsaWQgT0EgcmVwb3J0cyBhcmUg
c2VlbiBpbiB0aGUKPj4gYmVnaW5uaW5nIG9mIHRoZSBPQSBidWZmZXIgaW4gc29tZSBzZXNzaW9u
cy4gRml4IHRoaXMgYnkgaW52YWxpZGF0aW5nIE9BCj4+IFRMQiB3aGVuIHRoZSBwZXJmIHN0cmVh
bSBpcyBjbG9zZWQgb3IgZGlzYWJsZWQgb24gZ2VuMTIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFVt
ZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGlnZS5yYW1hcHBhQGludGVsLmNvbT4KPiBS
ZXZpZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwu
Y29tPgoKCldlIHdhbnQgdGhpcyB0byBiZSB3aXRoIHRoZSB0YWcgOgoKCkZpeGVzOiAwMGE3ZjBk
NzE1NWMgKCJkcm0vaTkxNS90Z2w6IEFkZCBwZXJmIHN1cHBvcnQgb24gVEdMIikKCgotTGlvbmVs
CgoKPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgOCArKysr
KysrKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5owqAgfCAyICsrCj4+IMKg
IDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmMKPj4gaW5kZXggMWIwNzRiYjRhN2ZlLi41NTFiZTU4OWQ2ZjQgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+IEBAIC0yNzAwLDYgKzI3MDAsMTQgQEAgc3RhdGlj
IHZvaWQgZ2VuMTJfb2FfZGlzYWJsZShzdHJ1Y3QgCj4+IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVh
bSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDUwKSkKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIGRybV9lcnIoJnN0cmVhbS0+cGVyZi0+aTkxNS0+ZHJtLAo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAid2FpdCBmb3IgT0EgdG8gYmUgZGlzYWJsZWQgdGlt
ZWQgb3V0XG4iKTsKPj4gKwo+PiArwqDCoMKgIGludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdF
TjEyX09BX1RMQl9JTlZfQ1IsIDEpOwo+PiArwqDCoMKgIGlmIChpbnRlbF93YWl0X2Zvcl9yZWdp
c3Rlcih1bmNvcmUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBH
RU4xMl9PQV9UTEJfSU5WX0NSLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgMSwgMCwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDUw
KSkKPj4gK8KgwqDCoMKgwqDCoMKgIGRybV9lcnIoJnN0cmVhbS0+cGVyZi0+aTkxNS0+ZHJtLAo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAid2FpdCBmb3IgT0EgdGxiIGludmFsaWRhdGUgdGlt
ZWQgb3V0XG4iKTsKPj4gwqAgfQo+PiDCoCDCoCAvKioKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAo+PiBpbmRleCA3OWFlOTY1NGRhYzkuLjk1NzI1ZTYxZDlmMSAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4+IEBAIC02OTMsNiArNjkzLDggQEAgc3RhdGljIGlubGluZSBib29s
IGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdfdCAKPj4gcmVnKQo+PiDCoCAjZGVmaW5lIE9B
QlVGRkVSX1NJWkVfOE3CoMKgwqAgKDYgPDwgMykKPj4gwqAgI2RlZmluZSBPQUJVRkZFUl9TSVpF
XzE2TcKgwqAgKDcgPDwgMykKPj4gwqAgKyNkZWZpbmUgR0VOMTJfT0FfVExCX0lOVl9DUiBfTU1J
TygweGNlZWMpCj4+ICsKPj4gwqAgLyogR2VuMTIgT0FSIHVuaXQgKi8KPj4gwqAgI2RlZmluZSBH
RU4xMl9PQVJfT0FDT05UUk9MIF9NTUlPKDB4Mjk2MCkKPj4gwqAgI2RlZmluZcKgIEdFTjEyX09B
Ul9PQUNPTlRST0xfQ09VTlRFUl9GT1JNQVRfU0hJRlQgMQo+Cj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QK
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
