Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08C07AB8A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 16:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 263B56E46F;
	Tue, 30 Jul 2019 14:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4526E46F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 14:57:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 07:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="162601646"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 30 Jul 2019 07:57:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
 <20190729234727.28286-3-daniele.ceraolospurio@intel.com>
 <6d6dae02-ceef-1517-e3af-2bc6a8d5c883@linux.intel.com>
 <156447368738.6373.5868749624839885661@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <1f3a5fc1-7eda-4bbc-1f41-7f4a8631306b@intel.com>
Date: Tue, 30 Jul 2019 07:56:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156447368738.6373.5868749624839885661@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: move gt_cleanup_early out of
 gem_cleanup_early
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

CgpPbiA3LzMwLzE5IDE6MDEgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTMwIDA4OjE5OjE4KQo+Pgo+PiBPbiAzMC8wNy8yMDE5IDAwOjQ3
LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+Pj4gV2UgZG9uJ3QgY2FsbCB0aGUgaW5p
dF9lYXJseSBmdW5jdGlvbiBmcm9tIHdpdGhpbiB0aGUgZ2VtIGNvZGUsIHNvIHdlCj4+PiBzaG91
bGRuJ3QgZG8gaXQgZm9yIHRoZSBjbGVhbnVwIGVpdGhlci4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
Pgo+Pj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Cj4+PiAtLS0K
Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAyICsrCj4+PiAgICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMiAtLQo+Pj4gICAgMiBmaWxlcyBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jCj4+PiBpbmRleCBmMmQzZDc1NGFmMzcuLjkzNGU2MDVlMjQ2NiAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4+IEBAIC05NTEsNiArOTUxLDcgQEAgc3RhdGljIGludCBp
OTE1X2RyaXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4+PiAgICAgICAgaW50ZWxfdWNfY2xlYW51cF9lYXJseSgmZGV2X3ByaXYtPmd0LnVjKTsKPj4+
ICAgICAgICBpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KGRldl9wcml2KTsKPj4+ICAgIGVycl93b3Jr
cXVldWVzOgo+Pj4gKyAgICAgaW50ZWxfZ3RfY2xlYW51cF9lYXJseSgmZGV2X3ByaXYtPmd0KTsK
Pj4+ICAgICAgICBpOTE1X3dvcmtxdWV1ZXNfY2xlYW51cChkZXZfcHJpdik7Cj4+PiAgICAgICAg
cmV0dXJuIHJldDsKPj4+ICAgIH0KPj4+IEBAIC05NjYsNiArOTY3LDcgQEAgc3RhdGljIHZvaWQg
aTkxNV9kcml2ZXJfbGF0ZV9yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKPj4+ICAgICAgICBpbnRlbF9wb3dlcl9kb21haW5zX2NsZWFudXAoZGV2X3ByaXYpOwo+Pj4g
ICAgICAgIGludGVsX3VjX2NsZWFudXBfZWFybHkoJmRldl9wcml2LT5ndC51Yyk7Cj4+PiAgICAg
ICAgaTkxNV9nZW1fY2xlYW51cF9lYXJseShkZXZfcHJpdik7Cj4+PiArICAgICBpbnRlbF9ndF9j
bGVhbnVwX2Vhcmx5KCZkZXZfcHJpdi0+Z3QpOwo+IAo+IE5vdGUgdGhlIGNoYW5nZSBpbiBuYW1p
bmcgY29udmVudGlvbiwgaW50ZWxfZ3RfZHJpdmVyX2xhdGVfcmVsZWFzZSgpLgo+IC1DaHJpcwo+
IAoKRG9lcyBpdCBtYWtlIHNlbnNlIHRvIGZsaXAgb25seSB0aGUgZ3QgZnVuY3Rpb24/IGl0J2Qg
bG9vayB0ZXJyaWJseSBvdXQgCm9mIHBsYWNlIGNsb3NlIHRvIGFsbCB0aG9zZSBvdGhlciBjbGVh
bnVwX2Vhcmx5KCkgY2FsbHMuIEkgY2FuIGZvbGxvdyB1cCAKd2l0aCBhIHBhdGNoIHRvIGZsaXAg
dGhlbSBhbGwgYXQgdGhlIHNhbWUgdGltZSBpZiB0aGF0IHdvcmtzIGZvciB5b3UuCgpEYW5pZWxl
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
