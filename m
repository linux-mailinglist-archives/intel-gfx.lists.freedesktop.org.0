Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D1A3113D2
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 22:47:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036996F4ED;
	Fri,  5 Feb 2021 21:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2098F6F4ED
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 21:47:27 +0000 (UTC)
IronPort-SDR: JA/XQecTWdaa8jN7mOgUo+jD+RFikXRq8zU4WnJj+qvQ+AAIHWmSxtvLwgpoU3BmvogGnCigRl
 L4sbJ1a3TaQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="161246703"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="161246703"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 13:47:26 -0800
IronPort-SDR: iFzDM0gzMT7shyl1X1bBSiq9v5yJ8r618jYgJObZ8mXLNtMrcRgRgqFhOEplDG+oGDkcim+rMC
 irfVEI+tSk8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="373697577"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 05 Feb 2021 13:47:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 23:47:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 23:46:31 +0200
Message-Id: <20210205214634.19341-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
References: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 12/15] drm/i915: Split adl-s/rkl from
 icl_ddi_combo_{enable, disable}_clock()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bmNlIC57ZW5hYmxlLGRpc2FibGV9X2Nsb2NrKCkgYXJlIGFscmVhZHkgdmZ1bmNzIGl0J3MgYSBi
aXQgc2lsbHkgdG8KaGF2ZSBpZi1sYWRkZXJzIGluc2lkZSB0aGVtLiBKdXN0IHByb3ZpZGUgc3Bl
Y2lhbGl6ZWQgdmVyc2lvbiBmb3IgYWRsLXMKYW5kIHJrbCBzbyB3ZSBkb24ndCBuZWVkIGFueSBv
ZiB0aGF0LgoKdjI6IHMvZGV2X3ByaXYvaTkxNS8gKEx1Y2FzKQogICAgRml4IHR5cG9zIGluIHBs
YXRmb3JtIG5hbWVzIChMdWNhcykKClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIHwgOTEgKysrKysrKysrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNjIgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggOGI3ZWY1ZjNiYTAzLi44OTk2MmU0MTJmMTgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTYyMyw2ICsx
NjIzLDU2IEBAIHN0YXRpYyB2b2lkIF9jbmxfZGRpX2Rpc2FibGVfY2xvY2soc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsIGk5MTVfcmVnX3QgcmVnCiAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5k
cGxsLmxvY2spOwogfQogCitzdGF0aWMgdm9pZCBhZGxzX2RkaV9lbmFibGVfY2xvY2soc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCisJCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCWNvbnN0IHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBs
bCAqcGxsID0gY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGw7CisJZW51bSBwaHkgcGh5ID0gaW50ZWxf
cG9ydF90b19waHkoaTkxNSwgZW5jb2Rlci0+cG9ydCk7CisKKwlpZiAoZHJtX1dBUk5fT04oJmk5
MTUtPmRybSwgIXBsbCkpCisJCXJldHVybjsKKworCV9jbmxfZGRpX2VuYWJsZV9jbG9jayhpOTE1
LCBBRExTX0RQQ0xLQV9DRkdDUihwaHkpLAorCQkJICAgICAgQURMU19EUENMS0FfQ0ZHQ1JfRERJ
X0NMS19TRUxfTUFTSyhwaHkpLAorCQkJICAgICAgcGxsLT5pbmZvLT5pZCA8PCBBRExTX0RQQ0xL
QV9DRkdDUl9ERElfU0hJRlQocGh5KSwKKwkJCSAgICAgIElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9D
TEtfT0ZGKHBoeSkpOworfQorCitzdGF0aWMgdm9pZCBhZGxzX2RkaV9kaXNhYmxlX2Nsb2NrKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJZW51bSBwaHkgcGh5ID0gaW50
ZWxfcG9ydF90b19waHkoaTkxNSwgZW5jb2Rlci0+cG9ydCk7CisKKwlfY25sX2RkaV9kaXNhYmxl
X2Nsb2NrKGk5MTUsIEFETFNfRFBDTEtBX0NGR0NSKHBoeSksCisJCQkgICAgICAgSUNMX0RQQ0xL
QV9DRkdDUjBfRERJX0NMS19PRkYocGh5KSk7Cit9CisKK3N0YXRpYyB2b2lkIHJrbF9kZGlfZW5h
YmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJCSBjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCWNvbnN0IHN0cnVjdCBp
bnRlbF9zaGFyZWRfZHBsbCAqcGxsID0gY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGw7CisJZW51bSBw
aHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZW5jb2Rlci0+cG9ydCk7CisKKwlpZiAo
ZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIXBsbCkpCisJCXJldHVybjsKKworCV9jbmxfZGRpX2Vu
YWJsZV9jbG9jayhpOTE1LCBJQ0xfRFBDTEtBX0NGR0NSMCwKKwkJCSAgICAgIFJLTF9EUENMS0Ff
Q0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socGh5KSwKKwkJCSAgICAgIFJLTF9EUENMS0FfQ0ZHQ1Iw
X0RESV9DTEtfU0VMKHBsbC0+aW5mby0+aWQsIHBoeSksCisJCQkgICAgICBSS0xfRFBDTEtBX0NG
R0NSMF9ERElfQ0xLX09GRihwaHkpKTsKK30KKworc3RhdGljIHZvaWQgcmtsX2RkaV9kaXNhYmxl
X2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJZW51bSBwaHkg
cGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZW5jb2Rlci0+cG9ydCk7CisKKwlfY25sX2Rk
aV9kaXNhYmxlX2Nsb2NrKGk5MTUsIElDTF9EUENMS0FfQ0ZHQ1IwLAorCQkJICAgICAgIFJLTF9E
UENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSkpOworfQorCiBzdGF0aWMgdm9pZCBkZzFfZGRp
X2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CkBAIC0xNjYzLDQzICsxNzEz
LDIzIEBAIHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fZW5hYmxlX2Nsb2NrKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCWNvbnN0IHN0cnVjdCBpbnRlbF9zaGFyZWRf
ZHBsbCAqcGxsID0gY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGw7CiAJZW51bSBwaHkgcGh5ID0gaW50
ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQpOwotCXUzMiBtYXNrLCBzZWw7
Ci0JaTkxNV9yZWdfdCByZWc7Ci0KLQlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKSB7Ci0J
CXJlZyA9IEFETFNfRFBDTEtBX0NGR0NSKHBoeSk7Ci0JCW1hc2sgPSBBRExTX0RQQ0xLQV9DRkdD
Ul9ERElfQ0xLX1NFTF9NQVNLKHBoeSk7Ci0JCXNlbCA9ICgocGxsLT5pbmZvLT5pZCkgPDwgQURM
U19EUENMS0FfQ0ZHQ1JfRERJX1NISUZUKHBoeSkpOwotCX0gZWxzZSBpZiAoSVNfUk9DS0VUTEFL
RShkZXZfcHJpdikpIHsKLQkJcmVnID0gSUNMX0RQQ0xLQV9DRkdDUjA7Ci0JCW1hc2sgPSBSS0xf
RFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBoeSk7Ci0JCXNlbCA9IFJLTF9EUENMS0Ff
Q0ZHQ1IwX0RESV9DTEtfU0VMKHBsbC0+aW5mby0+aWQsIHBoeSk7Ci0JfSBlbHNlIHsKLQkJcmVn
ID0gSUNMX0RQQ0xLQV9DRkdDUjA7Ci0JCW1hc2sgPSBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xL
X1NFTF9NQVNLKHBoeSk7Ci0JCXNlbCA9IElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMKHBs
bC0+aW5mby0+aWQsIHBoeSk7Ci0JfQogCiAJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJt
LCAhcGxsKSkKIAkJcmV0dXJuOwogCi0JX2NubF9kZGlfZW5hYmxlX2Nsb2NrKGRldl9wcml2LCBy
ZWcsIG1hc2ssIHNlbCwKLQkJCSAgICAgIGljbF9kcGNsa2FfY2ZnY3IwX2Nsa19vZmYoZGV2X3By
aXYsIHBoeSkpOworCV9jbmxfZGRpX2VuYWJsZV9jbG9jayhkZXZfcHJpdiwgSUNMX0RQQ0xLQV9D
RkdDUjAsCisJCQkgICAgICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBoeSks
CisJCQkgICAgICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChwbGwtPmluZm8tPmlkLCBw
aHkpLAorCQkJICAgICAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocGh5KSk7CiB9CiAK
IHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9fZGlzYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3Rv
X3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7Ci0JaTkxNV9yZWdfdCByZWc7CiAKLQlpZiAo
SVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQotCQlyZWcgPSBBRExTX0RQQ0xLQV9DRkdDUihwaHkp
OwotCWVsc2UKLQkJcmVnID0gSUNMX0RQQ0xLQV9DRkdDUjA7Ci0KLQlfY25sX2RkaV9kaXNhYmxl
X2Nsb2NrKGRldl9wcml2LCByZWcsCi0JCQkgICAgICAgaWNsX2RwY2xrYV9jZmdjcjBfY2xrX29m
ZihkZXZfcHJpdiwgcGh5KSk7CisJX2NubF9kZGlfZGlzYWJsZV9jbG9jayhkZXZfcHJpdiwgSUNM
X0RQQ0xLQV9DRkdDUjAsCisJCQkgICAgICAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYo
cGh5KSk7CiB9CiAKIHN0YXRpYyB2b2lkIGRnMV9zYW5pdGl6ZV9wb3J0X2Nsa19vZmYoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LApAQCAtNDExOCw5ICs0MTQ4LDEyIEBAIHZvaWQg
aW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBv
cnQgcG9ydCkKIAllbmNvZGVyLT5jbG9uZWFibGUgPSAwOwogCWVuY29kZXItPnBpcGVfbWFzayA9
IH4wOwogCi0JaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSB8fCBJU19ST0NLRVRMQUtFKGRl
dl9wcml2KSkgewotCQllbmNvZGVyLT5lbmFibGVfY2xvY2sgPSBpY2xfZGRpX2NvbWJvX2VuYWJs
ZV9jbG9jazsKLQkJZW5jb2Rlci0+ZGlzYWJsZV9jbG9jayA9IGljbF9kZGlfY29tYm9fZGlzYWJs
ZV9jbG9jazsKKwlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKSB7CisJCWVuY29kZXItPmVu
YWJsZV9jbG9jayA9IGFkbHNfZGRpX2VuYWJsZV9jbG9jazsKKwkJZW5jb2Rlci0+ZGlzYWJsZV9j
bG9jayA9IGFkbHNfZGRpX2Rpc2FibGVfY2xvY2s7CisJfSBlbHNlIGlmIChJU19ST0NLRVRMQUtF
KGRldl9wcml2KSkgeworCQllbmNvZGVyLT5lbmFibGVfY2xvY2sgPSBya2xfZGRpX2VuYWJsZV9j
bG9jazsKKwkJZW5jb2Rlci0+ZGlzYWJsZV9jbG9jayA9IHJrbF9kZGlfZGlzYWJsZV9jbG9jazsK
IAl9IGVsc2UgaWYgKElTX0RHMShkZXZfcHJpdikpIHsKIAkJZW5jb2Rlci0+ZW5hYmxlX2Nsb2Nr
ID0gZGcxX2RkaV9lbmFibGVfY2xvY2s7CiAJCWVuY29kZXItPmRpc2FibGVfY2xvY2sgPSBkZzFf
ZGRpX2Rpc2FibGVfY2xvY2s7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
