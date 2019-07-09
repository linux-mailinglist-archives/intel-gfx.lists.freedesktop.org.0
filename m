Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F77163D12
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 23:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B1C189E57;
	Tue,  9 Jul 2019 21:06:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E47E789E57
 for <Intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 21:06:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 14:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,472,1557212400"; d="scan'208";a="364267288"
Received: from dawalker-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.80.131])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jul 2019 14:06:24 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  9 Jul 2019 22:06:17 +0100
Message-Id: <20190709210620.15805-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
References: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Fix GEN8_MCR_SELECTOR programming
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
TWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzIikKLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8IDkgKysrKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMKaW5kZXggYmRmMjc5ZmEzYjJlLi5lZTE1ZDE5MzQ0ODYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCkBAIC05NzUsOSArOTc1
LDE0IEBAIGNvbnN0IGNoYXIgKmk5MTVfY2FjaGVfbGV2ZWxfc3RyKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBpbnQgdHlwZSkKIHUzMiBpbnRlbF9jYWxjdWxhdGVfbWNyX3Nfc3Nfc2Vs
ZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAljb25zdCBzdHJ1Y3Qg
c3NldV9kZXZfaW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1OworCXVu
c2lnbmVkIGludCBzbGljZSA9IGZscyhzc2V1LT5zbGljZV9tYXNrKSAtIDE7CisJdW5zaWduZWQg
aW50IHN1YnNsaWNlOwogCXUzMiBtY3Jfc19zc19zZWxlY3Q7Ci0JdTMyIHNsaWNlID0gZmxzKHNz
ZXUtPnNsaWNlX21hc2spOwotCXUzMiBzdWJzbGljZSA9IGZscyhzc2V1LT5zdWJzbGljZV9tYXNr
W3NsaWNlXSk7CisKKwlHRU1fQlVHX09OKHNsaWNlID49IEFSUkFZX1NJWkUoc3NldS0+c3Vic2xp
Y2VfbWFzaykpOworCXN1YnNsaWNlID0gZmxzKHNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2VdKTsK
KwlHRU1fQlVHX09OKCFzdWJzbGljZSk7CisJc3Vic2xpY2UtLTsKIAogCWlmIChJU19HRU4oZGV2
X3ByaXYsIDEwKSkKIAkJbWNyX3Nfc3Nfc2VsZWN0ID0gR0VOOF9NQ1JfU0xJQ0Uoc2xpY2UpIHwK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
