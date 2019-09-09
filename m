Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EC5AD5CC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 11:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BAA89AE6;
	Mon,  9 Sep 2019 09:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E49689AC9;
 Mon,  9 Sep 2019 09:34:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 02:34:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="174933233"
Received: from mbrantx-mobl.ger.corp.intel.com (HELO [10.252.30.176])
 ([10.252.30.176])
 by orsmga007.jf.intel.com with ESMTP; 09 Sep 2019 02:34:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190909071226.15401-1-chris@chris-wilson.co.uk>
 <e05e82f0-255d-5728-98e5-45bf68df4a23@linux.intel.com>
 <156802102222.21072.16329690166966071648@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <31f7ea79-0f0e-f16f-b854-da3d46801609@linux.intel.com>
Date: Mon, 9 Sep 2019 10:34:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156802102222.21072.16329690166966071648@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Check on the health of
 the spinner while waiting
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA5LzA5LzIwMTkgMTA6MjMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTA5IDEwOjE5OjA4KQo+Pgo+PiBPbiAwOS8wOS8yMDE5IDA4OjEy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBbmQgZ2l2ZSB1cCBpZiB3ZSBuZXZlciBldmVuIG1h
a2UgaXQgdG8gdGhlIHN0YXJ0Lgo+Pj4KPj4+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1OTIKPj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAgIHRlc3RzL3BlcmZfcG11
LmMgfCAzICsrKwo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+
IGRpZmYgLS1naXQgYS90ZXN0cy9wZXJmX3BtdS5jIGIvdGVzdHMvcGVyZl9wbXUuYwo+Pj4gaW5k
ZXggZDM5MmE2N2Q0Li44YTA2ZTVkNDQgMTAwNjQ0Cj4+PiAtLS0gYS90ZXN0cy9wZXJmX3BtdS5j
Cj4+PiArKysgYi90ZXN0cy9wZXJmX3BtdS5jCj4+PiBAQCAtMTkxLDEwICsxOTEsMTIgQEAgc3Rh
dGljIHVuc2lnbmVkIGxvbmcgX19zcGluX3dhaXQoaW50IGZkLCBpZ3Rfc3Bpbl90ICpzcGluKQo+
Pj4gICAgICAgICAgICAgICAgd2hpbGUgKCFpZ3Rfc3Bpbl9oYXNfc3RhcnRlZChzcGluKSkgewo+
Pj4gICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHQgPSBpZ3RfbnNlY19lbGFw
c2VkKCZzdGFydCk7Cj4+PiAgICAKPj4+ICsgICAgICAgICAgICAgICAgICAgICBpZ3RfYXNzZXJ0
KGdlbV9ib19idXN5KGZkLCBzcGluLT5oYW5kbGUpKTsKPj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgaWYgKCh0IC0gdGltZW91dCkgPiAyNTBlNikgewo+Pj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHRpbWVvdXQgPSB0Owo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGlndF93YXJuKCJTcGlubmVyIG5vdCBydW5uaW5nIGFmdGVyICUuMmZtc1xuIiwKPj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoZG91YmxlKXQgLyAxZTYpOyA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgIGlndF9hc3NlcnQodCA8IDJlOSk7Cj4+PiAgICAgICAg
ICAgICAgICAgICAgICAgIH0KPj4+ICAgICAgICAgICAgICAgIH0KPj4+ICAgICAgICB9IGVsc2Ug
ewo+Pj4gQEAgLTIwMiw2ICsyMDQsNyBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBfX3NwaW5fd2Fp
dChpbnQgZmQsIGlndF9zcGluX3QgKnNwaW4pCj4+PiAgICAgICAgICAgICAgICB1c2xlZXAoNTAw
ZTMpOyAvKiBCZXR0ZXIgdGhhbiBub3RoaW5nISAqLwo+Pj4gICAgICAgIH0KPj4+ICAgIAo+Pj4g
KyAgICAgaWd0X2Fzc2VydChnZW1fYm9fYnVzeShmZCwgc3Bpbi0+aGFuZGxlKSk7Cj4+PiAgICAg
ICAgcmV0dXJuIGlndF9uc2VjX2VsYXBzZWQoJnN0YXJ0KTsKPj4+ICAgIH0KPj4+ICAgIAo+Pj4K
Pj4KPj4gVGhlIDJzIHRpbWVvdXQgZm9yIGJhdGNoIHRvIHN0YXJ0IGV4ZWN1dGluZyBzb3VuZHMg
b2theS4KPj4KPj4gSSdkIHB1bGwgdXAgYW5kIGNvbnNvbGlkYXRlIHRoZSBib19idXN5IGNoZWNr
cyBpbnRvIG9uZSBhdCB0aGUgdG9wIG9mCj4+IHRoZSBmdW5jdGlvbiwgc2luY2UgaXQgaXMgb25s
eSB0ZWxsaW5nIHVzIGJhdGNoIGhhcyBiZWVuIHN1Ym1pdHRlZC4gT3IKPj4geW91IGFyZSB0aGlu
a2luZyB0aGUgc2Vjb25kIGNoZWNrIGJyaW5ncyB2YWx1ZSBpbiBjaGVja2luZyBiYXRjaCBpcwo+
PiBzdGlsbCBleGVjdXRpbmcsIGhhc24ndCBmYWlsZWQgb3Igc29tZXRoaW5nPwo+IAo+IFRoZSB0
aGlua2luZyBpcyB0byBjYXRjaCBpZiB3ZSB0ZXJtaW5hdGUgdGhlIGJhdGNoIHZpYSBoYW5nY2hl
Y2sgYmVmb3JlCj4gd3JpdGluZyB0aGUgZHdvcmQuIEkgdGhpbmsgdGhlcmUncyB2YWx1ZSBpbiBr
bm93aW5nIGlmIHdlIGFyZSBzbG93IHZzCj4gZGVhZC4KClllYWggYXMgZ3Vlc3NlZCB0aGVuIC0g
YWdyZWVkLgoKUmVnYXJkcywKClR2cnRrbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
