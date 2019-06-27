Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D989A5828B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 14:26:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0862E6E184;
	Thu, 27 Jun 2019 12:25:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5013D6E184;
 Thu, 27 Jun 2019 12:25:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 05:25:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="162619581"
Received: from czwolak-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.4.8])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jun 2019 05:25:55 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 27 Jun 2019 13:25:52 +0100
Message-Id: <20190627122552.10255-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: Use engine discovery in
 gem_test_engines
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCklmIHJlcXVl
c3QgaXMgdG8gdmVyaWZ5IGFsbCBlbmdpbmVzIHdvcmssIHVzZSB0aGUgbmV3IGVuZ2luZSBkaXNj
b3ZlcnkgQVBJCnNvIHdlIGNhbiBhY3R1YWxseSB0ZXN0IGFsbC4KClRoZXJlIGlzIGEgc3BvcmFk
aWMgYW5kIG15c3RlcmlvdXMsIHBvc3NpYmx5IG1lbW9yeSBjb3JydXB0aW9uIGlzc3VlCnN1cnJv
bmRpbmcgdGhpcyBhcmVhIHNvIGxldHMgc2VlIGlmIHRoaXMgY2hhbmdlcyB0aGUgcGF0dGVybi4K
Ckl0IGlzIGVhc3kgdG8gZG8gaW4gdGhpcyBmdW5jdGlvbiBkdWUgaXQgcmUtb3BlbmluZyB0aGUg
ZHJpdmVyIGFuZAp0aHJvd2luZyBpdCBhd2F5LiBTbyB0aGVyZSBhcmUgbm8gY29uY2VybnMgdGhh
dCB0aGUgbW9kaWZpZWQgZGVmYXVsdApjb250ZXh0IGNhbiBhZmZlY3QgYW55IG90aGVyIHRlc3Qu
CgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgpSZWZlcmVuY2VzOiBodHRwczovL2J1Z3ppbGxhLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEwNjY3Ci0tLQogbGliL2k5MTUvZ2VtX3N1Ym1pc3Npb24uYyB8IDggKysrKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvbGliL2k5MTUvZ2VtX3N1Ym1pc3Npb24uYyBiL2xpYi9pOTE1L2dlbV9zdWJtaXNzaW9u
LmMKaW5kZXggMmZkNDYwZDVlZDJiLi5hOGJiNDVjNmFjOGYgMTAwNjQ0Ci0tLSBhL2xpYi9pOTE1
L2dlbV9zdWJtaXNzaW9uLmMKKysrIGIvbGliL2k5MTUvZ2VtX3N1Ym1pc3Npb24uYwpAQCAtMjgs
NiArMjgsOCBAQAogCiAjaW5jbHVkZSA8aTkxNV9kcm0uaD4KIAorI2luY2x1ZGUgImk5MTUvZ2Vt
X2VuZ2luZV90b3BvbG9neS5oIgorCiAjaW5jbHVkZSAiaWd0X2NvcmUuaCIKICNpbmNsdWRlICJp
Z3RfZ3QuaCIKICNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKQEAgLTIxNSw4ICsyMTcsMTAgQEAgdm9p
ZCBnZW1fdGVzdF9lbmdpbmUoaW50IGk5MTUsIHVuc2lnbmVkIGludCBlbmdpbmUpCiAJZ2VtX3dy
aXRlKGk5MTUsIG9iai5oYW5kbGUsIDAsICZiYmUsIHNpemVvZihiYmUpKTsKIAogCWlmIChlbmdp
bmUgPT0gQUxMX0VOR0lORVMpIHsKLQkJZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKGk5MTUsIGVu
Z2luZSkgewotCQkJZXhlY2J1Zi5mbGFncyA9IGVuZ2luZTsKKwkJY29uc3Qgc3RydWN0IGludGVs
X2V4ZWN1dGlvbl9lbmdpbmUyICplMjsKKworCQlfX2Zvcl9lYWNoX3BoeXNpY2FsX2VuZ2luZShp
OTE1LCBlMikgeworCQkJZXhlY2J1Zi5mbGFncyA9IGUyLT5mbGFnczsKIAkJCWdlbV9leGVjYnVm
KGk5MTUsICZleGVjYnVmKTsKIAkJfQogCX0gZWxzZSB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
