Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 355024C074
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:03:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEBDB6E44D;
	Wed, 19 Jun 2019 18:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772306E44D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:03:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 11:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="150678381"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 19 Jun 2019 11:03:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2019 21:03:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 21:03:11 +0300
Message-Id: <20190619180312.31817-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/sdvo: Reduce the size of the on
 stack buffers
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBzdHJpbmdzIHdlIHdhbnQgdG8gcHJpbnQgdG8gdGhlIG9uIHN0YWNrIGJ1ZmZlcnMgc2hvdWxk
CmJlIG5vIG1vcmUgdGhhbgo4ICogMyArIHN0cmxlbigiKEdFVF9TQ0FMRURfSERUVl9SRVNPTFVU
SU9OX1NVUFBPUlQpIikgKyAxID0gNjEKYnl0ZXMuIFNvIGxldCdzIHNocmluayB0aGUgYnVmZmVy
cyBkb3duIHRvIDY0IGJ5dGVzLgoKQWxzbyBzd2l0Y2ggdGhlIEJVR19PTigpcyB0byBXQVJOX09O
KClzIGlmIEkgbWFkZSBhIG1pc3Rha2UgaW4KbXkgYXJpdGhtZW50aWMuCgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIHwgMTkgKysrKysrKystLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwppbmRleCBkMWZkMmJj
MDFkODIuLmRmMzU4MmJhYjA3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zZHZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zZHZvLmMKQEAgLTQwMSwxMiArNDAxLDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX3Nkdm9fZGVi
dWdfd3JpdGUoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sIHU4IGNtZCwKIAkJCQkgICBj
b25zdCB2b2lkICphcmdzLCBpbnQgYXJnc19sZW4pCiB7CiAJaW50IGksIHBvcyA9IDA7Ci0jZGVm
aW5lIEJVRl9MRU4gMjU2Ci0JY2hhciBidWZmZXJbQlVGX0xFTl07CisJY2hhciBidWZmZXJbNjRd
OwogCiAjZGVmaW5lIEJVRl9QUklOVChhcmdzLi4uKSBcCi0JcG9zICs9IHNucHJpbnRmKGJ1ZmZl
ciArIHBvcywgbWF4X3QoaW50LCBCVUZfTEVOIC0gcG9zLCAwKSwgYXJncykKLQorCXBvcyArPSBz
bnByaW50ZihidWZmZXIgKyBwb3MsIG1heF90KGludCwgc2l6ZW9mKGJ1ZmZlcikgLSBwb3MsIDAp
LCBhcmdzKQogCiAJZm9yIChpID0gMDsgaSA8IGFyZ3NfbGVuOyBpKyspIHsKIAkJQlVGX1BSSU5U
KCIlMDJYICIsICgodTggKilhcmdzKVtpXSk7CkBAIC00MjMsOSArNDIxLDkgQEAgc3RhdGljIHZv
aWQgaW50ZWxfc2R2b19kZWJ1Z193cml0ZShzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywg
dTggY21kLAogCWlmIChpID09IEFSUkFZX1NJWkUoc2R2b19jbWRfbmFtZXMpKSB7CiAJCUJVRl9Q
UklOVCgiKCUwMlgpIiwgY21kKTsKIAl9Ci0JQlVHX09OKHBvcyA+PSBCVUZfTEVOIC0gMSk7CisK
KwlXQVJOX09OKHBvcyA+PSBzaXplb2YoYnVmZmVyKSAtIDEpOwogI3VuZGVmIEJVRl9QUklOVAot
I3VuZGVmIEJVRl9MRU4KIAogCURSTV9ERUJVR19LTVMoIiVzOiBXOiAlMDJYICVzXG4iLCBTRFZP
X05BTUUoaW50ZWxfc2R2byksIGNtZCwgYnVmZmVyKTsKIH0KQEAgLTUyMSw4ICs1MTksNyBAQCBz
dGF0aWMgYm9vbCBpbnRlbF9zZHZvX3JlYWRfcmVzcG9uc2Uoc3RydWN0IGludGVsX3Nkdm8gKmlu
dGVsX3Nkdm8sCiAJdTggcmV0cnkgPSAxNTsgLyogNSBxdWljayBjaGVja3MsIGZvbGxvd2VkIGJ5
IDEwIGxvbmcgY2hlY2tzICovCiAJdTggc3RhdHVzOwogCWludCBpLCBwb3MgPSAwOwotI2RlZmlu
ZSBCVUZfTEVOIDI1NgotCWNoYXIgYnVmZmVyW0JVRl9MRU5dOworCWNoYXIgYnVmZmVyWzY0XTsK
IAogCWJ1ZmZlclswXSA9ICdcMCc7CiAKQEAgLTU2Miw3ICs1NTksNyBAQCBzdGF0aWMgYm9vbCBp
bnRlbF9zZHZvX3JlYWRfcmVzcG9uc2Uoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sCiAJ
fQogCiAjZGVmaW5lIEJVRl9QUklOVChhcmdzLi4uKSBcCi0JcG9zICs9IHNucHJpbnRmKGJ1ZmZl
ciArIHBvcywgbWF4X3QoaW50LCBCVUZfTEVOIC0gcG9zLCAwKSwgYXJncykKKwlwb3MgKz0gc25w
cmludGYoYnVmZmVyICsgcG9zLCBtYXhfdChpbnQsIHNpemVvZihidWZmZXIpIC0gcG9zLCAwKSwg
YXJncykKIAogCWlmIChzdGF0dXMgPCBBUlJBWV9TSVpFKGNtZF9zdGF0dXNfbmFtZXMpKQogCQlC
VUZfUFJJTlQoIiglcykiLCBjbWRfc3RhdHVzX25hbWVzW3N0YXR1c10pOwpAQCAtNTgwLDkgKzU3
Nyw5IEBAIHN0YXRpYyBib29sIGludGVsX3Nkdm9fcmVhZF9yZXNwb25zZShzdHJ1Y3QgaW50ZWxf
c2R2byAqaW50ZWxfc2R2bywKIAkJCWdvdG8gbG9nX2ZhaWw7CiAJCUJVRl9QUklOVCgiICUwMlgi
LCAoKHU4ICopcmVzcG9uc2UpW2ldKTsKIAl9Ci0JQlVHX09OKHBvcyA+PSBCVUZfTEVOIC0gMSk7
CisKKwlXQVJOX09OKHBvcyA+PSBzaXplb2YoYnVmZmVyKSAtIDEpOwogI3VuZGVmIEJVRl9QUklO
VAotI3VuZGVmIEJVRl9MRU4KIAogCURSTV9ERUJVR19LTVMoIiVzOiBSOiAlc1xuIiwgU0RWT19O
QU1FKGludGVsX3Nkdm8pLCBidWZmZXIpOwogCXJldHVybiB0cnVlOwotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
