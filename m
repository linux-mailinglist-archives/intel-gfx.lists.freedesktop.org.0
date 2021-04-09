Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0EB35A925
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Apr 2021 01:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7E46EC5C;
	Fri,  9 Apr 2021 23:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4516E0F4
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Apr 2021 23:15:13 +0000 (UTC)
IronPort-SDR: pEpHTzdPpQGwxbnzLB9GmArbLcH7slQpi4dZF/KR0X1YtDdk99Edd2E6wBup6FUFsy7xNrAE7o
 mhl3vEPd8UZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9949"; a="173334134"
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="173334134"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 16:15:11 -0700
IronPort-SDR: RojJVs7xZsS8aDbzEncBEFT1/s7eQN5NB9kfV2j7HUvz+Sa/dcsZiJpqpZLuAbDvlB/uhLJ5DY
 zZNJqyouwh0w==
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="459396904"
Received: from kcorrale-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.34.21])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 16:15:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Apr 2021 16:17:38 -0700
Message-Id: <20210409231738.238682-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display/psr: Fix cppcheck warnings
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

Rml4IHJlZHVuZGFudCBjb25kaXRpb24sIGNhdWdodCBpbiBjcHBjaGVjayBieSBrZXJuZWwgdGVz
dCByb2JvdC4KClJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4K
Q2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KRml4ZXM6IGI2
NGQ2YzUxMzgwYiAoImRybS9pOTE1L2Rpc3BsYXk6IFN1cHBvcnQgUFNSIE11bHRpcGxlIEluc3Rh
bmNlcyIpClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAzICstLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDI2MjdkMGI1NThm
My4uMDZjYjI4NmU5YTRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMKQEAgLTE1MzIsOCArMTUzMiw3IEBAIHZvaWQgaW50ZWxfcHNyX3dhaXRfZm9yX2lkbGUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQogCQl1MzIgcHNyX3N0
YXR1czsKIAogCQltdXRleF9sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOwotCQlpZiAoIWludGVs
X2RwLT5wc3IuZW5hYmxlZCB8fAotCQkgICAgKGludGVsX2RwLT5wc3IuZW5hYmxlZCAmJiBpbnRl
bF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkpIHsKKwkJaWYgKCFpbnRlbF9kcC0+cHNyLmVuYWJsZWQg
fHwgaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpIHsKIAkJCW11dGV4X3VubG9jaygmaW50ZWxf
ZHAtPnBzci5sb2NrKTsKIAkJCWNvbnRpbnVlOwogCQl9Ci0tIAoyLjMxLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
