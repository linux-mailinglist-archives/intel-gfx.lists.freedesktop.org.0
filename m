Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6CC46494
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:43:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA4F89AEB;
	Fri, 14 Jun 2019 16:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7062789ADC
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:43:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:43:54 -0700
X-ExtLoop1: 1
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jun 2019 09:43:53 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id CE23F84016A; Fri, 14 Jun 2019 19:43:50 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 19:43:41 +0300
Message-Id: <20190614164350.30415-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 01/10] drm/i915/gtt: No need to zero the table
 for page dirs
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

V2Ugc2V0IHRoZW0gdG8gc2NyYXRjaCByaWdodCBhZnRlciBhbGxvY2F0aW9uIHNvIHByZXZlbnQK
dXNlbGVzcyB6ZXJvaW5nIGJlZm9yZS4KCnYyOiBhdG9taWNfdAp2MzogYWxsb3cgcGRwIGFsbG9j
IGZhaWwKCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVk
LW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDQgKystLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCmluZGV4IDI3OGRlMDRhOTZhYS4uYjIxMGNiMDIxOTMxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtNjg3LDcgKzY4Nyw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkx
NV9wYWdlX2RpcmVjdG9yeSAqYWxsb2NfcGQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0p
CiB7CiAJc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkOwogCi0JcGQgPSBremFsbG9jKHNp
emVvZigqcGQpLCBJOTE1X0dGUF9BTExPV19GQUlMKTsKKwlwZCA9IGttYWxsb2Moc2l6ZW9mKCpw
ZCksIEk5MTVfR0ZQX0FMTE9XX0ZBSUwpOwogCWlmICh1bmxpa2VseSghcGQpKQogCQlyZXR1cm4g
RVJSX1BUUigtRU5PTUVNKTsKIApAQCAtNzQ3LDcgKzc0Nyw3IEBAIGFsbG9jX3BkcChzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAogCUdFTV9CVUdfT04oIWk5MTVfdm1faXNfNGx2bCh2
bSkpOwogCi0JcGRwID0ga3phbGxvYyhzaXplb2YoKnBkcCksIEdGUF9LRVJORUwpOworCXBkcCA9
IGttYWxsb2Moc2l6ZW9mKCpwZHApLCBJOTE1X0dGUF9BTExPV19GQUlMKTsKIAlpZiAoIXBkcCkK
IAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
