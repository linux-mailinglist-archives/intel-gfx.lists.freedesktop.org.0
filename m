Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB52960C0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 15:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F1166E7DD;
	Tue, 20 Aug 2019 13:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFF46E7DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 13:43:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 06:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="185916154"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 20 Aug 2019 06:43:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Aug 2019 16:43:14 +0300
Date: Tue, 20 Aug 2019 16:43:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20190820134313.GC5942@intel.com>
References: <20190820110631.15793-1-mika.kahola@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F821CABFE@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F821CABFE@BGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Lower cdclk for sub 4k
 resolutions
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgMDE6MzU6MzdQTSArMDAwMCwgU2hhbmthciwgVW1hIHdy
b3RlOgo+IAo+IAo+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBLYWhvbGEs
IE1pa2EKPiA+U2VudDogVHVlc2RheSwgQXVndXN0IDIwLCAyMDE5IDQ6MzcgUE0KPiA+VG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+Q2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthCj4gPjxtaWthLmthaG9sYUBpbnRlbC5jb20+
Cj4gPlN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvdGdsOiBMb3dlciBjZGNsayBmb3Igc3ViIDRr
IHJlc29sdXRpb25zCj4gPgo+ID5JbiBvcmRlciB0byBhY2hpZXZlIGltcHJvdmVkIHBvd2VyIHNh
dmluZ3Mgd2UgY2FuIHR1bmUgZG93biBDRCBjbG9jayBmcmVxdWVuY3kgZm9yCj4gPnN1YiA0ayBy
ZXNvbHV0aW9ucy4gVGhlIG1heGltdW0gQ0QgY2xvY2sgZnJlcXVlbmN5IGZvciBzdWIgNGsgcmVz
b2x1dGlvbnMgaXMgc2V0IHRvCj4gPjE3Mi44IE1Iei4KPiA+Cj4gPlNpZ25lZC1vZmYtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Cj4gPi0tLQo+ID4gZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMjYgKysrKysrKysrKysrKysrKysrKysr
LQo+ID5kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmggfCAgMyArKysK
PiA+IDIgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4K
PiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Ywo+ID5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+ID5pbmRl
eCBkMGJjNDJlNTAzOWMuLjFkNmM3YmM3OTQ3MCAxMDA2NDQKPiA+LS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+ID5AQCAtMjYxMCw2ICsyNjEwLDI0IEBAIHN0YXRp
YyBpbnQgaW50ZWxfY29tcHV0ZV9tYXhfZG90Y2xrKHN0cnVjdAo+ID5kcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiA+IAkJcmV0dXJuIG1heF9jZGNsa19mcmVxKjkwLzEwMDsKPiA+IH0KPiA+
Cj4gPitib29sIG1vZGVfaXNfNGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KSB7
Cj4gPisJc3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4gPisJc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKnBpcGVfY29uZmlnOwo+ID4rCj4gPisJZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2X3ByaXYt
PmRybSwgY3J0Yykgewo+ID4rCQlwaXBlX2NvbmZpZyA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0
Yy0+YmFzZS5zdGF0ZSk7Cj4gPisKPiA+KwkJaWYgKHBpcGVfY29uZmlnLT5iYXNlLmFjdGl2ZSkg
ewo+ID4rCQkJaWYgKHBpcGVfY29uZmlnLT5waXBlX3NyY193ID49IFdJRFRIXzRLICYmCj4gPisJ
CQkgICAgcGlwZV9jb25maWctPnBpcGVfc3JjX2ggPj0gSEVJR0hUXzRLKQo+ID4rCQkJCXJldHVy
biB0cnVlOwo+ID4rCQl9Cj4gPisJfQo+ID4rCj4gPisJcmV0dXJuIGZhbHNlOwo+ID4rfQo+ID4r
Cj4gPiAvKioKPiA+ICAqIGludGVsX3VwZGF0ZV9tYXhfY2RjbGsgLSBEZXRlcm1pbmUgdGhlIG1h
eGltdW0gc3VwcG9ydCBDRENMSyBmcmVxdWVuY3kKPiA+ICAqIEBkZXZfcHJpdjogaTkxNSBkZXZp
Y2UKPiA+QEAgLTI2MjAsNyArMjYzOCwxMyBAQCBzdGF0aWMgaW50IGludGVsX2NvbXB1dGVfbWF4
X2RvdGNsayhzdHJ1Y3QKPiA+ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiAgKi8KPiA+
IHZvaWQgaW50ZWxfdXBkYXRlX21heF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpICB7Cj4gPi0JaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgewo+ID4rCS8qCj4g
PisJICogVXNlIGxvd2VyIENEQ0xLIGZyZXF1ZW5jeSBvbiBUaWdlcmxha2Ugd2hlbiBzZWxlY3Rl
ZAo+ID4rCSAqIG1vZGUgaXMgbGVzcyB0aGFuIDRrLgo+ID4rCSAqLwo+ID4rCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyICYmICFtb2RlX2lzXzRrKGRldl9wcml2KSkgewo+ID4rCQlkZXZf
cHJpdi0+bWF4X2NkY2xrX2ZyZXEgPSAxNzI4MDA7Cj4gPisJfSBlbHNlIGlmIChJU19FTEtIQVJU
TEFLRShkZXZfcHJpdikpIHsKPiAKPiBTZXR0aW5nIHRoZSBtYXggY2QgY2xvY2sgc3VwcG9ydGVk
IGl0c2VsZiB0byBhIGxvd2VyIHZhbHVlIGlzIG5vdCBhIGdvb2QgaWRlYS4KPiBUaGlzIHNob3Vs
ZCByZXR1cm4gd2hhdCBpcyB0aGUgbWF4IGZyZXF1ZW5jeSBvZiBjZCBjbG9jayB0aGUgaGFyZHdh
cmUgc3VwcG9ydHMuCj4gRHJpdmVyIGlzIG5vdCBnb2luZyB0byBwcm9ncmFtIHRoaXMgdG8gbWF4
IGJhc2VkIG9uIHRoaXMgZGF0YS4KPiAKPiBBY3R1YWwgY2QgY2xvY2sgd2hpY2ggd2lsbCBiZSBw
cm9ncmFtbWVkIGluIGhhcmR3YXJlIHNob3VsZCBiZSBiYXNlZCBvbiB0aGUKPiBtYXhpbXVtIHBp
eGVsIGNsb2NrIHdlIGFyZSBkcml2aW5nLiBTbyBpZiB3ZSBhcmUgbm90IGRyaXZpbmcgNEsgYW5k
IHNheSBhdCAxOTIweDEwODAsIHBpeGVsCj4gY2xvY2sgd2lsbCBiZSBsZXNzIGFuZCB3ZSBzaG91
bGQgYmUgc2VsZWN0aW5nIGEgbG93ZXIgdmFsdWUgb2YgY2QgY2xvY2sgaW4gdGhhdCBjYXNlIHdo
aWNoCj4gZ2V0cyBwcm9ncmFtbWVkIGluIENEQ0xLX0NUTC4gQnV0IG1heCBjZCBjbG9jayBzdGls
bCByZW1haW5zIHdoYXQgbWF4aW11bSB0aGUgcGxhdGZvcm0gY2FuCj4gc3VwcG9ydC4gWW91IGNh
biBjaGVjayBpbnRlbF9jb21wdXRlX21pbl9jZGNsayB3aGljaCBjYWxjdWxhdGVzIHRoZSBtaW5p
bXVtIGNkIGNsb2NrIHJlcXVpcmVkLgo+IAo+IFNvIHdoZW4gd2UganVzdCBoYXZlIDE5MjB4MTA4
MEA2MEh6IHBpeGVsIGNsb2NrIG9mIDE0ODUwMCwgCj4gbWluIGNkIGNsb2NrIHJlcXVpcmVkIHNo
b3VsZCBiZSAxNDg1MDAgYW5kIG5lYXJlc3QgaGlnaGVyIHZhbHVlIG9mIENEIENsb2NrIHdpbGwg
YmUgMTcyLjhNaHouCj4gU2ltaWxhcmx5IGZvciA0MDk2eDIxNjBANjAsIHBpeGVsIGNsb2NrIDU1
NjE4OCwgbWluIGNkIGNsb2NrIGNhbGN1bGF0ZWQgd2lsbCBiZSA1NTYuMTg4IE1IeiwgdGh1cwo+
IGdldHRpbmcgbmVhcmVzdCBzdXBwb3J0ZWQgY2QgY2xvY2sgdmFsdWUgb2YgNTU2IG9yIDY0OE1o
ei4KPiAKPiBUaGlzIHNob3VsZCBiZSB0YWtlbiBjYXJlIGJ5IHRoaXMgbG9naWMgaW4gZHJpdmVy
LiAKPiAKPiBBbHNvIHdpdGggdGhlIGN1cnJlbnQgcGF0Y2gsIG1vZGVzIGxpa2UgMjU2MHgxNjAw
QDYwLCBwaXhlbCBjbG9jayAyNjguNU1IeiB3aWxsIG5vdCB3b3JrLiBUaGlzIHdpbGwgbmVlZAo+
IGNkIGNsb2NrIG9mIDMyNE1oeiAob3IgMzA3LCAzMTIgd2hhdGV2ZXIgYXJlIHN1cHBvcnRlZCBv
biB0aGUgcGxhdGZvcm0uIAoKZ2xrKyBwdW1wIG91dCB0d28gcGl4ZWxzIHBlciBjbG9jaywgc28g
d2UgbmVlZCBoYWxmIG9mIHdoYXQgeW91IHNhaWQuCgo+IAo+ID4gCQlpZiAoZGV2X3ByaXYtPmNk
Y2xrLmh3LnJlZiA9PSAyNDAwMCkKPiA+IAkJCWRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSA9IDU1
MjAwMDsKPiA+IAkJZWxzZQo+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5oCj4gPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5oCj4gPmluZGV4IDRkNmY3ZjVmODkzMC4uY2VmYjUxNDZkZGNhIDEwMDY0NAo+ID4t
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgKPiA+KysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oCj4gPkBAIC0xNSw2ICsx
NSw5IEBAIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGU7ICBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3Rh
dGU7ICBzdHJ1Y3QKPiA+aW50ZWxfY3J0Y19zdGF0ZTsKPiA+Cj4gPisjZGVmaW5lIFdJRFRIXzRL
ICAzODYwCj4gPisjZGVmaW5lIEhFSUdIVF80SyAyMTYwCj4gPisKPiA+IGludCBpbnRlbF9jcnRj
X2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsgIHZvaWQKPiA+aW50ZWxfY2RjbGtfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSk7ICB2b2lkIGludGVsX2NkY2xrX3VuaW5pdChzdHJ1Y3QKPiA+ZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSk7Cj4gPi0tCj4gPjIuMTcuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
