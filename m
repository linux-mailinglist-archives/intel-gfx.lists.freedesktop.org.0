Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 522926C0C3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 20:06:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D05897B5;
	Wed, 17 Jul 2019 18:06:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02DD897B5
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 18:06:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 11:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="343110829"
Received: from esulliva-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.109])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 11:06:28 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 19:06:19 +0100
Message-Id: <20190717180624.20354-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Fix GEN8_MCR_SELECTOR programming
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCmZscyByZXR1
cm5zIGJpdCBwb3NpdGlvbnMgc3RhcnRpbmcgZnJvbSBvbmUgZm9yIHRoZSBsc2IgYW5kIHRoZSBN
Q1IKcmVnaXN0ZXIgZXhwZWN0cyB6ZXJvIGJhc2VkIChzdWIpc2xpY2UgYWRkcmVzc2luZy4KCklu
Y29ycmVudCBNQ1IgcHJvZ3JhbW1pbmcgY2FuIGhhdmUgdGhlIGVmZmVjdCBvZiBkaXJlY3Rpbmcg
TU1JTyByZWFkcyBvZgpyZWdpc3RlcnMgaW4gdGhlIDB4YjEwMC0weGIzZmYgcmFuZ2UgdG8gaW52
YWxpZCBzdWJzbGljZSByZXR1cm5pbmcgemVyb2VzCmluc3RlYWQgb2YgYWN0dWFsIGNvbnRlbnQu
CgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgpGaXhlczogMWU0MGQ0YWVhNTdiICgiZHJtL2k5MTUvY25sOiBJbXBsZW1lbnQgV2FQcm9ncmFt
TWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzIikKUmV2aWV3ZWQtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgOSArKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYwppbmRleCBjMGJjOWNiN2YyMjguLjZmOTNjYWY3YTVhMSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKQEAgLTk2Miw5ICs5NjIsMTQg
QEAgY29uc3QgY2hhciAqaTkxNV9jYWNoZV9sZXZlbF9zdHIoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsIGludCB0eXBlKQogdTMyIGludGVsX2NhbGN1bGF0ZV9tY3Jfc19zc19zZWxlY3Qo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCWNvbnN0IHN0cnVjdCBzc2V1
X2Rldl9pbmZvICpzc2V1ID0gJlJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnNzZXU7CisJdW5zaWdu
ZWQgaW50IHNsaWNlID0gZmxzKHNzZXUtPnNsaWNlX21hc2spIC0gMTsKKwl1bnNpZ25lZCBpbnQg
c3Vic2xpY2U7CiAJdTMyIG1jcl9zX3NzX3NlbGVjdDsKLQl1MzIgc2xpY2UgPSBmbHMoc3NldS0+
c2xpY2VfbWFzayk7Ci0JdTMyIHN1YnNsaWNlID0gZmxzKHNzZXUtPnN1YnNsaWNlX21hc2tbc2xp
Y2VdKTsKKworCUdFTV9CVUdfT04oc2xpY2UgPj0gQVJSQVlfU0laRShzc2V1LT5zdWJzbGljZV9t
YXNrKSk7CisJc3Vic2xpY2UgPSBmbHMoc3NldS0+c3Vic2xpY2VfbWFza1tzbGljZV0pOworCUdF
TV9CVUdfT04oIXN1YnNsaWNlKTsKKwlzdWJzbGljZS0tOwogCiAJaWYgKElTX0dFTihkZXZfcHJp
diwgMTApKQogCQltY3Jfc19zc19zZWxlY3QgPSBHRU44X01DUl9TTElDRShzbGljZSkgfAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
