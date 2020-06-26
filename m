Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FE220AE87
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 10:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B86066EC3C;
	Fri, 26 Jun 2020 08:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C7C56E4B6;
 Fri, 26 Jun 2020 08:51:31 +0000 (UTC)
IronPort-SDR: XOkca1yEvQrCNHxdLpegz9eXO0+CZwxxDnHdSUhs0rbdG77CKDDdkZFh2limFtMy72rWEtrn1z
 rFGuUarnCpkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="124894637"
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="124894637"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 01:51:30 -0700
IronPort-SDR: bFJFPCXy/2RpH/Epw+qebK//vGnghRnce3mLDUnXCAe+CX/MyAcnjIxQKVpEOxp+IKsP80Ew6r
 jf7WA6ASSvgg==
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="424016802"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 01:51:28 -0700
Message-ID: <b5710b0e9e4fdfe78a2def1e79ac977c936cefdb.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: =?UTF-8?Q?Micha=C5=82?= Winiarski <michal@hardline.pl>, 
 igt-dev@lists.freedesktop.org
Date: Fri, 26 Jun 2020 10:51:26 +0200
In-Reply-To: <159311533123.202818.8673731295694520597@macragge.hardline.pl>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-9-janusz.krzysztofik@linux.intel.com>
 <159311533123.202818.8673731295694520597@macragge.hardline.pl>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2 8/8] tests/core_hotunplug: Add
 'GEM batch' variant
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWljaGHFgiwKCk9uIFRodSwgMjAyMC0wNi0yNSBhdCAyMjowMiArMDIwMCwgTWljaGHFgiBX
aW5pYXJza2kgd3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIg
MTg6NDQ6MTUpCj4gPiBWZXJpZnkgaWYgYSBkZXZpY2Ugd2l0aCBhIEdFTSBiYXRjaCBqb2Igc3Rp
bGwgcnVubmluZyBvbiBhIEdQVSBjYW4gYmUKPiA+IGhvdC11bnBsdWdnZWQgY2xlYW5seSBhbmQg
cmVsZWFzZWQsIHRoZW4gcmVjb3ZlcmVkLgo+ID4gCj4gPiB2MjogcmViYXNlIG9uIHVwc3RyZWFt
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6Lmtyenlz
enRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIHRlc3RzL2NvcmVfaG90dW5wbHVn
LmMgfCAzNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDM0IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVf
aG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCj4gPiBpbmRleCA3Y2I2OTljYzIu
LjY3MmZmNjYxZCAxMDA2NDQKPiA+IC0tLSBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiA+ICsr
KyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiA+IEBAIC0zMyw2ICszMyw3IEBACj4gPiAgI2lu
Y2x1ZGUgImk5MTUvZ2VtX3ZtLmgiCj4gPiAgI2luY2x1ZGUgImlndC5oIgo+ID4gICNpbmNsdWRl
ICJpZ3RfZGV2aWNlX3NjYW4uaCIKPiA+ICsjaW5jbHVkZSAiaWd0X2R1bW15bG9hZC5oIgo+ID4g
ICNpbmNsdWRlICJpZ3Rfa21vZC5oIgo+ID4gICNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKPiA+ICAK
PiA+IEBAIC00MDgsNiArNDA5LDMyIEBAIHN0YXRpYyB2b2lkIHByaW1lX2hvdHVucGx1Z19sYXRl
Y2xvc2Uodm9pZCkKPiA+ICAgICAgICAgaGVhbHRoY2hlY2soKTsKPiA+ICB9Cj4gPiAgCj4gPiAr
c3RhdGljIHZvaWQgYmF0Y2hfaG90dW5wbHVnX2xhdGVjbG9zZSh2b2lkKQo+ID4gK3sKPiA+ICsg
ICAgICAgc3RydWN0IGhvdHVucGx1ZyBwcml2Owo+ID4gKyAgICAgICBpZ3Rfc3Bpbl90ICpzcGlu
Owo+ID4gKwo+ID4gKyAgICAgICBwcmVwYXJlX2Zvcl9yZXNjYW4oJnByaXYpOwo+ID4gKwo+ID4g
KyAgICAgICBpZ3RfcmVxdWlyZV9nZW0ocHJpdi5mZC5kcm0pOwo+ID4gKwo+ID4gKyAgICAgICBs
b2NhbF9kZWJ1ZygicnVubmluZyBkdW1teSBsb2FkIik7Cj4gPiArICAgICAgIHNwaW4gPSBfX2ln
dF9zcGluX25ldyhwcml2LmZkLmRybSwgLmZsYWdzID0gSUdUX1NQSU5fUE9MTF9SVU4gfAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElHVF9T
UElOX05PX1BSRUVNUFRJT04pOwo+IAo+IERvIHdlIG5lZWQgSUdUX1NQSU5fTk9fUFJFRU1QVElP
TiBoZXJlPwoKQXNzdW1pbmcgbXkgdW5kZXJzdGFuZGluZyBvZiBJR1RfU1BJTl9OT19QUkVFTVBU
SU9OIHdhcyBjb3JyZWN0LCBteQppbnRlbnRpb24gd2FzIHRvIGV4ZXJjaXNlIHRoZSBkcml2ZXIn
cyBhYmlsaXR5IHRvIGNhbmNlbCBwZXJzaXN0ZW50IEdQVQp0YXNrcyBvbiBob3R1bnBsdWcgYW5k
IGNsZWFuIHVwIHRoZWlyIGFzc29jaWF0ZWQgcmVzb3VyY2VzIG9uIHRpbWUgaW4Kb3JkZXIgdG8g
YXZvaWQgbGF0ZSBkbWFfdW5tYXAgaXNzdWVzLiAgUGxlYXNlIGFkdmlzZSBpZiB5b3Ugc3RpbGwg
dGhpbmsKdGhpcyB0aGlzIGZsYWcgbm90IG5lZWRlZC4KCj4gV2UncmUgYWxzbyBsZWFraW5nIHNw
aW4gaGVyZS4uLiBBbmQgSSBkb24ndCB0aGluayB3ZSBjYW4ganVzdCBjYWxsIGlndF9zcGluX2Zy
ZWUKPiBhZnRlciB1bnBsdWcsIGNhbiB3ZT8KCklmIHlvdSBtZWFuIG1lbW9yeSBvY2N1cGllZCBi
eSB0aGUgc3BpbiBzdHJ1Y3R1cmUsIEkga25vdyBsZWFraW5nIGl0Cmxvb2tzIGJhZCBidXQgSSB0
aGluayB0aGF0IHNob3VsZG4ndCBiZSBhIHByb2JsZW0gaW4gYSB1c2VyIHNwYWNlCnByb2Nlc3Mg
dGhhdCBpcyBnb2luZyB0byBleGl0IHNvb24uICBCdXQgYXl3YXksIGxldCBtZSB0cnkgd2hhdCBo
YXBwZW5zCm9uIGxhdGUgaWd0X3NwaW5fZnJlZSBhdHRlbXB0LgoKVGhhbmtzLApKYW51c3oKCj4g
Cj4gLU1pY2hhxYIKPiAKPiA+ICsgICAgICAgaWd0X3NwaW5fYnVzeXdhaXRfdW50aWxfc3RhcnRl
ZChzcGluKTsKPiA+ICsKPiA+ICsgICAgICAgbG9jYWxfZGVidWcoImhvdCB1bnBsdWdnaW5nIHRo
ZSBkZXZpY2UiKTsKPiA+ICsgICAgICAgZGV2aWNlX3VucGx1Zyhwcml2LmZkLnN5c2ZzX2Rldik7
Cj4gPiArCj4gPiArICAgICAgIGxvY2FsX2RlYnVnKCJsYXRlIGNsb3NpbmcgdGhlIHJlbW92ZWQg
ZGV2aWNlIGluc3RhbmNlIik7Cj4gPiArICAgICAgIGNsb3NlKHByaXYuZmQuZHJtKTsKPiA+ICsK
PiA+ICsgICAgICAgbG9jYWxfZGVidWcoInJlY292ZXJpbmcgdGhlIGRldmljZSIpOwo+ID4gKyAg
ICAgICBidXNfcmVzY2FuKHByaXYuZmQuc3lzZnNfYnVzKTsKPiA+ICsKPiA+ICsgICAgICAgaGVh
bHRoY2hlY2soKTsKPiA+ICt9Cj4gPiArCj4gPiAgLyogTWFpbiAqLwo+ID4gIAo+ID4gIGlndF9t
YWluCj4gPiBAQCAtNTAxLDQgKzUyOCwxMSBAQCBpZ3RfbWFpbgo+ID4gIAo+ID4gICAgICAgICBp
Z3RfZml4dHVyZQo+ID4gICAgICAgICAgICAgICAgIGlndF9hYm9ydF9vbl9mKGZhaWx1cmUsICIl
c1xuIiwgZmFpbHVyZSk7Cj4gPiArCj4gPiArICAgICAgIGlndF9kZXNjcmliZSgiQ2hlY2sgaWYg
YSBkZXZpY2Ugd2l0aCBhIHN0aWxsIHJ1bm5pbmcgYmF0Y2ggY2FuIGJlIGNsZWFubHkgdW5wbHVn
Z2VkLCB0aGVuIHJlbGVhc2VkIGFuZCByZWNvdmVyZWQiKTsKPiA+ICsgICAgICAgaWd0X3N1YnRl
c3QoImJhdGNoLWhvdHVucGx1Zy1sYXRlY2xvc2UiKQo+ID4gKyAgICAgICAgICAgICAgIGJhdGNo
X2hvdHVucGx1Z19sYXRlY2xvc2UoKTsKPiA+ICsKPiA+ICsgICAgICAgaWd0X2ZpeHR1cmUKPiA+
ICsgICAgICAgICAgICAgICBpZ3RfYWJvcnRfb25fZihmYWlsdXJlLCAiJXNcbiIsIGZhaWx1cmUp
Owo+ID4gIH0KPiA+IC0tIAo+ID4gMi4yMS4xCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
