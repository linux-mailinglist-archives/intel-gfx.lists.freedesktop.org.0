Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C1126511
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B64289A8B;
	Wed, 22 May 2019 13:51:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7224689A86;
 Wed, 22 May 2019 13:51:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:07 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:06 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:50:51 +0100
Message-Id: <20190522135104.26930-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
References: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 01/14] drm-uapi: Import i915_drm.h upto
 c5d3e39caa456b1e061644b739131f2b54c84c08
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCiAgY29tbWl0
IGM1ZDNlMzljYWE0NTZiMWUwNjE2NDRiNzM5MTMxZjJiNTRjODRjMDgKICBBdXRob3I6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CiAgRGF0ZTogICBXZWQgTWF5IDIy
IDEwOjAwOjU0IDIwMTkgKzAxMDAKCiAgICAgIGRybS9pOTE1OiBFbmdpbmUgZGlzY292ZXJ5IHF1
ZXJ5CgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgotLS0KIGluY2x1ZGUvZHJtLXVhcGkvaTkxNV9kcm0uaCB8IDQyICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0tdWFwaS9pOTE1X2RybS5oIGIvaW5jbHVkZS9kcm0t
dWFwaS9pOTE1X2RybS5oCmluZGV4IGRlN2JlMWJjNmIwNC4uNzYxNTE3ZjE1MzY4IDEwMDY0NAot
LS0gYS9pbmNsdWRlL2RybS11YXBpL2k5MTVfZHJtLmgKKysrIGIvaW5jbHVkZS9kcm0tdWFwaS9p
OTE1X2RybS5oCkBAIC0xOTgyLDYgKzE5ODIsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcGVyZl9vYV9j
b25maWcgewogc3RydWN0IGRybV9pOTE1X3F1ZXJ5X2l0ZW0gewogCV9fdTY0IHF1ZXJ5X2lkOwog
I2RlZmluZSBEUk1fSTkxNV9RVUVSWV9UT1BPTE9HWV9JTkZPICAgIDEKKyNkZWZpbmUgRFJNX0k5
MTVfUVVFUllfRU5HSU5FX0lORk8JMgogLyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9s
ZXMgYW5kIHdlbGwgZG9jdW1lbnRlZCAqLwogCiAJLyoKQEAgLTIwODAsNiArMjA4MSw0NyBAQCBz
dHJ1Y3QgZHJtX2k5MTVfcXVlcnlfdG9wb2xvZ3lfaW5mbyB7CiAJX191OCBkYXRhW107CiB9Owog
CisvKioKKyAqIHN0cnVjdCBkcm1faTkxNV9lbmdpbmVfaW5mbworICoKKyAqIERlc2NyaWJlcyBv
bmUgZW5naW5lIGFuZCBpdCdzIGNhcGFiaWxpdGllcyBhcyBrbm93biB0byB0aGUgZHJpdmVyLgor
ICovCitzdHJ1Y3QgZHJtX2k5MTVfZW5naW5lX2luZm8geworCS8qKiBFbmdpbmUgY2xhc3MgYW5k
IGluc3RhbmNlLiAqLworCXN0cnVjdCBpOTE1X2VuZ2luZV9jbGFzc19pbnN0YW5jZSBlbmdpbmU7
CisKKwkvKiogUmVzZXJ2ZWQgZmllbGQuICovCisJX191MzIgcnN2ZDA7CisKKwkvKiogRW5naW5l
IGZsYWdzLiAqLworCV9fdTY0IGZsYWdzOworCisJLyoqIENhcGFiaWxpdGllcyBvZiB0aGlzIGVu
Z2luZS4gKi8KKwlfX3U2NCBjYXBhYmlsaXRpZXM7CisjZGVmaW5lIEk5MTVfVklERU9fQ0xBU1Nf
Q0FQQUJJTElUWV9IRVZDCQkoMSA8PCAwKQorI2RlZmluZSBJOTE1X1ZJREVPX0FORF9FTkhBTkNF
X0NMQVNTX0NBUEFCSUxJVFlfU0ZDCSgxIDw8IDEpCisKKwkvKiogUmVzZXJ2ZWQgZmllbGRzLiAq
LworCV9fdTY0IHJzdmQxWzRdOworfTsKKworLyoqCisgKiBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlf
ZW5naW5lX2luZm8KKyAqCisgKiBFbmdpbmUgaW5mbyBxdWVyeSBlbnVtZXJhdGVzIGFsbCBlbmdp
bmVzIGtub3duIHRvIHRoZSBkcml2ZXIgYnkgZmlsbGluZyBpbgorICogYW4gYXJyYXkgb2Ygc3Ry
dWN0IGRybV9pOTE1X2VuZ2luZV9pbmZvIHN0cnVjdHVyZXMuCisgKi8KK3N0cnVjdCBkcm1faTkx
NV9xdWVyeV9lbmdpbmVfaW5mbyB7CisJLyoqIE51bWJlciBvZiBzdHJ1Y3QgZHJtX2k5MTVfZW5n
aW5lX2luZm8gc3RydWN0cyBmb2xsb3dpbmcuICovCisJX191MzIgbnVtX2VuZ2luZXM7CisKKwkv
KiogTUJaICovCisJX191MzIgcnN2ZFszXTsKKworCS8qKiBNYXJrZXIgZm9yIGRybV9pOTE1X2Vu
Z2luZV9pbmZvIHN0cnVjdHVyZXMuICovCisJc3RydWN0IGRybV9pOTE1X2VuZ2luZV9pbmZvIGVu
Z2luZXNbXTsKK307CisKICNpZiBkZWZpbmVkKF9fY3BsdXNwbHVzKQogfQogI2VuZGlmCi0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
