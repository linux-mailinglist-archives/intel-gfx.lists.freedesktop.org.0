Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7D73113D3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 22:47:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD0D76F4F0;
	Fri,  5 Feb 2021 21:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 953366F4F7
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 21:47:30 +0000 (UTC)
IronPort-SDR: gk/umngvVkTWXCV3917RLR7ZUWIefEs8gADCFPLiXsmAARc+QQg8BceQVj+/urF7FZwH7alNZk
 bcISB+H6BH8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="161246707"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="161246707"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 13:47:30 -0800
IronPort-SDR: I7bamG4u9lDkoSd74hMlXamRd8Z63D8RgA7PpSxMQHpwG330rQfSfKamYETVxnCAJVcnbVGRZn
 4Sh05ql2/02A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="394026128"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 05 Feb 2021 13:47:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 23:47:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 23:46:32 +0200
Message-Id: <20210205214634.19341-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
References: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 13/15] drm/i915: Use .disable_clock() for pll
 sanitation
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklu
c3RlYWQgb2YgZXZlcnkgbmV3IHBsYXRmb3JtIGhhdmluZyB5ZXQgYW5vdGhlciBtYXNpdmUKY29w
eSBvZiB0aGUgd2hvbGUgUExMIHNhbml0YXRpb24gY29kZSwgbGV0J3MganVzdCByZXVzZSB0aGUK
LmRpc2FibGVfY2xvY2soKSBob29rIGZvciB0aGlzIHB1cnBvc2UuIFdlIGRvIG5lZWQgdG8gcGx1
Zwp0aGlzIGludG8gdGhlIElDTCsgRFNJIGNvZGUgZm9yIHRoYXQsIGJ1dCBmb3J0dW5hdGVseSBp
dAphbHJlYWR5IGhhcyBhIHN1aXRhYmxlIGZ1bmN0aW9uIHdlIGNhbiB1c2UuCgpXZSBkbyBsb3Nl
IHRoZSBkZWJ1ZyBtZXNzYWdlIHRob3VnaCBvbiBhY2NvdW50IG9mIG5vdCBib3RoZXJpbmcKdG8g
Y2hlY2sgaWYgdGhlIGNsb2NrIGlzIGFjdHVhbGx5IGVuYWJsZWQgb3Igbm90IGJlZm9yZSB0dXJu
aW5nCml0IG9mZi4gV2UgY291bGQgaW50cm9kdWNlIHlldCBhbm90aGVyIHZmdW5jIHRvIHF1ZXJ5
IHRoZSBjdXJyZW50CnN0YXRlLCBidXQgbm90IHN1cmUgaXQncyB3b3J0aCB0aGUgaGFzc2xlPwoK
UmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAgfCAgMSAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgOTIgKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgOTAgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwppbmRleCA5ZDI0
NWE2ODkzMjMuLmE3ZWRmYWEwOTAzNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMKQEAgLTE5NDAsNiArMTk0MCw3IEBAIHZvaWQgaWNsX2RzaV9pbml0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAllbmNvZGVyLT5waXBlX21hc2sgPSB+MDsKIAllbmNv
ZGVyLT5wb3dlcl9kb21haW4gPSBQT1dFUl9ET01BSU5fUE9SVF9EU0k7CiAJZW5jb2Rlci0+Z2V0
X3Bvd2VyX2RvbWFpbnMgPSBnZW4xMV9kc2lfZ2V0X3Bvd2VyX2RvbWFpbnM7CisJZW5jb2Rlci0+
ZGlzYWJsZV9jbG9jayA9IGdlbjExX2RzaV9nYXRlX2Nsb2NrczsKIAogCS8qIHJlZ2lzdGVyIERT
SSBjb25uZWN0b3Igd2l0aCBEUk0gc3Vic3lzdGVtICovCiAJZHJtX2Nvbm5lY3Rvcl9pbml0KGRl
diwgY29ubmVjdG9yLCAmZ2VuMTFfZHNpX2Nvbm5lY3Rvcl9mdW5jcywKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDg5OTYyZTQxMmYxOC4uOTY3ODcxYzJiZjFl
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTE1ODAsMjMg
KzE1ODAsNiBAQCBoc3dfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwKIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBvcnQpKTsK
IH0KIAotc3RhdGljIHUzMiBpY2xfZHBjbGthX2NmZ2NyMF9jbGtfb2ZmKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKLQkJCQkgICAgIGVudW0gcGh5IHBoeSkKLXsKLQlpZiAoSVNf
Uk9DS0VUTEFLRShkZXZfcHJpdikpIHsKLQkJcmV0dXJuIFJLTF9EUENMS0FfQ0ZHQ1IwX0RESV9D
TEtfT0ZGKHBoeSk7Ci0JfSBlbHNlIGlmIChpbnRlbF9waHlfaXNfY29tYm8oZGV2X3ByaXYsIHBo
eSkpIHsKLQkJcmV0dXJuIElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSk7Ci0JfSBl
bHNlIGlmIChpbnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkpIHsKLQkJZW51bSB0Y19wb3J0
IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LAotCQkJCQkJCShlbnVtIHBvcnQp
cGh5KTsKLQotCQlyZXR1cm4gSUNMX0RQQ0xLQV9DRkdDUjBfVENfQ0xLX09GRih0Y19wb3J0KTsK
LQl9Ci0KLQlyZXR1cm4gMDsKLX0KLQogc3RhdGljIHZvaWQgX2NubF9kZGlfZW5hYmxlX2Nsb2Nr
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJlZywKIAkJCQkgIHUz
MiBjbGtfc2VsX21hc2ssIHUzMiBjbGtfc2VsLCB1MzIgY2xrX29mZikKIHsKQEAgLTE3MzIsNzUg
KzE3MTUsNiBAQCBzdGF0aWMgdm9pZCBpY2xfZGRpX2NvbWJvX2Rpc2FibGVfY2xvY2soc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJCQkgICAgICAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJ
X0NMS19PRkYocGh5KSk7CiB9CiAKLXN0YXRpYyB2b2lkIGRnMV9zYW5pdGl6ZV9wb3J0X2Nsa19v
ZmYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJCSAgICAgIHUzMiBwb3J0
X21hc2ssIGJvb2wgZGRpX2Nsa19uZWVkZWQpCi17Ci0JZW51bSBwb3J0IHBvcnQ7Ci0JdTMyIHZh
bDsKLQotCWZvcl9lYWNoX3BvcnRfbWFza2VkKHBvcnQsIHBvcnRfbWFzaykgewotCQllbnVtIHBo
eSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7Ci0JCWJvb2wgZGRpX2Ns
a19vZmY7Ci0KLQkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgREcxX0RQQ0xLQV9DRkdD
UjAocGh5KSk7Ci0JCWRkaV9jbGtfb2ZmID0gdmFsICYgREcxX0RQQ0xLQV9DRkdDUjBfRERJX0NM
S19PRkYocGh5KTsKLQotCQlpZiAoZGRpX2Nsa19uZWVkZWQgPT0gIWRkaV9jbGtfb2ZmKQotCQkJ
Y29udGludWU7Ci0KLQkJLyoKLQkJICogUHVudCBvbiB0aGUgY2FzZSBub3cgd2hlcmUgY2xvY2sg
aXMgZ2F0ZWQsIGJ1dCBpdCB3b3VsZAotCQkgKiBiZSBuZWVkZWQgYnkgdGhlIHBvcnQuIFNvbWV0
aGluZyBlbHNlIGlzIHJlYWxseSBicm9rZW4gdGhlbi4KLQkJICovCi0JCWlmIChkcm1fV0FSTl9P
TigmZGV2X3ByaXYtPmRybSwgZGRpX2Nsa19uZWVkZWQpKQotCQkJY29udGludWU7Ci0KLQkJZHJt
X25vdGljZSgmZGV2X3ByaXYtPmRybSwKLQkJCSAgICJQSFkgJWMgaXMgZGlzYWJsZWQgd2l0aCBh
biB1bmdhdGVkIERESSBjbG9jaywgZ2F0ZSBpdFxuIiwKLQkJCSAgIHBoeV9uYW1lKHBoeSkpOwot
CQl2YWwgfD0gREcxX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocGh5KTsKLQkJaW50ZWxfZGVf
d3JpdGUoZGV2X3ByaXYsIERHMV9EUENMS0FfQ0ZHQ1IwKHBoeSksIHZhbCk7Ci0JfQotfQotCi1z
dGF0aWMgdm9pZCBpY2xfc2FuaXRpemVfcG9ydF9jbGtfb2ZmKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKLQkJCQkgICAgICB1MzIgcG9ydF9tYXNrLCBib29sIGRkaV9jbGtfbmVl
ZGVkKQotewotCWVudW0gcG9ydCBwb3J0OwotCWJvb2wgZGRpX2Nsa19vZmY7Ci0JdTMyIHZhbDsK
LQlpOTE1X3JlZ190IHJlZzsKLQotCWZvcl9lYWNoX3BvcnRfbWFza2VkKHBvcnQsIHBvcnRfbWFz
aykgewotCQllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7
Ci0KLQkJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSkKLQkJCXJlZyA9IEFETFNfRFBDTEtB
X0NGR0NSKHBoeSk7Ci0JCWVsc2UKLQkJCXJlZyA9IElDTF9EUENMS0FfQ0ZHQ1IwOwotCi0JCXZh
bCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZyk7Ci0JCWRkaV9jbGtfb2ZmID0gdmFsICYg
aWNsX2RwY2xrYV9jZmdjcjBfY2xrX29mZihkZXZfcHJpdiwKLQkJCQkJCQkgICAgICBwaHkpOwot
Ci0JCWlmIChkZGlfY2xrX25lZWRlZCA9PSAhZGRpX2Nsa19vZmYpCi0JCQljb250aW51ZTsKLQot
CQkvKgotCQkgKiBQdW50IG9uIHRoZSBjYXNlIG5vdyB3aGVyZSBjbG9jayBpcyBnYXRlZCwgYnV0
IGl0IHdvdWxkCi0JCSAqIGJlIG5lZWRlZCBieSB0aGUgcG9ydC4gU29tZXRoaW5nIGVsc2UgaXMg
cmVhbGx5IGJyb2tlbiB0aGVuLgotCQkgKi8KLQkJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+
ZHJtLCBkZGlfY2xrX25lZWRlZCkpCi0JCQljb250aW51ZTsKLQotCQlkcm1fbm90aWNlKCZkZXZf
cHJpdi0+ZHJtLAotCQkJICAgIlBIWSAlYyBpcyBkaXNhYmxlZC9pbiBEU0kgbW9kZSB3aXRoIGFu
IHVuZ2F0ZWQgRERJIGNsb2NrLCBnYXRlIGl0XG4iLAotCQkJICAgcGh5X25hbWUocGh5KSk7Ci0J
CXZhbCB8PSBpY2xfZHBjbGthX2NmZ2NyMF9jbGtfb2ZmKGRldl9wcml2LCBwaHkpOwotCQlpbnRl
bF9kZV93cml0ZShkZXZfcHJpdiwgcmVnLCB2YWwpOwotCX0KLX0KLQogdm9pZCBpY2xfc2FuaXRp
emVfZW5jb2Rlcl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJh
c2UuZGV2KTsKQEAgLTE4NTMsMTAgKzE3NjcsOCBAQCB2b2lkIGljbF9zYW5pdGl6ZV9lbmNvZGVy
X3BsbF9tYXBwaW5nKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogCQlkZGlfY2xrX25l
ZWRlZCA9IGZhbHNlOwogCX0KIAotCWlmIChJU19ERzEoZGV2X3ByaXYpKQotCQlkZzFfc2FuaXRp
emVfcG9ydF9jbGtfb2ZmKGRldl9wcml2LCBwb3J0X21hc2ssIGRkaV9jbGtfbmVlZGVkKTsKLQll
bHNlCi0JCWljbF9zYW5pdGl6ZV9wb3J0X2Nsa19vZmYoZGV2X3ByaXYsIHBvcnRfbWFzaywgZGRp
X2Nsa19uZWVkZWQpOworCWlmICghZGRpX2Nsa19uZWVkZWQgJiYgZW5jb2Rlci0+ZGlzYWJsZV9j
bG9jaykKKwkJZW5jb2Rlci0+ZGlzYWJsZV9jbG9jayhlbmNvZGVyKTsKIH0KIAogc3RhdGljIHZv
aWQganNsX2RkaV90Y19lbmFibGVfY2xvY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
