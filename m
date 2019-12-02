Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 851C410EC0D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 16:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E53AF89EAE;
	Mon,  2 Dec 2019 15:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C08C789EAE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 15:05:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 07:05:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="204588439"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 02 Dec 2019 07:05:55 -0800
Date: Mon, 2 Dec 2019 20:35:23 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191202150523.GD15371@intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
 <20191129185434.25549-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129185434.25549-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915: Use drm_modeset_lock_all()
 in debugfs display info
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

T24gMjAxOS0xMS0yOSBhdCAyMDo1NDozMSArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IE1ha2Ugb3V0IGxpZmUgZWFzaWVyIGJ5IGp1c3QgZ3JhYmJpbmcgYWxsIG1vZGVzZXQgbG9ja3Mg
YXJvdW5kCj4gdGhlIGRpc3BsYXlfaW5mbyBkdW1wLgo+IApMb29rcyBnb29kIHRvIG1lLgoKUmV2
aWV3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KCj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAxMSArKysrKy0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gaW5kZXggMTFmM2Y5MWJlZmI5Li4z
YmY3ZDRlMmY5NDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0y
NjY3LDIzICsyNjY3LDIyIEBAIHN0YXRpYyBpbnQgaTkxNV9kaXNwbGF5X2luZm8oc3RydWN0IHNl
cV9maWxlICptLCB2b2lkICp1bnVzZWQpCj4gIAo+ICAJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVf
cG1fZ2V0KCZkZXZfcHJpdi0+cnVudGltZV9wbSk7Cj4gIAo+ICsJZHJtX21vZGVzZXRfbG9ja19h
bGwoZGV2KTsKPiArCj4gIAlzZXFfcHJpbnRmKG0sICJDUlRDIGluZm9cbiIpOwo+ICAJc2VxX3By
aW50ZihtLCAiLS0tLS0tLS0tXG4iKTsKPiAtCWZvcl9lYWNoX2ludGVsX2NydGMoZGV2LCBjcnRj
KSB7Cj4gLQkJZHJtX21vZGVzZXRfbG9jaygmY3J0Yy0+YmFzZS5tdXRleCwgTlVMTCk7Cj4gKwlm
b3JfZWFjaF9pbnRlbF9jcnRjKGRldiwgY3J0YykKPiAgCQlpbnRlbF9jcnRjX2luZm8obSwgY3J0
Yyk7Cj4gLQkJZHJtX21vZGVzZXRfdW5sb2NrKCZjcnRjLT5iYXNlLm11dGV4KTsKPiAtCX0KPiAg
Cj4gIAlzZXFfcHJpbnRmKG0sICJcbiIpOwo+ICAJc2VxX3ByaW50ZihtLCAiQ29ubmVjdG9yIGlu
Zm9cbiIpOwo+ICAJc2VxX3ByaW50ZihtLCAiLS0tLS0tLS0tLS0tLS1cbiIpOwo+IC0JbXV0ZXhf
bG9jaygmZGV2LT5tb2RlX2NvbmZpZy5tdXRleCk7Cj4gIAlkcm1fY29ubmVjdG9yX2xpc3RfaXRl
cl9iZWdpbihkZXYsICZjb25uX2l0ZXIpOwo+ICAJZHJtX2Zvcl9lYWNoX2Nvbm5lY3Rvcl9pdGVy
KGNvbm5lY3RvciwgJmNvbm5faXRlcikKPiAgCQlpbnRlbF9jb25uZWN0b3JfaW5mbyhtLCBjb25u
ZWN0b3IpOwo+ICAJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCZjb25uX2l0ZXIpOwo+IC0J
bXV0ZXhfdW5sb2NrKCZkZXYtPm1vZGVfY29uZmlnLm11dGV4KTsKPiArCj4gKwlkcm1fbW9kZXNl
dF91bmxvY2tfYWxsKGRldik7Cj4gIAo+ICAJaW50ZWxfcnVudGltZV9wbV9wdXQoJmRldl9wcml2
LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKPiAgCj4gLS0gCj4gMi4yMy4wCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
