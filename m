Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F37E1370
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 09:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B4B6E981;
	Wed, 23 Oct 2019 07:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D50A6E981
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 07:50:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 00:50:54 -0700
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="201915795"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 00:50:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2019 09:50:39 +0200
Message-Id: <20191023075039.21740-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023075039.21740-1-janusz.krzysztofik@linux.intel.com>
References: <20191023075039.21740-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/dmabuf: Implement pread() callback
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbmVlZCBkbWFidWYgc3BlY2lmaWMgcHJlYWQoKSBjYWxsYmFjayB1dGlsaXppbmcgZG1hLWJ1
ZiBBUEksCm90aGVyd2lzZSBHRU1fUFJFQUQgSU9DVEwgd2lsbCBubyBsb25nZXIgd29yayB3aXRo
IGRtYS1idWYgYmFja2VkCihpLmUuLCBQUklNRSBpbXBvcnRlZCkgb2JqZWN0cyBvbiBoYXJkd2Fy
ZSB3aXRoIG5vIG1hcHBhYmxlIGFwZXJ0dXJlLgoKU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlz
enRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgpDYzogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IE1pY2hh
bCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyB8IDU1ICsrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCmluZGV4IDkzZWVhMTAzMWM4Mi4uMjA3ZGJmMDQ0Mjk2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCkBAIC0yNDgs
NiArMjQ4LDYwIEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXNfZG1hYnVm
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkJIERNQV9CSURJUkVDVElPTkFM
KTsKIH0KIAorc3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfcHJlYWRfZG1hYnVmKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCQkJCWNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1f
cHJlYWQgKmFyZ3MpCit7CisJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IG9iai0+YmFzZS5pbXBv
cnRfYXR0YWNoLT5kbWFidWY7CisJdm9pZCBfX3VzZXIgKnVzZXJfZGF0YSA9IHU2NF90b191c2Vy
X3B0cihhcmdzLT5kYXRhX3B0cik7CisJc3RydWN0IGZpbGUgKmZpbGUgPSBkbWFidWYtPmZpbGU7
CisJY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyAqZm9wID0gZmlsZS0+Zl9vcDsKKwl2b2lk
IF9fZm9yY2UgKnZhZGRyOworCWludCByZXQ7CisKKwlpZiAoZm9wLT5yZWFkKSB7CisJCWxvZmZf
dCBvZmZzZXQgPSBhcmdzLT5vZmZzZXQ7CisKKwkJLyoKKwkJICogZm9wLT5yZWFkKCkgaXMgc3Vw
cG9zZWQgdG8gY2FsbCBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoKQorCQkgKiBpZiBPX1NZTkMg
ZmxhZyBpcyBzZXQsIGF2b2lkIGNhbGxpbmcgaXQgdHdpY2UKKwkJICovCisJCWlmICghKGZpbGUt
PmZfZmxhZ3MgJiBPX1NZTkMpKSB7CisJCQlyZXQgPSBkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3Mo
ZG1hYnVmLCBETUFfRlJPTV9ERVZJQ0UpOworCQkJaWYgKHJldCkKKwkJCQlyZXR1cm4gcmV0Owor
CQl9CisKKwkJcmV0ID0gZm9wLT5yZWFkKGZpbGUsIHVzZXJfZGF0YSwgYXJncy0+c2l6ZSwgJm9m
ZnNldCk7CisKKwkJaWYgKCEoZmlsZS0+Zl9mbGFncyAmIE9fU1lOQykpCisJCQlkbWFfYnVmX2Vu
ZF9jcHVfYWNjZXNzKGRtYWJ1ZiwgRE1BX0ZST01fREVWSUNFKTsKKworCQlpZiAoIXJldCkKKwkJ
CXJldHVybiAwOworCX0KKworCS8qIGRtYS1idWYgZmlsZSAucmVhZCgpIG5vdCBzdXBwb3J0ZWQg
b3IgZmFpbGVkLCB0cnkgZG1hX2J1Zl92bWFwKCkgKi8KKwlyZXQgPSBkbWFfYnVmX2JlZ2luX2Nw
dV9hY2Nlc3MoZG1hYnVmLCBETUFfRlJPTV9ERVZJQ0UpOworCWlmIChyZXQpCisJCXJldHVybiBy
ZXQ7CisKKwl2YWRkciA9IGRtYV9idWZfdm1hcChkbWFidWYpOworCWlmICghdmFkZHIpCisJCWdv
dG8gb3V0X2VycjsKKworCXJldCA9IGNvcHlfdG9fdXNlcih1c2VyX2RhdGEsIHZhZGRyICsgYXJn
cy0+b2Zmc2V0LCBhcmdzLT5zaXplKTsKKwlkbWFfYnVmX3Z1bm1hcChkbWFidWYsIHZhZGRyKTsK
KwlpZiAoIXJldCkKKwkJZ290byBvdXRfZW5kOworCitvdXRfZXJyOgorCS8qIGZhbGwgYmFjayB0
byBHVFQgbWFwcGluZyAqLworCXJldCA9IC1FTk9ERVY7CitvdXRfZW5kOgorCWRtYV9idWZfZW5k
X2NwdV9hY2Nlc3MoZG1hYnVmLCBETUFfRlJPTV9ERVZJQ0UpOworCXJldHVybiByZXQ7Cit9CisK
IHN0YXRpYyBpbnQgaTkxNV9nZW1fb2JqZWN0X3B3cml0ZV9kbWFidWYoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAkJCQkJIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fcHdyaXRl
ICphcmdzKQogewpAQCAtMzA1LDYgKzM1OSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9nZW1fb2JqZWN0
X3B3cml0ZV9kbWFidWYoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9nZW1fb2JqZWN0X2RtYWJ1
Zl9vcHMgPSB7CiAJLmdldF9wYWdlcyA9IGk5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXNfZG1hYnVm
LAogCS5wdXRfcGFnZXMgPSBpOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzX2RtYWJ1ZiwKKwkucHJl
YWQgPSBpOTE1X2dlbV9vYmplY3RfcHJlYWRfZG1hYnVmLAogCS5wd3JpdGUgPSBpOTE1X2dlbV9v
YmplY3RfcHdyaXRlX2RtYWJ1ZiwKIH07CiAKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
