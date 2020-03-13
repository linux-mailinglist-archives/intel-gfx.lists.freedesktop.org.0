Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C41A6184C4D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 17:21:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445EA6EC16;
	Fri, 13 Mar 2020 16:21:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2974B6EC12;
 Fri, 13 Mar 2020 16:21:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 09:21:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="236998978"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 Mar 2020 09:21:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Mar 2020 18:21:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 13 Mar 2020 18:20:49 +0200
Message-Id: <20200313162054.16009-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313162054.16009-1-ville.syrjala@linux.intel.com>
References: <20200313162054.16009-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/edid: Return DispID length from
 drm_find_displayid_extension()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFz
IHdpdGggdGhlIGJ5dGUgb2Zmc2V0IChpZHgpIGRybV9maW5kX2Rpc3BsYXlpZF9leHRlbnNpb24o
KSBpcwp0aGUgb25seSBvbmUgd2hvIGFjdHVhbGx5IGtub3dzIGhvdyBtdWNoIGRhdGEgdGhlIHJl
c3VsdGluZyBEaXNwSUQKYmxvY2sgY2FuIGNvbnRhaW4uIFNvIHJldHVybiB0aGUgbGVuZ3RoIGZy
b20gdGhlcmVpbiBpbnN0ZWFkIG9mCmFzc3VtaW5nIGl0J3MgdGhlIEVESUQgYmxvY2sgbGVuZ3Ro
IGFsbCBvdmVyLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyB8IDIwICsr
KysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTAg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMgYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwppbmRleCAzZjllNjU5MTk5YWYuLjE4YzU1ZjNiMjBk
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2RybV9lZGlkLmMKQEAgLTMyMTIsMTMgKzMyMTIsMTUgQEAgc3RhdGljIHU4ICpkcm1f
ZmluZF9lZGlkX2V4dGVuc2lvbihjb25zdCBzdHJ1Y3QgZWRpZCAqZWRpZCwgaW50IGV4dF9pZCkK
IH0KIAogCi1zdGF0aWMgdTggKmRybV9maW5kX2Rpc3BsYXlpZF9leHRlbnNpb24oY29uc3Qgc3Ry
dWN0IGVkaWQgKmVkaWQsIGludCAqaWR4KQorc3RhdGljIHU4ICpkcm1fZmluZF9kaXNwbGF5aWRf
ZXh0ZW5zaW9uKGNvbnN0IHN0cnVjdCBlZGlkICplZGlkLAorCQkJCQlpbnQgKmxlbmd0aCwgaW50
ICppZHgpCiB7CiAJdTggKmRpc3BsYXlpZCA9IGRybV9maW5kX2VkaWRfZXh0ZW5zaW9uKGVkaWQs
IERJU1BMQVlJRF9FWFQpOwogCiAJaWYgKCFkaXNwbGF5aWQpCiAJCXJldHVybiBOVUxMOwogCisJ
Kmxlbmd0aCA9IEVESURfTEVOR1RIOwogCSppZHggPSAxOwogCiAJcmV0dXJuIGRpc3BsYXlpZDsK
QEAgLTMyMjcsOCArMzIyOSw3IEBAIHN0YXRpYyB1OCAqZHJtX2ZpbmRfZGlzcGxheWlkX2V4dGVu
c2lvbihjb25zdCBzdHJ1Y3QgZWRpZCAqZWRpZCwgaW50ICppZHgpCiBzdGF0aWMgdTggKmRybV9m
aW5kX2NlYV9leHRlbnNpb24oY29uc3Qgc3RydWN0IGVkaWQgKmVkaWQpCiB7CiAJaW50IHJldDsK
LQlpbnQgaWR4OwotCWludCBsZW5ndGggPSBFRElEX0xFTkdUSDsKKwlpbnQgbGVuZ3RoLCBpZHg7
CiAJc3RydWN0IGRpc3BsYXlpZF9ibG9jayAqYmxvY2s7CiAJdTggKmNlYTsKIAl1OCAqZGlzcGxh
eWlkOwpAQCAtMzIzOSw3ICszMjQwLDcgQEAgc3RhdGljIHU4ICpkcm1fZmluZF9jZWFfZXh0ZW5z
aW9uKGNvbnN0IHN0cnVjdCBlZGlkICplZGlkKQogCQlyZXR1cm4gY2VhOwogCiAJLyogQ0VBIGJs
b2NrcyBjYW4gYWxzbyBiZSBmb3VuZCBlbWJlZGRlZCBpbiBhIERpc3BsYXlJRCBibG9jayAqLwot
CWRpc3BsYXlpZCA9IGRybV9maW5kX2Rpc3BsYXlpZF9leHRlbnNpb24oZWRpZCwgJmlkeCk7CisJ
ZGlzcGxheWlkID0gZHJtX2ZpbmRfZGlzcGxheWlkX2V4dGVuc2lvbihlZGlkLCAmbGVuZ3RoLCAm
aWR4KTsKIAlpZiAoIWRpc3BsYXlpZCkKIAkJcmV0dXJuIE5VTEw7CiAKQEAgLTUxODksMTIgKzUx
OTAsMTEgQEAgc3RhdGljIGludCBhZGRfZGlzcGxheWlkX2RldGFpbGVkX21vZGVzKHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiB7CiAJdTggKmRpc3BsYXlpZDsKIAlpbnQgcmV0Owot
CWludCBpZHg7Ci0JaW50IGxlbmd0aCA9IEVESURfTEVOR1RIOworCWludCBsZW5ndGgsIGlkeDsK
IAlzdHJ1Y3QgZGlzcGxheWlkX2Jsb2NrICpibG9jazsKIAlpbnQgbnVtX21vZGVzID0gMDsKIAot
CWRpc3BsYXlpZCA9IGRybV9maW5kX2Rpc3BsYXlpZF9leHRlbnNpb24oZWRpZCwgJmlkeCk7CisJ
ZGlzcGxheWlkID0gZHJtX2ZpbmRfZGlzcGxheWlkX2V4dGVuc2lvbihlZGlkLCAmbGVuZ3RoLCAm
aWR4KTsKIAlpZiAoIWRpc3BsYXlpZCkKIAkJcmV0dXJuIDA7CiAKQEAgLTU4ODIsMTcgKzU4ODIs
MTcgQEAgc3RhdGljIHZvaWQgZHJtX2dldF9kaXNwbGF5aWQoc3RydWN0IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvciwKIAkJCSAgICAgIHN0cnVjdCBlZGlkICplZGlkKQogewogCXZvaWQgKmRpc3Bs
YXlpZCA9IE5VTEw7Ci0JaW50IGlkeDsKKwlpbnQgbGVuZ3RoLCBpZHg7CiAJaW50IHJldDsKIAog
CWNvbm5lY3Rvci0+aGFzX3RpbGUgPSBmYWxzZTsKLQlkaXNwbGF5aWQgPSBkcm1fZmluZF9kaXNw
bGF5aWRfZXh0ZW5zaW9uKGVkaWQsICZpZHgpOworCWRpc3BsYXlpZCA9IGRybV9maW5kX2Rpc3Bs
YXlpZF9leHRlbnNpb24oZWRpZCwgJmxlbmd0aCwgJmlkeCk7CiAJaWYgKCFkaXNwbGF5aWQpIHsK
IAkJLyogZHJvcCByZWZlcmVuY2UgdG8gYW55IHRpbGUgZ3JvdXAgd2UgaGFkICovCiAJCWdvdG8g
b3V0X2Ryb3BfcmVmOwogCX0KIAotCXJldCA9IGRybV9wYXJzZV9kaXNwbGF5X2lkKGNvbm5lY3Rv
ciwgZGlzcGxheWlkLCBFRElEX0xFTkdUSCwgaWR4KTsKKwlyZXQgPSBkcm1fcGFyc2VfZGlzcGxh
eV9pZChjb25uZWN0b3IsIGRpc3BsYXlpZCwgbGVuZ3RoLCBpZHgpOwogCWlmIChyZXQgPCAwKQog
CQlnb3RvIG91dF9kcm9wX3JlZjsKIAlpZiAoIWNvbm5lY3Rvci0+aGFzX3RpbGUpCi0tIAoyLjI0
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
