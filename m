Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8575F37008
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823CB893ED;
	Thu,  6 Jun 2019 09:36:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29A5893ED
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:36:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 02:36:52 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2019 02:36:51 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 10:36:22 +0100
Message-Id: <20190606093639.9372-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/21] drm/i915: Extract engine fault reset to a
 helper
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkp1c3QgdGlk
eWluZyB0aGUgZmxvdyBhIGJpdC4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuYyB8IDEyICsrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwppbmRl
eCBkZTUzOTI3YzU4M2YuLmE2ZWNmZGM3MzVjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jCkBAIC0xMTYwLDYgKzExNjAsMTIgQEAgc3RhdGljIHZvaWQgY2xlYXJfcmVnaXN0
ZXIoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLCBpOTE1X3JlZ190IHJlZykKIAlpbnRlbF91
bmNvcmVfcm13KHVuY29yZSwgcmVnLCAwLCAwKTsKIH0KIAorc3RhdGljIHZvaWQgZ2VuOF9jbGVh
cl9lbmdpbmVfZXJyb3JfcmVnaXN0ZXIoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQor
eworCUdFTjZfUklOR19GQVVMVF9SRUdfUk1XKGVuZ2luZSwgUklOR19GQVVMVF9WQUxJRCwgMCk7
CisJR0VONl9SSU5HX0ZBVUxUX1JFR19QT1NUSU5HX1JFQUQoZW5naW5lKTsKK30KKwogdm9pZCBp
OTE1X2NsZWFyX2Vycm9yX3JlZ2lzdGVycyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
IAkJCQlpbnRlbF9lbmdpbmVfbWFza190IGVuZ2luZV9tYXNrKQogewpAQCAtMTE5NCwxMCArMTIw
MCw4IEBAIHZvaWQgaTkxNV9jbGVhcl9lcnJvcl9yZWdpc3RlcnMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsCiAJCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKIAkJZW51bSBp
bnRlbF9lbmdpbmVfaWQgaWQ7CiAKLQkJZm9yX2VhY2hfZW5naW5lX21hc2tlZChlbmdpbmUsIGk5
MTUsIGVuZ2luZV9tYXNrLCBpZCkgewotCQkJR0VONl9SSU5HX0ZBVUxUX1JFR19STVcoZW5naW5l
LCBSSU5HX0ZBVUxUX1ZBTElELCAwKTsKLQkJCUdFTjZfUklOR19GQVVMVF9SRUdfUE9TVElOR19S
RUFEKGVuZ2luZSk7Ci0JCX0KKwkJZm9yX2VhY2hfZW5naW5lX21hc2tlZChlbmdpbmUsIGk5MTUs
IGVuZ2luZV9tYXNrLCBpZCkKKwkJCWdlbjhfY2xlYXJfZW5naW5lX2Vycm9yX3JlZ2lzdGVyKGVu
Z2luZSk7CiAJfQogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
