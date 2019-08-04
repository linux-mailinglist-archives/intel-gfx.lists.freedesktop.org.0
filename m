Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12B980C42
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Aug 2019 21:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34E189E23;
	Sun,  4 Aug 2019 19:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E097B89CF5
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Aug 2019 19:51:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Aug 2019 12:51:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,347,1559545200"; d="scan'208";a="181498407"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Aug 2019 12:51:00 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.143])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x74JovTQ026070; Sun, 4 Aug 2019 20:50:59 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  4 Aug 2019 19:50:51 +0000
Message-Id: <20190804195052.31140-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190804195052.31140-1-michal.wajdeczko@intel.com>
References: <20190804195052.31140-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/uc: Remove redundant GuC support
 checks
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

U2luY2UgY29tbWl0IGRiODFiYzZlYjljMCAoImRybS9pOTE1L3VjOiBDb25zaWRlciBlbmFibGVf
Z3VjCm1vZHBhcmFtIGR1cmluZyBmdyBzZWxlY3Rpb24iKSB3ZSBoYXZlIHN0YXJ0ZWQgdXNpbmcg
ZmlybXdhcmUKc3RhdHVzIGFzIG1haW4gaW5kaWNhdG9yIG9mIHRoZSBHdUMgc3VwcG9ydC4gTm8g
bmVlZCB0byB1c2UKc2FtZSBjaGVja3MgdHdpY2UuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2Fq
ZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Yy5jIHwgMTEgKy0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMK
aW5kZXggZmU1MjY2OThlZWUyLi4xZGRkMjUyNDE5ZWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYwpAQCAtMzA2LDkgKzMwNiw2IEBAIGludCBpbnRlbF91Y19pbml0KHN0cnVj
dCBpbnRlbF91YyAqdWMpCiAJaWYgKCFpbnRlbF91Y19zdXBwb3J0c19ndWModWMpKQogCQlyZXR1
cm4gMDsKIAotCWlmICghaW50ZWxfdWNfZndfc3VwcG9ydGVkKCZndWMtPmZ3KSkKLQkJcmV0dXJu
IC1FTk9ERVY7Ci0KIAkvKiBYWFg6IEd1QyBzdWJtaXNzaW9uIGlzIHVuYXZhaWxhYmxlIGZvciBu
b3cgKi8KIAlHRU1fQlVHX09OKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSk7
CiAKQEAgLTMzNiw4ICszMzMsNiBAQCB2b2lkIGludGVsX3VjX2Zpbmkoc3RydWN0IGludGVsX3Vj
ICp1YykKIAlpZiAoIWludGVsX3VjX3N1cHBvcnRzX2d1Yyh1YykpCiAJCXJldHVybjsKIAotCUdF
TV9CVUdfT04oIWludGVsX3VjX2Z3X3N1cHBvcnRlZCgmZ3VjLT5mdykpOwotCiAJaWYgKGludGVs
X3VjX3N1cHBvcnRzX2h1Yyh1YykpCiAJCWludGVsX2h1Y19maW5pKCZ1Yy0+aHVjKTsKIApAQCAt
MzUxLDcgKzM0Niw3IEBAIHN0YXRpYyBpbnQgX191Y19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfdWMg
KnVjKQogCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9ICZ1Yy0+Z3VjOwogCXN0cnVjdCBpbnRlbF9o
dWMgKmh1YyA9ICZ1Yy0+aHVjOwogCi0JR0VNX0JVR19PTighaW50ZWxfdWNfZndfc3VwcG9ydGVk
KCZndWMtPmZ3KSk7CisJR0VNX0JVR19PTighaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSk7CiAK
IAlpbnRlbF9odWNfc2FuaXRpemUoaHVjKTsKIAlpbnRlbF9ndWNfc2FuaXRpemUoZ3VjKTsKQEAg
LTQyOSw4ICs0MjQsNiBAQCBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVj
KQogCWlmICghaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSkKIAkJcmV0dXJuIDA7CiAKLQlHRU1f
QlVHX09OKCFpbnRlbF91Y19md19zdXBwb3J0ZWQoJmd1Yy0+ZncpKTsKLQogCXJldCA9IHVjX2lu
aXRfd29wY20odWMpOwogCWlmIChyZXQpCiAJCWdvdG8gZXJyX291dDsKQEAgLTUzMCw4ICs1MjMs
NiBAQCB2b2lkIGludGVsX3VjX2ZpbmlfaHcoc3RydWN0IGludGVsX3VjICp1YykKIAlpZiAoIWlu
dGVsX2d1Y19pc19ydW5uaW5nKGd1YykpCiAJCXJldHVybjsKIAotCUdFTV9CVUdfT04oIWludGVs
X3VjX2Z3X3N1cHBvcnRlZCgmZ3VjLT5mdykpOwotCiAJaWYgKGludGVsX3VjX3N1cHBvcnRzX2d1
Y19zdWJtaXNzaW9uKHVjKSkKIAkJaW50ZWxfZ3VjX3N1Ym1pc3Npb25fZGlzYWJsZShndWMpOwog
Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
