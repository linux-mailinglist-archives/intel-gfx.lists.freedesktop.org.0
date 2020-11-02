Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7D52A2663
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 09:48:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29486E437;
	Mon,  2 Nov 2020 08:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7BD6E435
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 08:48:04 +0000 (UTC)
IronPort-SDR: Mfglutqf5biDXrAx9myGeuhvyUjsnEzymhD9dlBAXfjWXg0S/e3KtuRiqmHhuOHx93HTesGZXZ
 wbwtP8B/soXQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="168069781"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="168069781"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 00:48:04 -0800
IronPort-SDR: cXommS35Xn6P/i1yFl5+qKcitoJcH1pV3DqcKJwGBjVGImS7ATrS0d75itAEnUXqu44CsyJn/W
 b10telD6ORaw==
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="537937492"
Received: from cpphilpo-mobl3.ger.corp.intel.com (HELO [10.252.49.225])
 ([10.252.49.225])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 00:48:03 -0800
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-21-maarten.lankhorst@linux.intel.com>
 <1b38a307-0d57-9abd-d72d-a0e783b39183@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <5ed58ed0-ce0c-dbf8-ceb3-5a88c2e1fc00@linux.intel.com>
Date: Mon, 2 Nov 2020 09:48:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <1b38a307-0d57-9abd-d72d-a0e783b39183@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 20/61] drm/i915: Rework clflush to work
 correctly without obj->mm.lock.
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

T3AgMzAtMTAtMjAyMCBvbSAxNjowOCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+Cj4gT24g
MTAvMTYvMjAgMTI6NDQgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+PiBQaW4gaW4gdGhl
IGNhbGxlciwgbm90IGluIHRoZSB3b3JrIGl0c2VsZi4gVGhpcyBzaG91bGQgYWxzbwo+PiB3b3Jr
IGJldHRlciBmb3IgZG1hLWZlbmNlIGFubm90YXRpb25zLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+PiAt
LS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsZmx1c2guYyB8IDE1
ICsrKysrKystLS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA4
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2NsZmx1c2guYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
bGZsdXNoLmMKPj4gaW5kZXggYmMwMjIzNzE2OTA2Li5kYWY5Mjg0ZWYxZjUgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGZsdXNoLmMKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsZmx1c2guYwo+PiBAQCAtMjcsMTUg
KzI3LDggQEAgc3RhdGljIHZvaWQgX19kb19jbGZsdXNoKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopCj4+IMKgIHN0YXRpYyBpbnQgY2xmbHVzaF93b3JrKHN0cnVjdCBkbWFfZmVuY2Vf
d29yayAqYmFzZSkKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBjbGZsdXNoICpjbGZsdXNo
ID0gY29udGFpbmVyX29mKGJhc2UsIHR5cGVvZigqY2xmbHVzaCksIGJhc2UpOwo+PiAtwqDCoMKg
IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBjbGZsdXNoLT5vYmo7Cj4+IC3CoMKg
wqAgaW50IGVycjsKPj4gwqAgLcKgwqDCoCBlcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2Vz
KG9iaik7Cj4+IC3CoMKgwqAgaWYgKGVycikKPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7
Cj4+IC0KPj4gLcKgwqDCoCBfX2RvX2NsZmx1c2gob2JqKTsKPj4gLcKgwqDCoCBpOTE1X2dlbV9v
YmplY3RfdW5waW5fcGFnZXMob2JqKTsKPj4gK8KgwqDCoCBfX2RvX2NsZmx1c2goY2xmbHVzaC0+
b2JqKTsKPj4gwqAgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+PiBAQCAtNDQsNiArMzcs
NyBAQCBzdGF0aWMgdm9pZCBjbGZsdXNoX3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZV93b3JrICpi
YXNlKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGNsZmx1c2ggKmNsZmx1c2ggPSBjb250
YWluZXJfb2YoYmFzZSwgdHlwZW9mKCpjbGZsdXNoKSwgYmFzZSk7Cj4+IMKgICvCoMKgwqAgaTkx
NV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKGNsZmx1c2gtPm9iaik7Cj4KPiBIbW0sIENvdWxkIHdl
IGRvIHdpdGhvdXQgcGlubmluZyBoZXJlPyBQYWdlcyBwcmVzZW50IGFyZSBwcm90ZWN0ZWQgZmly
c3QgYnkgdGhlIG9iamVjdCBsb2NrLCB0aGVuIGJ5IHRoZSBmZW5jZT8KPgo+IC9UaG9tYXMKPgo+
Cj4KSSBmZWx0IHRoZSBsZWFzdCBjaGFuY2Ugb2YgcmVncmVzc2lvbnMgd2FzIHRvIGNvcHkgdGhl
IGV4aXN0aW5nIGNvZGUuIDopCgpBdCBsZWFzdCB1bnRpbCB3ZSBoYXZlIGNvbXBsZXRlZCBvYmot
Pm1tLmxvY2sgcmVtb3ZhbCwgd2Ugc2hvdWxkbid0IHRyeSB0byBiZSBzbWFydCB3aXRoIHRoZXNl
IGtpbmQgb2YgdGhpbmdzLgoKTGlrZWx5LCB3ZSd2ZSBhbHJlYWR5IHBpbm5lZCB0aGUgcGFnZXMs
IHNvIGl0J3MgYSBzaW1wbGUgcmVmIGluY3JlYXNlLgoKTGF0ZXIgb24sIHdlIGNhbiB0cnkgdG8g
YmUgc21hcnQsIGJ1dCB3aGVuZXZlciBJIHRyaWVkIHRvIGNoYW5nZSBiZWhhdmlvciBzbyBmYXIs
IEkgd2FzIGZvcmNlZCB0byBodW50IGRvd24gYnVncy4KCn5NYWFydGVuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
