Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A269B42F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 18:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397186ECE8;
	Fri, 23 Aug 2019 16:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7EC76ECE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 16:02:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 09:02:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="203807753"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 09:02:15 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 09:03:03 -0700
Message-Id: <20190823160307.180813-8-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823160307.180813-1-stuart.summers@intel.com>
References: <20190823160307.180813-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Use subslice stride to set
 subslices for a given slice
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

QWRkIGEgc3Vic2xpY2Ugc3RyaWRlIGNhbGN1bGF0aW9uIHdoZW4gc2V0dGluZyBzdWJzbGljZXMu
IFRoaXMKYWxpZ25zIG1vcmUgY2xvc2VseSB3aXRoIHRoZSB1c2Vyc3BhY2UgZXhwZWN0YXRpb24g
b2YgdGhlIHN1YnNsaWNlCm1hc2sgc3RydWN0dXJlLgoKdjI6IFVzZSBsb2NhbCB2YXJpYWJsZSBm
b3Igc3Vic2xpY2VfbWFzayBvbiBIU1cgYW5kCiAgICBjbGVhbiB1cCBhIGZldyBvdGhlciBzdWJz
bGljZV9tYXNrIGxvY2FsIHZhcmlhYmxlCiAgICBjaGFuZ2VzCnYzOiBBZGQgR0VNX0JVR19PTiBm
b3Igc3Nfc3RyaWRlIHRvIHByZXZlbnQgYXJyYXkgb3ZlcmZsb3cgKENocmlzKQogICAgU3BsaXQg
bWFpbiBzZXQgZnVuY3Rpb24gYW5kIHJlZmFjdG9ycyBpbiBpbnRlbF9kZXZpY2VfaW5mby5jCiAg
ICBpbnRvIHNlcGFyYXRlIHBhdGNoZXMgKENocmlzKQp2NDogUmVkdWNlIHNzX3N0cmlkZSBzaXpl
IGNoZWNrIHdoZW4gc2V0dGluZyBzdWJzbGljZXMgcGVyIHNsaWNlCiAgICBiYXNlZCBvbiBhY3R1
YWwgZXhwZWN0ZWQgbWF4IHN0cmlkZSAoQ2hyaXMpCiAgICBNb3ZlIHRoYXQgR0VNX0JVR19PTiBj
aGVjayBmb3IgdGhlIHNzX3N0cmlkZSBvdXQgdG8gdGhlIHBhdGNoCiAgICB3aGljaCBhZGRzIHRo
ZSBzc19zdHJpZGUKdjU6IFVzZSBtZW1jcHkgaW5zdGVhZCBvZiBsb29waW5nIHRocm91Z2ggZWFj
aCBzdHJpZGUgaW5kZXgKClNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3Vt
bWVyc0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5j
IHwgNiArKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCB8IDIgKy0K
IDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYwppbmRleCAzYTVkYjBkYmFjNzIuLjE1MDUwNDJkN2I1
ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYwpAQCAtMzMsOSArMzMsMTEgQEAg
aW50ZWxfc3NldV9zdWJzbGljZV90b3RhbChjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3Nl
dSkKIH0KIAogdm9pZCBpbnRlbF9zc2V1X3NldF9zdWJzbGljZXMoc3RydWN0IHNzZXVfZGV2X2lu
Zm8gKnNzZXUsIGludCBzbGljZSwKLQkJCSAgICAgIHU4IHNzX21hc2spCisJCQkgICAgICB1MzIg
c3NfbWFzaykKIHsKLQlzc2V1LT5zdWJzbGljZV9tYXNrW3NsaWNlXSA9IHNzX21hc2s7CisJaW50
IG9mZnNldCA9IHNsaWNlICogc3NldS0+c3Nfc3RyaWRlOworCisJbWVtY3B5KCZzc2V1LT5zdWJz
bGljZV9tYXNrW29mZnNldF0sICZzc19tYXNrLCBzc2V1LT5zc19zdHJpZGUpOwogfQogCiB1bnNp
Z25lZCBpbnQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAppbmRleCA3ZjYwMGY1MGRl
ZGIuLjczYTkwNjQyOTFhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfc3NldS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaApAQCAt
NzksNyArNzksNyBAQCB1bnNpZ25lZCBpbnQKIGludGVsX3NzZXVfc3Vic2xpY2VzX3Blcl9zbGlj
ZShjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgdTggc2xpY2UpOwogCiB2b2lkIGlu
dGVsX3NzZXVfc2V0X3N1YnNsaWNlcyhzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSwgaW50IHNs
aWNlLAotCQkJICAgICAgdTggc3NfbWFzayk7CisJCQkgICAgICB1MzIgc3NfbWFzayk7CiAKIHUz
MiBpbnRlbF9zc2V1X21ha2VfcnBjcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJ
CSBjb25zdCBzdHJ1Y3QgaW50ZWxfc3NldSAqcmVxX3NzZXUpOwotLSAKMi4yMi4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
