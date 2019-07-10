Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B831F64CA4
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 21:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4626E126;
	Wed, 10 Jul 2019 19:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38FB6E126
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 19:18:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 12:18:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="156593784"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 10 Jul 2019 12:18:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Jul 2019 22:18:38 +0300
Date: Wed, 10 Jul 2019 22:18:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190710191838.GN5942@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
 <20190709214735.16907-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709214735.16907-2-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/tgl: Bump up the
 plane/fb height to support 8K
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

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDI6NDc6MzVQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBUR0wrLCB0aGUgcGxhbmUgaGVpZ2h0IGZvciA4SyBwbGFuZXMgY2FuIGJlIDQz
MjAsIHNvIGJ1bXAgaXQgdXAKPiBUbyBzdXBwb3J0IDQzMjAsIHdlIG5lZWQgdG8gaW5jcmVhc2Ug
dGhlIG51bWJlciBvZiBiaXRzIHVzZWQgdG8KPiByZWFkIHBsYW5lX2hlaWdodCB0byAxMyBhcyBv
cHBvc2VkIHRvIG9sZGVyIDEyIGJpdHMuCj4gCj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyMSArKysrKysrKysrKysrKysrKystLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDBkNWM4
YWYwMWY1NC4uYmU5YTU0Y2I1ZWNjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMzM0Myw2ICszMzQzLDE2IEBAIHN0YXRpYyBpbnQg
aWNsX21heF9wbGFuZV93aWR0aChjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwKPiAg
CXJldHVybiA1MTIwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IHNrbF9tYXhfcGxhbmVfaGVpZ2h0
KHZvaWQpCj4gK3sKPiArCXJldHVybiA0MDk2Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHRnbF9t
YXhfcGxhbmVfaGVpZ2h0KHZvaWQpCj4gK3sKPiArCXJldHVybiA0MzIwOwoKaWNsIGhhcyB0aGlz
IGxpbWl0IGFscmVhZHkuCgo+ICt9Cj4gKwo+ICBzdGF0aWMgYm9vbCBza2xfY2hlY2tfbWFpbl9j
Y3NfY29vcmRpbmF0ZXMoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKPiAg
CQkJCQkgICBpbnQgbWFpbl94LCBpbnQgbWFpbl95LCB1MzIgbWFpbl9vZmZzZXQpCj4gIHsKPiBA
QCAtMzM5MSw5ICszNDAxLDEzIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX21haW5fc3VyZmFjZShz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICAJaW50IHcgPSBkcm1fcmVj
dF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2Uuc3JjKSA+PiAxNjsKPiAgCWludCBoID0gZHJtX3Jl
Y3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMpID4+IDE2Owo+ICAJaW50IG1heF93aWR0
aDsKPiAtCWludCBtYXhfaGVpZ2h0ID0gNDA5NjsKPiArCWludCBtYXhfaGVpZ2h0Owo+ICAJdTMy
IGFsaWdubWVudCwgb2Zmc2V0LCBhdXhfb2Zmc2V0ID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5l
WzFdLm9mZnNldDsKPiAgCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiArCQlt
YXhfaGVpZ2h0ID0gdGdsX21heF9wbGFuZV9oZWlnaHQoKTsKPiArCWVsc2UKPiArCQltYXhfaGVp
Z2h0ID0gc2tsX21heF9wbGFuZV9oZWlnaHQoKTsKPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExKQo+ICAJCW1heF93aWR0aCA9IGljbF9tYXhfcGxhbmVfd2lkdGgoZmIsIDAsIHJvdGF0
aW9uKTsKPiAgCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5J
TEFLRShkZXZfcHJpdikpCj4gQEAgLTk4NjUsNyArOTg3OSwxMCBAQCBza3lsYWtlX2dldF9pbml0
aWFsX3BsYW5lX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAgCW9mZnNldCA9IEk5
MTVfUkVBRChQTEFORV9PRkZTRVQocGlwZSwgcGxhbmVfaWQpKTsKPiAgCj4gIAl2YWwgPSBJOTE1
X1JFQUQoUExBTkVfU0laRShwaXBlLCBwbGFuZV9pZCkpOwo+IC0JZmItPmhlaWdodCA9ICgodmFs
ID4+IDE2KSAmIDB4ZmZmKSArIDE7Cj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikK
PiArCQlmYi0+aGVpZ2h0ID0gKCh2YWwgPj4gMTYpICYgMHgxZmZmKSArIDE7Cj4gKwllbHNlCj4g
KwkJZmItPmhlaWdodCA9ICgodmFsID4+IDE2KSAmIDB4ZmZmKSArIDE7Cj4gIAlmYi0+d2lkdGgg
PSAoKHZhbCA+PiAwKSAmIDB4MWZmZikgKyAxOwo+ICAKPiAgCXZhbCA9IEk5MTVfUkVBRChQTEFO
RV9TVFJJREUocGlwZSwgcGxhbmVfaWQpKTsKPiAtLSAKPiAyLjE5LjEKCi0tIApWaWxsZSBTeXJq
w6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
