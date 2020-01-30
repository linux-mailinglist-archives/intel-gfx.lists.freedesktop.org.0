Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 763DA14DA71
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 13:11:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C606F982;
	Thu, 30 Jan 2020 12:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB03E6F984
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 12:11:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 04:10:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,381,1574150400"; d="scan'208";a="232903071"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga006.jf.intel.com with ESMTP; 30 Jan 2020 04:10:53 -0800
Date: Thu, 30 Jan 2020 17:32:01 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20200130120201.GG24118@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
 <20200123132659.725-3-anshuman.gupta@intel.com>
 <20200123134057.GL13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123134057.GL13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [RFC 2/6] drm/i915: Remove (pipe == crtc->index)
 asummption
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wMS0yMyBhdCAxNTo0MDo1NyArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
IE9uIFRodSwgSmFuIDIzLCAyMDIwIGF0IDA2OjU2OjU1UE0gKzA1MzAsIEFuc2h1bWFuIEd1cHRh
IHdyb3RlOgo+ID4gd2UgY2FuJ3QgaGF2ZSAocGlwZSA9PSBjcnRjLT5pbmRleCkgYXNzdW1wdGlv
biBpbgo+ID4gZHJpdmVyIGluIG9yZGVyIHRvIHN1cHBvcnQgMyBub24tY29udGlndW91cwo+ID4g
ZGlzcGxheSBwaXBlIHN5c3RlbS4KPiA+IAo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0
YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrLS0tLS0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+IGluZGV4IDg3OGQz
MzFiOWU4Yy4uYWZkOGQ0MzE2MGM2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBAQCAtMTQwNzAsMTEgKzE0MDcwLDExIEBAIHZl
cmlmeV9zaW5nbGVfZHBsbF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4gPiAgCWlmIChuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQo+ID4gIAkJSTkxNV9TVEFURV9X
QVJOKCEocGxsLT5hY3RpdmVfbWFzayAmIGNydGNfbWFzayksCj4gPiAgCQkJCSJwbGwgYWN0aXZl
IG1pc21hdGNoIChleHBlY3RlZCBwaXBlICVjIGluIGFjdGl2ZSBtYXNrIDB4JTAyeClcbiIsCj4g
PiAtCQkJCXBpcGVfbmFtZShkcm1fY3J0Y19pbmRleCgmY3J0Yy0+YmFzZSkpLCBwbGwtPmFjdGl2
ZV9tYXNrKTsKPiA+ICsJCQkJcGlwZV9uYW1lKGNydGMtPnBpcGUpLCBwbGwtPmFjdGl2ZV9tYXNr
KTsKPiA+ICAJZWxzZQo+ID4gIAkJSTkxNV9TVEFURV9XQVJOKHBsbC0+YWN0aXZlX21hc2sgJiBj
cnRjX21hc2ssCj4gPiAgCQkJCSJwbGwgYWN0aXZlIG1pc21hdGNoIChkaWRuJ3QgZXhwZWN0IHBp
cGUgJWMgaW4gYWN0aXZlIG1hc2sgMHglMDJ4KVxuIiwKPiA+IC0JCQkJcGlwZV9uYW1lKGRybV9j
cnRjX2luZGV4KCZjcnRjLT5iYXNlKSksIHBsbC0+YWN0aXZlX21hc2spOwo+ID4gKwkJCQlwaXBl
X25hbWUoY3J0Yy0+cGlwZSksIHBsbC0+YWN0aXZlX21hc2spOwo+ID4gIAo+ID4gIAlJOTE1X1NU
QVRFX1dBUk4oIShwbGwtPnN0YXRlLmNydGNfbWFzayAmIGNydGNfbWFzayksCj4gPiAgCQkJInBs
bCBlbmFibGVkIGNydGNzIG1pc21hdGNoIChleHBlY3RlZCAweCV4IGluIDB4JTAyeClcbiIsCj4g
PiBAQCAtMTQxMDMsMTAgKzE0MTAzLDEwIEBAIHZlcmlmeV9zaGFyZWRfZHBsbF9zdGF0ZShzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiA+ICAKPiA+ICAJCUk5MTVfU1RBVEVfV0FSTihwbGwtPmFj
dGl2ZV9tYXNrICYgY3J0Y19tYXNrLAo+ID4gIAkJCQkicGxsIGFjdGl2ZSBtaXNtYXRjaCAoZGlk
bid0IGV4cGVjdCBwaXBlICVjIGluIGFjdGl2ZSBtYXNrKVxuIiwKPiA+IC0JCQkJcGlwZV9uYW1l
KGRybV9jcnRjX2luZGV4KCZjcnRjLT5iYXNlKSkpOwo+ID4gKwkJCQlwaXBlX25hbWUoY3J0Yy0+
cGlwZSkpOwo+ID4gIAkJSTkxNV9TVEFURV9XQVJOKHBsbC0+c3RhdGUuY3J0Y19tYXNrICYgY3J0
Y19tYXNrLAo+ID4gIAkJCQkicGxsIGVuYWJsZWQgY3J0Y3MgbWlzbWF0Y2ggKGZvdW5kICV4IGlu
IGVuYWJsZWQgbWFzaylcbiIsCj4gPiAtCQkJCXBpcGVfbmFtZShkcm1fY3J0Y19pbmRleCgmY3J0
Yy0+YmFzZSkpKTsKPiA+ICsJCQkJcGlwZV9uYW1lKGNydGMtPnBpcGUpKTsKPiA+ICAJfQo+ID4g
IH0KPiA+ICAKPiA+IEBAIC0xNjQ4NSw4ICsxNjQ4NSw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0
Y19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUp
Cj4gPiAgCj4gPiAgCWludGVsX2NvbG9yX2luaXQoY3J0Yyk7Cj4gPiAgCj4gPiAtCVdBUk5fT04o
ZHJtX2NydGNfaW5kZXgoJmNydGMtPmJhc2UpICE9IGNydGMtPnBpcGUpOwo+ID4gLQo+IAo+IFRo
ZSBmaXJzdCBhbmQgc2Vjb25kIGh1bmtzIGRvbid0IHJlYWxseSBoYXZlIGFueXRoaW5nIHRvIGRv
IHdpdGgKPiBlYWNoIG90aGVyLiBBbHNvIHRoZSBXQVJOX09OKCkgc2hvdWxkIG5vdCBiZSByZW1v
dmVkIHVudGlsIGFsbCB0aGUKPiBhc3N1bXB0aW9ucyBhcmUgZml4ZWQuClRydWUgdGhlcmUgY2Fu
IGJlIG90aGVyIGFzc3VtcHRpb25zIGFzIHdlbGwsIHRoZXJlIGFyZSBmZXcsIGkgaGF2ZSBjb21l
IHRvIGtub3cKZHJtX2hhbmRsZV92YmxhbmsoJmRldl9wcml2LT5kcm0sIHBpcGUpIGluIGdlbjhf
ZGVfaXJxX2hhbmRsZXIoKQpkcm1fd2FpdF9vbmVfdmJsYW5rKCZkZXZfcHJpdi0+ZHJtLCBwaXBl
KSBpbiBpbnRlbF93YWl0X2Zvcl92YmxhbmsoKSwKaSB3aWxsIGZpeCB0aGVzZSBhc3N1bXB0aW9u
cyBpcyBuZXh0IHVwZGF0ZSwgYXJlIHRoZXJlIGFueSBvdGhlciBzaW1pbGFyIGtpbmQgb2YKYXNz
dW1wdGlvbiBvbiB3aGljaCB1IGNhbiB0aHJvdyBzb21lIGxpZ2h0IHRvIGxvb2sgZm9yPwpJIGFt
IG5vdCBzdXJlIGhvdyBkb2VzIGFib3ZlIFdBUk5fT04gaGVscHMgdG8ga25vdyBhbGwgc3VjaCBr
aW5kIG9mIAphc3N1bXB0aW9ucywgYnV0IGl0IG1ha2Ugc2Vuc2UgdG8gaGF2ZSBpdCB3aXRoIEZJ
WE1FLgpUaGFua3MsCkFuc2h1bWFuIEd1cHRhLgo+IAo+ID4gIAlyZXR1cm4gMDsKPiA+ICAKPiA+
ICBmYWlsOgo+ID4gLS0gCj4gPiAyLjI0LjAKPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJ
bnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
