Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26617EDBC2
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 10:39:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881F36E22C;
	Mon,  4 Nov 2019 09:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513706E229;
 Mon,  4 Nov 2019 09:39:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 01:39:42 -0800
X-IronPort-AV: E=Sophos;i="5.68,266,1569308400"; d="scan'208";a="195403960"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 01:39:39 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Mon, 04 Nov 2019 10:39:32 +0100
Message-ID: <1691851.FHYvApHjdp@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157260133827.17607.5789158431345901627@skylake-alporthouse-com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-5-janusz.krzysztofik@linux.intel.com>
 <157260133827.17607.5789158431345901627@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 4/4] tests/gem_ctx_shared:
 Align objects using minimum GTT alignment
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBGcmlkYXksIE5vdmVtYmVyIDEsIDIwMTkgMTA6NDI6MTggQU0gQ0VUIENo
cmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIEphbnVzeiBLcnp5c3p0b2ZpayAoMjAxOS0xMC0z
MSAxNToyODo1NykKPiA+IGV4ZWMtc2hhcmVkLWd0dC0qIHN1YnRlc3RzIHVzZSBoYXJkY29kZWQg
dmFsdWVzIGZvciBvYmplY3Qgc2l6ZSBhbmQKPiA+IHNvZnRwaW4gb2Zmc2V0LCBiYXNlZCBvbiA0
a0IgR1RUIGFsaWdubWVudCBhc3N1bXB0aW9uLiAgVGhhdCBtYXkgcmVzdWx0Cj4gPiBpbiB0aG9z
ZSBzdWJ0ZXN0cyBmYWlsaW5nIHdoZW4gcnVuIG9uIGZ1dHVyZSBiYWNraW5nIHN0b3JlcyB3aXRo
Cj4gPiBwb3NzaWJseSBsYXJnZXIgbWluaW11bSBwYWdlIHNpemVzLgo+ID4gCj4gPiBSZXBsYWNl
IGhhcmRjb2RlZCBjb25zdGFudHMgd2l0aCB2YWx1ZXMgY2FsY3VsYXRlZCBmcm9tIG1pbmltdW0g
R1RUCj4gPiBhbGlnbm1lbnQgb2YgYWN0dWFsIGJhY2tpbmcgc3RvcmUgdGhlIHRlc3QgaXMgcnVu
bmluZyBvbi4KPiA+IAo+ID4gdjI6IFVwZGF0ZSBoZWxwZXIgbmFtZSwgdXNlICdtaW5pbXVtIEdU
VCBhbGlnbm1lbnQnIHRlcm0gYWNyb3NzIHRoZQo+ID4gICAgIGNoYW5nZSwgYWRqdXN0IHZhcmlh
YmxlIG5hbWUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFu
dXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gIHRlc3RzL2k5MTUvZ2VtX2N0eF9z
aGFyZWQuYyB8IDYgKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9z
aGFyZWQuYyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwo+ID4gaW5kZXggNmQ4Y2JjY2Uu
LjFlOWM3Zjc4IDEwMDY0NAo+ID4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCj4g
PiArKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKPiA+IEBAIC0xOTUsNiArMTk1LDcg
QEAgc3RhdGljIHZvaWQgZXhlY19zaGFyZWRfZ3R0KGludCBpOTE1LCB1bnNpZ25lZCBpbnQgCnJp
bmcpCj4gPiAgICAgICAgIHVpbnQzMl90IHNjcmF0Y2gsICpzOwo+ID4gICAgICAgICB1aW50MzJf
dCBiYXRjaCwgY3NbMTZdOwo+ID4gICAgICAgICB1aW50NjRfdCBvZmZzZXQ7Cj4gPiArICAgICAg
IHVpbnQ2NF90IGFsaWdubWVudDsKPiA+ICAgICAgICAgaW50IGk7Cj4gPiAgCj4gPiAgICAgICAg
IGdlbV9yZXF1aXJlX3JpbmcoaTkxNSwgcmluZyk7Cj4gPiBAQCAtMjAzLDcgKzIwNCw4IEBAIHN0
YXRpYyB2b2lkIGV4ZWNfc2hhcmVkX2d0dChpbnQgaTkxNSwgdW5zaWduZWQgaW50IApyaW5nKQo+
ID4gICAgICAgICBjbG9uZSA9IGdlbV9jb250ZXh0X2Nsb25lKGk5MTUsIDAsIEk5MTVfQ09OVEVY
VF9DTE9ORV9WTSwgMCk7Cj4gPiAgCj4gPiAgICAgICAgIC8qIEZpbmQgYSBob2xlIGJpZyBlbm91
Z2ggZm9yIGJvdGggb2JqZWN0cyBsYXRlciAqLwo+ID4gLSAgICAgICBzY3JhdGNoID0gZ2VtX2Ny
ZWF0ZShpOTE1LCAxNjM4NCk7Cj4gPiArICAgICAgIGFsaWdubWVudCA9IDIgKiBnZW1fZ3R0X21p
bl9hbGlnbm1lbnQoaTkxNSk7CgphbGlnbm1lbnQgPSBvbmUgcGFnZSBmb3IgYW4gb2JqZWN0ICsg
b25lIHBhZ2UgZm9yIHN0cmlkZQoKPiA+ICsgICAgICAgc2NyYXRjaCA9IGdlbV9jcmVhdGUoaTkx
NSwgMiAqIGFsaWdubWVudCk7CgpzcGFjZSByZXNlcnZlZCA9IDIgKiAob25lIHBhZ2UgZm9yIGFu
IG9iamVjdCArIG9uZSBwYWdlIGZvciBzdHJpZGUpCgo+ID4gICAgICAgICBnZW1fd3JpdGUoaTkx
NSwgc2NyYXRjaCwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwo+ID4gICAgICAgICBvYmouaGFuZGxl
ID0gc2NyYXRjaDsKPiA+ICAgICAgICAgZ2VtX2V4ZWNidWYoaTkxNSwgJmV4ZWNidWYpOwo+ID4g
QEAgLTI0Niw3ICsyNDgsNyBAQCBzdGF0aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUs
IHVuc2lnbmVkIGludCAKcmluZykKPiA+ICAgICAgICAgZ2VtX3dyaXRlKGk5MTUsIGJhdGNoLCAw
LCBjcywgc2l6ZW9mKGNzKSk7Cj4gPiAgCj4gPiAgICAgICAgIG9iai5oYW5kbGUgPSBiYXRjaDsK
PiA+IC0gICAgICAgb2JqLm9mZnNldCArPSA4MTkyOyAvKiBtYWtlIHN1cmUgd2UgZG9uJ3QgY2F1
c2UgYW4gZXZpY3Rpb24hICovCj4gPiArICAgICAgIG9iai5vZmZzZXQgKz0gYWxpZ25tZW50OyAv
KiBtYWtlIHN1cmUgd2UgZG9uJ3QgY2F1c2UgYW4gZXZpY3Rpb24hIAoqLwoKb2Zmc2V0ICs9IChv
bmUgcGFnZSBmb3IgYW4gb2JqZWN0ICsgb25lIHBhZ2UgZm9yIHN0cmlkZSkKCj4gSXQncyAnc3Ry
aWRlJyBoZXJlLiBJdCdzIGxlYXZpbmcgYSBndWFyZCBwYWdlIGluIGJldHdlZW4sIGp1c3QgaW4g
Y2FzZQo+IHBhZ2UgY29sb3JpbmcgZGVtYW5kcyBpdC4KCkFzc3VtaW5nIEkgY29ycmVjdGx5IHVu
ZGVyc3Rvb2QgdGhlIGludGVudGlvbnMgaGVyZSBidXQgbXkgaW1wbGVtZW50YXRpb24gCmlzIG5v
dCByZWFkYWJsZSBjbGVhcmx5IGVub3VnaCwgaG93IGRvIHlvdSB0aGluayB0aGlzIHNob3VsZCBi
ZSBmaXhlZD8gIEhvdyAKYWJvdXQgYSBjb21tZW50ICcvKiBvbmUgcGFnZSBmb3IgYW4gb2JqZWN0
ICsgb25lIHBhZ2UgZm9yIHN0cmlkZSAqLycgYWJvdmUgdGhlIApsaW5lIHdoZXJlIHRoZSAnYWxp
Z25tZW50JyB2YXJpYWJsZSBpcyBhc3NpZ25lZCB0aGUgdmFsdWUgb2YgMiAqIG1pbmltdW0gR1RU
IAphbGlnbm1lbnQ/CgpUaGFua3MsCkphbnVzegoKPiAtQ2hyaXMKPiAKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
