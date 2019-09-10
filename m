Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5860AE4BE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 09:39:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7FD1893B9;
	Tue, 10 Sep 2019 07:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DD66E845
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 07:39:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 00:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="268326958"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 10 Sep 2019 00:39:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2019 10:39:31 +0300
Date: Tue, 10 Sep 2019 10:39:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190910073931.GY7482@intel.com>
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909225536.7037-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Allow clobbering gpu
 resets if the display is off
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

T24gTW9uLCBTZXAgMDksIDIwMTkgYXQgMTE6NTU6MzVQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IElmIHRoZSBkaXNwbGF5IGlzIGluYWN0aXZlLCB3ZSBuZWVkIG5vdCB3b3JyeSBhYm91
dCB0aGUgZ3B1IHJlc2V0Cj4gY2xvYmJlcmluZyB0aGUgZGlzcGxheSEKPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyB8IDE4ICsrKysrKysrKysrKysrKysr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+IGluZGV4IGI5ZDg0ZDUyZTk4Ni4u
ZmU1NzI5NmI3OTBjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCj4g
QEAgLTcsNiArNyw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9zY2hlZC9tbS5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvc3RvcF9tYWNoaW5lLmg+Cj4gIAo+ICsjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmgiCj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPiAg
I2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfb3ZlcmxheS5oIgo+ICAKPiBAQCAtNzI5LDYgKzczMCwy
MSBAQCBzdGF0aWMgdm9pZCBub3Bfc3VibWl0X3JlcXVlc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cmVxdWVzdCkKPiAgCWludGVsX2VuZ2luZV9xdWV1ZV9icmVhZGNydW1icyhlbmdpbmUpOwo+ICB9
Cj4gIAo+ICtzdGF0aWMgYm9vbCByZXNldF9jbG9iYmVyc19kaXNwbGF5KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiArCj4g
KwlpZiAoIUlOVEVMX0lORk8oaTkxNSktPmdwdV9yZXNldF9jbG9iYmVyc19kaXNwbGF5KQo+ICsJ
CXJldHVybiBmYWxzZTsKPiArCj4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjKCZpOTE1LT5kcm0sIGNy
dGMpIHsKPiArCQlpZiAoY3J0Yy0+YWN0aXZlKQo+ICsJCQlyZXR1cm4gdHJ1ZTsKPiArCX0KClRo
aXMgZmVlbHMgcmFjeS4gY3J0Yy0+YWN0aXZlIGdldHMgc2V0IHNvbWV3aGVyZSBpbiB0aGUgbWlk
ZGxlIG9mIHRoZQptb2Rlc2V0LCBzbyBsb29rcyBsaWtlIG5vdyB3ZSBjb3VsZCBjbG9iYmVyIGFs
bCB0aGUgc3R1ZmYgd2UndmUgYWxyZWFkeQpzZXQgdXAgYmVmb3JlIGNydGMtPmFjdGl2ZSBnb3Qg
c2V0LgoKPiArCj4gKwlyZXR1cm4gZmFsc2U7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIF9faW50
ZWxfZ3Rfc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICB7Cj4gIAlzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmU7Cj4gQEAgLTc1NSw3ICs3NzEsNyBAQCBzdGF0aWMgdm9pZCBf
X2ludGVsX2d0X3NldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpndCkKPiAgCWF3YWtlID0gcmVz
ZXRfcHJlcGFyZShndCk7Cj4gIAo+ICAJLyogRXZlbiBpZiB0aGUgR1BVIHJlc2V0IGZhaWxzLCBp
dCBzaG91bGQgc3RpbGwgc3RvcCB0aGUgZW5naW5lcyAqLwo+IC0JaWYgKCFJTlRFTF9JTkZPKGd0
LT5pOTE1KS0+Z3B1X3Jlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkpCj4gKwlpZiAoIXJlc2V0X2Nsb2Ji
ZXJzX2Rpc3BsYXkoZ3QtPmk5MTUpKQo+ICAJCV9faW50ZWxfZ3RfcmVzZXQoZ3QsIEFMTF9FTkdJ
TkVTKTsKPiAgCj4gIAlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndC0+aTkxNSwgaWQpCj4gLS0g
Cj4gMi4yMy4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
