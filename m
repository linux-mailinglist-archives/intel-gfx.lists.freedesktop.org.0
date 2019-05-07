Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4D8163BC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 14:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8AB889AA7;
	Tue,  7 May 2019 12:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EBA189AA7
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 12:28:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 05:28:40 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 05:28:39 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190507121108.18377-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <430571b9-a9d4-a872-afb7-e2eff3043420@linux.intel.com>
Date: Tue, 7 May 2019 13:28:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507121108.18377-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Flush the
 switch-to-kernel-context harder for DROP_IDLE
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

Ck9uIDA3LzA1LzIwMTkgMTM6MTEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUbyBjb21wbGV0ZSB0
aGUgaWRsZSB3b3JrZXIsIHdlIG11c3QgY29tcGxldGUgMiBwYXNzZXMgb2Ygd2FpdC1mb3ItaWRs
ZS4KPiBBdCB0aGUgZW5kIG9mIHRoZSBmaXJzdCBwYXNzLCB3ZSBxdWV1ZSBhIHN3aXRjaC10by1r
ZXJuZWwtY29udGV4dCBhbmQKPiBtYXkgb25seSBpZGxlIGFmdGVyIHdhaXRpbmcgZm9yIGl0cyBj
b21wbGV0aW9uLiBTcGVlZCB1cCB0aGUgZmx1c2hfd29yawo+IGJ5IGRvaW5nIHRoZSB3YWl0IGV4
cGxpY2l0bHksIHdoaWNoIHRoZW4gYWxsb3dzIHVzIHRvIHJlbW92ZSB0aGUKPiB1bmJvdW5kZWQg
bG9vcCB0cnlpbmcgdG8gY29tcGxldGUgdGhlIGZsdXNoX3dvcmsgaW4gdGhlIG5leHQgcGF0Y2gu
Cj4gCj4gUmVmZXJlbmNlczogNzlmZmFjODU5OWM0ICgiZHJtL2k5MTU6IEludmVydCB0aGUgR0VN
IHdha2VyZWYgaGllcmFyY2h5IikKPiBUZXN0Y2FzZTogaWd0L2dlbV9wcGd0dC9mbGluZC1hbmQt
Y2xvc2Utdm1hLWxlYWsKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgMTYg
KysrKysrKysrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRleCAx
NGNkODNlOWVhOGIuLmY2MGFlZDc3NDdlNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCj4gQEAgLTM5MDEsMTQgKzM5MDEsMjYgQEAgaTkxNV9kcm9wX2NhY2hlc19zZXQodm9p
ZCAqZGF0YSwgdTY0IHZhbCkKPiAgIAo+ICAgCS8qIE5vIG5lZWQgdG8gY2hlY2sgYW5kIHdhaXQg
Zm9yIGdwdSByZXNldHMsIG9ubHkgbGliZHJtIGF1dG8tcmVzdGFydHMKPiAgIAkgKiBvbiBpb2N0
bHMgb24gLUVBR0FJTi4gKi8KPiAtCWlmICh2YWwgJiAoRFJPUF9BQ1RJVkUgfCBEUk9QX1JFVElS
RSB8IERST1BfUkVTRVRfU0VRTk8pKSB7Cj4gKwlpZiAodmFsICYgKERST1BfQUNUSVZFIHwgRFJP
UF9JRExFIHwgRFJPUF9SRVRJUkUgfCBEUk9QX1JFU0VUX1NFUU5PKSkgewo+ICAgCQlpbnQgcmV0
Owo+ICAgCj4gICAJCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmaTkxNS0+ZHJtLnN0
cnVjdF9tdXRleCk7Cj4gICAJCWlmIChyZXQpCj4gICAJCQlyZXR1cm4gcmV0Owo+ICAgCj4gLQkJ
aWYgKHZhbCAmIERST1BfQUNUSVZFKQo+ICsJCS8qCj4gKwkJICogVG8gZmluaXNoIHRoZSBmbHVz
aCBvZiB0aGUgaWRsZV93b3JrZXIsIHdlIG11c3QgY29tcGxldGUKPiArCQkgKiB0aGUgc3dpdGNo
LXRvLWtlcm5lbC1jb250ZXh0LCB3aGljaCByZXF1aXJlcyBhIGRvdWJsZQo+ICsJCSAqIHBhc3Mg
dGhyb3VnaCB3YWl0X2Zvcl9pZGxlOiBmaXJzdCBxdWV1ZXMgdGhlIHN3aXRjaCwKPiArCQkgKiBz
ZWNvbmQgd2FpdHMgZm9yIHRoZSBzd2l0Y2guCj4gKwkJICovCj4gKwkJaWYgKHJldCA9PSAwICYm
IHZhbCAmIChEUk9QX0lETEUgfCBEUk9QX0FDVElWRSkpCj4gKwkJCXJldCA9IGk5MTVfZ2VtX3dh
aXRfZm9yX2lkbGUoaTkxNSwKPiArCQkJCQkJICAgICBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSB8
Cj4gKwkJCQkJCSAgICAgSTkxNV9XQUlUX0xPQ0tFRCwKPiArCQkJCQkJICAgICBNQVhfU0NIRURV
TEVfVElNRU9VVCk7Cj4gKwo+ICsJCWlmIChyZXQgPT0gMCAmJiB2YWwgJiBEUk9QX0lETEUpCj4g
ICAJCQlyZXQgPSBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKGk5MTUsCj4gICAJCQkJCQkgICAgIEk5
MTVfV0FJVF9JTlRFUlJVUFRJQkxFIHwKPiAgIAkJCQkJCSAgICAgSTkxNV9XQUlUX0xPQ0tFRCwK
PiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
