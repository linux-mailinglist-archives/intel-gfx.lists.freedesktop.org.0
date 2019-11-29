Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3DD10D64D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 14:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5905189836;
	Fri, 29 Nov 2019 13:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86FE189836
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 13:50:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 05:50:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="217790668"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 29 Nov 2019 05:50:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2019 15:50:50 +0200
Date: Fri, 29 Nov 2019 15:50:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20191129135050.GD1208@intel.com>
References: <20191128182358.14477-1-ville.syrjala@linux.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8230105D@BGSMSX104.gar.corp.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82301087@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F82301087@BGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use the correct PCH transcoder
 for LPT/WPT in intel_sanitize_frame_start_delay()
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
Cc: "'intel-gfx@lists.freedesktop.org'" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjksIDIwMTkgYXQgMTE6NTY6NDJBTSArMDAwMCwgU2hhbmthciwgVW1hIHdy
b3RlOgo+IAo+IAo+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBTaGFua2Fy
LCBVbWEKPiA+U2VudDogRnJpZGF5LCBOb3ZlbWJlciAyOSwgMjAxOSA1OjE4IFBNCj4gPlRvOiBW
aWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+U3ViamVjdDogUkU6IFtQQVRDSF0gZHJtL2k5MTU6IFVz
ZSB0aGUgY29ycmVjdCBQQ0ggdHJhbnNjb2RlciBmb3IgTFBUL1dQVCBpbgo+ID5pbnRlbF9zYW5p
dGl6ZV9mcmFtZV9zdGFydF9kZWxheSgpCj4gPgo+ID4KPiA+Cj4gPj4tLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+ID4+RnJvbTogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gPj5TZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMjgsIDIwMTkgMTE6NTQgUE0K
PiA+PlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPj5DYzogU2hhbmthciwg
VW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gPj5TdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1
OiBVc2UgdGhlIGNvcnJlY3QgUENIIHRyYW5zY29kZXIgZm9yIExQVC9XUFQKPiA+PmluCj4gPj5p
bnRlbF9zYW5pdGl6ZV9mcmFtZV9zdGFydF9kZWxheSgpCj4gPj4KPiA+PkZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPj4KPiA+PkxQVC9XUFQg
b25seSBoYXZlIFBDSCB0cmFuc2NvZGVyIEEuIE1ha2Ugc3VyZSB3ZSBwb2tlIGF0IGl0cyBjaGlj
a2VuCj4gPj5yZWdpc3RlciBpbnN0ZWFkIG9mIHNvbWUgbm9uLWV4aXN0ZW50IHJlZ2lzdGVyIHdo
ZW4gRkRJIGlzIGJlaW5nIGRyaXZlbiBieSBwaXBlIEIgb3IKPiA+Qy4KPiA+Cj4gPkNoYW5nZSBs
b29rcyBnb29kIHRvIG1lLgo+ID5SZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2Fy
QGludGVsLmNvbT4KPiA+Cj4gPj5DYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4KPiA+PlNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gPj4tLS0KPiA+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDMgKystCj4gPj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+ID4+Cj4gPj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+PmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+PmluZGV4IDUzZGMzMTBhNWY2ZC4uZjk5ZGJjM2Q5Njk2
IDEwMDY0NAo+ID4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKPiA+PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gPj5AQCAtMTcyNzIsNyArMTcyNzIsOCBAQCBzdGF0aWMgdm9pZAo+ID4+aW50ZWxfc2Fu
aXRpemVfZnJhbWVfc3RhcnRfZGVsYXkoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGMKPiA+PiAJCXZhbCB8PSBUUkFOU19GUkFNRV9TVEFSVF9ERUxBWSgwKTsKPiA+PiAJCUk5MTVf
V1JJVEUocmVnLCB2YWwpOwo+ID4+IAl9IGVsc2Ugewo+ID4+LQkJaTkxNV9yZWdfdCByZWcgPSBU
UkFOU19DSElDS0VOMihjcnRjLT5waXBlKTsKPiA+PisJCWVudW0gcGlwZSBwY2hfdHJhbnNjb2Rl
ciA9IGludGVsX2NydGNfcGNoX3RyYW5zY29kZXIoY3J0Yyk7Cj4gCj4gSnVzdCBhbiBhZnRlcnRo
b3VnaHQsIG5vdCBzdXJlIGlmIHRoaXMgaG9sZCBnZW5lcmljYWxseSBmb3IgYWxsIHBpcGVzIG9y
IGlzIGl0IHByb2dyYW1tYWJsZQo+IG9ubHkgZm9yIFBJUEVfQS4gTWFraW5nIGl0IGVuYWJsZWQg
b24gUElQRV9BIHdoZW4gYWN0dWFsbHkgcGlwZSBCIG9yIEMgaXMgdXNlZCwgaXMgaXQgdGhlIHJp
Z2h0Cj4gdGhpbmcuIFNob3VsZCB3ZSBkaXNjYXJkIHByb2dyYW1taW5nIHRoaXMgZm9yIFBJUEUg
QiBhbmQgQyBhbHRvZ2V0aGVyLgoKVGhpcyBpcyBhYm91dCBQQ0ggdHJhbnNjb2RlciBBIGluc3Rl
YWQgb2YgcGlwZSBBIGRlc3BpdGUgdXMgdXNpbmcKZW51bSBwaXBlIGhlcmUuIFdlIGp1c3QgaGFw
cGVuIHRvIHVzZSBlbnVtIHBpcGUgZm9yIFBDSCB0cmFuc2NvZGVycwpzaW5jZSBpdCB3YXMgZWFz
aWVyIHRoYW4gYWRkaW5nIGEgbmV3IGVudW0gZm9yIGl0LgoKU28gaXQncyBwZXJmZWN0bHkgbGVn
YWwgdG8gaGF2ZSBhbnkgb2YgdGhlc2UgY29uZmlndXJhdGlvbnMgb24gSFNXL0JEVzoKcGlwZSBB
IC0+IENQVSB0cmFuc2NvZGVyIEEgLT4gRERJIEUgLT4gRkRJIC0+IFBDSCB0cmFuc2NvZGVyIEEg
LT4gQ1JUCnBpcGUgQiAtPiBDUFUgdHJhbnNjb2RlciBCIC0+IERESSBFIC0+IEZESSAtPiBQQ0gg
dHJhbnNjb2RlciBBIC0+IENSVApwaXBlIEMgLT4gQ1BVIHRyYW5zY29kZXIgQyAtPiBEREkgRSAt
PiBGREkgLT4gUENIIHRyYW5zY29kZXIgQSAtPiBDUlQKClNvIHdlIHdhbnQgdG8gZG8gdGhpcyBm
b3IgYW55IHBpcGUgd2hlbiBoYXNfcGNoX2VuY29kZXIgaW5kaWNhdGVzCnRoYXQgdGhlIGRhdGEg
aXMgZ29pbmcgb3ZlciBGREkgdG8gdGhlIFBDSC4KCj4gCj4gPj4rCQlpOTE1X3JlZ190IHJlZyA9
IFRSQU5TX0NISUNLRU4yKHBjaF90cmFuc2NvZGVyKTsKPiA+PiAJCXUzMiB2YWw7Cj4gPj4KPiA+
PiAJCXZhbCA9IEk5MTVfUkVBRChyZWcpOwo+ID4+LS0KPiA+PjIuMjMuMAo+IAoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
