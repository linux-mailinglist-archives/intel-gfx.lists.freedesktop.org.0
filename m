Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0205435F43
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 16:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A8889BB3;
	Wed,  5 Jun 2019 14:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A40589BB3
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 14:30:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 07:30:20 -0700
X-ExtLoop1: 1
Received: from francela-mobl.amr.corp.intel.com (HELO [10.249.32.70])
 ([10.249.32.70])
 by orsmga003.jf.intel.com with ESMTP; 05 Jun 2019 07:30:19 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190425203759.16342-1-ville.syrjala@linux.intel.com>
 <20190430173331.22821-1-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <30f038fe-99a8-20bd-eea9-6bca9ec25bbe@linux.intel.com>
Date: Wed, 5 Jun 2019 16:30:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190430173331.22821-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix 90/270 degree rotated
 RGB565 src coord checks
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

T3AgMzAtMDQtMjAxOSBvbSAxOTozMyBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFN1cHBvc2Vk
bHkgYm90aCBzcmMgY29vcmRpbmF0ZXMgaGF2ZSB0byBldmVuIHdoZW4gZG9pbmcgOTAvMjcwCj4g
ZGVncmVlIHJvdGF0aW9uIHdpdGggUkdCNTY1LiBUaGlzIGlzIGRlZmluaXRlbHkgdHJ1ZSBmb3Ig
dGhlCj4gWCBjb29yZGluYXRlICh3ZSBqdXN0IGdldCBhIGJsYWNrIHNjcmVlbiB3aGVuIGl0IGlz
IG9kZCkuIE15Cj4gZXhwZXJpbWVudHMgZGlkbid0IHNob3cgYW55IG1pc2JlaGF2aW91ciB3aXRo
IGFuIG9kZAo+IFkgY29vcmRpbmF0ZSwgYnV0IGxldCdzIHRydXN0IHRoZSBzcGVjIGFuZCByZWpl
Y3QgdGhhdCBvbmUKPiBhcyB3ZWxsLgo+Cj4gdjI6IElnbm9yZSBjY3MgaHN1Yi92c3ViCj4KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYyB8IDI4ICsr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlv
bnMoKyksIDExIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMK
PiBpbmRleCAyOTEzZTg5MjgwZDcuLmIxMzNmMjU0ZTI2ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3Nwcml0ZS5jCj4gQEAgLTI5NCwyNiArMjk0LDMyIEBAIGludCBpbnRlbF9wbGFuZV9j
aGVja19zcmNfY29vcmRpbmF0ZXMoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSkKPiAgCXNyYy0+eTEgPSBzcmNfeSA8PCAxNjsKPiAgCXNyYy0+eTIgPSAoc3JjX3kgKyBzcmNf
aCkgPDwgMTY7Cj4gIAo+IC0JaWYgKCFmYi0+Zm9ybWF0LT5pc195dXYpCj4gLQkJcmV0dXJuIDA7
Cj4gLQo+IC0JLyogWVVWIHNwZWNpZmljIGNoZWNrcyAqLwo+IC0JaWYgKCFyb3RhdGVkKSB7Cj4g
KwlpZiAoZmItPmZvcm1hdC0+Zm9ybWF0ID09IERSTV9GT1JNQVRfUkdCNTY1ICYmIHJvdGF0ZWQp
IHsKPiArCQloc3ViID0gMjsKPiArCQl2c3ViID0gMjsKPiArCX0gZWxzZSBpZiAoaXNfY2NzX21v
ZGlmaWVyKGZiLT5tb2RpZmllcikpIHsKPiArCQloc3ViID0gMTsKPiArCQl2c3ViID0gMTsKCkp1
c3QgcmV0dXJuIDAgaGVyZSwgd2l0aCBhIGNvbW1lbnQgaG93IGNjcyBzZXRzIHZzdWIvaHN1Yi4g
TGVzcyBjb25mdXNpbmcuCgpPdGhlciB0aGFuIHRoYXQuCgpSZXZpZXdlZC1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCj4gKwl9IGVsc2Ug
ewo+ICAJCWhzdWIgPSBmYi0+Zm9ybWF0LT5oc3ViOwo+ICAJCXZzdWIgPSBmYi0+Zm9ybWF0LT52
c3ViOwo+IC0JfSBlbHNlIHsKPiAtCQloc3ViID0gdnN1YiA9IG1heChmYi0+Zm9ybWF0LT5oc3Vi
LCBmYi0+Zm9ybWF0LT52c3ViKTsKPiAgCX0KPiAgCj4gKwlpZiAocm90YXRlZCkKPiArCQloc3Vi
ID0gdnN1YiA9IG1heChoc3ViLCB2c3ViKTsKPiArCj4gKwlpZiAoaHN1YiA9PSAxICYmIHZzdWIg
PT0gMSkKPiArCQlyZXR1cm4gMDsKPiArCj4gIAlpZiAoc3JjX3ggJSBoc3ViIHx8IHNyY193ICUg
aHN1Yikgewo+IC0JCURSTV9ERUJVR19LTVMoInNyYyB4L3cgKCV1LCAldSkgbXVzdCBiZSBhIG11
bHRpcGxlIG9mICV1IGZvciAlc1lVViBwbGFuZXNcbiIsCj4gLQkJCSAgICAgIHNyY194LCBzcmNf
dywgaHN1Yiwgcm90YXRlZCA/ICJyb3RhdGVkICIgOiAiIik7Cj4gKwkJRFJNX0RFQlVHX0tNUygi
c3JjIHgvdyAoJXUsICV1KSBtdXN0IGJlIGEgbXVsdGlwbGUgb2YgJXUgKHJvdGF0ZWQ6ICVzKVxu
IiwKPiArCQkJICAgICAgc3JjX3gsIHNyY193LCBoc3ViLCB5ZXNubyhyb3RhdGVkKSk7Cj4gIAkJ
cmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gIAo+ICAJaWYgKHNyY195ICUgdnN1YiB8fCBzcmNfaCAl
IHZzdWIpIHsKPiAtCQlEUk1fREVCVUdfS01TKCJzcmMgeS9oICgldSwgJXUpIG11c3QgYmUgYSBt
dWx0aXBsZSBvZiAldSBmb3IgJXNZVVYgcGxhbmVzXG4iLAo+IC0JCQkgICAgICBzcmNfeSwgc3Jj
X2gsIHZzdWIsIHJvdGF0ZWQgPyAicm90YXRlZCAiIDogIiIpOwo+ICsJCURSTV9ERUJVR19LTVMo
InNyYyB5L2ggKCV1LCAldSkgbXVzdCBiZSBhIG11bHRpcGxlIG9mICV1IChyb3RhdGVkOiAlcylc
biIsCj4gKwkJCSAgICAgIHNyY195LCBzcmNfaCwgdnN1YiwgeWVzbm8ocm90YXRlZCkpOwo+ICAJ
CXJldHVybiAtRUlOVkFMOwo+ICAJfQo+ICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
