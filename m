Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAE9AD586
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 11:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1789089A4B;
	Mon,  9 Sep 2019 09:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4693989A4B;
 Mon,  9 Sep 2019 09:19:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 02:19:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="174929052"
Received: from mbrantx-mobl.ger.corp.intel.com (HELO [10.252.30.176])
 ([10.252.30.176])
 by orsmga007.jf.intel.com with ESMTP; 09 Sep 2019 02:19:08 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190909071226.15401-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e05e82f0-255d-5728-98e5-45bf68df4a23@linux.intel.com>
Date: Mon, 9 Sep 2019 10:19:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909071226.15401-1-chris@chris-wilson.co.uk>
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

Ck9uIDA5LzA5LzIwMTkgMDg6MTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBbmQgZ2l2ZSB1cCBp
ZiB3ZSBuZXZlciBldmVuIG1ha2UgaXQgdG8gdGhlIHN0YXJ0Lgo+IAo+IEJ1Z3ppbGxhOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1OTIKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIHRlc3RzL3Bl
cmZfcG11LmMgfCAzICsrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+IAo+
IGRpZmYgLS1naXQgYS90ZXN0cy9wZXJmX3BtdS5jIGIvdGVzdHMvcGVyZl9wbXUuYwo+IGluZGV4
IGQzOTJhNjdkNC4uOGEwNmU1ZDQ0IDEwMDY0NAo+IC0tLSBhL3Rlc3RzL3BlcmZfcG11LmMKPiAr
KysgYi90ZXN0cy9wZXJmX3BtdS5jCj4gQEAgLTE5MSwxMCArMTkxLDEyIEBAIHN0YXRpYyB1bnNp
Z25lZCBsb25nIF9fc3Bpbl93YWl0KGludCBmZCwgaWd0X3NwaW5fdCAqc3BpbikKPiAgIAkJd2hp
bGUgKCFpZ3Rfc3Bpbl9oYXNfc3RhcnRlZChzcGluKSkgewo+ICAgCQkJdW5zaWduZWQgbG9uZyB0
ID0gaWd0X25zZWNfZWxhcHNlZCgmc3RhcnQpOwo+ICAgCj4gKwkJCWlndF9hc3NlcnQoZ2VtX2Jv
X2J1c3koZmQsIHNwaW4tPmhhbmRsZSkpOwo+ICAgCQkJaWYgKCh0IC0gdGltZW91dCkgPiAyNTBl
Nikgewo+ICAgCQkJCXRpbWVvdXQgPSB0Owo+ICAgCQkJCWlndF93YXJuKCJTcGlubmVyIG5vdCBy
dW5uaW5nIGFmdGVyICUuMmZtc1xuIiwKPiAgIAkJCQkJIChkb3VibGUpdCAvIDFlNik7ID4gKwkJ
CQlpZ3RfYXNzZXJ0KHQgPCAyZTkpOwo+ICAgCQkJfQo+ICAgCQl9Cj4gICAJfSBlbHNlIHsKPiBA
QCAtMjAyLDYgKzIwNCw3IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIF9fc3Bpbl93YWl0KGludCBm
ZCwgaWd0X3NwaW5fdCAqc3BpbikKPiAgIAkJdXNsZWVwKDUwMGUzKTsgLyogQmV0dGVyIHRoYW4g
bm90aGluZyEgKi8KPiAgIAl9Cj4gICAKPiArCWlndF9hc3NlcnQoZ2VtX2JvX2J1c3koZmQsIHNw
aW4tPmhhbmRsZSkpOwo+ICAgCXJldHVybiBpZ3RfbnNlY19lbGFwc2VkKCZzdGFydCk7Cj4gICB9
Cj4gICAKPiAKClRoZSAycyB0aW1lb3V0IGZvciBiYXRjaCB0byBzdGFydCBleGVjdXRpbmcgc291
bmRzIG9rYXkuCgpJJ2QgcHVsbCB1cCBhbmQgY29uc29saWRhdGUgdGhlIGJvX2J1c3kgY2hlY2tz
IGludG8gb25lIGF0IHRoZSB0b3Agb2YgCnRoZSBmdW5jdGlvbiwgc2luY2UgaXQgaXMgb25seSB0
ZWxsaW5nIHVzIGJhdGNoIGhhcyBiZWVuIHN1Ym1pdHRlZC4gT3IgCnlvdSBhcmUgdGhpbmtpbmcg
dGhlIHNlY29uZCBjaGVjayBicmluZ3MgdmFsdWUgaW4gY2hlY2tpbmcgYmF0Y2ggaXMgCnN0aWxs
IGV4ZWN1dGluZywgaGFzbid0IGZhaWxlZCBvciBzb21ldGhpbmc/CgpSZXZpZXdlZC1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
