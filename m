Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C814B9E7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB616E40A;
	Wed, 19 Jun 2019 13:26:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5C7D6E3D3
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:25:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 06:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="153806657"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 06:25:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 14:24:55 +0100
Message-Id: <20190619132459.25351-30-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/33] drm/i915: Compartmentalize ring buffer
 creation
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbnRpbnVp
bmcgb24gdGhlIHRoZW1lIG9mIGNvbXBhcnRtZW50YWxpemluZyB0aGUgY29kZSBiZXR0ZXIgdG8g
bWFrZQpmdXR1cmUgc3BsaXQgYmV0d2VlbiBndCBhbmQgZGlzcGxheSBpbiBnbG9iYWwgaTkxNSBj
bGVhcmVyLgoKdjI6CiAqIFBhc3MgaW4gZ2d0dCBpbnN0ZWFkIG9mIGd0LiAoQ2hyaXMpCgpTaWdu
ZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwgMTUgKysrKysrKystLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwppbmRleCBjNjAyM2JjOTQ1
MmQuLmE2NDk0NGZmZDI0MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZ2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdi
dWZmZXIuYwpAQCAtMTIyNSwxNiArMTIyNSwxNiBAQCB2b2lkIGludGVsX3JpbmdfdW5waW4oc3Ry
dWN0IGludGVsX3JpbmcgKnJpbmcpCiAJaTkxNV90aW1lbGluZV91bnBpbihyaW5nLT50aW1lbGlu
ZSk7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKgotaW50ZWxfcmluZ19jcmVhdGVfdm1h
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IHNpemUpCitzdGF0aWMgc3Ry
dWN0IGk5MTVfdm1hICpjcmVhdGVfcmluZ192bWEoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgaW50
IHNpemUpCiB7Ci0Jc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAmZGV2X3ByaXYtPmdn
dHQudm07CisJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAmZ2d0dC0+dm07CisJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB2bS0+aTkxNTsKIAlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCi0Jb2JqID0gaTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oZGV2X3ByaXYsIHNpemUpOworCW9iaiA9IGk5MTVfZ2Vt
X29iamVjdF9jcmVhdGVfc3RvbGVuKGk5MTUsIHNpemUpOwogCWlmICghb2JqKQotCQlvYmogPSBp
OTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGRldl9wcml2LCBzaXplKTsKKwkJb2JqID0g
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXplKTsKIAlpZiAoSVNfRVJS
KG9iaikpCiAJCXJldHVybiBFUlJfQ0FTVChvYmopOwogCkBAIC0xMjYxLDYgKzEyNjEsNyBAQCBp
bnRlbF9lbmdpbmVfY3JlYXRlX3Jpbmcoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAog
CQkJIHN0cnVjdCBpOTE1X3RpbWVsaW5lICp0aW1lbGluZSwKIAkJCSBpbnQgc2l6ZSkKIHsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsKIAlzdHJ1Y3QgaW50
ZWxfcmluZyAqcmluZzsKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIApAQCAtMTI4MSwxMiArMTI4
MiwxMiBAQCBpbnRlbF9lbmdpbmVfY3JlYXRlX3Jpbmcoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLAogCSAqIG9mIHRoZSBidWZmZXIuCiAJICovCiAJcmluZy0+ZWZmZWN0aXZlX3NpemUg
PSBzaXplOwotCWlmIChJU19JODMwKGVuZ2luZS0+aTkxNSkgfHwgSVNfSTg0NUcoZW5naW5lLT5p
OTE1KSkKKwlpZiAoSVNfSTgzMChpOTE1KSB8fCBJU19JODQ1RyhpOTE1KSkKIAkJcmluZy0+ZWZm
ZWN0aXZlX3NpemUgLT0gMiAqIENBQ0hFTElORV9CWVRFUzsKIAogCWludGVsX3JpbmdfdXBkYXRl
X3NwYWNlKHJpbmcpOwogCi0Jdm1hID0gaW50ZWxfcmluZ19jcmVhdGVfdm1hKGVuZ2luZS0+aTkx
NSwgc2l6ZSk7CisJdm1hID0gY3JlYXRlX3Jpbmdfdm1hKGVuZ2luZS0+Z3QtPmdndHQsIHNpemUp
OwogCWlmIChJU19FUlIodm1hKSkgewogCQlrZnJlZShyaW5nKTsKIAkJcmV0dXJuIEVSUl9DQVNU
KHZtYSk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
