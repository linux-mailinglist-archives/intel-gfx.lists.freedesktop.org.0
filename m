Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F554E0B14
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 19:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466AD6E8BB;
	Tue, 22 Oct 2019 17:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691D66E8B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 17:56:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:56:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="227811550"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 22 Oct 2019 10:56:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Oct 2019 20:56:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 20:55:50 +0300
Message-Id: <20191022175554.18012-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191022175554.18012-1-ville.syrjala@linux.intel.com>
References: <20191022175554.18012-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Flatten a bunch of the pfit
 functions
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
c3Qgb2YgdGhlIHBmaXQgZnVuY3Rpb25zIGFyZSBvZiB0aGUgZm9ybToKCmZ1bmMoKQp7CglpZiAo
cGZpdF9lbmFibGVkKSB7CgkJLi4uCgl9Cn0KCkZsaXAgdGhlIHBmaXRfZW5hYmxlZCBjaGVjayBh
cm91bmQgdG8gZmxhdHRlbiB0aGUgZnVuY3Rpb25zLgoKQW5kIHdoaWxlIHdlJ3JlIHRvdWNoaW5n
IGFsbCB0aGlzIGxldCdzIGRvIHRoZSB1c3VhbApzL3BpcGVfY29uZmlnL2NydGNfc3RhdGUvIHJl
cGxhY2VtZW50LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDIwNyArKysrKysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jICAgICAgICAgICAgICB8ICAzOCArKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDEx
OSBpbnNlcnRpb25zKCspLCAxMjYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBhODExZTc4NzJmZTcuLjZhZWVjMDFlMmQy
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTU2MzYsMzQgKzU2MzYsMzQgQEAgc3RhdGljIHZvaWQgc2t5bGFrZV9wZml0X2VuYWJsZShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAllbnVtIHBpcGUgcGlwZSA9
IGNydGMtPnBpcGU7CiAJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2Fs
ZXJfc3RhdGUgPQogCQkmY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlOworCXUxNiB1dl9yZ2JfaHBo
YXNlLCB1dl9yZ2JfdnBoYXNlOworCWludCBwZml0X3csIHBmaXRfaCwgaHNjYWxlLCB2c2NhbGU7
CisJaW50IGlkOwogCi0JaWYgKGNydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQpIHsKLQkJdTE2
IHV2X3JnYl9ocGhhc2UsIHV2X3JnYl92cGhhc2U7Ci0JCWludCBwZml0X3csIHBmaXRfaCwgaHNj
YWxlLCB2c2NhbGU7Ci0JCWludCBpZDsKKwlpZiAoIWNydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJs
ZWQpCisJCXJldHVybjsKIAotCQlpZiAoV0FSTl9PTihjcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGUu
c2NhbGVyX2lkIDwgMCkpCi0JCQlyZXR1cm47CisJaWYgKFdBUk5fT04oY3J0Y19zdGF0ZS0+c2Nh
bGVyX3N0YXRlLnNjYWxlcl9pZCA8IDApKQorCQlyZXR1cm47CiAKLQkJcGZpdF93ID0gKGNydGNf
c3RhdGUtPnBjaF9wZml0LnNpemUgPj4gMTYpICYgMHhGRkZGOwotCQlwZml0X2ggPSBjcnRjX3N0
YXRlLT5wY2hfcGZpdC5zaXplICYgMHhGRkZGOworCXBmaXRfdyA9IChjcnRjX3N0YXRlLT5wY2hf
cGZpdC5zaXplID4+IDE2KSAmIDB4RkZGRjsKKwlwZml0X2ggPSBjcnRjX3N0YXRlLT5wY2hfcGZp
dC5zaXplICYgMHhGRkZGOwogCi0JCWhzY2FsZSA9IChjcnRjX3N0YXRlLT5waXBlX3NyY193IDw8
IDE2KSAvIHBmaXRfdzsKLQkJdnNjYWxlID0gKGNydGNfc3RhdGUtPnBpcGVfc3JjX2ggPDwgMTYp
IC8gcGZpdF9oOworCWhzY2FsZSA9IChjcnRjX3N0YXRlLT5waXBlX3NyY193IDw8IDE2KSAvIHBm
aXRfdzsKKwl2c2NhbGUgPSAoY3J0Y19zdGF0ZS0+cGlwZV9zcmNfaCA8PCAxNikgLyBwZml0X2g7
CiAKLQkJdXZfcmdiX2hwaGFzZSA9IHNrbF9zY2FsZXJfY2FsY19waGFzZSgxLCBoc2NhbGUsIGZh
bHNlKTsKLQkJdXZfcmdiX3ZwaGFzZSA9IHNrbF9zY2FsZXJfY2FsY19waGFzZSgxLCB2c2NhbGUs
IGZhbHNlKTsKKwl1dl9yZ2JfaHBoYXNlID0gc2tsX3NjYWxlcl9jYWxjX3BoYXNlKDEsIGhzY2Fs
ZSwgZmFsc2UpOworCXV2X3JnYl92cGhhc2UgPSBza2xfc2NhbGVyX2NhbGNfcGhhc2UoMSwgdnNj
YWxlLCBmYWxzZSk7CiAKLQkJaWQgPSBzY2FsZXJfc3RhdGUtPnNjYWxlcl9pZDsKLQkJSTkxNV9X
UklURShTS0xfUFNfQ1RSTChwaXBlLCBpZCksIFBTX1NDQUxFUl9FTiB8Ci0JCQlQU19GSUxURVJf
TUVESVVNIHwgc2NhbGVyX3N0YXRlLT5zY2FsZXJzW2lkXS5tb2RlKTsKLQkJSTkxNV9XUklURShT
S0xfUFNfVlBIQVNFKHBpcGUsIGlkKSwKLQkJCSAgIFBTX1lfUEhBU0UoMCkgfCBQU19VVl9SR0Jf
UEhBU0UodXZfcmdiX3ZwaGFzZSkpOwotCQlJOTE1X1dSSVRFKFNLTF9QU19IUEhBU0UocGlwZSwg
aWQpLAotCQkJICAgUFNfWV9QSEFTRSgwKSB8IFBTX1VWX1JHQl9QSEFTRSh1dl9yZ2JfaHBoYXNl
KSk7Ci0JCUk5MTVfV1JJVEUoU0tMX1BTX1dJTl9QT1MocGlwZSwgaWQpLCBjcnRjX3N0YXRlLT5w
Y2hfcGZpdC5wb3MpOwotCQlJOTE1X1dSSVRFKFNLTF9QU19XSU5fU1oocGlwZSwgaWQpLCBjcnRj
X3N0YXRlLT5wY2hfcGZpdC5zaXplKTsKLQl9CisJaWQgPSBzY2FsZXJfc3RhdGUtPnNjYWxlcl9p
ZDsKKwlJOTE1X1dSSVRFKFNLTF9QU19DVFJMKHBpcGUsIGlkKSwgUFNfU0NBTEVSX0VOIHwKKwkJ
ICAgUFNfRklMVEVSX01FRElVTSB8IHNjYWxlcl9zdGF0ZS0+c2NhbGVyc1tpZF0ubW9kZSk7CisJ
STkxNV9XUklURShTS0xfUFNfVlBIQVNFKHBpcGUsIGlkKSwKKwkJICAgUFNfWV9QSEFTRSgwKSB8
IFBTX1VWX1JHQl9QSEFTRSh1dl9yZ2JfdnBoYXNlKSk7CisJSTkxNV9XUklURShTS0xfUFNfSFBI
QVNFKHBpcGUsIGlkKSwKKwkJICAgUFNfWV9QSEFTRSgwKSB8IFBTX1VWX1JHQl9QSEFTRSh1dl9y
Z2JfaHBoYXNlKSk7CisJSTkxNV9XUklURShTS0xfUFNfV0lOX1BPUyhwaXBlLCBpZCksIGNydGNf
c3RhdGUtPnBjaF9wZml0LnBvcyk7CisJSTkxNV9XUklURShTS0xfUFNfV0lOX1NaKHBpcGUsIGlk
KSwgY3J0Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZSk7CiB9CiAKIHN0YXRpYyB2b2lkIGlyb25sYWtl
X3BmaXRfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQpA
QCAtNTY3MiwxOSArNTY3MiwyMCBAQCBzdGF0aWMgdm9pZCBpcm9ubGFrZV9wZml0X2VuYWJsZShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAllbnVtIHBp
cGUgcGlwZSA9IGNydGMtPnBpcGU7CiAKLQlpZiAoY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxl
ZCkgewotCQkvKiBGb3JjZSB1c2Ugb2YgaGFyZC1jb2RlZCBmaWx0ZXIgY29lZmZpY2llbnRzCi0J
CSAqIGFzIHNvbWUgcHJlLXByb2dyYW1tZWQgdmFsdWVzIGFyZSBicm9rZW4sCi0JCSAqIGUuZy4g
eDIwMS4KLQkJICovCi0JCWlmIChJU19JVllCUklER0UoZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwo
ZGV2X3ByaXYpKQotCQkJSTkxNV9XUklURShQRl9DVEwocGlwZSksIFBGX0VOQUJMRSB8IFBGX0ZJ
TFRFUl9NRURfM3gzIHwKLQkJCQkJCSBQRl9QSVBFX1NFTF9JVkIocGlwZSkpOwotCQllbHNlCi0J
CQlJOTE1X1dSSVRFKFBGX0NUTChwaXBlKSwgUEZfRU5BQkxFIHwgUEZfRklMVEVSX01FRF8zeDMp
OwotCQlJOTE1X1dSSVRFKFBGX1dJTl9QT1MocGlwZSksIGNydGNfc3RhdGUtPnBjaF9wZml0LnBv
cyk7Ci0JCUk5MTVfV1JJVEUoUEZfV0lOX1NaKHBpcGUpLCBjcnRjX3N0YXRlLT5wY2hfcGZpdC5z
aXplKTsKLQl9CisJaWYgKCFjcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKQorCQlyZXR1cm47
CisKKwkvKiBGb3JjZSB1c2Ugb2YgaGFyZC1jb2RlZCBmaWx0ZXIgY29lZmZpY2llbnRzCisJICog
YXMgc29tZSBwcmUtcHJvZ3JhbW1lZCB2YWx1ZXMgYXJlIGJyb2tlbiwKKwkgKiBlLmcuIHgyMDEu
CisJICovCisJaWYgKElTX0lWWUJSSURHRShkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChkZXZfcHJp
dikpCisJCUk5MTVfV1JJVEUoUEZfQ1RMKHBpcGUpLCBQRl9FTkFCTEUgfCBQRl9GSUxURVJfTUVE
XzN4MyB8CisJCQkgICBQRl9QSVBFX1NFTF9JVkIocGlwZSkpOworCWVsc2UKKwkJSTkxNV9XUklU
RShQRl9DVEwocGlwZSksIFBGX0VOQUJMRSB8IFBGX0ZJTFRFUl9NRURfM3gzKTsKKwlJOTE1X1dS
SVRFKFBGX1dJTl9QT1MocGlwZSksIGNydGNfc3RhdGUtPnBjaF9wZml0LnBvcyk7CisJSTkxNV9X
UklURShQRl9XSU5fU1oocGlwZSksIGNydGNfc3RhdGUtPnBjaF9wZml0LnNpemUpOwogfQogCiB2
b2lkIGhzd19lbmFibGVfaXBzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQpAQCAtNjU3MiwxMSArNjU3MywxMiBAQCBzdGF0aWMgdm9pZCBpcm9ubGFrZV9wZml0X2Rp
c2FibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQogCiAJ
LyogVG8gYXZvaWQgdXBzZXR0aW5nIHRoZSBwb3dlciB3ZWxsIG9uIGhhc3dlbGwgb25seSBkaXNh
YmxlIHRoZSBwZml0IGlmCiAJICogaXQncyBpbiB1c2UuIFRoZSBodyBzdGF0ZSBjb2RlIHdpbGwg
bWFrZSBzdXJlIHdlIGdldCB0aGlzIHJpZ2h0LiAqLwotCWlmIChvbGRfY3J0Y19zdGF0ZS0+cGNo
X3BmaXQuZW5hYmxlZCkgewotCQlJOTE1X1dSSVRFKFBGX0NUTChwaXBlKSwgMCk7Ci0JCUk5MTVf
V1JJVEUoUEZfV0lOX1BPUyhwaXBlKSwgMCk7Ci0JCUk5MTVfV1JJVEUoUEZfV0lOX1NaKHBpcGUp
LCAwKTsKLQl9CisJaWYgKCFvbGRfY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxlZCkKKwkJcmV0
dXJuOworCisJSTkxNV9XUklURShQRl9DVEwocGlwZSksIDApOworCUk5MTVfV1JJVEUoUEZfV0lO
X1BPUyhwaXBlKSwgMCk7CisJSTkxNV9XUklURShQRl9XSU5fU1oocGlwZSksIDApOwogfQogCiBz
dGF0aWMgdm9pZCBpcm9ubGFrZV9jcnRjX2Rpc2FibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km9sZF9jcnRjX3N0YXRlLApAQCAtNzM5NSwzOSArNzM5NywzNSBAQCBzdGF0aWMgYm9vbCBpbnRl
bF9jcnRjX3N1cHBvcnRzX2RvdWJsZV93aWRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQogCQkoY3J0Yy0+cGlwZSA9PSBQSVBFX0EgfHwgSVNfSTkxNUcoZGV2X3ByaXYpKTsKIH0KIAot
c3RhdGljIHUzMiBpbGtfcGlwZV9waXhlbF9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpwaXBlX2NvbmZpZykKK3N0YXRpYyB1MzIgaWxrX3BpcGVfcGl4ZWxfcmF0ZShjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKLQl1MzIgcGl4ZWxfcmF0ZTsK
LQotCXBpeGVsX3JhdGUgPSBwaXBlX2NvbmZpZy0+YmFzZS5hZGp1c3RlZF9tb2RlLmNydGNfY2xv
Y2s7CisJdTMyIHBpeGVsX3JhdGUgPSBjcnRjX3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGUuY3J0
Y19jbG9jazsKKwl1MzIgcGZpdF9zaXplID0gY3J0Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZTsKKwl1
NjQgcGlwZV93LCBwaXBlX2gsIHBmaXRfdywgcGZpdF9oOwogCiAJLyoKIAkgKiBXZSBvbmx5IHVz
ZSBJRi1JRCBpbnRlcmxhY2luZy4gSWYgd2UgZXZlciB1c2UKIAkgKiBQRi1JRCB3ZSdsbCBuZWVk
IHRvIGFkanVzdCB0aGUgcGl4ZWxfcmF0ZSBoZXJlLgogCSAqLwogCi0JaWYgKHBpcGVfY29uZmln
LT5wY2hfcGZpdC5lbmFibGVkKSB7Ci0JCXU2NCBwaXBlX3csIHBpcGVfaCwgcGZpdF93LCBwZml0
X2g7Ci0JCXUzMiBwZml0X3NpemUgPSBwaXBlX2NvbmZpZy0+cGNoX3BmaXQuc2l6ZTsKKwlpZiAo
IWNydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQpCisJCXJldHVybiBwaXhlbF9yYXRlOwogCi0J
CXBpcGVfdyA9IHBpcGVfY29uZmlnLT5waXBlX3NyY193OwotCQlwaXBlX2ggPSBwaXBlX2NvbmZp
Zy0+cGlwZV9zcmNfaDsKKwlwaXBlX3cgPSBjcnRjX3N0YXRlLT5waXBlX3NyY193OworCXBpcGVf
aCA9IGNydGNfc3RhdGUtPnBpcGVfc3JjX2g7CiAKLQkJcGZpdF93ID0gKHBmaXRfc2l6ZSA+PiAx
NikgJiAweEZGRkY7Ci0JCXBmaXRfaCA9IHBmaXRfc2l6ZSAmIDB4RkZGRjsKLQkJaWYgKHBpcGVf
dyA8IHBmaXRfdykKLQkJCXBpcGVfdyA9IHBmaXRfdzsKLQkJaWYgKHBpcGVfaCA8IHBmaXRfaCkK
LQkJCXBpcGVfaCA9IHBmaXRfaDsKKwlwZml0X3cgPSAocGZpdF9zaXplID4+IDE2KSAmIDB4RkZG
RjsKKwlwZml0X2ggPSBwZml0X3NpemUgJiAweEZGRkY7CisJaWYgKHBpcGVfdyA8IHBmaXRfdykK
KwkJcGlwZV93ID0gcGZpdF93OworCWlmIChwaXBlX2ggPCBwZml0X2gpCisJCXBpcGVfaCA9IHBm
aXRfaDsKIAotCQlpZiAoV0FSTl9PTighcGZpdF93IHx8ICFwZml0X2gpKQotCQkJcmV0dXJuIHBp
eGVsX3JhdGU7CisJaWYgKFdBUk5fT04oIXBmaXRfdyB8fCAhcGZpdF9oKSkKKwkJcmV0dXJuIHBp
eGVsX3JhdGU7CiAKLQkJcGl4ZWxfcmF0ZSA9IGRpdl91NjQobXVsX3UzMl91MzIocGl4ZWxfcmF0
ZSwgcGlwZV93ICogcGlwZV9oKSwKLQkJCQkgICAgIHBmaXRfdyAqIHBmaXRfaCk7Ci0JfQotCi0J
cmV0dXJuIHBpeGVsX3JhdGU7CisJcmV0dXJuIGRpdl91NjQobXVsX3UzMl91MzIocGl4ZWxfcmF0
ZSwgcGlwZV93ICogcGlwZV9oKSwKKwkJICAgICAgIHBmaXRfdyAqIHBmaXRfaCk7CiB9CiAKIHN0
YXRpYyB2b2lkIGludGVsX2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQpAQCAtODU5NSw5ICs4NTkzLDkgQEAgc3RhdGljIGJvb2wgaTl4
eF9oYXNfcGZpdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCUlTX1BJTkVW
SUVXKGRldl9wcml2KSB8fCBJU19NT0JJTEUoZGV2X3ByaXYpOwogfQogCi1zdGF0aWMgdm9pZCBp
OXh4X2dldF9wZml0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLQkJCQkgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQorc3RhdGljIHZvaWQgaTl4eF9nZXRfcGZp
dF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CisJc3RydWN0
IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7
CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNl
LmRldik7CiAJdTMyIHRtcDsKIApAQCAtODYxNyw4ICs4NjE1LDggQEAgc3RhdGljIHZvaWQgaTl4
eF9nZXRfcGZpdF9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQlyZXR1cm47CiAJ
fQogCi0JcGlwZV9jb25maWctPmdtY2hfcGZpdC5jb250cm9sID0gdG1wOwotCXBpcGVfY29uZmln
LT5nbWNoX3BmaXQucGdtX3JhdGlvcyA9IEk5MTVfUkVBRChQRklUX1BHTV9SQVRJT1MpOworCWNy
dGNfc3RhdGUtPmdtY2hfcGZpdC5jb250cm9sID0gdG1wOworCWNydGNfc3RhdGUtPmdtY2hfcGZp
dC5wZ21fcmF0aW9zID0gSTkxNV9SRUFEKFBGSVRfUEdNX1JBVElPUyk7CiB9CiAKIHN0YXRpYyB2
b2lkIHZsdl9jcnRjX2Nsb2NrX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKQEAgLTg4NjQs
NyArODg2Miw3IEBAIHN0YXRpYyBib29sIGk5eHhfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjLAogCWludGVsX2dldF9waXBlX3RpbWluZ3MoY3J0YywgcGlwZV9jb25maWcp
OwogCWludGVsX2dldF9waXBlX3NyY19zaXplKGNydGMsIHBpcGVfY29uZmlnKTsKIAotCWk5eHhf
Z2V0X3BmaXRfY29uZmlnKGNydGMsIHBpcGVfY29uZmlnKTsKKwlpOXh4X2dldF9wZml0X2NvbmZp
ZyhwaXBlX2NvbmZpZyk7CiAKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA0KSB7CiAJCS8q
IE5vIHdheSB0byByZWFkIGl0IG91dCBvbiBwaXBlcyBCIGFuZCBDICovCkBAIC05ODExLDM1ICs5
ODA5LDM1IEBAIHN0YXRpYyB2b2lkIGlyb25sYWtlX2dldF9mZGlfbV9uX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YywKIAkJCQkgICAgICZwaXBlX2NvbmZpZy0+ZmRpX21fbiwgTlVMTCk7
CiB9CiAKLXN0YXRpYyB2b2lkIHNreWxha2VfZ2V0X3BmaXRfY29uZmlnKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjLAotCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcp
CitzdGF0aWMgdm9pZCBza3lsYWtlX2dldF9wZml0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKIHsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFz
ZS5kZXY7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYp
OwotCXN0cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9zdGF0ZSAqc2NhbGVyX3N0YXRlID0gJnBpcGVf
Y29uZmlnLT5zY2FsZXJfc3RhdGU7Ci0JdTMyIHBzX2N0cmwgPSAwOworCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwor
CXN0cnVjdCBpbnRlbF9jcnRjX3NjYWxlcl9zdGF0ZSAqc2NhbGVyX3N0YXRlID0gJmNydGNfc3Rh
dGUtPnNjYWxlcl9zdGF0ZTsKIAlpbnQgaWQgPSAtMTsKIAlpbnQgaTsKIAogCS8qIGZpbmQgc2Nh
bGVyIGF0dGFjaGVkIHRvIHRoaXMgcGlwZSAqLwogCWZvciAoaSA9IDA7IGkgPCBjcnRjLT5udW1f
c2NhbGVyczsgaSsrKSB7Ci0JCXBzX2N0cmwgPSBJOTE1X1JFQUQoU0tMX1BTX0NUUkwoY3J0Yy0+
cGlwZSwgaSkpOwotCQlpZiAocHNfY3RybCAmIFBTX1NDQUxFUl9FTiAmJiAhKHBzX2N0cmwgJiBQ
U19QTEFORV9TRUxfTUFTSykpIHsKLQkJCWlkID0gaTsKLQkJCXBpcGVfY29uZmlnLT5wY2hfcGZp
dC5lbmFibGVkID0gdHJ1ZTsKLQkJCXBpcGVfY29uZmlnLT5wY2hfcGZpdC5wb3MgPSBJOTE1X1JF
QUQoU0tMX1BTX1dJTl9QT1MoY3J0Yy0+cGlwZSwgaSkpOwotCQkJcGlwZV9jb25maWctPnBjaF9w
Zml0LnNpemUgPSBJOTE1X1JFQUQoU0tMX1BTX1dJTl9TWihjcnRjLT5waXBlLCBpKSk7Ci0JCQlz
Y2FsZXJfc3RhdGUtPnNjYWxlcnNbaV0uaW5fdXNlID0gdHJ1ZTsKLQkJCWJyZWFrOwotCQl9CisJ
CXUzMiB0bXA7CisKKwkJdG1wID0gSTkxNV9SRUFEKFNLTF9QU19DVFJMKGNydGMtPnBpcGUsIGkp
KTsKKwkJaWYgKCh0bXAgJiAoUFNfU0NBTEVSX0VOIHwgUFNfUExBTkVfU0VMX01BU0spKSAhPSBQ
U19TQ0FMRVJfRU4pCisJCQljb250aW51ZTsKKworCQlpZCA9IGk7CisJCWNydGNfc3RhdGUtPnBj
aF9wZml0LmVuYWJsZWQgPSB0cnVlOworCQljcnRjX3N0YXRlLT5wY2hfcGZpdC5wb3MgPSBJOTE1
X1JFQUQoU0tMX1BTX1dJTl9QT1MoY3J0Yy0+cGlwZSwgaSkpOworCQljcnRjX3N0YXRlLT5wY2hf
cGZpdC5zaXplID0gSTkxNV9SRUFEKFNLTF9QU19XSU5fU1ooY3J0Yy0+cGlwZSwgaSkpOworCQlz
Y2FsZXJfc3RhdGUtPnNjYWxlcnNbaV0uaW5fdXNlID0gdHJ1ZTsKKwkJYnJlYWs7CiAJfQogCiAJ
c2NhbGVyX3N0YXRlLT5zY2FsZXJfaWQgPSBpZDsKLQlpZiAoaWQgPj0gMCkgeworCWlmIChpZCA+
PSAwKQogCQlzY2FsZXJfc3RhdGUtPnNjYWxlcl91c2VycyB8PSAoMSA8PCBTS0xfQ1JUQ19JTkRF
WCk7Ci0JfSBlbHNlIHsKKwllbHNlCiAJCXNjYWxlcl9zdGF0ZS0+c2NhbGVyX3VzZXJzICY9IH4o
MSA8PCBTS0xfQ1JUQ19JTkRFWCk7Ci0JfQogfQogCiBzdGF0aWMgdm9pZApAQCAtOTk2OSwyOCAr
OTk2NywyNyBAQCBza3lsYWtlX2dldF9pbml0aWFsX3BsYW5lX2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YywKIAlrZnJlZShpbnRlbF9mYik7CiB9CiAKLXN0YXRpYyB2b2lkIGlyb25sYWtl
X2dldF9wZml0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKLQkJCQkgICAgIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKK3N0YXRpYyB2b2lkIGlyb25sYWtlX2dl
dF9wZml0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKLQlz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7Ci0Jc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOworCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwogCXUzMiB0
bXA7CiAKIAl0bXAgPSBJOTE1X1JFQUQoUEZfQ1RMKGNydGMtPnBpcGUpKTsKKwlpZiAoKHRtcCAm
IFBGX0VOQUJMRSkgPT0gMCkKKwkJcmV0dXJuOwogCi0JaWYgKHRtcCAmIFBGX0VOQUJMRSkgewot
CQlwaXBlX2NvbmZpZy0+cGNoX3BmaXQuZW5hYmxlZCA9IHRydWU7Ci0JCXBpcGVfY29uZmlnLT5w
Y2hfcGZpdC5wb3MgPSBJOTE1X1JFQUQoUEZfV0lOX1BPUyhjcnRjLT5waXBlKSk7Ci0JCXBpcGVf
Y29uZmlnLT5wY2hfcGZpdC5zaXplID0gSTkxNV9SRUFEKFBGX1dJTl9TWihjcnRjLT5waXBlKSk7
Ci0KLQkJLyogV2UgY3VycmVudGx5IGRvIG5vdCBmcmVlIGFzc2lnbmVtZW50cyBvZiBwYW5lbCBm
aXR0ZXJzIG9uCi0JCSAqIGl2Yi9oc3cgKHNpbmNlIHdlIGRvbid0IHVzZSB0aGUgaGlnaGVyIHVw
c2NhbGluZyBtb2RlcyB3aGljaAotCQkgKiBkaWZmZXJlbnRpYXRlcyB0aGVtKSBzbyBqdXN0IFdB
Uk4gYWJvdXQgdGhpcyBjYXNlIGZvciBub3cuICovCi0JCWlmIChJU19HRU4oZGV2X3ByaXYsIDcp
KSB7Ci0JCQlXQVJOX09OKCh0bXAgJiBQRl9QSVBFX1NFTF9NQVNLX0lWQikgIT0KLQkJCQlQRl9Q
SVBFX1NFTF9JVkIoY3J0Yy0+cGlwZSkpOwotCQl9Ci0JfQorCS8qCisJICogV2UgY3VycmVudGx5
IGRvIG5vdCBmcmVlIGFzc2lnbmVtZW50cyBvZiBwYW5lbCBmaXR0ZXJzIG9uCisJICogaXZiL2hz
dyAoc2luY2Ugd2UgZG9uJ3QgdXNlIHRoZSBoaWdoZXIgdXBzY2FsaW5nIG1vZGVzIHdoaWNoCisJ
ICogZGlmZmVyZW50aWF0ZXMgdGhlbSkgc28ganVzdCBXQVJOIGFib3V0IHRoaXMgY2FzZSBmb3Ig
bm93LgorCSAqLworCVdBUk5fT04oSVNfR0VOKGRldl9wcml2LCA3KSAmJgorCQkodG1wICYgUEZf
UElQRV9TRUxfTUFTS19JVkIpICE9IFBGX1BJUEVfU0VMX0lWQihjcnRjLT5waXBlKSk7CisKKwlj
cnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkID0gdHJ1ZTsKKwljcnRjX3N0YXRlLT5wY2hfcGZp
dC5wb3MgPSBJOTE1X1JFQUQoUEZfV0lOX1BPUyhjcnRjLT5waXBlKSk7CisJY3J0Y19zdGF0ZS0+
cGNoX3BmaXQuc2l6ZSA9IEk5MTVfUkVBRChQRl9XSU5fU1ooY3J0Yy0+cGlwZSkpOwogfQogCiBz
dGF0aWMgYm9vbCBpcm9ubGFrZV9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNy
dGMsCkBAIC0xMDEwMSw3ICsxMDA5OCw3IEBAIHN0YXRpYyBib29sIGlyb25sYWtlX2dldF9waXBl
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlpbnRlbF9nZXRfcGlwZV90aW1pbmdz
KGNydGMsIHBpcGVfY29uZmlnKTsKIAlpbnRlbF9nZXRfcGlwZV9zcmNfc2l6ZShjcnRjLCBwaXBl
X2NvbmZpZyk7CiAKLQlpcm9ubGFrZV9nZXRfcGZpdF9jb25maWcoY3J0YywgcGlwZV9jb25maWcp
OworCWlyb25sYWtlX2dldF9wZml0X2NvbmZpZyhwaXBlX2NvbmZpZyk7CiAKIAlyZXQgPSB0cnVl
OwogCkBAIC0xMDYwOSw5ICsxMDYwNiw5IEBAIHN0YXRpYyBib29sIGhhc3dlbGxfZ2V0X3BpcGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQlwb3dlcl9kb21haW5fbWFzayB8PSBC
SVRfVUxMKHBvd2VyX2RvbWFpbik7CiAKIAkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkK
LQkJCXNreWxha2VfZ2V0X3BmaXRfY29uZmlnKGNydGMsIHBpcGVfY29uZmlnKTsKKwkJCXNreWxh
a2VfZ2V0X3BmaXRfY29uZmlnKHBpcGVfY29uZmlnKTsKIAkJZWxzZQotCQkJaXJvbmxha2VfZ2V0
X3BmaXRfY29uZmlnKGNydGMsIHBpcGVfY29uZmlnKTsKKwkJCWlyb25sYWtlX2dldF9wZml0X2Nv
bmZpZyhwaXBlX2NvbmZpZyk7CiAJfQogCiAJaWYgKGhzd19jcnRjX3N1cHBvcnRzX2lwcyhjcnRj
KSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggMzYyMjM0NDQ5MDg3Li44MGVhNTA3NGNh
YmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNDEwMSwzMyArNDEwMSwyOSBAQCBzdGF0
aWMgdWludF9maXhlZF8xNl8xNl90CiBza2xfcGlwZV9kb3duc2NhbGVfYW1vdW50KGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXVpbnRfZml4ZWRfMTZfMTZf
dCBwaXBlX2Rvd25zY2FsZSA9IHUzMl90b19maXhlZDE2KDEpOworCXUzMiBzcmNfdywgc3JjX2gs
IGRzdF93LCBkc3RfaDsKKwl1MzIgcGZpdF9zaXplID0gY3J0Y19zdGF0ZS0+cGNoX3BmaXQuc2l6
ZTsKKwl1aW50X2ZpeGVkXzE2XzE2X3QgZnBfd19yYXRpbywgZnBfaF9yYXRpbzsKKwl1aW50X2Zp
eGVkXzE2XzE2X3QgZG93bnNjYWxlX2gsIGRvd25zY2FsZV93OwogCi0JaWYgKCFjcnRjX3N0YXRl
LT5iYXNlLmVuYWJsZSkKKwlpZiAoIWNydGNfc3RhdGUtPmJhc2UuZW5hYmxlIHx8CisJICAgICFj
cnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKQogCQlyZXR1cm4gcGlwZV9kb3duc2NhbGU7CiAK
LQlpZiAoY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxlZCkgewotCQl1MzIgc3JjX3csIHNyY19o
LCBkc3RfdywgZHN0X2g7Ci0JCXUzMiBwZml0X3NpemUgPSBjcnRjX3N0YXRlLT5wY2hfcGZpdC5z
aXplOwotCQl1aW50X2ZpeGVkXzE2XzE2X3QgZnBfd19yYXRpbywgZnBfaF9yYXRpbzsKLQkJdWlu
dF9maXhlZF8xNl8xNl90IGRvd25zY2FsZV9oLCBkb3duc2NhbGVfdzsKKwlzcmNfdyA9IGNydGNf
c3RhdGUtPnBpcGVfc3JjX3c7CisJc3JjX2ggPSBjcnRjX3N0YXRlLT5waXBlX3NyY19oOworCWRz
dF93ID0gcGZpdF9zaXplID4+IDE2OworCWRzdF9oID0gcGZpdF9zaXplICYgMHhmZmZmOwogCi0J
CXNyY193ID0gY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdzsKLQkJc3JjX2ggPSBjcnRjX3N0YXRlLT5w
aXBlX3NyY19oOwotCQlkc3RfdyA9IHBmaXRfc2l6ZSA+PiAxNjsKLQkJZHN0X2ggPSBwZml0X3Np
emUgJiAweGZmZmY7Ci0KLQkJaWYgKCFkc3RfdyB8fCAhZHN0X2gpCi0JCQlyZXR1cm4gcGlwZV9k
b3duc2NhbGU7Ci0KLQkJZnBfd19yYXRpbyA9IGRpdl9maXhlZDE2KHNyY193LCBkc3Rfdyk7Ci0J
CWZwX2hfcmF0aW8gPSBkaXZfZml4ZWQxNihzcmNfaCwgZHN0X2gpOwotCQlkb3duc2NhbGVfdyA9
IG1heF9maXhlZDE2KGZwX3dfcmF0aW8sIHUzMl90b19maXhlZDE2KDEpKTsKLQkJZG93bnNjYWxl
X2ggPSBtYXhfZml4ZWQxNihmcF9oX3JhdGlvLCB1MzJfdG9fZml4ZWQxNigxKSk7CisJaWYgKCFk
c3RfdyB8fCAhZHN0X2gpCisJCXJldHVybiBwaXBlX2Rvd25zY2FsZTsKIAotCQlwaXBlX2Rvd25z
Y2FsZSA9IG11bF9maXhlZDE2KGRvd25zY2FsZV93LCBkb3duc2NhbGVfaCk7Ci0JfQorCWZwX3df
cmF0aW8gPSBkaXZfZml4ZWQxNihzcmNfdywgZHN0X3cpOworCWZwX2hfcmF0aW8gPSBkaXZfZml4
ZWQxNihzcmNfaCwgZHN0X2gpOworCWRvd25zY2FsZV93ID0gbWF4X2ZpeGVkMTYoZnBfd19yYXRp
bywgdTMyX3RvX2ZpeGVkMTYoMSkpOworCWRvd25zY2FsZV9oID0gbWF4X2ZpeGVkMTYoZnBfaF9y
YXRpbywgdTMyX3RvX2ZpeGVkMTYoMSkpOwogCi0JcmV0dXJuIHBpcGVfZG93bnNjYWxlOworCXJl
dHVybiBtdWxfZml4ZWQxNihkb3duc2NhbGVfdywgZG93bnNjYWxlX2gpOwogfQogCiBpbnQgc2ts
X2NoZWNrX3BpcGVfbWF4X3BpeGVsX3JhdGUoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMs
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
