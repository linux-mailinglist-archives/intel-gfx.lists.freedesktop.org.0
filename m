Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 493A9E8BB9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 16:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76AD96E426;
	Tue, 29 Oct 2019 15:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8666E426
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 15:22:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 08:22:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="230101555"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 29 Oct 2019 08:22:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2019 17:22:38 +0200
Date: Tue, 29 Oct 2019 17:22:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20191029152238.GZ1208@intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-7-ville.syrjala@linux.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DCFC@BGSMSX104.gar.corp.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DD9F@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DD9F@BGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Reject ckey+fp16 on skl+
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

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMDE6MzU6NTdQTSArMDAwMCwgU2hhbmthciwgVW1hIHdy
b3RlOgo+IAo+IAo+ID4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID5Gcm9tOiBTaGFua2Fy
LCBVbWEKPiA+U2VudDogVHVlc2RheSwgT2N0b2JlciAyOSwgMjAxOSA2OjM4IFBNCj4gPlRvOiBW
aWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+U3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQQVRDSCA3
LzldIGRybS9pOTE1OiBSZWplY3QgY2tleStmcDE2IG9uIHNrbCsKPiA+Cj4gPgo+ID4KPiA+Pi0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPj5Gcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mCj4gPj5WaWxsZSBTeXJq
YWxhCj4gPj5TZW50OiBUdWVzZGF5LCBPY3RvYmVyIDgsIDIwMTkgOTo0NSBQTQo+ID4+VG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+PlN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQ
QVRDSCA3LzldIGRybS9pOTE1OiBSZWplY3QgY2tleStmcDE2IG9uIHNrbCsKPiA+Pgo+ID4+RnJv
bTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+Pgo+
ID4+QWNjb3JkaW5nIHRvIHRoZSBzcGVjIGNvbG9yIGtleWluZyBpcyBub3Qgc3VwcG9ydGVkIHdp
dGgKPiA+PmZwMTYgcGl4ZWwgZm9ybWF0cyBvbiBza2wrLiBSZWplY3QgdGhhdCBjb21iby4KPiA+
Pgo+ID4+U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiA+Pi0tLQo+ID4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc3ByaXRlLmMgfCAxOCArKysrKysrKysrKysrKysrKysKPiA+PiAxIGZpbGUgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKQo+ID4+Cj4gPj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+ID4+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jCj4gPj5pbmRleCBjYzllNWM5NjY4YjEuLmQ2Y2Q0NmUzZjczOCAx
MDA2NDQKPiA+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMKPiA+PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMK
PiA+PkBAIC0xNjg5LDYgKzE2ODksMTkgQEAgdmx2X3Nwcml0ZV9jaGVjayhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+PiAJcmV0dXJuIDA7Cj4gPj4gfQo+ID4+Cj4gPj4r
c3RhdGljIGJvb2wgZm9ybWF0X2lzX2ZwMTYodTMyIGZvcm1hdCkgewo+ID4+Kwlzd2l0Y2ggKGZv
cm1hdCkgewo+ID4+KwljYXNlIERSTV9GT1JNQVRfWFJHQjE2MTYxNjE2RjoKPiA+PisJY2FzZSBE
Uk1fRk9STUFUX1hCR1IxNjE2MTYxNkY6Cj4gPj4rCWNhc2UgRFJNX0ZPUk1BVF9BUkdCMTYxNjE2
MTZGOgo+ID4+KwljYXNlIERSTV9GT1JNQVRfQUJHUjE2MTYxNjE2RjoKPiA+PisJCXJldHVybiB0
cnVlOwo+ID4+KwlkZWZhdWx0Ogo+ID4+KwkJcmV0dXJuIGZhbHNlOwo+ID4+Kwl9Cj4gPj4rfQo+
ID4+Kwo+ID4+IHN0YXRpYyBpbnQgc2tsX3BsYW5lX2NoZWNrX2ZiKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ID4+IAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpICB7IEBAIC0KPiA+PjE3NjAsNiArMTc3MywxMSBA
QCBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QKPiA+PmludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gPj4gCQlyZXR1cm4gLUVJTlZBTDsKPiA+PiAJfQo+ID4+
Cj4gPj4rCWlmIChwbGFuZV9zdGF0ZS0+Y2tleS5mbGFncyAmJiBmb3JtYXRfaXNfZnAxNihmYi0+
Zm9ybWF0LT5mb3JtYXQpKSB7Cj4gPj4rCQlEUk1fREVCVUdfS01TKCJDb2xvciBrZXlpbmcgbm90
IHN1cHBvcnRlZCB3aXRoIGZwMTYKPiA+PmZvcm1hdHNcbiIpOwo+ID4KPiA+SXQgc2VlbXMgZXZl
biAiSW5kZXhlZCA4IGJpdCBmb3JtYXRzIiBhbHNvIGRvbid0IHN1cHBvcnQgQ29sb3IgS2V5aW5n
LiBNYXkgYmUgeW91Cj4gPmNhbiBleHRlbmQgaXQgdG8gZXZlbiBDOC4KPiAKPiB3cnQgQzgsIGF0
IHRoZSBiaXQgZGVmaW5pdGlvbiBvZiBjb2xvciBrZXlpbmcgb24gUExBTkVfQ1RMIHRoZSBkZXNj
cmlwdGlvbiBzYXlzCj4gIlBsYW5lIGNvbG9yIGtleWluZyBpcyBub3QgY29tcGF0aWJsZSB3aXRo
IHRoZSBJbmRleGVkIDgtYml0IHBpeGVsIGZvcm1hdC4iLAo+IGJ1dCBvbiBjYXBhYmlsaXR5IGl0
IGRvIGxpc3QgQzguIFNvIG5vdCBzdXJlIHdoYXQgaXMgY29ycmVjdC4gCgpJdCB3b3JrcyBqdXN0
IGZpbmUsIG9yIGF0IGxlYXN0IGl0IGRpZCBvbiBvbGRlciBwbGF0Zm9ybXMuClNvIHVubGVzcyB0
aGV5IGJyb2tlIGl0IHJlY2VudGx5IHdlIHNob3VsZCBiZSBnb29kLgoKUmVnYXJkaW5nIGZwMTYg
dnMuIGNvbG9ya2V5LCBub3Qgc3VyZSB3aGF0IHRoZSBkZWFsIHJlYWxseSBpcy4KSSBzaG91bGQg
cHJvYmFibHkgdGVzdCBpdCBhY3Jvc3MgdGhlIGJvYXJkIG5vdyB0aGF0IHdlIGhhdmUKZnAxNiBm
b3IgYWxsIGdlbjQrLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
