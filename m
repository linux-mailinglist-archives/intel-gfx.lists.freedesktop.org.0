Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C418DEBF36
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 09:30:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B516F777;
	Fri,  1 Nov 2019 08:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 251D06F777
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 08:30:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 01:30:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,254,1569308400"; d="scan'208";a="194603479"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2019 01:30:46 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  2 Nov 2019 00:29:38 +0800
Message-Id: <20191101162938.23171-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191031111407.12493-1-jani.nikula@intel.com>
References: <20191031111407.12493-1-jani.nikula@intel.com>
Subject: [Intel-gfx] [PATCH v3] drm/i915: update rawclk also on resume
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
Cc: Jani Nikula <jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgQ05QIGl0J3MgcG9zc2libGUgZm9yIHJhd2NsayB0byBoYXZlIHR3byBkaWZmZXJlbnQg
dmFsdWVzLCAxOS4yCmFuZCAyNCBNSHouIElmIHRoZSB2YWx1ZSBpbmRpY2F0ZWQgYnkgU0ZVU0Vf
U1RSQVAgcmVnaXN0ZXIgaXMgZGlmZmVyZW50CmZyb20gdGhlIHBvd2VyIG9uIGRlZmF1bHQgZm9y
IFBDSF9SQVdDTEtfRlJFUSwgd2UnbGwgZW5kIHVwIGhhdmluZyBhCm1pc21hdGNoIGJldHdlZW4g
dGhlIHJhd2NsayBoYXJkd2FyZSBhbmQgc29mdHdhcmUgc3RhdGVzIGFmdGVyCnN1c3BlbmQvcmVz
dW1lLiBPbiBwcmV2aW91cyBwbGF0Zm9ybXMgdGhpcyB1c2VkIHRvIHdvcmsgYnkgYWNjaWRlbnQs
CmJlY2F1c2UgdGhlIHBvd2VyIG9uIGRlZmF1bHRzIHdvcmtlZCBqdXN0IGZpbmUuCgpVcGRhdGUg
dGhlIHJhd2NsayBhbHNvIG9uIHJlc3VtZS4gVGhlIG5hdHVyYWwgcGxhY2UgdG8gZG8gdGhpcyBp
cwppbnRlbF9tb2Rlc2V0X2luaXRfaHcoKSwgaG93ZXZlciBWTFYvQ0hWIG5lZWQgaXQgZG9uZSBi
ZWZvcmUKaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KCkuIFNwbGl0IHRoZSB1cGRhdGUgYWNj
b3JkaW5nbHksIGV2ZW4gaWYKdGhhdCdzIHNsaWdobHkgdWdseS4gVGhpcyBtZWFucyBtb3Zpbmcg
dGhlIHVwZGF0ZSBsYXRlciBmb3Igbm9uLVZMVi9DSFYKcGxhdGZvcm1zIGluIHByb2JlLgoKdjI6
IERvIGludGVsX3VwZGF0ZV9yYXdjbGsoKSBhdCBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHco
KS4gUmF3Y2xrIHdpbGwKYmUgY29uZmlndXJlZCB3aXRoIHByb3BlciBzZXR0aW5nIGFuZCBleGVj
dXRlZCBiZWZvcmUgaW50ZWxfbW9kZXNldF9pbml0X2h3KCkuCnYzOiBVcGRhdGUgY29kZSBiYXNl
IHRvIGxhdGVzdCB0byBmaXggZ2l0IG1lcmdlIGZhaWxlZC4KClJlcG9ydGVkLWJ5OiBTaGF3biBM
ZWUgPHNoYXduLmMubGVlQGludGVsLmNvbT4KQ2M6IFNoYXduIExlZSA8c2hhd24uYy5sZWVAaW50
ZWwuY29tPgpDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IExlZSBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA2ICsrKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgICAgICAgfCAzIC0t
LQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwpp
bmRleCA3MDdhYzExMGUyNzEuLjIxYTk1ZDE4MWEyMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTUwMTUsNiArNTAxNSwx
MiBAQCB2b2lkIGludGVsX3Bvd2VyX2RvbWFpbnNfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgYm9vbCByZXN1bWUpCiAKIAlwb3dlcl9kb21haW5zLT5pbml0aWFsaXppbmcg
PSB0cnVlOwogCisJLyoKKwkgKiBNdXN0IGhhcHBlbiBiZWZvcmUgcG93ZXIgZG9tYWluIGluaXQg
b24gVkxWL0NIViwgdGhlIHJlc3QgdXBkYXRlCisJICogcmF3Y2xrIGNhbiBiZSBkb25lIGhlcmUg
YXMgd2VsbC4KKwkgKi8KKwlpbnRlbF91cGRhdGVfcmF3Y2xrKGk5MTUpOworCiAJaWYgKElOVEVM
X0dFTihpOTE1KSA+PSAxMSkgewogCQlpY2xfZGlzcGxheV9jb3JlX2luaXQoaTkxNSwgcmVzdW1l
KTsKIAl9IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoaTkxNSkpIHsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jCmluZGV4IDQ4MGUyMDU0ZjYyOC4uYjI2YjQ0NTczMzljIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMKQEAgLTI5Niw5ICsyOTYsNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRf
cHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaWYgKHJldCkKIAkJZ290byBj
bGVhbnVwX3ZnYV9jbGllbnQ7CiAKLQkvKiBtdXN0IGhhcHBlbiBiZWZvcmUgaW50ZWxfcG93ZXJf
ZG9tYWluc19pbml0X2h3KCkgb24gVkxWL0NIViAqLwotCWludGVsX3VwZGF0ZV9yYXdjbGsoaTkx
NSk7Ci0KIAlpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoaTkxNSwgZmFsc2UpOwogCiAJaW50
ZWxfY3NyX3Vjb2RlX2luaXQoaTkxNSk7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
