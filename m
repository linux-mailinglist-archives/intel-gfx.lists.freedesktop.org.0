Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DE58936A
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 21:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC9D6E359;
	Sun, 11 Aug 2019 19:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 083D86E2F8
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 19:51:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Aug 2019 12:51:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,374,1559545200"; d="scan'208";a="193813595"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 11 Aug 2019 12:51:39 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.120])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7BJpbwx019994; Sun, 11 Aug 2019 20:51:38 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 11 Aug 2019 19:51:29 +0000
Message-Id: <20190811195132.9660-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190811195132.9660-1-michal.wajdeczko@intel.com>
References: <20190811195132.9660-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/uc: Fail early if there is no GuC
 fw available
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

V2UgZG9uJ3Qgd2FudCB0byByZWx5IG9uIG1pc2xlYWRpbmcgV09QQ00gcGFydGl0aW9uaW5nIGVy
cm9yLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0Bp
bnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICB8ICA1ICsrKysr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oIHwgMjEgKysrKysrKysr
KysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwppbmRleCAzMmFhNDUwOWJhMWQuLmFhOTcwMWNmYzc1
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCkBAIC00MzYsNiArNDM2LDEx
IEBAIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJaWYgKCFpbnRl
bF91Y19zdXBwb3J0c19ndWModWMpKQogCQlyZXR1cm4gMDsKIAorCWlmICghaW50ZWxfdWNfZndf
aXNfYXZhaWxhYmxlKCZndWMtPmZ3KSkgeworCQlyZXQgPSBpbnRlbF91Y19md19zdGF0dXNfdG9f
ZXJyb3IoZ3VjLT5mdy5zdGF0dXMpOworCQlnb3RvIGVycl9vdXQ7CisJfQorCiAJcmV0ID0gdWNf
aW5pdF93b3BjbSh1Yyk7CiAJaWYgKHJldCkKIAkJZ290byBlcnJfb3V0OwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKaW5kZXggMGQyMmU3M2RmZjE1Li5hZDdlNzIzMTZk
Y2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaApAQCAtMTA3LDYg
KzEwNywyNyBAQCBjb25zdCBjaGFyICppbnRlbF91Y19md19zdGF0dXNfcmVwcihlbnVtIGludGVs
X3VjX2Z3X3N0YXR1cyBzdGF0dXMpCiAJcmV0dXJuICI8aW52YWxpZD4iOwogfQogCitzdGF0aWMg
aW5saW5lIGludCBpbnRlbF91Y19md19zdGF0dXNfdG9fZXJyb3IoZW51bSBpbnRlbF91Y19md19z
dGF0dXMgc3RhdHVzKQoreworCXN3aXRjaCAoc3RhdHVzKSB7CisJY2FzZSBJTlRFTF9VQ19GSVJN
V0FSRV9OT1RfU1VQUE9SVEVEOgorCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfVU5JTklUSUFMSVpF
RDoKKwkJcmV0dXJuIC1FUEVSTTsKKwljYXNlIElOVEVMX1VDX0ZJUk1XQVJFX01JU1NJTkc6CisJ
CXJldHVybiAtRU5PRU5UOworCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfRVJST1I6CisJCXJldHVy
biAtRU5PRVhFQzsKKwljYXNlIElOVEVMX1VDX0ZJUk1XQVJFX0ZBSUw6CisJCXJldHVybiAtRUlP
OworCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfU0VMRUNURUQ6CisJY2FzZSBJTlRFTF9VQ19GSVJN
V0FSRV9BVkFJTEFCTEU6CisJY2FzZSBJTlRFTF9VQ19GSVJNV0FSRV9UUkFOU0ZFUlJFRDoKKwlj
YXNlIElOVEVMX1VDX0ZJUk1XQVJFX1JVTk5JTkc6CisJCXJldHVybiAwOworCX0KKwlyZXR1cm4g
LUVJTlZBTDsKK30KKwogc3RhdGljIGlubGluZSBjb25zdCBjaGFyICppbnRlbF91Y19md190eXBl
X3JlcHIoZW51bSBpbnRlbF91Y19md190eXBlIHR5cGUpCiB7CiAJc3dpdGNoICh0eXBlKSB7Ci0t
IAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
