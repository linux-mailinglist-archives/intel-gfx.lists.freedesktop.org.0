Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BD3EB320
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 15:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4080D6EEC1;
	Thu, 31 Oct 2019 14:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6140D6EEC1
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 14:49:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 07:49:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,250,1569308400"; d="scan'208";a="194340277"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 31 Oct 2019 07:49:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 16:49:35 +0200
Date: Thu, 31 Oct 2019 16:49:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191031144935.GY1208@intel.com>
References: <20191031112610.27608-1-maarten.lankhorst@linux.intel.com>
 <20191031112610.27608-9-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031112610.27608-9-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Perform automated
 conversions for plane uapi/hw split, base -> hw.
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

T24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgMTI6MjY6MDdQTSArMDEwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gU3BsaXQgdXAgcGxhbmVfc3RhdGUtPmJhc2UgdG8gaHcuIFRoaXMgaXMgZG9u
ZSB1c2luZyB0aGUgZm9sbG93aW5nIHBhdGNoOgo+IAo+IEBACj4gc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpUOwo+IGlkZW50aWZpZXIgeCA9fiAiXihjcnRjfGZifGFscGhhfHBpeGVsX2JsZW5k
X21vZGV8cm90YXRpb258Y29sb3JfZW5jb2Rpbmd8Y29sb3JfcmFuZ2UpJCI7Cj4gQEAKPiAtVC0+
YmFzZS54Cj4gK1QtPmh3LngKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jICAgfCAgIDYgKy0KPiAgLi4uL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHwgICA4ICstCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDEyNiArKysrKysrKyst
LS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyAgICAg
IHwgICA4ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5j
ICB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5j
ICAgfCAgOTAgKysrKysrLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
ICAgICAgICAgICAgICAgfCAgMzIgKystLS0KPiAgNyBmaWxlcyBjaGFuZ2VkLCAxMzYgaW5zZXJ0
aW9ucygrKSwgMTM2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWMuYwo+IGluZGV4IDMzMDFjMTc4ZGEwMy4uMGE1ZWVlNGMzNTBmIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCj4gQEAg
LTI4Myw5ICsyODMsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfc2V0dXBfc2NhbGVyKHN0
cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9zdGF0ZSAqc2NhbGVyX3N0YQo+ICAJCXJldHVybjsKPiAg
Cj4gIAkvKiBzZXQgc2NhbGVyIG1vZGUgKi8KPiAtCWlmIChwbGFuZV9zdGF0ZSAmJiBwbGFuZV9z
dGF0ZS0+YmFzZS5mYiAmJgo+IC0JICAgIHBsYW5lX3N0YXRlLT5iYXNlLmZiLT5mb3JtYXQtPmlz
X3l1diAmJgo+IC0JICAgIHBsYW5lX3N0YXRlLT5iYXNlLmZiLT5mb3JtYXQtPm51bV9wbGFuZXMg
PiAxKSB7Cj4gKwlpZiAocGxhbmVfc3RhdGUgJiYgcGxhbmVfc3RhdGUtPmh3LmZiICYmCj4gKwkg
ICAgcGxhbmVfc3RhdGUtPmh3LmZiLT5mb3JtYXQtPmlzX3l1diAmJgo+ICsJICAgIHBsYW5lX3N0
YXRlLT5ody5mYi0+Zm9ybWF0LT5udW1fcGxhbmVzID4gMSkgewo+ICAJCXN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShwbGFuZV9zdGF0ZS0+YmFzZS5wbGFuZSk7Cj4g
IAkJaWYgKElTX0dFTihkZXZfcHJpdiwgOSkgJiYKPiAgCQkgICAgIUlTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpKSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pY19wbGFuZS5jCj4gaW5kZXggNDE2Y2ZhNDM5ZjMzLi42MzM1MzU1NTU1YjMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMK
PiBAQCAtMTE4LDcgKzExOCw3IEBAIGludGVsX3BsYW5lX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRy
bV9wbGFuZSAqcGxhbmUsCj4gIHVuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9kYXRhX3JhdGUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJCQkgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICB7Cj4gLQljb25zdCBzdHJ1
Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5iYXNlLmZiOwo+ICsJY29uc3Qg
c3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7Cj4gIAl1bnNp
Z25lZCBpbnQgY3BwOwo+ICAKPiAgCWlmICghcGxhbmVfc3RhdGUtPmJhc2UudmlzaWJsZSkKPiBA
QCAtMTQ0LDcgKzE0NCw3IEBAIGJvb2wgaW50ZWxfcGxhbmVfY2FsY19taW5fY2RjbGsoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7Cj4gIAljb25zdCBzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlID0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19w
bGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOwo+IC0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0
b19pbnRlbF9jcnRjKHBsYW5lX3N0YXRlLT5iYXNlLmNydGMpOwo+ICsJc3RydWN0IGludGVsX2Ny
dGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKHBsYW5lX3N0YXRlLT5ody5jcnRjKTsKCkdvb2QgOikK
Ci0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
