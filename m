Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF498011A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 21:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A4556E588;
	Fri,  2 Aug 2019 19:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4466E588
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 19:40:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17825846-1500050 for multiple; Fri, 02 Aug 2019 20:40:10 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190802184055.31988-4-michal.wajdeczko@intel.com>
References: <20190802184055.31988-1-michal.wajdeczko@intel.com>
 <20190802184055.31988-4-michal.wajdeczko@intel.com>
Message-ID: <156477480859.6598.13656427963612267074@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 02 Aug 2019 20:40:08 +0100
Subject: Re: [Intel-gfx] [PATCH v7 3/6] drm/i915/uc: Reorder firmware status
 codes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTAyIDE5OjQwOjUyKQo+IE9uIEdlbjkg
d2hlbiB3ZSB0cnkgdG8gcmVsb2FkIEh1QyBkdWUgdG8gR3VDIHVwbG9hZCBlcnJvciwgd2UgaGl0
Ogo+IAo+IDw3PiBbMjMyLjAyNTkyN10gW2RybTppbnRlbF91Y19pbml0X2h3IFtpOTE1XV0gR3VD
IGZ3IGxvYWQgZmFpbGVkOiAtODsgd2lsbCByZXNldCBhbmQgcmV0cnkgMiBtb3JlIHRpbWUocykK
PiA8Nz4gWzIzMi4wMjYwMDRdIFtkcm06aW50ZWxfdWNfZndfdXBsb2FkIFtpOTE1XV0gSHVDIGZ3
IGxvYWQgaTkxNS9rYmxfaHVjX3ZlcjAyXzAwXzE4MTAuYmluCj4gPDc+IFsyMzIuMDI2Njg2XSBb
ZHJtOmludGVsX3VjX2Z3X3VwbG9hZCBbaTkxNV1dIEh1QyBmdyB4ZmVyIGNvbXBsZXRlZAo+IDw2
PiBbMjMyLjAyNjY4OF0gW2RybV0gSHVDOiBMb2FkZWQgZmlybXdhcmUgaTkxNS9rYmxfaHVjX3Zl
cjAyXzAwXzE4MTAuYmluICh2ZXJzaW9uIDIuMCkKPiA8Mz4gWzIzMi4wMjY3MDNdIGludGVsX3Vj
X2Z3X2NvcHlfcnNhOjU0MSBHRU1fQlVHX09OKCFpbnRlbF91Y19md19pc19hdmFpbGFibGUodWNf
ZncpKQo+IAo+IGFzIGZpcm13YXJlIHRoYXQgcHJldmlvdXNseSBmYWlsZWQgdG8gbG9hZCB3YXMg
d3JvbmdseSB0cmVhdGVkIGFzCj4gdW5hdmFpbGFibGUgc2luY2UgaXRzIHN0YXR1cyBjb2RlIHdh
cyBub3QgbWF0Y2hpbmcgc3RhdHVzIGNoZWNrIGxvZ2ljLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCB8IDE0ICsrKysrKystLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCj4gaW5kZXggNmI2NGI4MDczNzAzLi5i
ZmUzNjE0NjEzYjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmgKPiBAQCAtMzcsMTIgKzM3LDEyIEBAIHN0cnVjdCBpbnRlbF9ndDsKPiAgI2RlZmluZSBJTlRF
TF9VQ19GSVJNV0FSRV9VUkwgImh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2Zpcm13YXJlL2xpbnV4LWZpcm13YXJlLmdpdC90cmVlL2k5MTUiCgpEbyB5b3Ug
aGF2ZSB0byBoYXZlIHNvbWUgY29tbWVudHMgaGVyZSBvbiB0aGUgb3JkZXJpbmcgcnVsZT8KCj4g
IGVudW0gaW50ZWxfdWNfZndfc3RhdHVzIHsKPiAtICAgICAgIElOVEVMX1VDX0ZJUk1XQVJFX0ZB
SUwgPSAtMywgLyogZmFpbGVkIHRvIHhmZXIgb3IgaW5pdC9hdXRoIHRoZSBmdyAqLwo+IC0gICAg
ICAgSU5URUxfVUNfRklSTVdBUkVfTUlTU0lORyA9IC0yLCAvKiBibG9iIG5vdCBmb3VuZCBvbiB0
aGUgc3lzdGVtICovCj4gLSAgICAgICBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9SVEVEID0g
LTEsIC8qIG5vIHVjIEhXICovCj4gKyAgICAgICBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9S
VEVEID0gLTEsIC8qIG5vIHVjIEhXIG9yIGRpc2FibGVkICovCj4gICAgICAgICBJTlRFTF9VQ19G
SVJNV0FSRV9VTklOSVRJQUxJWkVEID0gMCwgLyogdXNlZCB0byBjYXRjaCBjaGVja3MgZG9uZSB0
b28gZWFybHkgKi8KPiAgICAgICAgIElOVEVMX1VDX0ZJUk1XQVJFX1NFTEVDVEVELCAvKiBzZWxl
Y3RlZCB0aGUgYmxvYiB3ZSB3YW50IHRvIGxvYWQgKi8KPiArICAgICAgIElOVEVMX1VDX0ZJUk1X
QVJFX01JU1NJTkcsIC8qIGJsb2Igbm90IGZvdW5kIG9uIHRoZSBzeXN0ZW0gKi8KCi8qIEFsbCBv
bndhcmRzIGFyZSBpbnRlbF91Y19md19pc19hdmFpbGFibGUoKSAqLwo+ICAgICAgICAgSU5URUxf
VUNfRklSTVdBUkVfQVZBSUxBQkxFLCAvKiBibG9iIGZvdW5kIGFuZCBjb3BpZWQgaW4gbWVtICov
Cj4gKyAgICAgICBJTlRFTF9VQ19GSVJNV0FSRV9GQUlMLCAvKiBmYWlsZWQgdG8geGZlciBvciBp
bml0L2F1dGggdGhlIGZ3ICovCgovKiBBbGwgb253YXJkcyBhcmUgaW50ZWxfdWNfZndfaXNfbG9h
ZGVkKCkgKi8KPiAgICAgICAgIElOVEVMX1VDX0ZJUk1XQVJFX1RSQU5TRkVSUkVELCAvKiBkbWEg
eGZlciBkb25lICovCj4gICAgICAgICBJTlRFTF9VQ19GSVJNV0FSRV9SVU5OSU5HIC8qIGluaXQv
YXV0aCBkb25lICovCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
