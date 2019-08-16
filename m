Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CA88FCF7
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA6D26EB04;
	Fri, 16 Aug 2019 08:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 216FF6EB04
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851393"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:32 -0700
Message-Id: <20190816080503.28594-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/39] drm/i915/tgl: Change PSR2 transcoder
 restriction
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaWdl
ciBMYWtlIGhhcyBlRFAtY2FwYWJsZSB0cmFuc2NvZGVycyByYXRoZXIgdGhhbiBhIHRyYW5zY29k
ZXIKZGVkaWNhdGVkIHRvIGVEUC4gVHJhbnNjb2RlciBBIGlzIHRoZSBvbmUgd2hlcmUgd2UgaGF2
ZSBQU1IyLgpBY3R1YWxseSB0cmFuc2NvZGVyIEIgYWxzbyBzdXBwb3J0cyBQU1IyIGJ1dCBvbmx5
IHdpdGggc29mdHdhcmUKdHJhY2tpbmcgdGhhdCBpcyBub3QgaW1wbGVtZW50ZWQuCgpDYzogRGhp
bmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+CkNjOiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTEgKysrKysrKysrLS0KIDEgZmlsZSBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggMDEwNzBlYjY3NTcxLi4xZDM2ZDdiZTAxNWQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtNTExLDEyICs1MTEs
MTkgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwKIAlpbnQgY3J0Y19oZGlzcGxheSA9IGNydGNfc3RhdGUtPmJhc2UuYWRqdXN0
ZWRfbW9kZS5jcnRjX2hkaXNwbGF5OwogCWludCBjcnRjX3ZkaXNwbGF5ID0gY3J0Y19zdGF0ZS0+
YmFzZS5hZGp1c3RlZF9tb2RlLmNydGNfdmRpc3BsYXk7CiAJaW50IHBzcl9tYXhfaCA9IDAsIHBz
cl9tYXhfdiA9IDA7CisJZW51bSB0cmFuc2NvZGVyIHN1cHBvcnRlZDsKIAogCWlmICghZGV2X3By
aXYtPnBzci5zaW5rX3BzcjJfc3VwcG9ydCkKIAkJcmV0dXJuIGZhbHNlOwogCi0JaWYgKGNydGNf
c3RhdGUtPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfRURQKSB7Ci0JCURSTV9ERUJVR19L
TVMoIlBTUjIgaXMgb25seSBzdXBwb3J0ZWQgaW4gRURQIHRyYW5zY29kZXJcbiIpOworCS8qCisJ
ICogVE9ETzogUFNSMiBpcyBhbHNvIHN1cHBvcnRlZCBpbiBUUkFOU0NPREVSX0Igb24gVEdMKyBi
dXQgaXQgcmVxdWlyZXMKKwkgKiBzb2Z0d2FyZSB0cmFja2luZworCSAqLworCXN1cHBvcnRlZCA9
IElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIgPyBUUkFOU0NPREVSX0EgOiBUUkFOU0NPREVSX0VE
UDsKKwlpZiAoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIgIT0gc3VwcG9ydGVkKSB7CisJCURS
TV9ERUJVR19LTVMoIlBTUjIgbm90IHN1cHBvcnRlZCBpbiB0cmFuc2NvZGVyICVzXG4iLAorCQkJ
ICAgICAgdHJhbnNjb2Rlcl9uYW1lKHN1cHBvcnRlZCkpOwogCQlyZXR1cm4gZmFsc2U7CiAJfQog
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
