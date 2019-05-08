Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC9F17B1E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 15:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D068889356;
	Wed,  8 May 2019 13:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8E189356
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 13:56:13 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 06:56:12 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 08 May 2019 06:56:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 May 2019 16:56:08 +0300
Date: Wed, 8 May 2019 16:56:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Shashank Sharma <shashank.sharma@intel.com>
Message-ID: <20190508135608.GV24299@intel.com>
References: <20190508120437.12339-1-shashank.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508120437.12339-1-shashank.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix skl plane scaling for planner
 YUV buffers
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
Cc: Lukas Rusak <lorusak@gmail.com>, intel-gfx@lists.freedesktop.org,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMDgsIDIwMTkgYXQgMDU6MzQ6MzdQTSArMDUzMCwgU2hhc2hhbmsgU2hhcm1h
IHdyb3RlOgo+IEZyb206IEx1a2FzIFJ1c2FrIDxsb3J1c2FrQGdtYWlsLmNvbT4KPiAKPiBQbGFu
ZSBzY2FsaW5nIGZvciBZVVYgcGxhbmFyIGZvcm1hdHMgc2hvdWxkIGJlIG1heCAyIHRpbWVzLgoK
Tm9wZS4gU3BlYyBzYXlzIGl0IHNob3VsZCBiZSA8IDIuMCBvbiBwcmUtZ2xrLCBhbmQgPCAzLjAg
b24gZ2xrKy4KCj4gCj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBp
bnRlbC5jb20+Cj4gQ2M6IEp1aGEtcGVra2EgSGVpa2tpbGEgPGp1aGEtcGVra2EuaGVpa2tpbGFA
aW50ZWwuY29tPgo+IENjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5j
b20+Cj4gCj4gU2lnbmVkLW9mZi1ieTogTHVrYXMgUnVzYWsgPGxvcnVzYWtAZ21haWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAxMyArKysrKysr
Ky0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IGEzNTFjOGUyMTli
YS4uMmFjMGE1NWE5YzlmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwo+
IEBAIC0xMzg5Nyw3ICsxMzg5Nyw3IEBAIHNrbF9tYXhfc2NhbGUoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIHsKPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
ID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwo+ICAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gLQlpbnQg
bWF4X3NjYWxlLCBtdWx0Owo+ICsJaW50IG1heF9zY2FsZSwgbXVsdCwgcmVtYWluZGVyOwo+ICAJ
aW50IGNydGNfY2xvY2ssIG1heF9kb3RjbGssIHRtcGNsazEsIHRtcGNsazI7Cj4gIAo+ICAJaWYg
KCFjcnRjX3N0YXRlLT5iYXNlLmVuYWJsZSkKPiBAQCAtMTM5MTQsMTIgKzEzOTE0LDE1IEBAIHNr
bF9tYXhfc2NhbGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4g
IAo+ICAJLyoKPiAgCSAqIHNrbCBtYXggc2NhbGUgaXMgbG93ZXIgb2Y6Cj4gLQkgKiAgICBjbG9z
ZSB0byAzIGJ1dCBub3QgMywgLTEgaXMgZm9yIHRoYXQgcHVycG9zZQo+IC0JICogICAgICAgICAg
ICBvcgo+IC0JICogICAgY2RjbGsvY3J0Y19jbG9jawo+ICsJICogZm9yIHBsYW5hciBZVVYgZm9y
bWF0czogMgo+ICsJICoJb3IKPiArCSAqIGZvciBvdGhlciBmb3JtYXRzOiBjbG9zZSB0byAzIGJ1
dCBub3QgMywgLTEgaXMgZm9yIHRoYXQgcHVycG9zZQo+ICsJICoJb3IKPiArCSAqIGNkY2xrL2Ny
dGNfY2xvY2sKPiAgCSAqLwo+ICAJbXVsdCA9IGlzX3BsYW5hcl95dXZfZm9ybWF0KHBpeGVsX2Zv
cm1hdCkgPyAyIDogMzsKPiAtCXRtcGNsazEgPSAoMSA8PCAxNikgKiBtdWx0IC0gMTsKPiArCXJl
bWFpbmRlciA9IGlzX3BsYW5hcl95dXZfZm9ybWF0KHBpeGVsX2Zvcm1hdCkgPyAwIDogMTsKPiAr
CXRtcGNsazEgPSAoMSA8PCAxNikgKiBtdWx0IC0gcmVtYWluZGVyOwo+ICAJdG1wY2xrMiA9ICgx
IDw8IDgpICogKChtYXhfZG90Y2xrIDw8IDgpIC8gY3J0Y19jbG9jayk7Cj4gIAltYXhfc2NhbGUg
PSBtaW4odG1wY2xrMSwgdG1wY2xrMik7Cj4gIAo+IC0tIAo+IDIuMTcuMQo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5
cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
