Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2077B4D2E5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 18:11:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 663946E5CE;
	Thu, 20 Jun 2019 16:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB946E5CE;
 Thu, 20 Jun 2019 16:11:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:11:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="181892350"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 20 Jun 2019 09:11:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Jun 2019 19:11:00 +0300
Date: Thu, 20 Jun 2019 19:11:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ilia Mirkin <imirkin@alum.mit.edu>
Message-ID: <20190620161100.GI5942@intel.com>
References: <20190620154608.16239-1-ville.syrjala@linux.intel.com>
 <CAKb7Uvi7krst3nO+CcQXJZu4fJK4zvBXh3-t-KYuz85iNK9f-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKb7Uvi7krst3nO+CcQXJZu4fJK4zvBXh3-t-KYuz85iNK9f-Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm: Dump mode picture aspect ratio
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMTE6NTk6MzdBTSAtMDQwMCwgSWxpYSBNaXJraW4gd3Jv
dGU6Cj4gT24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMTE6NDYgQU0gVmlsbGUgU3lyamFsYQo+IDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+Cj4gPiBDdXJyZW50
bHkgdGhlIGxvZ3Mgc2hvdyBub3RoaW5nIGFib3V0IHRoZSBtb2RlJ3MgYXNwZWN0IHJhdGlvLgo+
ID4gSW5jbHVkZSB0aGF0IGluZm9ybWF0aW9uIGluIHRoZSBub3JtYWwgbW9kZSBkdW1wLgo+ID4K
PiA+IENjOiBJbGlhIE1pcmtpbiA8aW1pcmtpbkBhbHVtLm1pdC5lZHU+Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiAgZHJpdmVycy92aWRlby9oZG1pLmMgICAgfCAzICsrLQo+ID4gIGluY2x1ZGUvZHJt
L2RybV9tb2Rlcy5oIHwgNCArKy0tCj4gPiAgaW5jbHVkZS9saW51eC9oZG1pLmggICAgfCAzICsr
Kwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2hkbWkuYyBiL2RyaXZlcnMvdmlkZW8v
aGRtaS5jCj4gPiBpbmRleCBiOTM5YmMyOGQ4ODYuLmJjNTkzZmUxYzI2OCAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvdmlkZW8vaGRtaS5jCj4gPiArKysgYi9kcml2ZXJzL3ZpZGVvL2hkbWkuYwo+
ID4gQEAgLTEwNTcsNyArMTA1Nyw3IEBAIHN0YXRpYyBjb25zdCBjaGFyICpoZG1pX2NvbG9yaW1l
dHJ5X2dldF9uYW1lKGVudW0gaGRtaV9jb2xvcmltZXRyeSBjb2xvcmltZXRyeSkKPiA+ICAgICAg
ICAgcmV0dXJuICJJbnZhbGlkIjsKPiA+ICB9Cj4gPgo+ID4gLXN0YXRpYyBjb25zdCBjaGFyICoK
PiA+ICtjb25zdCBjaGFyICoKPiA+ICBoZG1pX3BpY3R1cmVfYXNwZWN0X2dldF9uYW1lKGVudW0g
aGRtaV9waWN0dXJlX2FzcGVjdCBwaWN0dXJlX2FzcGVjdCkKPiA+ICB7Cj4gPiAgICAgICAgIHN3
aXRjaCAocGljdHVyZV9hc3BlY3QpIHsKPiA+IEBAIC0xMDc2LDYgKzEwNzYsNyBAQCBoZG1pX3Bp
Y3R1cmVfYXNwZWN0X2dldF9uYW1lKGVudW0gaGRtaV9waWN0dXJlX2FzcGVjdCBwaWN0dXJlX2Fz
cGVjdCkKPiA+ICAgICAgICAgfQo+ID4gICAgICAgICByZXR1cm4gIkludmFsaWQiOwo+ID4gIH0K
PiA+ICtFWFBPUlRfU1lNQk9MKGhkbWlfcGljdHVyZV9hc3BlY3RfZ2V0X25hbWUpOwo+IAo+IFNv
IHRoaXMgd2lsbCByZXR1cm4gIk5vIERhdGEiIG1vc3Qgb2YgdGhlIHRpbWUgKHNpbmNlIHRoZSBE
Uk1fQ0FQCj4gd29uJ3QgYmUgZW5hYmxlZCk/IFRoaXMgd2lsbCBsb29rIGF3a3dhcmQsIGVzcCBz
aW5jZSB0aGUgcGVyc29uIHNlZWluZwo+IHRoaXMgcHJpbnQgd2lsbCBoYXZlIG5vIGlkZWEgd2hh
dCAiTm8gRGF0YSIgaXMgcmVmZXJyaW5nIHRvLgoKSSBzdXBwb3NlIHdlIGNvdWxkIGRvIApwaWN0
dXJlX2FzcGV0X3JhdGlvID8gaGRtaV9waWN0dXJlX2FzcGVjdF9nZXRfbmFtZShwaWN0dXJlX2Fz
cGV0X3JhdGlvKSA6ICIiCgo+IAo+ID4KPiA+ICBzdGF0aWMgY29uc3QgY2hhciAqCj4gPiAgaGRt
aV9hY3RpdmVfYXNwZWN0X2dldF9uYW1lKGVudW0gaGRtaV9hY3RpdmVfYXNwZWN0IGFjdGl2ZV9h
c3BlY3QpCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX21vZGVzLmggYi9pbmNsdWRl
L2RybS9kcm1fbW9kZXMuaAo+ID4gaW5kZXggMDgzZjE2NzQ3MzY5Li4yYjE4MDljNzRmYmUgMTAw
NjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fbW9kZXMuaAo+ID4gKysrIGIvaW5jbHVkZS9k
cm0vZHJtX21vZGVzLmgKPiA+IEBAIC00MzEsNyArNDMxLDcgQEAgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgewo+ID4gIC8qKgo+ID4gICAqIERSTV9NT0RFX0ZNVCAtIHByaW50ZiBzdHJpbmcgZm9y
ICZzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQo+ID4gICAqLwo+ID4gLSNkZWZpbmUgRFJNX01PREVf
Rk1UICAgICJcIiVzXCI6ICVkICVkICVkICVkICVkICVkICVkICVkICVkICVkIDB4JXggMHgleCIK
PiA+ICsjZGVmaW5lIERSTV9NT0RFX0ZNVCAgICAiXCIlc1wiOiAlZCAlZCAlZCAlZCAlZCAlZCAl
ZCAlZCAlZCAlZCAweCV4IDB4JXggJXMiCj4gPgo+ID4gIC8qKgo+ID4gICAqIERSTV9NT0RFX0FS
RyAtIHByaW50ZiBhcmd1bWVudHMgZm9yICZzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZQo+ID4gQEAg
LTQ0MSw3ICs0NDEsNyBAQCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSB7Cj4gPiAgICAgICAgICht
KS0+bmFtZSwgKG0pLT52cmVmcmVzaCwgKG0pLT5jbG9jaywgXAo+ID4gICAgICAgICAobSktPmhk
aXNwbGF5LCAobSktPmhzeW5jX3N0YXJ0LCAobSktPmhzeW5jX2VuZCwgKG0pLT5odG90YWwsIFwK
PiA+ICAgICAgICAgKG0pLT52ZGlzcGxheSwgKG0pLT52c3luY19zdGFydCwgKG0pLT52c3luY19l
bmQsIChtKS0+dnRvdGFsLCBcCj4gPiAtICAgICAgIChtKS0+dHlwZSwgKG0pLT5mbGFncwo+ID4g
KyAgICAgICAobSktPnR5cGUsIChtKS0+ZmxhZ3MsIGhkbWlfcGljdHVyZV9hc3BlY3RfZ2V0X25h
bWUoKG0pLT5waWN0dXJlX2FzcGVjdF9yYXRpbykKPiAKPiBGbGFncyBhcmUgcHJpbnRlZCBhcyBh
IGxpdGVyYWwgaW50ZWdlciB2YWx1ZS4gR2l2ZW4gdGhhdCBBUiBzdHVmZiBpcwo+IGZhaXJseSBl
c290ZXJpYywgSSBtaWdodCBqdXN0IHByaW50IGFuIGludGVnZXIgaGVyZSB0b28uCgpJIGhhdGUg
dGhvc2UgdGhpbmcuIEkgY2FuJ3QgZXZlbiByZW1lbWJlciB3aGljaCBpcyBvbmUgdGhlIHR5cGUK
KGFic29sdXRlbHkgdXNlbGVzcykgYW5kIHdoaWNoIG9uIGlzIHRoZSBmbGFncy4gQW5kIEkgYWx3
YXlzIGVuZCB1cApnb2luZyB0aHJvdWdoIHRoZSBoZWFkZXJzIHRvIGZpZ3VyZSBvdXQgd2hpY2gg
Yml0IGlzIHdoYXQgc3luYyBwb2xhcml0eS4KU28gSSdkIHJhdGhlciBsaWtlIHRvIGRlY29kZSB0
aG9zZSB0b28sIGp1c3QgYmVlbiB0b28gbGF6eSB0byBkbyBpdC4KCj4gKFdoeSB3YXMKPiBwaWN0
dXJlX2FzcGVjdF9yYXRpbyBub3Qgc3R1ZmZlZCBpbnRvIC0+ZmxhZ3MgaW4gdGhlIGZpcnN0IHBs
YWNlPykKCkl0J3MgYWxzbyBpbiB0aGVyZS4gSSB0aGluayB0aGUgcmVhc29uIGZvciBoYXZpbmcg
dGhpcyBvZGQgZHVwbGljYXRpb24Kd2FzIHRoYXQgd2UgZGlkbid0IGhhdmUgdGhlIGZsYWdzIGlu
aXRpYWxseSwgYW5kIGp1c3QgaGFkIHRoZSBwcm9wLgpJJ3ZlIG5vdCBsb29rZWQgaG93IGhhcmQg
aXQgd291bGQgYmUgdG8gZ2V0IHJpZCBvZiB0aGF0LgoKCj4gCj4gPgo+ID4gICNkZWZpbmUgb2Jq
X3RvX21vZGUoeCkgY29udGFpbmVyX29mKHgsIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlLCBiYXNl
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2hkbWkuaCBiL2luY2x1ZGUvbGlu
dXgvaGRtaS5oCj4gPiBpbmRleCA5OTE4YTZjOTEwYzUuLmRlN2NiZTM4NWRiYSAxMDA2NDQKPiA+
IC0tLSBhL2luY2x1ZGUvbGludXgvaGRtaS5oCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2hkbWku
aAo+ID4gQEAgLTQzNCw0ICs0MzQsNyBAQCBpbnQgaGRtaV9pbmZvZnJhbWVfdW5wYWNrKHVuaW9u
IGhkbWlfaW5mb2ZyYW1lICpmcmFtZSwKPiA+ICB2b2lkIGhkbWlfaW5mb2ZyYW1lX2xvZyhjb25z
dCBjaGFyICpsZXZlbCwgc3RydWN0IGRldmljZSAqZGV2LAo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgY29uc3QgdW5pb24gaGRtaV9pbmZvZnJhbWUgKmZyYW1lKTsKPiA+Cj4gPiArY29uc3Qg
Y2hhciAqCj4gPiAraGRtaV9waWN0dXJlX2FzcGVjdF9nZXRfbmFtZShlbnVtIGhkbWlfcGljdHVy
ZV9hc3BlY3QgcGljdHVyZV9hc3BlY3QpOwo+ID4gKwo+ID4gICNlbmRpZiAvKiBfRFJNX0hETUlf
SCAqLwo+ID4gLS0KPiA+IDIuMjEuMAo+ID4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
