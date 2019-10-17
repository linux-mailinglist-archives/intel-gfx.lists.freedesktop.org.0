Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2EFDAE4E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 15:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD186EA9C;
	Thu, 17 Oct 2019 13:26:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ED986EA9C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 13:26:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 06:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="195908597"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga007.fm.intel.com with ESMTP; 17 Oct 2019 06:26:51 -0700
Date: Thu, 17 Oct 2019 18:56:57 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20191017132657.GH4730@intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
 <20191017075828.GE4730@intel.com> <20191017125446.GS1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017125446.GS1208@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Shrink eDRAM ways/sets arrays
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMC0xNyBhdCAxNTo1NDo0NiArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
IE9uIFRodSwgT2N0IDE3LCAyMDE5IGF0IDAxOjI4OjI5UE0gKzA1MzAsIFJhbWFsaW5nYW0gQyB3
cm90ZToKPiA+IE9uIDIwMTktMTAtMTAgYXQgMTc6NTE6MjMgKzAzMDAsIFZpbGxlIFN5cmphbGEg
d3JvdGU6Cj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gPiA+IAo+ID4gPiBNYWtlIHRoZSB3YXlzL3NldHMgYXJyYXlzIHN0YXRpYyBj
b3NudCB1OCB0byBzaHJpbmsgdGhpbmdzIGEgYml0Lgo+ID4gPiAKPiA+ID4gICAgIHRleHQJICAg
ZGF0YQkgICAgYnNzCSAgICBkZWMJICAgIGhleAlmaWxlbmFtZQo+ID4gPiAtICAyMzkzNQkgICAg
NjI5CSAgICAxMjgJICAyNDY5MgkgICA2MDc0CWk5MTVfZHJ2Lm8KPiA+ID4gKyAgMjM4MTgJICAg
IDYyOQkgICAgMTI4CSAgMjQ1NzUJICAgNWZmZglpOTE1X2Rydi5vCj4gPiA+IAo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpMb29rcyBnb29kIHRvIG1lLgoKUmV2aWV3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdh
bS5jQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jIHwgNCArKy0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiA+IGlu
ZGV4IGYwMmEzNDcyMjIxNy4uMGI4YzEzYWU0ODU3IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMKPiA+ID4gQEAgLTEwNzMsOCArMTA3Myw4IEBAIGludGVsX2dldF9kcmFtX2lu
Zm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4gPiAgCj4gPiA+ICBzdGF0
aWMgdTMyIGdlbjlfZWRyYW1fc2l6ZV9tYihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIHUzMiBjYXApCj4gPiA+ICB7Cj4gPiA+IC0JY29uc3QgdW5zaWduZWQgaW50IHdheXNbOF0g
PSB7IDQsIDgsIDEyLCAxNiwgMTYsIDE2LCAxNiwgMTYgfTsKPiA+ID4gLQljb25zdCB1bnNpZ25l
ZCBpbnQgc2V0c1s0XSA9IHsgMSwgMSwgMiwgMiB9Owo+ID4gPiArCXN0YXRpYyBjb25zdCB1OCB3
YXlzWzhdID0geyA0LCA4LCAxMiwgMTYsIDE2LCAxNiwgMTYsIDE2IH07Cj4gPiA+ICsJc3RhdGlj
IGNvbnN0IHU4IHNldHNbNF0gPSB7IDEsIDEsIDIsIDIgfTsKPiA+IEFza2luZyBmb3IgbXkgdW5k
ZXJzdGFuZGluZy4gdW5zaWduZWQgaW50IC0+IHU4IG1ha2Ugc2Vuc2UgdG8gc2hyaW5rIHRoZQo+
ID4gc2l6ZS4gQ291bGQgeW91IHBsZWFzZSBhZGQgcmVhc29uaW5nIGZvciBhZGRpbmcgc3RhdGlj
PyBtb3ZpbmcgaXQgaW50bwo+ID4gZGF0YSBzZWdtZW50IGhlbmNlIHJlZHVjaW5nIHRoZSBzdGFj
az8KPiAKPiBQb3NzaWJseS4gTXkgdXN1YWwgYXBwcm9hY2ggaXMgdG8ganVzdCBtYWtlIGFsbCBz
dWNoIHRoaW5ncwo+IHN0YXRpYyBjb25zdCB1bmxlc3MgdGhlcmUgaXMgYSByZWFsIHJlYXNvbiBu
b3QgdG8uCk9rLiBUaGFua3MuCgotUmFtCj4gCj4gPiAKPiA+IC1SYW0KPiA+ID4gIAo+ID4gPiAg
CXJldHVybiBFRFJBTV9OVU1fQkFOS1MoY2FwKSAqCj4gPiA+ICAJCXdheXNbRURSQU1fV0FZU19J
RFgoY2FwKV0gKgo+ID4gPiAtLSAKPiA+ID4gMi4yMS4wCj4gPiA+IAo+ID4gPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAK
PiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
