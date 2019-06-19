Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA974C31B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 23:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EAEC6E495;
	Wed, 19 Jun 2019 21:35:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CA56E47D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 21:34:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 14:34:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="162159119"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jun 2019 14:34:46 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 22:34:15 +0100
Message-Id: <20190619213437.1190-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
References: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 11/33] drm/i915: Store backpointer to intel_gt in
 the engine
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkl0IHdpbGwg
Y29tZSB1c2VmdWwgaW4gdGhlIG5leHQgcGF0Y2guCgp2MjoKICogRG8gbW9ja19lbmdpbmUgYXMg
d2VsbC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgICB8IDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggfCAyICsrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jICAgICAgICB8IDEgKwogMyBmaWxl
cyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jCmluZGV4IGM1NDhmNmQxYzFhNi4uOTU5ZWQzMDNiNWZjIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAtMzE2LDYgKzMxNiw3IEBAIGlu
dGVsX2VuZ2luZV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJZW5n
aW5lLT5pZCA9IGlkOwogCWVuZ2luZS0+bWFzayA9IEJJVChpZCk7CiAJZW5naW5lLT5pOTE1ID0g
ZGV2X3ByaXY7CisJZW5naW5lLT5ndCA9ICZkZXZfcHJpdi0+Z3Q7CiAJZW5naW5lLT51bmNvcmUg
PSAmZGV2X3ByaXYtPnVuY29yZTsKIAlfX3NwcmludF9lbmdpbmVfbmFtZShlbmdpbmUtPm5hbWUs
IGluZm8pOwogCWVuZ2luZS0+aHdfaWQgPSBlbmdpbmUtPmd1Y19pZCA9IGluZm8tPmh3X2lkOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAppbmRleCA0M2U5
NzVhMjYwMTYuLjlhNzM0Mjg4MTUzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTM1LDYgKzM1LDcgQEAgc3RydWN0IGRybV9pOTE1X3JlZ190
YWJsZTsKIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0Owogc3RydWN0IGk5MTVfcmVxdWVzdDsKIHN0
cnVjdCBpOTE1X3NjaGVkX2F0dHI7CitzdHJ1Y3QgaW50ZWxfZ3Q7CiBzdHJ1Y3QgaW50ZWxfdW5j
b3JlOwogCiB0eXBlZGVmIHU4IGludGVsX2VuZ2luZV9tYXNrX3Q7CkBAIC0yNzksNiArMjgwLDcg
QEAgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgewogCiBzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsKKwlzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0OwogCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZTsKIAljaGFyIG5hbWVbSU5URUxfRU5H
SU5FX0NTX01BWF9OQU1FXTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
bW9ja19lbmdpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMKaW5k
ZXggNDg2YzY5NTNkY2IxLi5iMDIyYWYzMzg1ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L21vY2tfZW5naW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9j
a19lbmdpbmUuYwpAQCAtMjU3LDYgKzI1Nyw3IEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm1v
Y2tfZW5naW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCiAJLyogbWluaW1hbCBl
bmdpbmUgc2V0dXAgZm9yIHJlcXVlc3RzICovCiAJZW5naW5lLT5iYXNlLmk5MTUgPSBpOTE1Owor
CWVuZ2luZS0+YmFzZS5ndCA9ICZpOTE1LT5ndDsKIAlzbnByaW50ZihlbmdpbmUtPmJhc2UubmFt
ZSwgc2l6ZW9mKGVuZ2luZS0+YmFzZS5uYW1lKSwgIiVzIiwgbmFtZSk7CiAJZW5naW5lLT5iYXNl
LmlkID0gaWQ7CiAJZW5naW5lLT5iYXNlLm1hc2sgPSBCSVQoaWQpOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
