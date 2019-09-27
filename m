Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D13BAC0618
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 15:14:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1180F89E2C;
	Fri, 27 Sep 2019 13:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC3188F1B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 13:14:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 06:14:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,555,1559545200"; d="scan'208";a="194476082"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2019 06:14:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2019 16:14:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 16:14:29 +0300
Message-Id: <20190927131432.15978-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190927131432.15978-1-ville.syrjala@linux.intel.com>
References: <20190927131432.15978-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Prepare the connector/encoder
 mask readout for hw vs. uapi state split
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBy
ZXBhcmUgdGhlIGNvbm5lY3Rvci9lbmNvZGVyIG1hc2sgcmVhZG91dCBmb3IgdGhlIHVhcGkgdnMu
IGh3CnN0YXRlIHNwbGl0LiBXZSdsbCB3YW50IHRvIGRvIGFsbCByZWFkb3V0IGludG8gdGhlIGh3
IHN0YXRlLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDE0ICsrKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKaW5kZXggOGEyZTc4MGQ4NWUxLi45ZDRkZmUyZWFjZTAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNjc5NSwyNCArMTY3
OTUsMjggQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYpCiAJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfYmVnaW4oZGV2LCAm
Y29ubl9pdGVyKTsKIAlmb3JfZWFjaF9pbnRlbF9jb25uZWN0b3JfaXRlcihjb25uZWN0b3IsICZj
b25uX2l0ZXIpIHsKIAkJaWYgKGNvbm5lY3Rvci0+Z2V0X2h3X3N0YXRlKGNvbm5lY3RvcikpIHsK
KwkJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOworCQkJc3RydWN0IGludGVs
X2NydGMgKmNydGM7CisKIAkJCWNvbm5lY3Rvci0+YmFzZS5kcG1zID0gRFJNX01PREVfRFBNU19P
TjsKIAogCQkJZW5jb2RlciA9IGNvbm5lY3Rvci0+ZW5jb2RlcjsKIAkJCWNvbm5lY3Rvci0+YmFz
ZS5lbmNvZGVyID0gJmVuY29kZXItPmJhc2U7CiAKLQkJCWlmIChlbmNvZGVyLT5iYXNlLmNydGMg
JiYKLQkJCSAgICBlbmNvZGVyLT5iYXNlLmNydGMtPnN0YXRlLT5hY3RpdmUpIHsKKwkJCWNydGMg
PSB0b19pbnRlbF9jcnRjKGVuY29kZXItPmJhc2UuY3J0Yyk7CisJCQljcnRjX3N0YXRlID0gY3J0
YyA/IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSkgOiBOVUxMOworCisJCQlp
ZiAoY3J0Y19zdGF0ZSAmJiBjcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSkgewogCQkJCS8qCiAJCQkJ
ICogVGhpcyBoYXMgdG8gYmUgZG9uZSBkdXJpbmcgaGFyZHdhcmUgcmVhZG91dAogCQkJCSAqIGJl
Y2F1c2UgYW55dGhpbmcgY2FsbGluZyAuY3J0Y19kaXNhYmxlIG1heQogCQkJCSAqIHJlbHkgb24g
dGhlIGNvbm5lY3Rvcl9tYXNrIGJlaW5nIGFjY3VyYXRlLgogCQkJCSAqLwotCQkJCWVuY29kZXIt
PmJhc2UuY3J0Yy0+c3RhdGUtPmNvbm5lY3Rvcl9tYXNrIHw9CisJCQkJY3J0Y19zdGF0ZS0+YmFz
ZS5jb25uZWN0b3JfbWFzayB8PQogCQkJCQlkcm1fY29ubmVjdG9yX21hc2soJmNvbm5lY3Rvci0+
YmFzZSk7Ci0JCQkJZW5jb2Rlci0+YmFzZS5jcnRjLT5zdGF0ZS0+ZW5jb2Rlcl9tYXNrIHw9CisJ
CQkJY3J0Y19zdGF0ZS0+YmFzZS5lbmNvZGVyX21hc2sgfD0KIAkJCQkJZHJtX2VuY29kZXJfbWFz
aygmZW5jb2Rlci0+YmFzZSk7CiAJCQl9Ci0KIAkJfSBlbHNlIHsKIAkJCWNvbm5lY3Rvci0+YmFz
ZS5kcG1zID0gRFJNX01PREVfRFBNU19PRkY7CiAJCQljb25uZWN0b3ItPmJhc2UuZW5jb2RlciA9
IE5VTEw7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
