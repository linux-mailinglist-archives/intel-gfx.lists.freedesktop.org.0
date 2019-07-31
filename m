Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F967C9FC
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 19:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5916E079;
	Wed, 31 Jul 2019 17:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FDD46E079
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 17:10:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:10:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="163182234"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 31 Jul 2019 10:10:05 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190731004902.34672-1-daniele.ceraolospurio@intel.com>
 <20190731004902.34672-5-daniele.ceraolospurio@intel.com>
 <bc420e6a-f716-36b9-c57a-f575b08bd4f5@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <d4080825-d4ed-ed55-40cc-8ac3a02d7b37@intel.com>
Date: Wed, 31 Jul 2019 10:09:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bc420e6a-f716-36b9-c57a-f575b08bd4f5@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/tgl: Report valid VDBoxes with
 SFC capability
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzMwLzE5IDEwOjU5IFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiAKPiBPbiAzMS8w
Ny8yMDE5IDAxOjQ5LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+PiBGcm9tOiBNaWNo
ZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+Pgo+PiBJbiBHZW4xMSwgb25s
eSBldmVuIG51bWJlcmVkICJsb2dpY2FsIiBWREJveGVzIGFyZSBob29rZWQgdXAgdG8gYSBTRkMK
Pj4gKFNjYWxlciAmIEZvcm1hdCBDb252ZXJ0ZXIpIHVuaXQuIFRoaXMgaXMgbm90IHRoZSBjYXNl
IGluIFRpZ2VybGFrZSwKPj4gd2hlcmUgZWFjaCBWREJveCBjYW4gYWNjZXNzIGEgU0ZDLgo+Pgo+
PiBXZSB3aWxsIHVzZSB0aGlzIGluZm9ybWF0aW9uIHRvIGRlY2lkZSB3aGVuIHRoZSBTRkMgdW5p
dHMgbmVlZCB0byBiZSAKPj4gcmVzZXQKPj4gYW5kIGFsc28gcGFzcyBpdCB0byB0aGUgR3VDLgo+
Pgo+PiBCc3BlYzogNDgwNzcKPj4gU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hl
bC50aGllcnJ5QGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+PiBDYzogVmluYXkgQmVsZ2F1bWthciA8
dmluYXkuYmVsZ2F1bWthckBpbnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMyArKy0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kZXZpY2VfaW5mby5jCj4+IGluZGV4IGY5OWM5ZmQ0OTdiMi4uMmEzOWI1MmMzNTgy
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPj4gQEAg
LTEwMjIsOCArMTAyMiw5IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9faW5pdF9tbWlvKHN0cnVj
dCAKPj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAv
Kgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIEluIEdlbjExLCBvbmx5IGV2ZW4gbnVtYmVyZWQg
bG9naWNhbCBWREJPWGVzIGFyZQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGhvb2tlZCB1cCB0
byBhbiBTRkMgKFNjYWxlciAmIEZvcm1hdCBDb252ZXJ0ZXIpIHVuaXQuCj4+ICvCoMKgwqDCoMKg
wqDCoMKgICogSW4gVEdMIGVhY2ggVkRCT1ggaGFzIGFjY2VzcyB0byBhbiBTRkMuCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgICovCj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAobG9naWNhbF92ZGJveCsr
ICUgMiA9PSAwKQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikg
fHwgbG9naWNhbF92ZGJveCsrICUgMiA9PSAwKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBSVU5USU1FX0lORk8oZGV2X3ByaXYpLT52ZGJveF9zZmNfYWNjZXNzIHw9IEJJVChpKTsKPj4g
wqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgRFJNX0RFQlVHX0RSSVZFUigidmRib3ggZW5hYmxl
OiAlMDR4LCBpbnN0YW5jZXM6ICUwNGx4XG4iLAo+Pgo+IAo+IFJldmlld2VkLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE9ubHkgdW5jZXJ0YWludHkg
aXMgaWYgd2Ugd2FudCB0byBjb2RlIHRoZSBjb25kaXRpb24gYXMgSWNlbGFrZSAKPiBleGNlcHRp
b24gaW5zdGVhZCBmb3IgbW9yZSBmdXR1cmUgcHJvb2ZpbmcuIExpa2UgaWYgIiFJU19JQ0VMQUtF
IHx8IiAKPiBpbnN0ZWFkIG9mICJJU19USUdFUkxBS0UgfHwiPwoKSWYgSSdtIHVuZGVyc3RhbmRp
bmcgdGhlIHNwZWNzIGNvcnJlY3RseSB0aGVuIHRoaXMgaXNuJ3QgZ29pbmcgdG8gYXBwbHkgCnRv
IGFsbCBmdXR1cmUgcGxhdGZvcm0gYW5kIHdlJ2xsIGhhdmUgc29tZSBvZiB0aGVtIHRoYXQgYmVo
YXZlIGxpa2UgSUNMIAppbnN0ZWFkLiBNYXliZSBhIGRldmljZSBmbGFnIHdvdWxkIHdvcmsgYmV0
dGVyPyBIQVNfU0ZDX0ZPUl9FQUNIX1ZDUygpPwoKRGFuaWVsZQoKPiAKPiBSZWdhcmRzLAo+IAo+
IFR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
