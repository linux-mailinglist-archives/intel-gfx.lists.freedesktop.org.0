Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9959217B32
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 16:00:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29928912C;
	Wed,  8 May 2019 14:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE4D8912C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 14:00:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 07:00:53 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga007.fm.intel.com with ESMTP; 08 May 2019 07:00:52 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 593235C0810; Wed,  8 May 2019 17:00:11 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <155731921087.28545.15445835892642603065@skylake-alporthouse-com>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <87ftppdt6x.fsf@gaia.fi.intel.com>
 <155731921087.28545.15445835892642603065@skylake-alporthouse-com>
Date: Wed, 08 May 2019 17:00:11 +0300
Message-ID: <87d0ktdp1w.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/40] drm/i915/hangcheck: Replace
 hangcheck.seqno with RING_HEAD
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTA4IDEzOjMwOjQ2KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBBZnRlciByZWFsaXNpbmcg
d2UgbmVlZCB0byBzYW1wbGUgUklOR19TVEFSVCB0byBkZXRlY3QgY29udGV4dCBzd2l0Y2hlcwo+
PiA+IGZyb20gcHJlZW1wdGlvbiBldmVudHMgdGhhdCBkbyBub3QgYWxsb3cgZm9yIHRoZSBzZXFu
byB0byBhZHZhbmNlLCB3ZQo+PiA+IGNhbiBhbHNvIHJlYWxpc2UgdGhhdCB0aGUgc2Vxbm8gaXRz
ZWxmIGlzIGp1c3QgYSBkaXN0YW5jZSBhbG9uZyB0aGUgcmluZwo+PiA+IGFuZCBzbyBjYW4gYmUg
cmVwbGFjZWQgYnkgc2FtcGxpbmcgUklOR19IRUFELgo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+ID4gQ2M6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+PiA+IC0tLQo+PiA+ICBzdGF0
aWMgZW51bSBpbnRlbF9lbmdpbmVfaGFuZ2NoZWNrX2FjdGlvbgo+PiA+IEBAIC0xNTYsNyArMTU2
LDcgQEAgaGFuZ2NoZWNrX2dldF9hY3Rpb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
LAo+PiA+ICAgICAgIGlmIChlbmdpbmUtPmhhbmdjaGVjay5sYXN0X3JpbmcgIT0gaGMtPnJpbmcp
Cj4+ID4gICAgICAgICAgICAgICByZXR1cm4gRU5HSU5FX0FDVElWRV9TRVFOTzsKPj4gPiAgCj4+
ID4gLSAgICAgaWYgKGVuZ2luZS0+aGFuZ2NoZWNrLmxhc3Rfc2Vxbm8gIT0gaGMtPnNlcW5vKQo+
PiA+ICsgICAgIGlmIChlbmdpbmUtPmhhbmdjaGVjay5sYXN0X2hlYWQgIT0gaGMtPmhlYWQpCj4+
ID4gICAgICAgICAgICAgICByZXR1cm4gRU5HSU5FX0FDVElWRV9TRVFOTzsKPj4gCj4+IENoYW5n
ZSB0aGUgZW51bSBhbHNvPwo+Cj4gUGZmaWZsZS4gQXMgZmFyIGFzIGhhbmdjaGVjayBnb2VzIFJJ
TkdfU1RBUlQ6UklOR19IRUFEIGNvbXByaXNlIGl0cwo+IHNlcW5vLgo+Cj4gTWFrZXMgZm9yIGEg
Z29vZCB0YWxraW5nIHBvaW50IGluIGEgZmV3IHllYXJzIHRpbWUgOikKCkZhaXIgZW5vdWdoLgoK
Pgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+ID4gaW5kZXggZDFhNTRkMmMz
ZDVkLi5mMWQ2Mjc0NmUwNjYgMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+PiA+IEBAIC0yMjc1LDEyICsyMjc1LDYgQEAgc3RhdGljIHUzMiAqZ2VuOF9lbWl0X2Zp
bmlfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LCB1MzIgKmNzKQo+PiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVxdWVzdC0+dGltZWxpbmUtPmh3c3Bf
b2Zmc2V0LAo+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCk7Cj4+ID4gIAo+
PiA+IC0gICAgIGNzID0gZ2VuOF9lbWl0X2dndHRfd3JpdGUoY3MsCj4+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpbnRlbF9lbmdpbmVfbmV4dF9oYW5nY2hlY2tfc2Vxbm8ocmVx
dWVzdC0+ZW5naW5lKSwKPj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEk5MTVf
R0VNX0hXU19IQU5HQ0hFQ0tfQUREUiwKPj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIE1JX0ZMVVNIX0RXX1NUT1JFX0lOREVYKTsKPj4gPiAtCj4+ID4gLQo+PiA+ICAgICAgICpj
cysrID0gTUlfVVNFUl9JTlRFUlJVUFQ7Cj4+ID4gICAgICAgKmNzKysgPSBNSV9BUkJfT05fT0ZG
IHwgTUlfQVJCX0VOQUJMRTsKPj4gPiAgCj4+ID4gQEAgLTIyOTcsMTQgKzIyOTEsMTEgQEAgc3Rh
dGljIHUzMiAqZ2VuOF9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9yY3Moc3RydWN0IGk5MTVfcmVxdWVz
dCAqcmVxdWVzdCwgdTMyICpjcykKPj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZXF1ZXN0LT50aW1lbGluZS0+aHdzcF9vZmZzZXQsCj4+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FDSEVfRkxV
U0ggfAo+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJP
TF9ERVBUSF9DQUNIRV9GTFVTSCB8Cj4+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUElQRV9DT05UUk9MX0RDX0ZMVVNIX0VOQUJMRSB8Cj4+ID4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgUElQRV9DT05UUk9MX0ZMVVNIX0VOQUJMRSB8Cj4+ID4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUElQRV9DT05UUk9MX0NTX1NUQUxMKTsK
Pj4gCj4+ID8/Pwo+Cj4gS2FieWxha2Ugc2VuZHMgdGhlIGludGVycnVwdCB0b28gZWFybHkgb3Ro
ZXJ3aXNlLiBUaGUgaGFuZ2NoZWNrIHdyaXRlCj4gc2F2ZWQgdXMgYnkgcHVyZSBhY2NpZGVudC4K
CkkgcmVhZCB0aGUgZGlmZiB3cm9uZyBhdCBmaXJzdCB0cnkgYWxzbywgd2FzIGNvbmNlcm5lZCB0
aGF0IHdlIGxvc3QgY3Mgc3RhbGwuClJlZ2FyZGxlc3MgdGhpcyBjb3VsZCBiZW5lZml0IGZyb20g
YSBjb21tZW50IGV4cGxhaW5pbmcgdGhlIG5lZWQgdG8KZm9yY2Ugc3luYyBmb3IgdGhlIGludHIu
CgpXYXMgaGFwcHkgdG8gc2VlIG1lYXN1cmVfYnJlYWRjcnVtYl9kdygpIHBheWluZyBvZmYuIEFs
c28gbGVhbmluZyB0bwppdCBmb3IgYWxpZ25tZW50IGZvcmNpbmcuCgpSZXZpZXdlZC1ieTogTWlr
YSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
