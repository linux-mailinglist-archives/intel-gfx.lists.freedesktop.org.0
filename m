Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1A3112B95
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 13:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4BC36E89E;
	Wed,  4 Dec 2019 12:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16426E897
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 12:36:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19456579-1500050 
 for multiple; Wed, 04 Dec 2019 12:35:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 12:35:56 +0000
Message-Id: <20191204123556.3740002-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Try to flush pending unbind events
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgY2Fubm90IGhhbmRsZSBhIHZtYSB3aXRoaW4gdGhlIHVuYmluZCBsb29wLCB0cnkgdG8g
Zmx1c2ggdGhlCnBlbmRpbmcgZXZlbnRzIChpOTE1X3ZtYV9wYXJrZWQsIGk5MTVfdm1fcmVsZWFz
ZSkgYW5kIHRyeSBhZ2Fpbi4gVGhpcwphdm9pZHMgYSByb3VuZCB0cmlwIHRvIHVzZXJzcGFjZSB0
aGF0IGlzIG5vdCBndWFyYW50ZWVkIHRvIG1ha2UgZm9yd2FyZApwcm9ncmVzcywgYXMgdGhlIGV2
ZW50cyB3ZSB3YWl0IHVwb24gcmVxdWlyZSBiZWluZyBpZGxlLgoKUmVmZXJlbmNlczogY2I2YzNk
NDVmOTQ4ICgiZHJtL2k5MTUvZ2VtOiBBdm9pZCBwYXJraW5nIHRoZSB2bWEgYXMgd2UgdW5iaW5k
IikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDEwICsrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA5
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRl
eCBlYjllMjYwOWM1NjkuLjM3NzQ4N2EwNzYyZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBA
IC0xMjMsNyArMTIzLDcgQEAgaW50IGk5MTVfZ2VtX29iamVjdF91bmJpbmQoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKIAlMSVNUX0hFQUQoc3RpbGxfaW5fbGlzdCk7CiAJaW50ZWxf
d2FrZXJlZl90IHdha2VyZWY7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7Ci0JaW50IHJldCA9IDA7
CisJaW50IHJldDsKIAogCWlmICghYXRvbWljX3JlYWQoJm9iai0+YmluZF9jb3VudCkpCiAJCXJl
dHVybiAwOwpAQCAtMTM2LDYgKzEzNiw4IEBAIGludCBpOTE1X2dlbV9vYmplY3RfdW5iaW5kKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJICovCiAJd2FrZXJlZiA9IGludGVsX3J1
bnRpbWVfcG1fZ2V0KHJwbSk7CiAKK3RyeV9hZ2FpbjoKKwlyZXQgPSAwOwogCXNwaW5fbG9jaygm
b2JqLT52bWEubG9jayk7CiAJd2hpbGUgKCFyZXQgJiYgKHZtYSA9IGxpc3RfZmlyc3RfZW50cnlf
b3JfbnVsbCgmb2JqLT52bWEubGlzdCwKIAkJCQkJCSAgICAgICBzdHJ1Y3QgaTkxNV92bWEsCkBA
IC0xNTMsNiArMTU1LDcgQEAgaW50IGk5MTVfZ2VtX29iamVjdF91bmJpbmQoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJfSBlbHNlIHsKIAkJCWlmIChpOTE1X3ZtYV9pc19jbG9z
ZWQodm1hKSkgewogCQkJCXNwaW5fdW5sb2NrKCZvYmotPnZtYS5sb2NrKTsKKwkJCQlpOTE1X3Zt
YV9wYXJrZWQodm0tPmd0KTsKIAkJCQlnb3RvIGVycl92bTsKIAkJCX0KIAkJfQpAQCAtMTc0LDYg
KzE3NywxMSBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqLAogCWxpc3Rfc3BsaWNlKCZzdGlsbF9pbl9saXN0LCAmb2JqLT52bWEubGlz
dCk7CiAJc3Bpbl91bmxvY2soJm9iai0+dm1hLmxvY2spOwogCisJaWYgKHJldCA9PSAtRUFHQUlO
ICYmIGZsYWdzICYgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9BQ1RJVkUpIHsKKwkJcmN1X2JhcnJp
ZXIoKTsgLyogZmx1c2ggdGhlIGk5MTVfdm1fcmVsZWFzZSgpICovCisJCWdvdG8gdHJ5X2FnYWlu
OworCX0KKwogCWludGVsX3J1bnRpbWVfcG1fcHV0KHJwbSwgd2FrZXJlZik7CiAKIAlyZXR1cm4g
cmV0OwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
