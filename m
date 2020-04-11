Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AA71A4EF6
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2020 10:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBBD56E2B8;
	Sat, 11 Apr 2020 08:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64D26E2B8
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2020 08:50:40 +0000 (UTC)
IronPort-SDR: 8KoVImKaf7uVxB/6AfHyULgwWOa3PjJc3aPHYHJKJ/8dlo6QvfayVa//TXCgqxdLiMGYAlYYpf
 jBgxsHAsqI5g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2020 01:50:39 -0700
IronPort-SDR: fXgmGAp8Ppk+96MROOK7Mm8PWfFblUqFBkSCids1qXq7ZXV/nWpIySYVcCAM0y2cLL7TG4Mpoq
 ReCQnACUB76w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,370,1580803200"; d="scan'208";a="297993459"
Received: from herzof-mobl1.ger.corp.intel.com (HELO [10.249.40.218])
 ([10.249.40.218])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Apr 2020 01:50:38 -0700
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
 <20200410165158.29546-3-venkata.s.dhanalakota@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <2fca650f-baac-2b71-8ab4-e3fc2a4c23fb@intel.com>
Date: Sat, 11 Apr 2020 11:50:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200410165158.29546-3-venkata.s.dhanalakota@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: peel dma-fence-chains wait
 fences
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
Cc: chris.p.wilson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAvMDQvMjAyMCAxOTo1MSwgVmVua2F0YSBTYW5kZWVwIERoYW5hbGFrb3RhIHdyb3RlOgo+
IEZyb206IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4K
Pgo+IFRvIGFsbG93IGZhc3RlciBlbmdpbmUgdG8gZW5naW5lIHN5bmNocm9uaXphdGlvbiwgcGVl
bCB0aGUgbGF5ZXIgb2YKPiBkbWEtZmVuY2UtY2hhaW4gdG8gZXhwb3NlIHBvdGVudGlhbCBpOTE1
IGZlbmNlcyBzbyB0aGF0IHRoZQo+IGk5MTUtcmVxdWVzdCBjb2RlIGNhbiBlbWl0IEhXIHNlbWFw
aG9yZSB3YWl0L3NpZ25hbCBvcGVyYXRpb25zIGluIHRoZQo+IHJpbmcgd2hpY2ggaXMgZmFzdGVy
IHRoYW4gd2FraW5nIHVwIHRoZSBob3N0IHRvIHN1Ym1pdCB1bmJsb2NrZWQKPiB3b3JrbG9hZHMg
YWZ0ZXIgaW50ZXJydXB0IG5vdGlmaWNhdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBM
YW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiAtLS0KPiAgIC4uLi9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDM5ICsrKysrKysrKysr
KysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9l
eGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZl
ci5jCj4gaW5kZXggOGRkNjUxY2RjYTM5Li5lNDNiNzZkN2U5ZmQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBAQCAtMjUwOCw2ICsy
NTA4LDcgQEAgYXdhaXRfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4g
ICAKPiAgIAlmb3IgKG4gPSAwOyBuIDwgbmZlbmNlczsgbisrKSB7Cj4gICAJCXN0cnVjdCBkcm1f
c3luY29iaiAqc3luY29iajsKPiArCQlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbjsKPiAg
IAkJdW5zaWduZWQgaW50IGZsYWdzOwo+ICAgCj4gICAJCXN5bmNvYmogPSBwdHJfdW5wYWNrX2Jp
dHMoZmVuY2VzW25dLnN5bmNvYmosICZmbGFncywgMik7Cj4gQEAgLTI1MTUsMTAgKzI1MTYsNDAg
QEAgYXdhaXRfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4gICAJCWlm
ICghZmVuY2VzW25dLmRtYV9mZW5jZSkKPiAgIAkJCWNvbnRpbnVlOwo+ICAgCj4gLQkJZXJyID0g
aTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShlYi0+cmVxdWVzdCwKPiAtCQkJCQkJICAgZmVu
Y2VzW25dLmRtYV9mZW5jZSk7Cj4gLQkJaWYgKGVyciA8IDApCj4gLQkJCXJldHVybiBlcnI7Cj4g
KwkJLyoKPiArCQkgKiBJZiB3ZSdyZSBkZWFsaW5nIHdpdGggYSBkbWEtZmVuY2UtY2hhaW4sIHBl
ZWwgdGhlIGNoYWluIGJ5Cj4gKwkJICogYWRkaW5nIGFsbCBvZiB0aGUgdW5zaWduYWxlZCBmZW5j
ZXMKPiArCQkgKiAoZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoIGRvZXMgdGhhdCBmb3IgdXMpIHRo
ZSBjaGFpbgo+ICsJCSAqIHBvaW50cyB0by4KPiArCQkgKgo+ICsJCSAqIFRoaXMgZW5hYmxlcyB1
cyB0byBpZGVudGlmeSB3YWl0cyBvbiBpOTE1IGZlbmNlcyBhbmQgYWxsb3dzCj4gKwkJICogZm9y
IGZhc3RlciBlbmdpbmUtdG8tZW5naW5lIHN5bmNocm9uaXphdGlvbiB1c2luZyBIVwo+ICsJCSAq
IHNlbWFwaG9yZXMuCj4gKwkJICovCj4gKwkJY2hhaW4gPSB0b19kbWFfZmVuY2VfY2hhaW4oZmVu
Y2VzW25dLmRtYV9mZW5jZSk7Cj4gKwkJaWYgKGNoYWluKSB7Cj4gKwkJCXN0cnVjdCBkbWFfZmVu
Y2UgKml0ZXI7Cj4gKwo+ICsJCQlkbWFfZmVuY2VfY2hhaW5fZm9yX2VhY2goaXRlciwgZmVuY2Vz
W25dLmRtYV9mZW5jZSkgewoKClRoZSBrYnVpbGQgYm90IG1hZGUgbWUgdGhpbmsgb2YgYW4gaW50
ZXJlc3RpbmcgY2FzZS4KCkl0IGlzIHBvc3NpYmxlIHRvIGJ1aWxkIGEgY2hhaW4gd2hlcmUgdGhl
IGZpcnN0IGVsZW1lbnQgaXNuJ3QgYSAKZG1hX2ZlbmNlX2NoYWluLgoKCldlIHNob3VsZCBoYW5k
bGUgdGhpcyBoZXJlIGxpa2UgdGhpcyA6CgoKaWYgKGl0ZXJfY2hhaW4pCgogwqDCoMKgIGVyciA9
IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UoZWItPnJlcXVlc3QsIGl0ZXJfY2hhaW4tPmZl
bmNlKTsKCmVsc2UKCiDCoMKgwqAgZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShl
Yi0+cmVxdWVzdCwgaXRlcik7CgppZiAoZXJyIDwgMCkgewoKIMKgwqDCoCBkbWFfZmVuY2VfcHV0
KGl0ZXIpOwoKIMKgwqDCoCByZXR1cm4gZXJyOwoKfQoKCj4gKwkJCQlzdHJ1Y3QgZG1hX2ZlbmNl
X2NoYWluICppdGVyX2NoYWluID0KPiArCQkJCQl0b19kbWFfZmVuY2VfY2hhaW4oaXRlcik7Cj4g
Kwo+ICsJCQkJR0VNX0JVR19PTighaXRlcl9jaGFpbik7Cj4gKwo+ICsJCQkJZXJyID0gaTkxNV9y
ZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShlYi0+cmVxdWVzdCwKPiArCQkJCQkJCQkgICBpdGVyX2No
YWluLT5mZW5jZSk7Cj4gKwkJCQlpZiAoZXJyIDwgMCkgewo+ICsJCQkJCWRtYV9mZW5jZV9wdXQo
aXRlcik7Cj4gKwkJCQkJcmV0dXJuIGVycjsKPiArCQkJCX0KPiArCQkJfQo+ICsKPiArCQl9IGVs
c2Ugewo+ICsJCQllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKGViLT5yZXF1ZXN0
LAo+ICsJCQkJCQkJICAgZmVuY2VzW25dLmRtYV9mZW5jZSk7Cj4gKwkJCWlmIChlcnIgPCAwKQo+
ICsJCQkJcmV0dXJuIGVycjsKPiArCQl9Cj4gICAJfQo+ICAgCj4gICAJcmV0dXJuIDA7CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
