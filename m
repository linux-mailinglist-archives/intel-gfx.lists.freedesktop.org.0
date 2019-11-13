Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F168FB477
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 17:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448C06ED79;
	Wed, 13 Nov 2019 16:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB07D6ED79
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 16:00:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 08:00:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="203029667"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 13 Nov 2019 08:00:04 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 023B35C1DD7; Wed, 13 Nov 2019 17:59:53 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191113151956.32242-1-chris@chris-wilson.co.uk>
References: <20191113151956.32242-1-chris@chris-wilson.co.uk>
Date: Wed, 13 Nov 2019 17:59:53 +0200
Message-ID: <87r22b7ona.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Invalidate as we write the
 gen7 breadcrumb
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU3RpbGwg
dGhlIHNhZ2Egb2YgdGhlIGhzdyBsaXZlX2JsdCBpbmNvaGVyZW5jeSBjb250aW51ZXMuIFdoaWxl
IGl0IGRpZAo+IHNlZW0gdGhhdCB0aGUgaW52YWxpZGF0ZSBiZWZvcmUgdGhlIGJyZWFkY3J1bWIg
aGFkIGltcHJvdmVkIHRoZSBtdGJmLAo+IG5ldmVydGhlbGVzcyBsaXZlX2JsdCBzdGlsbCBmYWls
ZWQuIE1pa2EncyBuZXh0IGlkZWEgd2FzIHRvIHB1bGwgdGhlCj4gaW52YWxpZGF0ZS1zdGFsbCBp
bnRvIHRoZSBicmVhZGNydW1iIHdyaXRlIGl0c2VsZi4KPgo+IFJlZmVyZW5jZXM6IDg2MGFmYTA4
Njg0MSAoImRybS9pOTE1L2d0OiBGbHVzaCBnZW43IGV2ZW4gaGFyZGVyIikKPiBSZWZlcmVuY2Vz
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIxNDcKPiBU
ZXN0Y2FzZTogaWd0L2k5MTVfc2VsZnRlc3QvbGl2ZV9ibHQKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jIHwgOSArKystLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jCj4gaW5kZXggZThiZWU0NGFk
ZDM0Li5mMjVjZWNjYjMzNWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nX3N1Ym1pc3Npb24uYwo+IEBAIC00NTQsMTIgKzQ1NCw4IEBAIHN0YXRpYyB1MzIg
KmdlbjdfeGNzX2VtaXRfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdTMyICpj
cykKPiAgCUdFTV9CVUdfT04oaTkxNV9yZXF1ZXN0X2FjdGl2ZV90aW1lbGluZShycSktPmh3c3Bf
Z2d0dCAhPSBycS0+ZW5naW5lLT5zdGF0dXNfcGFnZS52bWEpOwo+ICAJR0VNX0JVR19PTihvZmZz
ZXRfaW5fcGFnZShpOTE1X3JlcXVlc3RfYWN0aXZlX3RpbWVsaW5lKHJxKS0+aHdzcF9vZmZzZXQp
ICE9IEk5MTVfR0VNX0hXU19TRVFOT19BRERSKTsKPiAgCj4gLQkqY3MrKyA9IChNSV9GTFVTSF9E
VyB8IE1JX0lOVkFMSURBVEVfVExCIHwKPiAtCQkgTUlfRkxVU0hfRFdfU1RPUkVfSU5ERVggfCBN
SV9GTFVTSF9EV19PUF9TVE9SRURXKTsKPiAtCSpjcysrID0gSTkxNV9HRU1fSFdTX1NDUkFUQ0hf
QUREUiB8IE1JX0ZMVVNIX0RXX1VTRV9HVFQ7Cj4gLQkqY3MrKyA9IDA7Cj4gLQo+IC0JKmNzKysg
PSBNSV9GTFVTSF9EVyB8IE1JX0ZMVVNIX0RXX09QX1NUT1JFRFcgfCBNSV9GTFVTSF9EV19TVE9S
RV9JTkRFWDsKPiArCSpjcysrID0gTUlfRkxVU0hfRFcgfCBNSV9JTlZBTElEQVRFX1RMQiB8Cj4g
KwkJTUlfRkxVU0hfRFdfT1BfU1RPUkVEVyB8IE1JX0ZMVVNIX0RXX1NUT1JFX0lOREVYOwo+ICAJ
KmNzKysgPSBJOTE1X0dFTV9IV1NfU0VRTk9fQUREUiB8IE1JX0ZMVVNIX0RXX1VTRV9HVFQ7Cj4g
IAkqY3MrKyA9IHJxLT5mZW5jZS5zZXFubzsKCkluIGJvdGggd291bGQgaGF2ZSBiZWVuIHRoZSBz
aG90Z3VuIGFwcHJvYWNoLiBZb3UgZmF2b3VyIHNuaXBlci4KCkFja2VkLWJ5OiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gIAo+IEBAIC00NzQsNiArNDcw
LDcgQEAgc3RhdGljIHUzMiAqZ2VuN194Y3NfZW1pdF9icmVhZGNydW1iKHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxLCB1MzIgKmNzKQo+ICAJKmNzKysgPSAwOwo+ICAKPiAgCSpjcysrID0gTUlfVVNF
Ul9JTlRFUlJVUFQ7Cj4gKwkqY3MrKyA9IE1JX05PT1A7Cj4gIAo+ICAJcnEtPnRhaWwgPSBpbnRl
bF9yaW5nX29mZnNldChycSwgY3MpOwo+ICAJYXNzZXJ0X3JpbmdfdGFpbF92YWxpZChycS0+cmlu
ZywgcnEtPnRhaWwpOwo+IC0tIAo+IDIuMjQuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
