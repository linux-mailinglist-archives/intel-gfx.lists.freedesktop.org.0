Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 310B699ECE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 20:31:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D26D56EA14;
	Thu, 22 Aug 2019 18:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E318892D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 18:31:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 11:31:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="354376286"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga005.jf.intel.com with ESMTP; 22 Aug 2019 11:31:20 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2019 11:32:09 -0700
Message-Id: <20190822183213.132380-8-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190822183213.132380-1-stuart.summers@intel.com>
References: <20190822183213.132380-1-stuart.summers@intel.com>
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
ZSBzc19zdHJpZGUKClNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVy
c0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIHwg
OCArKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oIHwgMiArLQog
MiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCmluZGV4IDNhNWRiMGRiYWM3Mi4uYTBkMzIyNzAyNDhj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCkBAIC0zMyw5ICszMywxMyBAQCBp
bnRlbF9zc2V1X3N1YnNsaWNlX3RvdGFsKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1
KQogfQogCiB2b2lkIGludGVsX3NzZXVfc2V0X3N1YnNsaWNlcyhzdHJ1Y3Qgc3NldV9kZXZfaW5m
byAqc3NldSwgaW50IHNsaWNlLAotCQkJICAgICAgdTggc3NfbWFzaykKKwkJCSAgICAgIHUzMiBz
c19tYXNrKQogewotCXNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2VdID0gc3NfbWFzazsKKwlpbnQg
aSwgb2Zmc2V0ID0gc2xpY2UgKiBzc2V1LT5zc19zdHJpZGU7CisKKwlmb3IgKGkgPSAwOyBpIDwg
c3NldS0+c3Nfc3RyaWRlOyBpKyspCisJCXNzZXUtPnN1YnNsaWNlX21hc2tbb2Zmc2V0ICsgaV0g
PQorCQkJKHNzX21hc2sgPj4gKEJJVFNfUEVSX0JZVEUgKiBpKSkgJiAweGZmOwogfQogCiB1bnNp
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
