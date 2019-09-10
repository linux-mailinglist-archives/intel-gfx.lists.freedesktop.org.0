Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F097FAE532
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 10:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22CA16E867;
	Tue, 10 Sep 2019 08:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9AB6E867
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 08:14:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 01:14:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="185439125"
Received: from dudibroo-mobl2.ger.corp.intel.com (HELO [10.252.31.14])
 ([10.252.31.14])
 by fmsmga007.fm.intel.com with ESMTP; 10 Sep 2019 01:13:59 -0700
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
References: <20190723154934.26967-1-stuart.summers@intel.com>
 <20190723154934.26967-10-stuart.summers@intel.com>
 <92ddc444-d45e-1ecc-7fc2-2bda4fae13ed@linux.intel.com>
 <b13ab867-0acd-fd87-173f-1cc3a3724a9b@linux.intel.com>
 <156779359430.2967.9072538110573051346@skylake-alporthouse-com>
 <db1adc9d8f84b15434fc92807778718bd48f95f4.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <883c84ad-902c-9c58-1da4-159df65a71a3@linux.intel.com>
Date: Tue, 10 Sep 2019 09:13:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <db1adc9d8f84b15434fc92807778718bd48f95f4.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Expand subslice mask
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

Ck9uIDEwLzA5LzIwMTkgMDU6NTMsIFN1bW1lcnMsIFN0dWFydCB3cm90ZToKPiBPbiBGcmksIDIw
MTktMDktMDYgYXQgMTk6MTMgKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBU
dnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0wMiAxNDo0Mjo0NCkKPj4+Cj4+PiBPbiAyNC8wNy8yMDE5
IDE0OjA1LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4+Pgo+Pj4+IE9uIDIzLzA3LzIwMTkgMTY6
NDksIFN0dWFydCBTdW1tZXJzIHdyb3RlOgo+Pj4+PiArdTMyIGludGVsX3NzZXVfZ2V0X3N1YnNs
aWNlcyhjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwKPj4+Pj4gdTggc2xpY2UpCj4+
Pj4+ICt7Cj4+Pj4+ICsgICAgaW50IGksIG9mZnNldCA9IHNsaWNlICogc3NldS0+c3Nfc3RyaWRl
Owo+Pj4+PiArICAgIHUzMiBtYXNrID0gMDsKPj4+Pj4gKwo+Pj4+PiArICAgIGlmIChzbGljZSA+
PSBzc2V1LT5tYXhfc2xpY2VzKSB7Cj4+Pj4+ICsgICAgICAgIERSTV9FUlJPUigiJXM6IGludmFs
aWQgc2xpY2UgJWQsIG1heDogJWRcbiIsCj4+Pj4+ICsgICAgICAgICAgICAgIF9fZnVuY19fLCBz
bGljZSwgc3NldS0+bWF4X3NsaWNlcyk7Cj4+Pj4+ICsgICAgICAgIHJldHVybiAwOwo+Pj4+PiAr
ICAgIH0KPj4+Pj4gKwo+Pj4+PiArICAgIGlmIChzc2V1LT5zc19zdHJpZGUgPiBzaXplb2YobWFz
aykpIHsKPj4+Pj4gKyAgICAgICAgRFJNX0VSUk9SKCIlczogaW52YWxpZCBzdWJzbGljZSBzdHJp
ZGUgJWQsIG1heDoKPj4+Pj4gJWx1XG4iLAo+Pj4+PiArICAgICAgICAgICAgICBfX2Z1bmNfXywg
c3NldS0+c3Nfc3RyaWRlLCBzaXplb2YobWFzaykpOwo+Pj4+PiArICAgICAgICByZXR1cm4gMDsK
Pj4+Pj4gKyAgICB9Cj4+Pj4+ICsKPj4+Pj4gKyAgICBmb3IgKGkgPSAwOyBpIDwgc3NldS0+c3Nf
c3RyaWRlOyBpKyspCj4+Pj4+ICsgICAgICAgIG1hc2sgfD0gKHUzMilzc2V1LT5zdWJzbGljZV9t
YXNrW29mZnNldCArIGldIDw8Cj4+Pj4+ICsgICAgICAgICAgICBpICogQklUU19QRVJfQllURTsK
Pj4+Pj4gKwo+Pj4+PiArICAgIHJldHVybiBtYXNrOwo+Pj4+PiArfQo+Pj4+Cj4+Pj4gV2h5IGRv
IHlvdSBhY3R1YWxseSBuZWVkIHRoZXNlIGNvbXBsaWNhdGlvbnMgd2hlbiB0aGUgcGxhbiBmcm9t
Cj4+Pj4gdGhlCj4+Pj4gc3RhcnQgd2FzIHRoYXQgdGhlIGRyaXZlciBhbmQgdXNlciBzc2V1IHJl
cHJlc2VudGF0aW9uIHN0cnVjdHVyZXMKPj4+PiBjYW4gYmUKPj4+PiBkaWZmZXJlbnQ/Cj4+Pj4K
Pj4+PiBJIG9ubHkgZ2F2ZSBpdCBhIHF1aWNrIGxvb2sgc28gSSBtaWdodCBiZSB3cm9uZywgYnV0
IHdoeSBub3QganVzdAo+Pj4+IGV4cGFuZAo+Pj4+IHRoZSBkcml2ZXIgcmVwcmVzZW50YXRpb25z
IG9mIHN1YnNsaWNlIG1hc2sgdXAgZnJvbSB1OD8gVXNlcnNwYWNlCj4+Pj4gQVBJCj4+Pj4gc2hv
dWxkIGJlIGFibGUgdG8gY29wZSB3aXRoIHN0cmlkZXMgYWxyZWFkeS4KPj4+Cj4+PiBJIG5ldmVy
IGdvdCBhbiBhbnN3ZXIgdG8gdGhpcyBhbmQgdGhlIHNlcmllcyB3YXMgbWVyZ2VkIGluIHRoZQo+
Pj4gbWVhbnRpbWUuCj4gCj4gVGhhbmtzIGZvciB0aGUgbm90ZSBoZXJlIFR2cnRrbyBhbmQgc29y
cnkgZm9yIHRoZSBtaXNzZWQgcmVzcG9uc2UhIEZvcgo+IHNvbWUgcmVhc29uIEkgaGFkbid0IGNh
dWdodCB0aGlzIGNvbW1lbnQgZWFybGllciA6KAoKT2sgbm8gd29ycmllcy4KCj4+Pgo+Pj4gTWF5
YmUgbm90IG11Y2ggaGFybSBidXQgSSBzdGlsbCBkb24ndCB1bmRlcnN0YW5kIHdoeSBhbGwgdGhl
Cj4+PiBjb21wbGljYXRpb25zIHNlZW1pbmdseSBqdXN0IHRvIGF2b2lkIGJ1bXBpbmcgdGhlICpp
bnRlcm5hbCogc3MKPj4+IG1hc2sgdXAKPj4+IGZyb20gdTguIEFzIGxvbmcgYXMgdGhlIGludGVy
bmFsIGFuZCBhYmkgc3NldSBpbmZvIHN0cnVjdCBhcmUgd2VsbAo+Pj4gc2VwYXJhdGVkIGFuZCBh
Y2Nlc3MgcG9pbnQgZmV3IGFuZCB3ZWxsIGNvbnRyb2xsZWQgKEkgdGhpbmsgdGhleQo+Pj4gYXJl
KQo+Pj4gdGhlbiBJIGRvbid0IHNlZSB3aHkgdGhlIGludGVybmFsIHNpZGUgaGFkIHRvIGJlIGNv
bnZlcnRlZCB0byB1OAo+Pj4gYW5kCj4+PiBzdHJpZGVzLiBCdXQgbWF5YmUgSSBhbSBtaXNzaW5n
IHNvbWV0aGluZy4KPj4KPj4gSSBsb29rZWQgYXQgaXQgYW5kIHRob3VnaHQgaXQgd2FzIG9wZW4t
Y29kaW5nIGJpdG1hcC5oIGFzIHdlbGwuIEkKPj4gYWNjZXB0ZWQgaXQgaW4gZ29vZCBmYWl0aCB0
aGF0IGl0IGltcHJvdmVkIGNlcnRhaW4gdXNlIGNhc2VzIGFuZAo+PiBzaG91bGQKPj4gZXZlbiBt
YWtlIHRpZHlpbmcgdXAgdGhlIGNvZGUgd2l0aG91dCByZWdyZXNzaW5nIHRob3NlIGVhc2llci4K
PiAKPiBUaGUgZ29hbCBoZXJlIGlzIHRvIG1ha2Ugc3VyZSB3ZSBoYXZlIGFuIGluZnJhc3RydWN0
dXJlIGluIHBsYWNlIHRoYXQKPiBhbHdheXMgcHJvdmlkZXMgYSBjb25zaXN0ZW50IGJpdCBsYXlv
dXQgdG8gdXNlcnNwYWNlIHJlZ2FyZGxlc3Mgb2YKPiB1bmRlcmx5aW5nIGFyY2hpdGVjdHVyZSBl
bmRpYW5uZXNzLiBQZXJoYXBzIHRoaXMgY291bGQgaGF2ZSBiZWVuIG1hZGUKPiBtb3JlIGNsZWFy
IGluIHRoZSBjb21taXQgbWVzc2FnZSBoZXJlLgoKTXkgcG9pbnQgd2FzIHRoYXQgaW50ZXJuYWwg
YW5kIHVzZXJzcGFjZSByZXByZXNlbnRhdGlvbiBkbyBub3QgaGF2ZSB0byAKbWF0Y2ggYW5kIHRo
YXQgaXQgcHJvYmFibHkgd291bGQgaGF2ZSBiZWVuIG11Y2ggc2ltcGxlciBjb2RlIGlmIHRoYXQg
CnByaW5jaXBsZSByZW1haW5lZC4gV2UgYWxyZWFkeSBoYWQgYSBzcGxpdCBiZXR3ZWVuIGludGVy
bmFsIGFuZCBBQkkgc3NldSAKc3RydWN0cyBhbmQgd2hlcmVhcyB0aGUgbGF0dGVyIHVuZGVyc3Rh
bmRzIGNvbmNlcHQgb2Ygc3RyaWRlIGFscmVhZHksIAp0aGUgZm9ybWVyIGNvdWxkIGhhdmUganVz
dCBoYWQgaXQncyBzdWJzbGljZSBtYXNrIGZpZWxkIGV4cGVuZGVkIGZyb20gdTggCnRvIHUxNiwg
b3Igd2hhdGV2ZXIuIEJ1dCBhbnl3YXksIGF0IHRoaXMgcG9pbnQgSSBkb24ndCBldmVuIHJlbWVt
YmVyIGFsbCAKdGhlIGRldGFpbHMgeW91ciBzZXJpZXMgZGlkLCBhbmQgZ2l2ZW4gaXQncyBtZXJn
ZWQgSSB3b24ndCBiZSBnb2luZyAKcmUtcmVhZGluZyBpdC4KClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
