Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C411FBF07
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 21:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED106E922;
	Tue, 16 Jun 2020 19:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842AE6E922
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 19:30:00 +0000 (UTC)
IronPort-SDR: DTlnQ1N05U4xDYxcnDOr676WhggXpI90oiYxhl7lRo8QCv3KRseIl9ZOc7PLj8QUZYyLTC4WzS
 8lJul1f0pIFw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 12:29:57 -0700
IronPort-SDR: KPuTEcDkTTMW6PKIT/S9HLLJHMayp6n6YM7WlkpsOEnbg8okqzZMln0nfs/yuAbhX3TYsxrtdk
 LupFUdckrYxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="299022289"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jun 2020 12:29:57 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 12:30:56 -0700
Message-Id: <20200616193056.4817-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Poll for DDI Idle status to be 0
 after enabling DDI Buf
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

VGhlIEJzcGVjIHNlcXVlbmNlIGV4cGVjdHMgdXMgdG8gcG9sbCBmb3IgRERJIElkbGUgc3RhdHVz
CnRvIGJlIDAgKG5vdCBpZGxlKSB3aXRoIGEgdGltZW91dCBvZiA2MDB1c2VjcyBhZnRlciBlbmFi
bGluZyB0aGUKRERJIEJVRiBDVEwuIEJ1dCBjdXJyZW50bHkgaW4gdGhlIGRyaXZlciB3ZSBqdXN0
IHdhaXQgZm9yIDYwMHVzZWNzCndpdGhvdXQgcG9sbGluZyBzbyBhZGQgdGhhdC4KCkNjOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5h
c2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgfCA2ICsrKysrLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmlu
ZGV4IGNhN2JiMjI5NGQyYi4uZGU3ZTE1ZGUwYmM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKQEAgLTQwMjMsNyArNDAyMywxMSBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9kZGlfcHJlcGFyZV9saW5rX3JldHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRERJX0JVRl9DVEwocG9ydCksIGludGVsX2RwLT5EUCk7
CiAJaW50ZWxfZGVfcG9zdGluZ19yZWFkKGRldl9wcml2LCBERElfQlVGX0NUTChwb3J0KSk7CiAK
LQl1ZGVsYXkoNjAwKTsKKwlpZiAod2FpdF9mb3JfdXMoIShpbnRlbF9kZV9yZWFkKGRldl9wcml2
LCBERElfQlVGX0NUTChwb3J0KSkgJgorCQkJICBERElfQlVGX0lTX0lETEUpLAorCQkJNjAwKSkK
KwkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIkRESSBwb3J0OiVjIGJ1ZmZlciBpZGxlXG4iLAor
CQkJcG9ydF9uYW1lKHBvcnQpKTsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfZGRpX3NldF9saW5r
X3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0tIAoyLjE5LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
