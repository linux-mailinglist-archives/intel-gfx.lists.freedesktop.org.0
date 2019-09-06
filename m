Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEFCAC2A1
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 00:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288C76E154;
	Fri,  6 Sep 2019 22:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D5626E154
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 22:40:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 15:40:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="174419242"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga007.jf.intel.com with ESMTP; 06 Sep 2019 15:40:06 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 15:41:42 -0700
Message-Id: <20190906224142.6963-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1409142259
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

RGlzYWJsZSBDUFMgYXdhcmUgY29sb3IgcGlwZSBieSBzZXR0aW5nIGNoaWNrZW4gYml0LgoKQlNw
ZWM6IDUyODkwCkhTREVTOiAxNDA5MTQyMjU5CgpDYzogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5z
dW1tZXJzQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3Jp
cGFkYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYyB8IDUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggMjQzZDNmNzdiZTEzLi4x
NGUzZjk2NzdiMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwpAQCAtODk0LDYgKzg5NCwxMSBAQCBpY2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogc3RhdGlj
IHZvaWQKIHRnbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7CisJd2FfaW5pdF9tY3IoaTkxNSwgd2Fs
KTsKKworCS8qIFdhXzE0MDkxNDIyNTkgKi8KKwlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01N
T05fU0xJQ0VfQ0hJQ0tFTjMsCisJCQkgIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJ
UEUpOwogfQogCiBzdGF0aWMgdm9pZApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMDA2Y2Zm
ZDU2YmUyLi41M2UwNzg4MmVmYjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzY2OCw2
ICs3NjY4LDcgQEAgZW51bSB7CiAKICNkZWZpbmUgR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4z
CQlfTU1JTygweDczMDQpCiAgICNkZWZpbmUgR0VOMTFfQkxFTkRfRU1CX0ZJWF9ESVNBQkxFX0lO
X1JDQwkoMSA8PCAxMSkKKyAgI2RlZmluZSBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xPUl9Q
SVBFCSgxIDw8IDkpCiAKICNkZWZpbmUgSElaX0NISUNLRU4JCQkJCV9NTUlPKDB4NzAxOCkKICMg
ZGVmaW5lIENIVl9IWl84WDhfTU9ERV9JTl8xWAkJCQkoMSA8PCAxNSkKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
