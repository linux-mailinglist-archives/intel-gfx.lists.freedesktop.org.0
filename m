Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B38459A0B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 14:07:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740A96E8F4;
	Fri, 28 Jun 2019 12:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2126E8EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 12:07:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 05:07:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="153354890"
Received: from akamins1-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.35])
 by orsmga007.jf.intel.com with ESMTP; 28 Jun 2019 05:07:23 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 15:07:18 +0300
Message-Id: <20190628120720.21682-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
References: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 1/3] drm/i915: fix whitelist selftests with
 readonly registers
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

V2hlbiBhIHJlZ2lzdGVyIGlzIHJlYWRvbmx5IHRoZXJlIGlzIG5vdCBtdWNoIHdlIGNhbiB0ZWxs
IGFib3V0IGl0cwp2YWx1ZSAoYXBhcnQgZnJvbSBpdHMgZGVmYXVsdCB2YWx1ZT8pLiBUaGlzIGNh
biBiZSBjb3ZlcmVkIGJ5IHRlc3RzCmV4ZXJjaXNpbmcgdGhlIHZhbHVlIG9mIHRoZSByZWdpc3Rl
ciBmcm9tIHVzZXJzcGFjZS4KCkZvciBQU19JTlZPQ0FUSU9OX0NPVU5UIHdlJ3ZlIGdvdCB0aGUg
Zm9sbG93aW5nIHBpZ2xpdCB0ZXN0cyA6CgogICBLSFItR0w0NS5waXBlbGluZV9zdGF0aXN0aWNz
X3F1ZXJ5X3Rlc3RzX0FSQi5mdW5jdGlvbmFsX2ZyYWdtZW50X3NoYWRlcl9pbnZvY2F0aW9ucwoK
VnVsa2FuIENUUyB0ZXN0cyA6CgogICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3RhdGlzdGljc19xdWVy
eS5mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlvbnMuKgoKU2lnbmVkLW9mZi1ieTogTGlvbmVsIExh
bmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpGaXhlczogODY1NTRmNDhl
NTExICgiZHJtL2k5MTUvc2VsZnRlc3RzOiBWZXJpZnkgd2hpdGVsaXN0IG9mIGNvbnRleHQgcmVn
aXN0ZXJzIikKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5k
cy5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwppbmRleCBmMTJjYjIwZmU3
ODUuLmEwNmY5NmRmMWJmZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3Rfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF93b3JrYXJvdW5kcy5jCkBAIC05MjYsNiArOTI2LDkgQEAgY2hlY2tfd2hpdGVsaXN0ZWRfcmVn
aXN0ZXJzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAogCWVyciA9IDA7CiAJZm9y
IChpID0gMDsgaSA8IGVuZ2luZS0+d2hpdGVsaXN0LmNvdW50OyBpKyspIHsKKwkJaWYgKGVuZ2lu
ZS0+d2hpdGVsaXN0Lmxpc3RbaV0ucmVnLnJlZyAmIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SRCkK
KwkJCWNvbnRpbnVlOworCiAJCWlmICghZm4oZW5naW5lLCBhW2ldLCBiW2ldLCBlbmdpbmUtPndo
aXRlbGlzdC5saXN0W2ldLnJlZykpCiAJCQllcnIgPSAtRUlOVkFMOwogCX0KLS0gCjIuMjEuMC4z
OTIuZ2Y4ZjY3ODcxNTllCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
