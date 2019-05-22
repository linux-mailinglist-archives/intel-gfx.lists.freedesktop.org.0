Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE84F26512
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB12B89A88;
	Wed, 22 May 2019 13:51:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89D789A86;
 Wed, 22 May 2019 13:51:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:06 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:05 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:50:50 +0100
Message-Id: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 00/14] Andi's engine discovery for CI
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkp1c3QgZm9y
IENJIHNpbmNlIHRoZSBmaXJzdCBwYXRjaCBmcm9tIHRoZSBvcmlnaW5hbCBzZXJpZXMgd29uJ3Qg
YXBwbHkgYW55IG1vcmUuCgpBbmRpIFNoeXRpICgxMyk6CiAgbGliL2k5MTU6IGFkZCBnZW1fZW5n
aW5lX3RvcG9sb2d5IGxpYnJhcnkgYW5kIGZvcl9lYWNoIGxvb3AgZGVmaW5pdGlvbgogIGxpYjog
aWd0X2d0OiBhZGQgZXhlY3V0aW9uIGJ1ZmZlciBmbGFncyB0byBjbGFzcyBoZWxwZXIKICBsaWI6
IGlndF9ndDogbWFrZSBnZW1fZW5naW5lX2Nhbl9zdG9yZV9kd29yZCgpIGNoZWNrIGVuZ2luZSBj
bGFzcwogIGxpYjogaWd0X2R1bW15bG9hZDogdXNlIGZvcl9lYWNoX2NvbnRleHRfZW5naW5lKCkK
ICB0ZXN0OiBwZXJmX3BtdTogdXNlIHRoZSBnZW1fZW5naW5lX3RvcG9sb2d5IGxpYnJhcnkKICB0
ZXN0L2k5MTU6IGdlbV9idXN5OiB1c2UgdGhlIGdlbV9lbmdpbmVfdG9wb2xvZ3kgbGlicmFyeQog
IHRlc3QvaTkxNTogZ2VtX2NzX3RsYjogdXNlIHRoZSBnZW1fZW5naW5lX3RvcG9sb2d5IGxpYnJh
cnkKICB0ZXN0L2k5MTU6IGdlbV9jdHhfZXhlYzogdXNlIHRoZSBnZW1fZW5naW5lX3RvcG9sb2d5
IGxpYnJhcnkKICB0ZXN0L2k5MTU6IGdlbV9leGVjX2Jhc2ljOiB1c2UgdGhlIGdlbV9lbmdpbmVf
dG9wb2xvZ3kgbGlicmFyeQogIHRlc3QvaTkxNTogZ2VtX2V4ZWNfcGFyYWxsZWw6IHVzZSB0aGUg
Z2VtX2VuZ2luZV90b3BvbG9neSBsaWJyYXJ5CiAgdGVzdC9pOTE1OiBnZW1fZXhlY19zdG9yZTog
dXNlIHRoZSBnZW1fZW5naW5lX3RvcG9sb2d5IGxpYnJhcnkKICB0ZXN0L2k5MTU6IGdlbV93YWl0
OiB1c2UgdGhlIGdlbV9lbmdpbmVfdG9wb2xvZ3kgbGlicmFyeQogIHRlc3QvaTkxNTogaTkxNV9o
YW5nbWFuOiB1c2UgdGhlIGdlbV9lbmdpbmVfdG9wb2xvZ3kgbGlicmFyeQoKVHZydGtvIFVyc3Vs
aW4gKDEpOgogIGRybS11YXBpOiBJbXBvcnQgaTkxNV9kcm0uaCB1cHRvCiAgICBjNWQzZTM5Y2Fh
NDU2YjFlMDYxNjQ0YjczOTEzMWYyYjU0Yzg0YzA4CgogaW5jbHVkZS9kcm0tdWFwaS9pOTE1X2Ry
bS5oICAgIHwgIDQyICsrKysrCiBsaWIvTWFrZWZpbGUuc291cmNlcyAgICAgICAgICAgfCAgIDIg
KwogbGliL2k5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5jIHwgMjk4ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwogbGliL2k5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5oIHwgIDcwICsr
KysrKysrCiBsaWIvaWd0LmggICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwogbGliL2lndF9k
dW1teWxvYWQuYyAgICAgICAgICAgIHwgIDI5ICsrKy0KIGxpYi9pZ3RfZ3QuYyAgICAgICAgICAg
ICAgICAgICB8ICAzMCArKystCiBsaWIvaWd0X2d0LmggICAgICAgICAgICAgICAgICAgfCAgMTIg
Ky0KIGxpYi9tZXNvbi5idWlsZCAgICAgICAgICAgICAgICB8ICAgMSArCiB0ZXN0cy9pOTE1L2dl
bV9idXN5LmMgICAgICAgICAgfCAxMjggKysrKysrLS0tLS0tLS0KIHRlc3RzL2k5MTUvZ2VtX2Nz
X3RsYi5jICAgICAgICB8ICAgOCArLQogdGVzdHMvaTkxNS9nZW1fY3R4X2V4ZWMuYyAgICAgIHwg
IDE2ICstCiB0ZXN0cy9pOTE1L2dlbV9leGVjX2Jhc2ljLmMgICAgfCAgMjggKystLQogdGVzdHMv
aTkxNS9nZW1fZXhlY19wYXJhbGxlbC5jIHwgIDI2ICstLQogdGVzdHMvaTkxNS9nZW1fZXhlY19z
dG9yZS5jICAgIHwgIDM2ICsrLS0KIHRlc3RzL2k5MTUvZ2VtX3dhaXQuYyAgICAgICAgICB8ICAy
NCArLS0KIHRlc3RzL2k5MTUvaTkxNV9oYW5nbWFuLmMgICAgICB8ICAxNSArLQogdGVzdHMvcGVy
Zl9wbXUuYyAgICAgICAgICAgICAgIHwgMTEwICsrKysrKy0tLS0tLQogMTggZmlsZXMgY2hhbmdl
ZCwgNjQ3IGluc2VydGlvbnMoKyksIDIyOSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBsaWIvaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBsaWIv
aTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmgKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
