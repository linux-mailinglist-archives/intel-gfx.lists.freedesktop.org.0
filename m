Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CCE2506B9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 19:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F1A6E3F4;
	Mon, 24 Aug 2020 17:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E9436E3F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 17:41:09 +0000 (UTC)
IronPort-SDR: mgNB/ULkDwhs/ukVnXPxMWqPo4UgBI2+X20cF8HLq3P6rVMIop6tHGl8lXrGy79fQSdsq9WmHV
 p0gE71m4HQfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="157010373"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="157010373"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 10:41:09 -0700
IronPort-SDR: vrXJaX2Ym2foxEa4g7qH2cYTryNXEmyK3jf3t+W3oDenzZMt/L7GKQ3Fq7mDSFAm3+8Xdm94U9
 fpa77iv1WiuQ==
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="328579469"
Received: from scewbso01.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.150.107])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 10:41:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Aug 2020 10:43:45 -0700
Message-Id: <20200824174345.87553-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200824174345.87553-1-jose.souza@intel.com>
References: <20200824174345.87553-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/display: Fix DRRS debugfs
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
Cc: Hariom Pandey <hariom.pandey@intel.com>, Srinivas K <srinivasx.k@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VwcG9ydGVkIGFuZCBlbmFibGVkIGFyZSBkaWZmZXJlbnQgdGhpbmdzIHNvIHByaW50aW5nIGJv
dGguCgpDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KQ2M6IFNy
aW5pdmFzIEsgPHNyaW5pdmFzeC5rQGludGVsLmNvbT4KQ2M6IEhhcmlvbSBQYW5kZXkgPGhhcmlv
bS5wYW5kZXlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIHwgMTIgKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwppbmRleCBmNTQ5Mzgx
MDQ4YjMuLjRiNGNhYmYzNGQyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCkBAIC0xMDY5LDEwICsxMDY5LDE4IEBAIHN0
YXRpYyB2b2lkIGRycnNfc3RhdHVzX3Blcl9jcnRjKHN0cnVjdCBzZXFfZmlsZSAqbSwKIAogCWRy
bV9jb25uZWN0b3JfbGlzdF9pdGVyX2JlZ2luKGRldiwgJmNvbm5faXRlcik7CiAJZHJtX2Zvcl9l
YWNoX2Nvbm5lY3Rvcl9pdGVyKGNvbm5lY3RvciwgJmNvbm5faXRlcikgeworCQlib29sIHN1cHBv
cnRlZCA9IGZhbHNlOworCiAJCWlmIChjb25uZWN0b3ItPnN0YXRlLT5jcnRjICE9ICZpbnRlbF9j
cnRjLT5iYXNlKQogCQkJY29udGludWU7CiAKIAkJc2VxX3ByaW50ZihtLCAiJXM6XG4iLCBjb25u
ZWN0b3ItPm5hbWUpOworCisJCWlmIChjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERSTV9N
T0RFX0NPTk5FQ1RPUl9lRFAgJiYKKwkJICAgIGRldl9wcml2LT52YnQuZHJyc190eXBlID09IFNF
QU1MRVNTX0RSUlNfU1VQUE9SVCkKKwkJCXN1cHBvcnRlZCA9IHRydWU7CisKKwkJc2VxX3ByaW50
ZihtLCAiXHREUlJTIFN1cHBvcnRlZDogJXNcbiIsIHllc25vKHN1cHBvcnRlZCkpOwogCX0KIAlk
cm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNvbm5faXRlcik7CiAKQEAgLTEwODMsNyArMTA5
MSw3IEBAIHN0YXRpYyB2b2lkIGRycnNfc3RhdHVzX3Blcl9jcnRjKHN0cnVjdCBzZXFfZmlsZSAq
bSwKIAogCQltdXRleF9sb2NrKCZkcnJzLT5tdXRleCk7CiAJCS8qIERSUlMgU3VwcG9ydGVkICov
Ci0JCXNlcV9wdXRzKG0sICJcdERSUlMgU3VwcG9ydGVkOiBZZXNcbiIpOworCQlzZXFfcHV0cyht
LCAiXHREUlJTIEVuYWJsZWQ6IFllc1xuIik7CiAKIAkJLyogZGlzYWJsZV9kcnJzKCkgd2lsbCBt
YWtlIGRycnMtPmRwIE5VTEwgKi8KIAkJaWYgKCFkcnJzLT5kcCkgewpAQCAtMTExOCw3ICsxMTI2
LDcgQEAgc3RhdGljIHZvaWQgZHJyc19zdGF0dXNfcGVyX2NydGMoc3RydWN0IHNlcV9maWxlICpt
LAogCQltdXRleF91bmxvY2soJmRycnMtPm11dGV4KTsKIAl9IGVsc2UgewogCQkvKiBEUlJTIG5v
dCBzdXBwb3J0ZWQuIFByaW50IHRoZSBWQlQgcGFyYW1ldGVyKi8KLQkJc2VxX3B1dHMobSwgIlx0
RFJSUyBTdXBwb3J0ZWQgOiBObyIpOworCQlzZXFfcHV0cyhtLCAiXHREUlJTIEVuYWJsZWQgOiBO
byIpOwogCX0KIAlzZXFfcHV0cyhtLCAiXG4iKTsKIH0KLS0gCjIuMjguMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
