Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD7ED7A4E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:46:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DEA96E83C;
	Tue, 15 Oct 2019 15:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C22B6E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="370497100"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 15 Oct 2019 08:45:22 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 14DC4840798; Tue, 15 Oct 2019 18:44:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:47 +0300
Message-Id: <20191015154449.10338-9-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 09/11] drm/i915/tgl: Wa_1607138336
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXZvaWQgcG9zc2libGUgZGVhZGxvY2sgb24gY29udGV4dCBzd2l0Y2guCgpTaWduZWQtb2ZmLWJ5
OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNSArKysrKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDIgKysKIDIgZmlsZXMgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKaW5kZXggNGI3NzQwYWFmM2JmLi4zYmFjZjNkOTY4NGUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTI3Niw2ICsxMjc2LDEx
IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJd2FfbWFza2VkX2VuKHdhbCwKIAkJCSAgICAgR0VO
OV9DU19ERUJVR19NT0RFMSwKIAkJCSAgICAgRkZfRE9QX0NMT0NLX0dBVEVfRElTQUJMRSk7CisK
KwkJLyogV2FfMTYwNzEzODMzNjp0Z2wgKi8KKwkJd2Ffd3JpdGVfb3Iod2FsLAorCQkJICAgIEdF
TjlfQ1RYX1BSRUVNUFRfUkVHLAorCQkJICAgIEdFTjEyX0RJU0FCTEVfUE9TSF9CVVNZX0ZGX0RP
UF9DRyk7CiAJfQogCiAJaWYgKElTX0dFTihpOTE1LCAxMSkpIHsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCmluZGV4IDUxYzNlNzk3NWQ2Yi4uMTlhYzAxMDU3NTI4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKQEAgLTc2NzYsNiArNzY3Niw4IEBAIGVudW0gewogI2RlZmluZSBHRU45X0NTX0RFQlVH
X01PREUxCQlfTU1JTygweDIwZWMpCiAgICNkZWZpbmUgRkZfRE9QX0NMT0NLX0dBVEVfRElTQUJM
RQlCSVQoMSkKICNkZWZpbmUgR0VOOV9DVFhfUFJFRU1QVF9SRUcJCV9NTUlPKDB4MjI0OCkKKyAg
I2RlZmluZSBHRU4xMl9ESVNBQkxFX1BPU0hfQlVTWV9GRl9ET1BfQ0cgKDEgPDwgMTEpCisKICNk
ZWZpbmUgR0VOOF9DU19DSElDS0VOMQkJX01NSU8oMHgyNTgwKQogI2RlZmluZSBHRU45X1BSRUVN
UFRfM0RfT0JKRUNUX0xFVkVMCQkoMSA8PCAwKQogI2RlZmluZSBHRU45X1BSRUVNUFRfR1BHUFVf
TEVWRUwoaGksIGxvKQkoKChoaSkgPDwgMikgfCAoKGxvKSA8PCAxKSkKLS0gCjIuMTcuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
