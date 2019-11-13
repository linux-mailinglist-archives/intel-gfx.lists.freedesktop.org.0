Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85311FB63B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 18:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA5856EDB2;
	Wed, 13 Nov 2019 17:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 595AC6ED8F;
 Wed, 13 Nov 2019 17:19:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 09:19:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="202801387"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 13 Nov 2019 09:19:17 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 69D3D5C1DD7; Wed, 13 Nov 2019 19:19:06 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157366095141.22201.144353485906370147@skylake-alporthouse-com>
References: <20191113154913.8787-1-mika.kuoppala@linux.intel.com>
 <20191113154913.8787-2-mika.kuoppala@linux.intel.com>
 <157366095141.22201.144353485906370147@skylake-alporthouse-com>
Date: Wed, 13 Nov 2019 19:19:06 +0200
Message-ID: <87lfsj7kz9.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/7] igt: Use COND_BBEND for
 busy spinning on gen9
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
Cc: igt-dev@lists.freedesktop.org, Joonas Lahtinen <joonas.lahtinen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTEzIDE1OjQ5OjA4KQo+PiBGcm9tOiBKb24gQmxvb21m
aWVsZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgo+PiAKPj4gZ2VuOSsgaW50cm9kdWNlcyBh
IGNtZHBhcnNlciBmb3IgdGhlIEJMVCBlbmdpbmUgd2hpY2ggY29waWVzIHRoZQo+PiBpbmNvbWlu
ZyBCQiB0byBhIGttZCBvd25lZCBidWZmZXIgZm9yIHN1Ym1pc3Npb24gKHRvIHByZXZlbnQgY2hh
bmdlcwo+PiBiZWluZyBtYWRlIGFmdGVyIHRoZSBiYiBoYXMgYmVlbiBzYWZlbHkgc2Nhbm5lZCku
IFRoaXMgYnJlYWtzIHRoZQo+PiBzcGluIGZ1bmN0aW9uYWxpdHkgYmVjYXVzZSBpdCByZWxpZXMg
b24gY2hhbmdpbmcgdGhlIHN1Ym1pdHRlZCBzcGluCj4+IGJ1ZmZlcnMgaW4gb3JkZXIgdG8gdGVy
bWluYXRlIHRoZW0uCj4+IAo+PiBJbnN0ZWFkLCBmb3IgZ2VuOSssIHdlIGNoYW5nZSB0aGUgc2Vt
YW50aWNzIGJ5IGludHJvZHVjaW5nIGEgQ09ORF9CQl9FTkQKPj4gaW50byB0aGUgaW5maW5pdGUg
bG9vcCwgdG8gd2FpdCB1bnRpbCBhIG1lbW9yeSBmbGFnIChpbiBhbm90aGUgYm8pIGlzCj4+IGNs
ZWFyZWQuCj4+IAo+PiB2MjogQ29ycmVjdCBub3AgbGVuZ3RoIHRvIGF2b2lkIG92ZXJ3cml0aW5n
IGJiX2VuZCBpbnN0ciB3aGVuIHVzaW5nCj4+ICAgICBhIGRlcGVuZGVuY3kgYm8gKGNvcmspCj4+
IHYzOiBmaXggY29uZmxpY3RzIG9uIGlndF9kdW1teWxvYWQgKE1pa2EpCj4+IHY0OiBzL2Jvb2wg
cnVubmluZy91aW50MzJfdCBydW5uaW5nLCBmaXggci0+ZGVsdGEgKE1pa2EpCj4+IHY1OiByZW1v
dmUgb3ZlcnplYWxvdXMgYXNzZXJ0IChNaWthKQo+PiB2NjogcmViYXNlIG9uIHRvcCBvZiBsaWIg
Y2hhbmdlcyAoTWlrYSkKPj4gdjc6IHJld29yayBvbiB0b3Agb2YgcHVibGljIGlndCBsaWIgY2hh
bmdlcyAoTWlrYSkKPj4gdjg6IHJlYmFzZQo+PiAKPj4gU2lnbmVkLW9mZi1ieTogSm9uIEJsb29t
ZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4gKHYyKQo+PiBDYzogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AaW50ZWwuY29tPgo+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPgo+PiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBp
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFA
bGludXguaW50ZWwuY29tPgo+PiAtLS0KPj4gIGxpYi9pODMwX3JlZy5oICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAyICstCj4+ICBsaWIvaWd0X2R1bW15bG9hZC5jICAgICAgICAgICAgICAg
ICAgICAgfCA0NiArKysrKysrKysrKysrKysrKysrKysrKy0tCj4+ICBsaWIvaWd0X2R1bW15bG9h
ZC5oICAgICAgICAgICAgICAgICAgICAgfCAgMyArKwo+PiAgbGliL2ludGVsX3JlZy5oICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDMgKysKPj4gIHRlc3RzL2k5MTUvZ2VtX2RvdWJsZV9pcnFf
bG9vcC5jICAgICAgICB8ICAyIC0tCj4+ICB0ZXN0cy9pOTE1L2dlbV93cml0ZV9yZWFkX3Jpbmdf
c3dpdGNoLmMgfCAgMiArLQo+PiAgNiBmaWxlcyBjaGFuZ2VkLCA1MiBpbnNlcnRpb25zKCspLCA2
IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2xpYi9pODMwX3JlZy5oIGIvbGliL2k4
MzBfcmVnLmgKPj4gaW5kZXggYTU3NjkxYzcuLjQxMDIwMjU2IDEwMDY0NAo+PiAtLS0gYS9saWIv
aTgzMF9yZWcuaAo+PiArKysgYi9saWIvaTgzMF9yZWcuaAo+PiBAQCAtNDMsNyArNDMsNyBAQAo+
PiAgLyogYnJvYWR3YXRlciBmbHVzaCBiaXRzICovCj4+ICAjZGVmaW5lIEJSV19NSV9HTE9CQUxf
U05BUFNIT1RfUkVTRVQgICAoMSA8PCAzKQo+PiAgCj4+IC0jZGVmaW5lIE1JX0NPTkRfQkFUQ0hf
QlVGRkVSX0VORCAgICAgICAoMHgzNjw8MjMgfCAxKQo+PiArI2RlZmluZSBNSV9DT05EX0JBVENI
X0JVRkZFUl9FTkQgICAgICAgKDB4MzYgPDwgMjMpCj4+ICAjZGVmaW5lIE1JX0RPX0NPTVBBUkUg
ICAgICAgICAgICAgICAgICAoMTw8MjEpCj4+ICAKPj4gICNkZWZpbmUgTUlfQkFUQ0hfQlVGRkVS
X0VORCAgICAoMHhBIDw8IDIzKQo+PiBkaWZmIC0tZ2l0IGEvbGliL2lndF9kdW1teWxvYWQuYyBi
L2xpYi9pZ3RfZHVtbXlsb2FkLmMKPj4gaW5kZXggYzA3OWJkMDQuLmE4OGM4NTgyIDEwMDY0NAo+
PiAtLS0gYS9saWIvaWd0X2R1bW15bG9hZC5jCj4+ICsrKyBiL2xpYi9pZ3RfZHVtbXlsb2FkLmMK
Pj4gQEAgLTEzMCw3ICsxMzAsMTUgQEAgZW1pdF9yZWN1cnNpdmVfYmF0Y2goaWd0X3NwaW5fdCAq
c3BpbiwKPj4gICAgICAgICBzcGluLT5wb2xsX2hhbmRsZSA9IHBvbGwtPmhhbmRsZTsKPj4gICAg
ICAgICBleGVjYnVmLT5idWZmZXJfY291bnQrKzsKPj4gIAo+PiAtICAgICAgIGlmIChvcHRzLT5m
bGFncyAmIElHVF9TUElOX1BPTExfUlVOKSB7Cj4+ICsgICAgICAgLyoKPj4gKyAgICAgICAgKiBG
b3IgZ2VuOSsgd2UgdXNlIGEgY29uZGl0aW9uYWwgbG9vcCByYXRoZXIgdGhhbiBhbgo+PiArICAg
ICAgICAqIGluZmluaXRlIGxvb3AsIGJlY2F1c2Ugd2UgYXJlIHVuYWJsZSB0byBtb2RpZnkgdGhl
Cj4+ICsgICAgICAgICogQkIncyBvbmNlIHRoZXkgaGF2ZSBiZWVuIHNjYW5uZWQgYnkgdGhlIGNt
ZHBhcnNlcgo+PiArICAgICAgICAqIFdlIHNoYXJlIHRoZSBwb2xsIGJ1ZmZlciBmb3IgdGhlIGNv
bmRpdGlvbmFsIHRlc3QKPj4gKyAgICAgICAgKiBhbmQgaXMgYWx3YXlzIHRoZSBmaXJzdCBidWZm
ZXIgaW4gdGhlIGJhdGNoIGxpc3QKPj4gKyAgICAgICAgKi8KPj4gKwo+PiArICAgICAgIGlmIChn
ZW4gPj0gOSB8fCAob3B0cy0+ZmxhZ3MgJiBJR1RfU1BJTl9QT0xMX1JVTikpIHsKPgo+IE5haCwg
eW91IGNvdWxkIGp1c3Qgc2FtcGxlIHRoZSBiYXRjaCBidWZmZXIgcmF0aGVyIHRoYW4gYWx3YXlz
IGFkZGluZwo+IHRoZSBwb2xsIGJ1ZmZlciAoc2luY2UgdGhlIGNtZHBhcnNlciBpbXBsaWNpdGx5
IGNyZWF0ZXMgdGhlIHNlY29uZCBidWZmZXIKPiBmb3IgeW91KS4gVXNpbmcgdGhlIGNvbXBhcmlz
b24gdmFsdWUgb2YgTUlfQkFUQ0hfQlVGRkVSX0VORCB5b3Ugd291bGRuJ3QKPiBldmVuIGhhdmUg
dG8gd29ycnkgYWJvdXQgYWx0ZXJpbmcgY2FsbGVycy4KClRoYXQgaXMgYSBuZWF0IHRyaWNrISBi
YiBzdGFydCBpcyBncmVhdGVyIHRoYW4gYmIgZW5kIHNvCndlIGhhdmUgdGhhdCBvcHBvcnR1bml0
eS4gTWlnaHQgbGVhZCBhbHNvIHRvIG11Y2ggbGVzcyBmaXhpbmcKb24gbXV0YWJsZXMuCgotTWlr
YQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
