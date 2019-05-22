Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A769326C13
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:32:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5D589BF5;
	Wed, 22 May 2019 19:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108B589BF5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:32:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:32:09 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 22 May 2019 12:32:08 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJW5Gn020993; Wed, 22 May 2019 20:32:08 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:32:00 +0000
Message-Id: <20190522193203.23932-7-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522193203.23932-1-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915/uc: Use GuC firmware status
 helper
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

V2UgYWxyZWFkeSBoYXZlIGhlbHBlciBmdW5jdGlvbiBmb3IgY2hlY2tpbmcgR3VDIGZpcm13YXJl
CmxvYWQgc3RhdHVzLiBSZXBsYWNlIGV4aXN0aW5nIG9wZW4tY29kZWQgY2hlY2tzLgoKdjI6IGRy
b3AgcmVkdW5kYW50IFVTRVNfR1VDIGNoZWNrCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMg
fCA5ICsrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwppbmRleCA0MTVmNDA1OGNlMmEuLjFhOTQ1ZjYx
Y2Y2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCkBAIC00OTQsNyArNDk0LDcgQEAgdm9pZCBp
bnRlbF91Y19ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJ
c3RydWN0IGludGVsX2d1YyAqZ3VjID0gJmk5MTUtPmd1YzsKIAlpbnQgZXJyOwogCi0JaWYgKGd1
Yy0+ZncubG9hZF9zdGF0dXMgIT0gSU5URUxfVUNfRklSTVdBUkVfU1VDQ0VTUykKKwlpZiAoIWlu
dGVsX2d1Y19pc19sb2FkZWQoZ3VjKSkKIAkJcmV0dXJuOwogCiAJZXJyID0gaW50ZWxfZ3VjX3N1
c3BlbmQoZ3VjKTsKQEAgLTUwOSw3ICs1MDksNyBAQCB2b2lkIGludGVsX3VjX3N1c3BlbmQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJc3RydWN0IGludGVsX2d1YyAqZ3VjID0gJmk5
MTUtPmd1YzsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAotCWlmIChndWMtPmZ3LmxvYWRf
c3RhdHVzICE9IElOVEVMX1VDX0ZJUk1XQVJFX1NVQ0NFU1MpCisJaWYgKCFpbnRlbF9ndWNfaXNf
bG9hZGVkKGd1YykpCiAJCXJldHVybjsKIAogCXdpdGhfaW50ZWxfcnVudGltZV9wbShpOTE1LCB3
YWtlcmVmKQpAQCAtNTIxLDEwICs1MjEsNyBAQCBpbnQgaW50ZWxfdWNfcmVzdW1lKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQogCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9ICZpOTE1LT5n
dWM7CiAJaW50IGVycjsKIAotCWlmICghVVNFU19HVUMoaTkxNSkpCi0JCXJldHVybiAwOwotCi0J
aWYgKGd1Yy0+ZncubG9hZF9zdGF0dXMgIT0gSU5URUxfVUNfRklSTVdBUkVfU1VDQ0VTUykKKwlp
ZiAoIWludGVsX2d1Y19pc19sb2FkZWQoZ3VjKSkKIAkJcmV0dXJuIDA7CiAKIAlndWNfZW5hYmxl
X2NvbW11bmljYXRpb24oZ3VjKTsKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
