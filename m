Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8093A8F6B7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 23:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27E46E442;
	Thu, 15 Aug 2019 21:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BACE6E442
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 21:59:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 14:59:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; 
 d="scan'208,223";a="176999940"
Received: from mdroper-desk.fm.intel.com ([10.105.128.126])
 by fmsmga008.fm.intel.com with ESMTP; 15 Aug 2019 14:59:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Aug 2019 14:58:59 -0700
Message-Id: <20190815215859.10970-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gen11: Add Wa_1604278689:icl,ehl
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

RnJvbSB0aGUgYnNwZWM6CgogICAgICAgICJTVyBtdXN0IGFsd2F5cyBwcm9ncmFtIHRoZSBGQkNf
UlRfQkFTRV9BRERSX1JFR0lTVEVSXyogcmVnaXN0ZXIKICAgICAgICBpbiBSZW5kZXIgRW5naW5l
IHRvIGEgcmVzZXJ2ZWQgdmFsdWUgKDB4RkZGRl9GRkZGKSBzdWNoIHRoYXQgdGhlCiAgICAgICAg
cHJvZ3JhbW1lZCB2YWx1ZSBkb2VzbuKAmXQgbWF0Y2ggdGhlIHJlbmRlciB0YXJnZXQgc3VyZmFj
ZSBhZGRyZXNzCiAgICAgICAgcHJvZ3JhbW1lZC4gVGhpcyB3b3VsZCBkaXNhYmxlIHJlbmRlciBl
bmdpbmUgZnJvbSBnZW5lcmF0aW5nCiAgICAgICAgbW9kaWZ5IG1lc3NhZ2VzIHRvIEZCQyB1bml0
IGluIGRpc3BsYXkuIgoKQnNwZWM6IDExMzg4CkJzcGVjOiAzMzQ1MQpDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDYgKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4
IDcwNGFjZTAxZTdmNS4uMjliNTBlMmMwNjI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTU2Nyw2ICs1NjcsMTIgQEAgc3RhdGljIHZvaWQgaWNs
X2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkv
KiBhbGxvdyBoZWFkZXJsZXNzIG1lc3NhZ2VzIGZvciBwcmVlbXB0aWJsZSBHUEdQVSBjb250ZXh0
ICovCiAJV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTBfU0FNUExFUl9NT0RFLAogCQkJICBHRU4xMV9T
QU1QTEVSX0VOQUJMRV9IRUFETEVTU19NU0cpOworCisJLyogV2FfMTYwNDI3ODY4OTppY2wsZWhs
ICovCisJd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgSVZCX0ZCQ19SVF9CQVNFX1VQUEVSLAorCQkJ
ICAgMCwgLyogd3JpdGUtb25seSByZWdpc3Rlcjsgc2tpcCB2YWxpZGF0aW9uICovCisJCQkgICAw
eEZGRkZGRkZGKTsKKwl3YV93cml0ZSh3YWwsIElWQl9GQkNfUlRfQkFTRSwgMHhGRkZGRkZGRik7
CiB9CiAKIHN0YXRpYyB2b2lkCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBkZWY2ZGJkYzdl
MmUuLjE0YWYxYjFkYzBkMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0zMjE0LDYgKzMy
MTQsNyBAQCBlbnVtIGk5MTVfcG93ZXJfd2VsbF9pZCB7CiAKIC8qIEZyYW1lYnVmZmVyIGNvbXBy
ZXNzaW9uIGZvciBJdnlicmlkZ2UgKi8KICNkZWZpbmUgSVZCX0ZCQ19SVF9CQVNFCQkJX01NSU8o
MHg3MDIwKQorI2RlZmluZSBJVkJfRkJDX1JUX0JBU0VfVVBQRVIJCV9NTUlPKDB4NzAyNCkKIAog
I2RlZmluZSBJUFNfQ1RMCQlfTU1JTygweDQzNDA4KQogI2RlZmluZSAgIElQU19FTkFCTEUJKDEg
PDwgMzEpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
