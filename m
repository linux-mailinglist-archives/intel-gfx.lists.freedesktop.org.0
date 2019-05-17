Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2400D21FC8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 23:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153AB898ED;
	Fri, 17 May 2019 21:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2BC898ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 21:40:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 14:40:32 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga006.fm.intel.com with ESMTP; 17 May 2019 14:40:31 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HLeUcV026972; Fri, 17 May 2019 22:40:30 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 21:40:28 +0000
Message-Id: <20190517214028.14388-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
Subject: [Intel-gfx] [PATCH] drm/i915/huc: Don't try to check HuC status if
 it's not loaded
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

SWYgd2UgbmV2ZXIgYXR0ZW1wdGVkIHRvIGxvYWQgSHVDIGZpcm13YXJlLCBvciB3ZSBhbHJlYWR5
IHdlZGdlZApvciByZXNldCBHdUMvSHVDLCB0aGVuIHRoZXJlIGlzIG5vIHJlYXNvbiB0byB3YWtl
IHVwIHRoZSBkZXZpY2UKdG8gY2hlY2sgb25lIGJpdCBpbiB0aGUgcmVnaXN0ZXIgdGhhdCB3aWxs
IGJlIGZvciBzdXJlIGNsZWFyZWQuCgpTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNo
YWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgpDYzogVG9ueSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMgfCAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfaHVjLmggfCA1ICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfaHVjLmMKaW5kZXggMWZmMWZiMDE1ZTU4Li45ZDkxMDg5ZTJjZDEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jCkBAIC0xNjMsNiArMTYzLDkgQEAgaW50IGludGVsX2h1
Y19jaGVja19zdGF0dXMoc3RydWN0IGludGVsX2h1YyAqaHVjKQogCWlmICghSEFTX0hVQyhkZXZf
cHJpdikpCiAJCXJldHVybiAtRU5PREVWOwogCisJaWYgKCFpbnRlbF9odWNfaXNfbG9hZGVkKGh1
YykpCisJCXJldHVybiAwOworCiAJd2l0aF9pbnRlbF9ydW50aW1lX3BtKGRldl9wcml2LCB3YWtl
cmVmKQogCQlzdGF0dXMgPSBJOTE1X1JFQUQoSFVDX1NUQVRVUzIpICYgSFVDX0ZXX1ZFUklGSUVE
OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5oCmluZGV4IGEwYzIxYWUwMmE5OS4uY2RlM2QzMDM3
MThkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuaApAQCAtNDQsNiArNDQsMTEgQEAgdm9pZCBp
bnRlbF9odWNfZmluaShzdHJ1Y3QgaW50ZWxfaHVjICpodWMpOwogaW50IGludGVsX2h1Y19hdXRo
KHN0cnVjdCBpbnRlbF9odWMgKmh1Yyk7CiBpbnQgaW50ZWxfaHVjX2NoZWNrX3N0YXR1cyhzdHJ1
Y3QgaW50ZWxfaHVjICpodWMpOwogCitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfaHVjX2lzX2xv
YWRlZChzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCit7CisJcmV0dXJuIGludGVsX3VjX2Z3X2lzX2xv
YWRlZCgmaHVjLT5mdyk7Cit9CisKIHN0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9odWNfZmluaV9t
aXNjKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIHsKIAlpbnRlbF91Y19md19jbGVhbnVwX2ZldGNo
KCZodWMtPmZ3KTsKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
