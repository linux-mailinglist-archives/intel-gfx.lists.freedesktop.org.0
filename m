Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA4B12D07F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 15:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC7EC89DFD;
	Mon, 30 Dec 2019 14:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E8489DFD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 14:04:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 06:04:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="243862496"
Received: from unknown (HELO intel.com) ([10.223.74.120])
 by fmsmga004.fm.intel.com with ESMTP; 30 Dec 2019 06:04:37 -0800
Date: Mon, 30 Dec 2019 19:34:56 +0530
From: Anshuamn Gupta <anshuman.gupta@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191230140455.GB29841@intel.com>
References: <20191101001422.209326-1-jose.souza@intel.com>
 <20191113123453.GD17487@intel.com>
 <834b2fe4763eb5c0aec82087ba701e7be1188f8e.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <834b2fe4763eb5c0aec82087ba701e7be1188f8e.camel@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/psr: Share the computation of
 idle frames
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMS0xNCBhdCAwNDo0NzozNSArMDUzMCwgU291emEsIEpvc2Ugd3JvdGU6Cj4gT24g
V2VkLCAyMDE5LTExLTEzIGF0IDE4OjA0ICswNTMwLCBBbnNodWFtbiBHdXB0YSB3cm90ZToKPiA+
IExvb2tzIGdvb2QgdG8gbWUsIHRoZXJlIGlzIGEgbWlub3IgY29tbWVudCBzZWUgYmVsb3cuCj4g
PiBPbiAyMDE5LTEwLTMxIGF0IDE3OjE0OjIwIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOgo+ID4gPiBCb3RoIGFjdGl2YXRlIGZ1bmN0aW9ucyBhbmQgdGhlIGRjM2NvIGRpc2Fi
bGUgZnVuY3Rpb24gd2VyZSBkb2luZwo+ID4gPiB0aGUKPiA+ID4gc2FtZSB0aGluZywgc28gYmV0
dGVyIG1vdmUgdG8gYSBmdW5jdGlvbiBhbmQgc2hhcmUuCj4gPiA+IEFsc28gd2hpbGUgYXQgaXQg
YWRkaW5nIGEgV0FSTl9PTiB0byBjYXRjaCBpbnZhbGlkIHZhbHVlcy4KPiA+ID4gCj4gPiA+IENj
OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+ID4gPiBDYzogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gQWNrZWQtYnk6IEFuc2h1bWFuIEd1cHRh
IDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8
YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNDMgKysrKysrKysrKystLS0t
LS0tLS0KPiA+ID4gLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyks
IDI0IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCj4gPiA+IGluZGV4IDZhOWYzMjJkM2ZjYS4uYmI5YjUzNDliNzJh
IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
PiA+ID4gQEAgLTQ1MSwyMiArNDUxLDI5IEBAIHN0YXRpYyB1MzIgaW50ZWxfcHNyMV9nZXRfdHBf
dGltZShzdHJ1Y3QKPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwKQo+ID4gPiAgCXJldHVybiB2YWw7
Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gLXN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IxKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gPiA+ICtzdGF0aWMgdTggcHNyX2NvbXB1dGVfaWRs
ZV9mcmFtZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiA+ID4gIHsKPiA+ID4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiA+
ID4gLQl1MzIgbWF4X3NsZWVwX3RpbWUgPSAweDFmOwo+ID4gPiAtCXUzMiB2YWwgPSBFRFBfUFNS
X0VOQUJMRTsKPiA+ID4gKwlpbnQgaWRsZV9mcmFtZXM7Cj4gPiA+ICAKPiA+ID4gIAkvKiBMZXQn
cyB1c2UgNiBhcyB0aGUgbWluaW11bSB0byBjb3ZlciBhbGwga25vd24gY2FzZXMKPiA+ID4gaW5j
bHVkaW5nIHRoZQo+ID4gPiAgCSAqIG9mZi1ieS1vbmUgaXNzdWUgdGhhdCBIVyBoYXMgaW4gc29t
ZSBjYXNlcy4KPiA+ID4gIAkgKi8KPiA+ID4gLQlpbnQgaWRsZV9mcmFtZXMgPSBtYXgoNiwgZGV2
X3ByaXYtPnZidC5wc3IuaWRsZV9mcmFtZXMpOwo+ID4gPiAtCj4gPiA+IC0JLyogc2lua19zeW5j
X2xhdGVuY3kgb2YgOCBtZWFucyBzb3VyY2UgaGFzIHRvIHdhaXQgZm9yIG1vcmUKPiA+ID4gdGhh
biA4Cj4gPiA+IC0JICogZnJhbWVzLCB3ZSdsbCBnbyB3aXRoIDkgZnJhbWVzIGZvciBub3cKPiA+
ID4gLQkgKi8KPiA+ID4gKwlpZGxlX2ZyYW1lcyA9IG1heCg2LCBkZXZfcHJpdi0+dmJ0LnBzci5p
ZGxlX2ZyYW1lcyk7Cj4gPiA+ICAJaWRsZV9mcmFtZXMgPSBtYXgoaWRsZV9mcmFtZXMsIGRldl9w
cml2LT5wc3Iuc2lua19zeW5jX2xhdGVuY3kKPiA+ID4gKyAxKTsKPiA+ID4gLQl2YWwgfD0gaWRs
ZV9mcmFtZXMgPDwgRURQX1BTUl9JRExFX0ZSQU1FX1NISUZUOwo+ID4gPiArCj4gPiA+ICsJV0FS
Tl9PTihpZGxlX2ZyYW1lcyA+IDB4Zik7Cj4gPiA+ICsKPiA+ID4gKwlyZXR1cm4gaWRsZV9mcmFt
ZXM7Cj4gPiB0aGVyZSB3b3VsZCBiZSByZXR1cm4gdHlwZSBtaXNtYXRjaCB3YXJuaW5nLgo+IAo+
IFRoZXJlIGlzIG5vdCB3YXJuaW5nLCB0aGUgdmFsdWUgd2lsbCBiZSB0cnVuY2F0ZWQgYnV0IGlm
IGhhcHBlbnMgd2UKPiB3aWxsIGdldCB0aGUgd2Fybl9vbiBhYm92ZS4KPiAKPiAKPiA+ID4gK30K
PiA+ID4gKwo+ID4gPiArc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjEoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkKPiA+ID4gK3sKPiA+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPiA+ID4gKwl1MzIgbWF4X3NsZWVwX3Rp
bWUgPSAweDFmOwo+ID4gPiArCXUzMiB2YWwgPSBFRFBfUFNSX0VOQUJMRTsKPiA+ID4gKwo+ID4g
PiArCXZhbCB8PSBwc3JfY29tcHV0ZV9pZGxlX2ZyYW1lcyhpbnRlbF9kcCkgPDwKPiA+ID4gRURQ
X1BTUl9JRExFX0ZSQU1FX1NISUZUOwo+ID4gPiAgCj4gPiA+ICAJdmFsIHw9IG1heF9zbGVlcF90
aW1lIDw8IEVEUF9QU1JfTUFYX1NMRUVQX1RJTUVfU0hJRlQ7Cj4gPiA+ICAJaWYgKElTX0hBU1dF
TEwoZGV2X3ByaXYpKQo+ID4gPiBAQCAtNDkwLDEzICs0OTcsNyBAQCBzdGF0aWMgdm9pZCBoc3df
YWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAKPiA+ID4gKmludGVsX2RwKQo+ID4gPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+
ID4gPiAgCXUzMiB2YWw7Cj4gPiA+ICAKPiA+ID4gLQkvKiBMZXQncyB1c2UgNiBhcyB0aGUgbWlu
aW11bSB0byBjb3ZlciBhbGwga25vd24gY2FzZXMKPiA+ID4gaW5jbHVkaW5nIHRoZQo+ID4gPiAt
CSAqIG9mZi1ieS1vbmUgaXNzdWUgdGhhdCBIVyBoYXMgaW4gc29tZSBjYXNlcy4KPiA+ID4gLQkg
Ki8KPiA+ID4gLQlpbnQgaWRsZV9mcmFtZXMgPSBtYXgoNiwgZGV2X3ByaXYtPnZidC5wc3IuaWRs
ZV9mcmFtZXMpOwo+ID4gPiAtCj4gPiA+IC0JaWRsZV9mcmFtZXMgPSBtYXgoaWRsZV9mcmFtZXMs
IGRldl9wcml2LT5wc3Iuc2lua19zeW5jX2xhdGVuY3kKPiA+ID4gKyAxKTsKPiA+ID4gLQl2YWwg
PSBpZGxlX2ZyYW1lcyA8PCBFRFBfUFNSMl9JRExFX0ZSQU1FX1NISUZUOwo+ID4gPiArCXZhbCA9
IHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSA8PAo+ID4gPiBFRFBfUFNSMl9JRExF
X0ZSQU1FX1NISUZUOwo+ID4gPiAgCj4gPiA+ICAJdmFsIHw9IEVEUF9QU1IyX0VOQUJMRSB8IEVE
UF9TVV9UUkFDS19FTkFCTEU7Cj4gPiA+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAg
fHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpCj4gPiA+IEBAIC01NjMsMTYgKzU2NCwxMCBAQCBz
dGF0aWMgdm9pZCB0Z2xfcHNyMl9lbmFibGVfZGMzY28oc3RydWN0Cj4gPiA+IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgdm9pZCB0Z2xfcHNyMl9kaXNh
YmxlX2RjM2NvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4gPiA+ICpkZXZfcHJpdikKPiA+ID4g
IHsKPiA+ID4gLQlpbnQgaWRsZV9mcmFtZXM7Cj4gPiA+ICsJc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCA9IGRldl9wcml2LT5wc3IuZHA7Cj4gPiA+ICAKPiA+ID4gIAlpbnRlbF9kaXNwbGF5X3Bv
d2VyX3NldF90YXJnZXRfZGNfc3RhdGUoZGV2X3ByaXYsCj4gPiA+IERDX1NUQVRFX0VOX1VQVE9f
REM2KTsKPiA+ID4gLQkvKgo+ID4gPiAtCSAqIFJlc3RvcmUgUFNSMiBpZGxlIGZyYW1lIGxldCdz
IHVzZSA2IGFzIHRoZSBtaW5pbXVtIHRvIGNvdmVyCj4gPiA+IGFsbCBrbm93bgo+ID4gPiAtCSAq
IGNhc2VzIGluY2x1ZGluZyB0aGUgb2ZmLWJ5LW9uZSBpc3N1ZSB0aGF0IEhXIGhhcyBpbiBzb21l
Cj4gPiA+IGNhc2VzLgo+ID4gPiAtCSAqLwo+ID4gPiAtCWlkbGVfZnJhbWVzID0gbWF4KDYsIGRl
dl9wcml2LT52YnQucHNyLmlkbGVfZnJhbWVzKTsKPiA+ID4gLQlpZGxlX2ZyYW1lcyA9IG1heChp
ZGxlX2ZyYW1lcywgZGV2X3ByaXYtPnBzci5zaW5rX3N5bmNfbGF0ZW5jeQo+ID4gPiArIDEpOwo+
ID4gPiAtCXBzcjJfcHJvZ3JhbV9pZGxlX2ZyYW1lcyhkZXZfcHJpdiwgaWRsZV9mcmFtZXMpOwo+
ID4gPiArCXBzcjJfcHJvZ3JhbV9pZGxlX2ZyYW1lcyhkZXZfcHJpdiwKPiA+ID4gcHNyX2NvbXB1
dGVfaWRsZV9mcmFtZXMoaW50ZWxfZHApKTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAgc3RhdGlj
IHZvaWQgdGdsX2RjNV9pZGxlX3RocmVhZChzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gPiA+
IC0tIAo+ID4gPiAyLjIzLjAKPiA+ID4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
