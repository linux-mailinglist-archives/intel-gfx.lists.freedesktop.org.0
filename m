Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830774913
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 10:26:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D9F6E697;
	Thu, 25 Jul 2019 08:26:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B387A6E697
 for <Intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 08:26:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 01:26:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,306,1559545200"; d="scan'208";a="253864696"
Received: from jsartini-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.141])
 by orsmga001.jf.intel.com with ESMTP; 25 Jul 2019 01:26:07 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 09:26:00 +0100
Message-Id: <20190725082600.31811-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use intel_gt directly when closing
 VMAs
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNhdmUgb25l
IGxldmVsIG9mIGRlcmVmZXJuY2UgYnkgbm90IGdvaW5nIHZpYSBnbG9iYWwgaTkxNS4KClNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyB8IDE0ICsrKysrKystLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5jCmluZGV4IGVlNzNiYWYyOTQxNS4uODMwNjhlMGJlMDhkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfdm1hLmMKQEAgLTc1Nyw3ICs3NTcsNyBAQCBpbnQgX19pOTE1X3ZtYV9kb19waW4oc3Ry
dWN0IGk5MTVfdm1hICp2bWEsCiAKIHZvaWQgaTkxNV92bWFfY2xvc2Uoc3RydWN0IGk5MTVfdm1h
ICp2bWEpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB2bWEtPnZtLT5pOTE1
OworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSB2bWEtPnZtLT5ndDsKIAl1bnNpZ25lZCBsb25nIGZs
YWdzOwogCiAJR0VNX0JVR19PTihpOTE1X3ZtYV9pc19jbG9zZWQodm1hKSk7CkBAIC03NzQsMjEg
Kzc3NCwyMSBAQCB2b2lkIGk5MTVfdm1hX2Nsb3NlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogCSAq
IGNhdXNpbmcgdXMgdG8gcmViaW5kIHRoZSBWTUEgb25jZSBtb3JlLiBUaGlzIGVuZHMgdXAgYmVp
bmcgYSBsb3QKIAkgKiBvZiB3YXN0ZWQgd29yayBmb3IgdGhlIHN0ZWFkeSBzdGF0ZS4KIAkgKi8K
LQlzcGluX2xvY2tfaXJxc2F2ZSgmaTkxNS0+Z3QuY2xvc2VkX2xvY2ssIGZsYWdzKTsKLQlsaXN0
X2FkZCgmdm1hLT5jbG9zZWRfbGluaywgJmk5MTUtPmd0LmNsb3NlZF92bWEpOwotCXNwaW5fdW5s
b2NrX2lycXJlc3RvcmUoJmk5MTUtPmd0LmNsb3NlZF9sb2NrLCBmbGFncyk7CisJc3Bpbl9sb2Nr
X2lycXNhdmUoJmd0LT5jbG9zZWRfbG9jaywgZmxhZ3MpOworCWxpc3RfYWRkKCZ2bWEtPmNsb3Nl
ZF9saW5rLCAmZ3QtPmNsb3NlZF92bWEpOworCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmd0LT5j
bG9zZWRfbG9jaywgZmxhZ3MpOwogfQogCiBzdGF0aWMgdm9pZCBfX2k5MTVfdm1hX3JlbW92ZV9j
bG9zZWQoc3RydWN0IGk5MTVfdm1hICp2bWEpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSB2bWEtPnZtLT5pOTE1OworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSB2bWEtPnZtLT5n
dDsKIAogCWlmICghaTkxNV92bWFfaXNfY2xvc2VkKHZtYSkpCiAJCXJldHVybjsKIAotCXNwaW5f
bG9ja19pcnEoJmk5MTUtPmd0LmNsb3NlZF9sb2NrKTsKKwlzcGluX2xvY2tfaXJxKCZndC0+Y2xv
c2VkX2xvY2spOwogCWxpc3RfZGVsX2luaXQoJnZtYS0+Y2xvc2VkX2xpbmspOwotCXNwaW5fdW5s
b2NrX2lycSgmaTkxNS0+Z3QuY2xvc2VkX2xvY2spOworCXNwaW5fdW5sb2NrX2lycSgmZ3QtPmNs
b3NlZF9sb2NrKTsKIH0KIAogdm9pZCBpOTE1X3ZtYV9yZW9wZW4oc3RydWN0IGk5MTVfdm1hICp2
bWEpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
