Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE375E0D1
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 11:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330026E107;
	Wed,  3 Jul 2019 09:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D046E10B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 09:17:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17110505-1500050 
 for multiple; Wed, 03 Jul 2019 10:17:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 10:17:14 +0100
Message-Id: <20190703091726.11690-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703091726.11690-1-chris@chris-wilson.co.uk>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/15] drm/i915/gt: Use caller provided
 forcewake for intel_mocs_init_engine
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVyaW5nIHBvc3QtcmVzZXQgcmVzdW1lLCB3ZSBjYWxsIGludGVsX21vY3NfaW5pdF9lbmdpbmUg
dG8gcmVpbml0aWFsaXNlCnRoZSBNT0NTIHJlZ2lzdGVycy4gU3VwcmlzaW5nbHksIGVzcGVjaWFs
bHkgd2hlbiBlbmhhbmNlZCBieSBsb2NrZGVwLAp0aGUgYWNxdWlzaXRpb24gb2YgdGhlIGZvcmNl
d2FrZSBsb2NrIGFyb3VuZCBlYWNoIHJlZ2lzdGVyIHdyaXRlIHRha2VzIGEKc3Vic3RhbnRpYWwg
cG9ydGlvbiBvZiB0aGUgcmVzZXQgdGltZS4gV2UgZG9uJ3QgbmVlZCB0byB1c2UgdGhlCmluZGl2
aWR1YWwgZm9yY2V3YWtlIGhlcmUgYXMgd2UgY2FuIGFzc3VtZSB0aGF0IHRoZSBjYWxsZXIgaXMg
aG9sZGluZyBhCmJsYW5rZXQgZm9yY2V3YWtlIGZvciB0aGUgcmVzZXQmcmVzdW1lIGFuZCB0aGUg
cmVzdW1lIGlzIHNlcmlhbGlzZWQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9t
b2NzLmMgfCAxNSArKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbW9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCmluZGV4
IGFlNmNiZjBkNTE3Yy4uMjkwYTVlOWI5MGI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9tb2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bW9jcy5jCkBAIC0zNDYsNiArMzQ2LDkgQEAgdm9pZCBpbnRlbF9tb2NzX2luaXRfZW5naW5lKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAl1bnNpZ25lZCBpbnQgaW5kZXg7CiAJdTMy
IHVudXNlZF92YWx1ZTsKIAorCS8qIENhbGxlZCB1bmRlciBhIGJsYW5rZXQgZm9yY2V3YWtlICov
CisJYXNzZXJ0X2ZvcmNld2FrZXNfYWN0aXZlKHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CisKIAlp
ZiAoIWdldF9tb2NzX3NldHRpbmdzKGd0LCAmdGFibGUpKQogCQlyZXR1cm47CiAKQEAgLTM1NSwx
NiArMzU4LDE2IEBAIHZvaWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAJZm9yIChpbmRleCA9IDA7IGluZGV4IDwgdGFibGUuc2l6ZTsgaW5k
ZXgrKykgewogCQl1MzIgdmFsdWUgPSBnZXRfZW50cnlfY29udHJvbCgmdGFibGUsIGluZGV4KTsK
IAotCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAotCQkJCSAgIG1vY3NfcmVnaXN0ZXIoZW5n
aW5lLT5pZCwgaW5kZXgpLAotCQkJCSAgIHZhbHVlKTsKKwkJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3
KHVuY29yZSwKKwkJCQkgICAgICBtb2NzX3JlZ2lzdGVyKGVuZ2luZS0+aWQsIGluZGV4KSwKKwkJ
CQkgICAgICB2YWx1ZSk7CiAJfQogCiAJLyogQWxsIHJlbWFpbmluZyBlbnRyaWVzIGFyZSBhbHNv
IHVudXNlZCAqLwogCWZvciAoOyBpbmRleCA8IHRhYmxlLm5fZW50cmllczsgaW5kZXgrKykKLQkJ
aW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKLQkJCQkgICBtb2NzX3JlZ2lzdGVyKGVuZ2luZS0+
aWQsIGluZGV4KSwKLQkJCQkgICB1bnVzZWRfdmFsdWUpOworCQlpbnRlbF91bmNvcmVfd3JpdGVf
ZncodW5jb3JlLAorCQkJCSAgICAgIG1vY3NfcmVnaXN0ZXIoZW5naW5lLT5pZCwgaW5kZXgpLAor
CQkJCSAgICAgIHVudXNlZF92YWx1ZSk7CiB9CiAKIC8qKgotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
