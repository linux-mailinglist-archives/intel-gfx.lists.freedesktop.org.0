Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1CF38F240
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 19:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0CFA6E8DF;
	Mon, 24 May 2021 17:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA0326E8DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 17:27:10 +0000 (UTC)
IronPort-SDR: Gi9JOqP2h5LVpxtBVgQc6qHYkQ5hPFubri029r5EogBdqpmBjb4dwWxH+LEPg1tkL1DiiEXsAf
 rsAXTpH0h6pw==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="202028979"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="202028979"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 10:27:06 -0700
IronPort-SDR: Qywge8cdF9SAQs4sDiWbvHpD6SKvfbLS6tTIYPBKtNJAQ98a22dL0MOz9yE8sT4XHHZghwFBgQ
 tu5edbX5aUnQ==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="475979169"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 10:27:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 20:27:01 +0300
Message-Id: <20210524172703.2113058-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/adlp: Require DPT FB CCS color
 planes to be 2MB aligned
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsIERQVCBGQiBjb2xvciBwbGFuZSBzdXJmYWNlIGJhc2UgYWRkcmVzc2VzIG11c3QgYmUgMk1C
IGFsaWduZWQuIE9uCkFETF9QIHRoaXMgbWVhbnMgdGhhdCB0aGUgb2Zmc2V0cyBpbiBDQ1MgRkIg
b2JqZWN0IG11c3QgYmUgYWxzbyAyTUIKYWxpZ25lZC4gQWRqdXN0aW5nIHVuYWxpZ25lZCBvZmZz
ZXRzIGZvciB0aGVzZSBGQnMgZHVyaW5nIGNvbW1pdCB0aW1lCihjb21wZW5zYXRpbmcgd2l0aCB0
aGUgeC95IG9mZnNldHMpIGRvZXNuJ3Qgd29yaywgc2luY2UgdGhlIGJpZwphbGlnbm1lbnQgd291
bGQgbW9zdCBwcm9iYWJseSBsZWFkIHRvIGFuIHgveSBvZmZzZXQgbWlzbWF0Y2ggZXJyb3IKYmV0
d2VlbiB0aGUgbWFpbiBhbmQgQ0NTIHBsYW5lcy4KCldlIGNhbiBvdmVyY29tZSB0aGlzIGxpbWl0
YXRpb24gYnkgcmVtYXBwaW5nIENDUyBGQnMsIHNvIHRoYXQgZWFjaCBjb2xvcgpwbGFuZSBpcyBh
dCBhbiBhbGlnbmVkIG9mZnNldCwgbGVhdmluZyB4L3kgZm9yIGVhY2ggcGxhbmUgdW5hZGp1c3Rl
ZApkdXJpbmcgY29tbWl0IGFuZCBzbyBub3QgY2F1c2luZyBhbiB4L3kgbWlzbWF0Y2ggZXJyb3Iu
IEhvd2V2ZXIKcmVtYXBwaW5nIGZvciBDQ1MgRkJzIHdpbGwgYmUgZG9uZSBhcyBhIGZvbGxvdy11
cCwgc28gZm9yIG5vdyByZXF1aXJlCnRoYXQgdXNlciBzcGFjZSBhbGxvY2F0ZXMgdGhlIEZCIG9i
aiB3aXRoIHByb3Blcmx5IGFsaWduZWQgcGxhbmVzLgoKdjI6IHMvU1pfMk0vNTEyKjRrLyBmb3Ig
Y2xhcml0eS4gKFZpbGxlKQoKU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMg
fCAxMyArKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMKaW5kZXgg
YTAwNWM2ODg4OWU3Yy4uYzYwYTgxYTgxYzA5YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmIuYwpAQCAtMzU1LDggKzM1NSwxNyBAQCBzdGF0aWMgaW50IGludGVsX2ZiX29m
ZnNldF90b194eShpbnQgKngsIGludCAqeSwKIAl1bnNpZ25lZCBpbnQgaGVpZ2h0OwogCXUzMiBh
bGlnbm1lbnQ7CiAKLQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIgJiYKLQkgICAgaXNfc2Vt
aXBsYW5hcl91dl9wbGFuZShmYiwgY29sb3JfcGxhbmUpKQorCS8qCisJICogQWxsIERQVCBjb2xv
ciBwbGFuZXMgbXVzdCBiZSA1MTIqNGsgYWxpZ25lZCAodGhlIGFtb3VudCBtYXBwZWQgYnkgYQor
CSAqIHNpbmdsZSBEUFQgcGFnZSkuIEZvciBBRExfUCBDQ1MgRkJzIHRoaXMgb25seSB3b3JrcyBi
eSByZXF1aXJpbmcKKwkgKiB0aGUgYWxsb2NhdGVkIG9mZnNldHMgdG8gYmUgMk1CIGFsaWduZWQu
ICBPbmNlIHN1cG9vcnQgdG8gcmVtYXAKKwkgKiBzdWNoIEZCcyBpcyBhZGRlZCB3ZSBjYW4gcmVt
b3ZlIHRoaXMgcmVxdWlyZW1lbnQsIGFzIHRoZW4gYWxsIHRoZQorCSAqIHBsYW5lcyBjYW4gYmUg
cmVtYXBwZWQgdG8gYW4gYWxpZ25lZCBvZmZzZXQuCisJICovCisJaWYgKElTX0FMREVSTEFLRV9Q
KGk5MTUpICYmIGlzX2Njc19tb2RpZmllcihmYi0+bW9kaWZpZXIpKQorCQlhbGlnbm1lbnQgPSA1
MTIgKiA0MDk2OworCWVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyICYmCisJCSBpc19z
ZW1pcGxhbmFyX3V2X3BsYW5lKGZiLCBjb2xvcl9wbGFuZSkpCiAJCWFsaWdubWVudCA9IGludGVs
X3RpbGVfcm93X3NpemUoZmIsIGNvbG9yX3BsYW5lKTsKIAllbHNlIGlmIChmYi0+bW9kaWZpZXIg
IT0gRFJNX0ZPUk1BVF9NT0RfTElORUFSKQogCQlhbGlnbm1lbnQgPSBpbnRlbF90aWxlX3NpemUo
aTkxNSk7Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
