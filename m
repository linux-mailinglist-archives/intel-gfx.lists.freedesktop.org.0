Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9A372C0E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 12:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB3E6E4F1;
	Wed, 24 Jul 2019 10:07:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434156E4E6
 for <Intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 10:07:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 03:07:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="197448618"
Received: from jsartini-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.141])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2019 03:07:19 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 11:07:12 +0100
Message-Id: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Split i915_gem_init_hw into GT
 and i915 parts
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk9uZSBwYXJ0
IG9mIHRoZSBlYXJsaWVyIHVwc3RyZWFtIHJlZmFjdG9yaW5nIGdvdCB1bmRvbmUgaW4gdGhlIG1l
YW50aW1lLgoKUHV0IGl0IGJhY2sgaW50byBkZXNpcmFibGUgc3RhdGUgYnkgcmVzdG9yaW5nIHRo
ZSBzcGxpdCBiZXR3ZWVuIGludGVsX2d0CmFuZCBpOTE1IGluaXRpYWxpemF0aW9uLgoKU2lnbmVk
LW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMjAgKysrKysrKysrKysrKysrKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jCmluZGV4IDAxZGQwZDFkOWJmNi4uMjcyZTAwOGM1NWVmIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTExOTMsMTMgKzExOTMsMTIgQEAgc3RhdGljIHZvaWQgaW5p
dF91bnVzZWRfcmluZ3Moc3RydWN0IGludGVsX2d0ICpndCkKIAl9CiB9CiAKLWludCBpOTE1X2dl
bV9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorc3RhdGljIGludCBpbml0
X2h3KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7Ci0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3Jl
ID0gJmk5MTUtPnVuY29yZTsKLQlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gJmk5MTUtPmd0OworCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisJc3RydWN0IGludGVsX3Vu
Y29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKIAlpbnQgcmV0OwogCi0JQlVHX09OKCFpOTE1LT5r
ZXJuZWxfY29udGV4dCk7CiAJcmV0ID0gaW50ZWxfZ3RfdGVybWluYWxseV93ZWRnZWQoZ3QpOwog
CWlmIChyZXQpCiAJCXJldHVybiByZXQ7CkBAIC0xMjYxLDYgKzEyNjAsMTkgQEAgaW50IGk5MTVf
Z2VtX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJcmV0dXJuIHJldDsK
IH0KIAoraW50IGk5MTVfZ2VtX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cit7CisJaW50IHJldDsKKworCUJVR19PTighaTkxNS0+a2VybmVsX2NvbnRleHQpOworCisJcmV0
ID0gaW5pdF9odygmaTkxNS0+Z3QpOworCisJaW50ZWxfZW5naW5lc19zZXRfc2NoZWR1bGVyX2Nh
cHMoaTkxNSk7CisKKwlyZXR1cm4gcmV0OworfQorCiBzdGF0aWMgaW50IF9faW50ZWxfZW5naW5l
c19yZWNvcmRfZGVmYXVsdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
