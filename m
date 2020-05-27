Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6D01E42DB
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 15:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A0D589998;
	Wed, 27 May 2020 13:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04BC989994;
 Wed, 27 May 2020 13:03:13 +0000 (UTC)
IronPort-SDR: jc6PKCKRfgVyvNMI2rAC/NTkclB7c811STagkoNrXO1IwhUPcT0bQgWkjdVhfbJm6JrkxD8y2s
 w6I+ZZUejrIg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 06:03:13 -0700
IronPort-SDR: ejUmehgtPj/Q/RcKqDXpx6PVRcdjSlsQ4bAGog2ViARx/sy6/wSG7qe67gwBJAx1snUd4X6hQd
 RM7+zNOns0iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,441,1583222400"; d="scan'208";a="255462174"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 27 May 2020 06:03:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 May 2020 16:03:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 27 May 2020 16:03:08 +0300
Message-Id: <20200527130310.27099-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/edid: Allow looking for ext blocks
 starting from a specified index
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFw
cGFyZW50bHkgRURJRHMgd2l0aCBtdWx0aXBsZSBEaXNwSUQgZXh0IGJsb2NrcyBpcyBhIHRoaW5n
LCBzbyBwcmVwYXJlCmZvciBpdGVyYXRpbmcgdGhyb3VnaCBtdWx0aXBsZSBleHQgYmxvY2tzIG9m
IHRoZSBzYW1lIHR5cGUgYnkKcGFzc2luZyB0aGUgc3RhcnRpbmcgZXh0IGJsb2NrIGluZGV4IHRv
IGRybV9maW5kX2VkaWRfZXh0ZW5zaW9uKCkuIFdlbGwKYWxzbyBoYXZlIGRybV9maW5kX2VkaWRf
ZXh0ZW5zaW9uKCkgdXBkYXRlIHRoZSBpbmRleCB0byBwb2ludCB0byB0aGUKbmV4dCBleHQgYmxv
Y2sgb24gc3VjY2Vzcy4gVGh1cyB3ZSBzaG91bGQgYmUgYWJsZSB0byBjYWxsCmRybV9maW5kX2Vk
aWRfZXh0ZW5zaW9uKCkgaW4gbG9vcC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9l
ZGlkLmMgfCAzMCArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyMSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZWRpZC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKaW5kZXggZDgz
NzJkNjM4NTFiLi5mMjUzMWQ1MWRmYTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZWRpZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCkBAIC0zMTg4LDcgKzMxODgs
OCBAQCBhZGRfZGV0YWlsZWRfbW9kZXMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvciwg
c3RydWN0IGVkaWQgKmVkaWQsCiAvKgogICogU2VhcmNoIEVESUQgZm9yIENFQSBleHRlbnNpb24g
YmxvY2suCiAgKi8KLXN0YXRpYyB1OCAqZHJtX2ZpbmRfZWRpZF9leHRlbnNpb24oY29uc3Qgc3Ry
dWN0IGVkaWQgKmVkaWQsIGludCBleHRfaWQpCitzdGF0aWMgdTggKmRybV9maW5kX2VkaWRfZXh0
ZW5zaW9uKGNvbnN0IHN0cnVjdCBlZGlkICplZGlkLAorCQkJCSAgIGludCBleHRfaWQsIGludCAq
ZXh0X2luZGV4KQogewogCXU4ICplZGlkX2V4dCA9IE5VTEw7CiAJaW50IGk7CkBAIC0zMTk4LDIz
ICszMTk5LDI2IEBAIHN0YXRpYyB1OCAqZHJtX2ZpbmRfZWRpZF9leHRlbnNpb24oY29uc3Qgc3Ry
dWN0IGVkaWQgKmVkaWQsIGludCBleHRfaWQpCiAJCXJldHVybiBOVUxMOwogCiAJLyogRmluZCBD
RUEgZXh0ZW5zaW9uICovCi0JZm9yIChpID0gMDsgaSA8IGVkaWQtPmV4dGVuc2lvbnM7IGkrKykg
eworCWZvciAoaSA9ICpleHRfaW5kZXg7IGkgPCBlZGlkLT5leHRlbnNpb25zOyBpKyspIHsKIAkJ
ZWRpZF9leHQgPSAodTggKillZGlkICsgRURJRF9MRU5HVEggKiAoaSArIDEpOwogCQlpZiAoZWRp
ZF9leHRbMF0gPT0gZXh0X2lkKQogCQkJYnJlYWs7CiAJfQogCi0JaWYgKGkgPT0gZWRpZC0+ZXh0
ZW5zaW9ucykKKwlpZiAoaSA+PSBlZGlkLT5leHRlbnNpb25zKQogCQlyZXR1cm4gTlVMTDsKIAor
CSpleHRfaW5kZXggPSBpICsgMTsKKwogCXJldHVybiBlZGlkX2V4dDsKIH0KIAogCiBzdGF0aWMg
dTggKmRybV9maW5kX2Rpc3BsYXlpZF9leHRlbnNpb24oY29uc3Qgc3RydWN0IGVkaWQgKmVkaWQs
Ci0JCQkJCWludCAqbGVuZ3RoLCBpbnQgKmlkeCkKKwkJCQkJaW50ICpsZW5ndGgsIGludCAqaWR4
LAorCQkJCQlpbnQgKmV4dF9pbmRleCkKIHsKLQl1OCAqZGlzcGxheWlkID0gZHJtX2ZpbmRfZWRp
ZF9leHRlbnNpb24oZWRpZCwgRElTUExBWUlEX0VYVCk7CisJdTggKmRpc3BsYXlpZCA9IGRybV9m
aW5kX2VkaWRfZXh0ZW5zaW9uKGVkaWQsIERJU1BMQVlJRF9FWFQsIGV4dF9pbmRleCk7CiAJc3Ry
dWN0IGRpc3BsYXlpZF9oZHIgKmJhc2U7CiAJaW50IHJldDsKIApAQCAtMzI0MSwxNCArMzI0NSwx
OCBAQCBzdGF0aWMgdTggKmRybV9maW5kX2NlYV9leHRlbnNpb24oY29uc3Qgc3RydWN0IGVkaWQg
KmVkaWQpCiAJc3RydWN0IGRpc3BsYXlpZF9ibG9jayAqYmxvY2s7CiAJdTggKmNlYTsKIAl1OCAq
ZGlzcGxheWlkOworCWludCBleHRfaW5kZXg7CiAKIAkvKiBMb29rIGZvciBhIHRvcCBsZXZlbCBD
RUEgZXh0ZW5zaW9uIGJsb2NrICovCi0JY2VhID0gZHJtX2ZpbmRfZWRpZF9leHRlbnNpb24oZWRp
ZCwgQ0VBX0VYVCk7CisJZXh0X2luZGV4ID0gMDsKKwljZWEgPSBkcm1fZmluZF9lZGlkX2V4dGVu
c2lvbihlZGlkLCBDRUFfRVhULCAmZXh0X2luZGV4KTsKIAlpZiAoY2VhKQogCQlyZXR1cm4gY2Vh
OwogCiAJLyogQ0VBIGJsb2NrcyBjYW4gYWxzbyBiZSBmb3VuZCBlbWJlZGRlZCBpbiBhIERpc3Bs
YXlJRCBibG9jayAqLwotCWRpc3BsYXlpZCA9IGRybV9maW5kX2Rpc3BsYXlpZF9leHRlbnNpb24o
ZWRpZCwgJmxlbmd0aCwgJmlkeCk7CisJZXh0X2luZGV4ID0gMDsKKwlkaXNwbGF5aWQgPSBkcm1f
ZmluZF9kaXNwbGF5aWRfZXh0ZW5zaW9uKGVkaWQsICZsZW5ndGgsICZpZHgsCisJCQkJCQkgJmV4
dF9pbmRleCk7CiAJaWYgKCFkaXNwbGF5aWQpCiAJCXJldHVybiBOVUxMOwogCkBAIC01MTk1LDgg
KzUyMDMsMTAgQEAgc3RhdGljIGludCBhZGRfZGlzcGxheWlkX2RldGFpbGVkX21vZGVzKHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJaW50IGxlbmd0aCwgaWR4OwogCXN0cnVjdCBk
aXNwbGF5aWRfYmxvY2sgKmJsb2NrOwogCWludCBudW1fbW9kZXMgPSAwOworCWludCBleHRfaW5k
ZXggPSAwOwogCi0JZGlzcGxheWlkID0gZHJtX2ZpbmRfZGlzcGxheWlkX2V4dGVuc2lvbihlZGlk
LCAmbGVuZ3RoLCAmaWR4KTsKKwlkaXNwbGF5aWQgPSBkcm1fZmluZF9kaXNwbGF5aWRfZXh0ZW5z
aW9uKGVkaWQsICZsZW5ndGgsICZpZHgsCisJCQkJCQkgJmV4dF9pbmRleCk7CiAJaWYgKCFkaXNw
bGF5aWQpCiAJCXJldHVybiAwOwogCkBAIC01ODcwLDExICs1ODgwLDEzIEBAIHZvaWQgZHJtX3Vw
ZGF0ZV90aWxlX2luZm8oc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJCSAgY29u
c3Qgc3RydWN0IGVkaWQgKmVkaWQpCiB7CiAJY29uc3Qgdm9pZCAqZGlzcGxheWlkID0gTlVMTDsK
KwlpbnQgZXh0X2luZGV4ID0gMDsKIAlpbnQgbGVuZ3RoLCBpZHg7CiAJaW50IHJldDsKIAogCWNv
bm5lY3Rvci0+aGFzX3RpbGUgPSBmYWxzZTsKLQlkaXNwbGF5aWQgPSBkcm1fZmluZF9kaXNwbGF5
aWRfZXh0ZW5zaW9uKGVkaWQsICZsZW5ndGgsICZpZHgpOworCWRpc3BsYXlpZCA9IGRybV9maW5k
X2Rpc3BsYXlpZF9leHRlbnNpb24oZWRpZCwgJmxlbmd0aCwgJmlkeCwKKwkJCQkJCSAmZXh0X2lu
ZGV4KTsKIAlpZiAoIWRpc3BsYXlpZCkgewogCQkvKiBkcm9wIHJlZmVyZW5jZSB0byBhbnkgdGls
ZSBncm91cCB3ZSBoYWQgKi8KIAkJZ290byBvdXRfZHJvcF9yZWY7Ci0tIAoyLjI2LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
