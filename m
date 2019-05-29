Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AA32E951
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 01:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42426E131;
	Wed, 29 May 2019 23:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1541B6E132
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 23:27:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 16:27:44 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com ([10.24.10.138])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 16:27:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 16:27:36 -0700
Message-Id: <20190529232737.31515-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529232737.31515-1-lucas.demarchi@intel.com>
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 4/5] testdisplay: use first available
 option values
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgY29yZSBvcHRpb25zIGFyZSBzZXQgdG8gNTAwIGFuZCBhYm92ZSwgc3RhcnQgZnJv
bSB0aGUgbG93ZXN0CnZhbHVlcyB3aXRob3V0IGNhdXNpbmcgcHJvYmxlbXMgd2l0aCBjb25mbGlj
dHMuIFRoaXMgYWxzbyByZW5hbWUgdGhlCmNvbnN0YW50cyB0byBmb2xsb3cgdGhlIG5hbWVzIGZy
b20gdGhlIGNvcmUuCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy90ZXN0ZGlzcGxheS5jIHwgMTQgKysrKysrKystLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvdGVzdHMvdGVzdGRpc3BsYXkuYyBiL3Rlc3RzL3Rlc3RkaXNwbGF5LmMKaW5kZXgg
YjRmMGQ0NWYuLjMyNTkwNTQ3IDEwMDY0NAotLS0gYS90ZXN0cy90ZXN0ZGlzcGxheS5jCisrKyBi
L3Rlc3RzL3Rlc3RkaXNwbGF5LmMKQEAgLTY5LDggKzY5LDEwIEBACiAjaW5jbHVkZSA8c3RkbGli
Lmg+CiAjaW5jbHVkZSA8c2lnbmFsLmg+CiAKLSNkZWZpbmUgWWJfT1BUCQkgNQotI2RlZmluZSBZ
Zl9PUFQJCSA2CitlbnVtIHsKKwlPUFRfWUIsCisJT1BUX1lGLAorfTsKIAogc3RhdGljIGludCB0
aW9fZmQ7CiBzdHJ1Y3QgdGVybWlvcyBzYXZlZF90aW87CkBAIC01NzMsOCArNTc1LDggQEAgc3Rh
dGljIHZvaWQgc2V0X3Rlcm1pb19tb2RlKHZvaWQpCiAKIHN0YXRpYyBjaGFyIG9wdHN0cltdID0g
IjNpYWY6czpkOnA6bXJ0bzpqOnkiOwogc3RhdGljIHN0cnVjdCBvcHRpb24gbG9uZ19vcHRzW10g
PSB7Ci0JeyJ5YiIsIDAsIDAsIFliX09QVH0sCi0JeyJ5ZiIsIDAsIDAsIFlmX09QVH0sCisJeyJ5
YiIsIDAsIDAsIE9QVF9ZQn0sCisJeyJ5ZiIsIDAsIDAsIE9QVF9ZRn0sCiAJeyAwLCAwLCAwLCAw
IH0KIH07CiAKQEAgLTY0OCwxMCArNjUwLDEwIEBAIHN0YXRpYyBpbnQgb3B0X2hhbmRsZXIoaW50
IG9wdCwgaW50IG9wdF9pbmRleCwgdm9pZCAqZGF0YSkKIAkJdGlsaW5nID0gTE9DQUxfSTkxNV9G
T1JNQVRfTU9EX1hfVElMRUQ7CiAJCWJyZWFrOwogCWNhc2UgJ3knOgotCWNhc2UgWWJfT1BUOgor
CWNhc2UgT1BUX1lCOgogCQl0aWxpbmcgPSBMT0NBTF9JOTE1X0ZPUk1BVF9NT0RfWV9USUxFRDsK
IAkJYnJlYWs7Ci0JY2FzZSBZZl9PUFQ6CisJY2FzZSBPUFRfWUY6CiAJCXRpbGluZyA9IExPQ0FM
X0k5MTVfRk9STUFUX01PRF9ZZl9USUxFRDsKIAkJYnJlYWs7CiAJY2FzZSAncic6Ci0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
