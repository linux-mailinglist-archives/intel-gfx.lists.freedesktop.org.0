Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA006362C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B5EB89533;
	Tue,  9 Jul 2019 12:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B6B989533
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:48:42 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:48:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="185906404"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 09 Jul 2019 05:48:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Jul 2019 15:48:37 +0300
Date: Tue, 9 Jul 2019 15:48:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190709124837.GT5942@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-26-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708231629.9296-26-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 25/25] drm/i915/tgl: Update DPLL clock
 reference register
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

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6MjlQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IAo+IFRoaXMgcmVnaXN0ZXIgZGVmaW5pdGlvbiBjaGFuZ2VkIGZyb20gSUNMIGFuZCBo
YXMgbm93IGFub3RoZXIgbWVhbmluZy4KPiBVc2UgdGhlIHJpZ2h0IGJpdHMgb24gVEdMLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmMgfCA4ICsrKysrKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
ICAgICAgICAgICB8IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jCj4gaW5kZXggMzMwYjQyYTFmNTRlLi45NzkzMDM5NDg1ZTUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gQEAgLTI1OTcs
OCArMjU5NywxMiBAQCBzdGF0aWMgYm9vbCBpY2xfY2FsY19kcGxsX3N0YXRlKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJY2ZnY3IxID0gRFBMTF9DRkdDUjFfUURJVl9S
QVRJTyhwbGxfcGFyYW1zLnFkaXZfcmF0aW8pIHwKPiAgCQkgRFBMTF9DRkdDUjFfUURJVl9NT0RF
KHBsbF9wYXJhbXMucWRpdl9tb2RlKSB8Cj4gIAkJIERQTExfQ0ZHQ1IxX0tESVYocGxsX3BhcmFt
cy5rZGl2KSB8Cj4gLQkJIERQTExfQ0ZHQ1IxX1BESVYocGxsX3BhcmFtcy5wZGl2KSB8Cj4gLQkJ
IERQTExfQ0ZHQ1IxX0NFTlRSQUxfRlJFUV84NDAwOwo+ICsJCSBEUExMX0NGR0NSMV9QRElWKHBs
bF9wYXJhbXMucGRpdik7Cj4gKwo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4g
KwkJY2ZnY3IxIHw9IFRHTF9EUExMX0NGR0NSMV9DRlNFTE9WUkRfTk9STUFMX1hUQUw7Cj4gKwll
bHNlCj4gKwkJY2ZnY3IxIHw9IERQTExfQ0ZHQ1IxX0NFTlRSQUxfRlJFUV84NDAwOwo+ICAKPiAg
CW1lbXNldChwbGxfc3RhdGUsIDAsIHNpemVvZigqcGxsX3N0YXRlKSk7Cj4gIAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+IGluZGV4IDg0YzA0ZWE2N2VjOC4uYTI0NGU4MTU4YWVlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTk5NDcsNiArOTk0Nyw3IEBAIGVudW0gc2tsX3Bv
d2VyX2dhdGUgewo+ICAjZGVmaW5lICBEUExMX0NGR0NSMV9QRElWXzcJCSg4IDw8IDIpCj4gICNk
ZWZpbmUgIERQTExfQ0ZHQ1IxX0NFTlRSQUxfRlJFUQkoMyA8PCAwKQo+ICAjZGVmaW5lICBEUExM
X0NGR0NSMV9DRU5UUkFMX0ZSRVFfODQwMAkoMyA8PCAwKQo+ICsjZGVmaW5lICBUR0xfRFBMTF9D
RkdDUjFfQ0ZTRUxPVlJEX05PUk1BTF9YVEFMCSgwIDw8IDApCgpJJ2QgcHJvYmFibHkgbGVhdmUg
dGhpcyBvdXQgZW50aXJlbHkgaWYgd2UncmUgbm90IGdvaW5nIHRvIGRlZmluZSB0aGUKb3RoZXIg
dmFsdWVzIG9mIHRoZXNzIGJpdHMuCgpFaXRoZXIgd2F5ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKPiAgI2RlZmluZSBDTkxfRFBM
TF9DRkdDUjEocGxsKQkJX01NSU9fUExMKHBsbCwgX0NOTF9EUExMMF9DRkdDUjEsIF9DTkxfRFBM
TDFfQ0ZHQ1IxKQo+ICAKPiAgI2RlZmluZSBfSUNMX0RQTEwwX0NGR0NSMAkJMHgxNjQwMDAKPiAt
LSAKPiAyLjIxLjAKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
