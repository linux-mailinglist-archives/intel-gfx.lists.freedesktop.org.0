Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36ABF2DE920
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 19:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C9489B9F;
	Fri, 18 Dec 2020 18:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E34489B9F;
 Fri, 18 Dec 2020 18:46:47 +0000 (UTC)
IronPort-SDR: CgmQpiyiFX8f9Jrq0MDY/hAv1kLI9tlPFAWY1vJW900Q+wevxBqme210E7rFSasNI0NljxBGop
 PUBZUSjjWhTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="172919170"
X-IronPort-AV: E=Sophos;i="5.78,431,1599548400"; d="scan'208";a="172919170"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 10:46:46 -0800
IronPort-SDR: ftG2Wli8XLagnWGHJivtlemwLMUi4/QL4ayfuDFhyF6MJ5UmETeeDi1A1LTl0C1FJgvSCIs1BC
 jbFWFP5YLzKQ==
X-IronPort-AV: E=Sophos;i="5.78,431,1599548400"; d="scan'208";a="343429148"
Received: from svasud1x-mobl3.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.182.238])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 10:46:44 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 10:46:57 -0800
Message-Id: <20201218184701.111857-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 1/5] drm: Add function to convert rect in
 16.16 fixed format to regular format
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TXVjaCBtb3JlIGNsZWFyIHRvIHJlYWQgb25lIGZ1bmN0aW9uIGNhbGwgdGhhbiBmb3VyIGxpbmVz
IGRvaW5nIHRoaXMKY29udmVyc2lvbi4KCnY3OgotIGZ1bmN0aW9uIHJlbmFtZWQKLSBjYWxjdWxh
dGluZyB3aWR0aCBhbmQgaGVpZ2h0IGJlZm9yZSB0cnVuY2F0ZQotIGlubGluZWQKCkNjOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5t
dW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL2RybS9kcm1fcmVjdC5oIHwgMTMgKysrKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2RybS9kcm1fcmVjdC5oIGIvaW5jbHVkZS9kcm0vZHJtX3JlY3QuaAppbmRleCBlN2Y0
ZDI0Y2RkMDAuLjdlYjg0YWY0YTgxOCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX3JlY3Qu
aAorKysgYi9pbmNsdWRlL2RybS9kcm1fcmVjdC5oCkBAIC0yMDYsNiArMjA2LDE5IEBAIHN0YXRp
YyBpbmxpbmUgYm9vbCBkcm1fcmVjdF9lcXVhbHMoY29uc3Qgc3RydWN0IGRybV9yZWN0ICpyMSwK
IAkJcjEtPnkxID09IHIyLT55MSAmJiByMS0+eTIgPT0gcjItPnkyOwogfQogCisvKioKKyAqIGRy
bV9yZWN0X2ZwX3RvX2ludCAtIENvbnZlcnQgYSByZWN0IGluIDE2LjE2IGZpeGVkIHBvaW50IGZv
cm0gdG8gaW50IGZvcm0uCisgKiBAZGVzdGluYXRpb246IHJlY3QgdG8gYmUgc3RvcmVkIHRoZSBj
b252ZXJ0ZWQgdmFsdWUKKyAqIEBzb3VyY2U6IHJlY3QgaW4gMTYuMTYgZml4ZWQgcG9pbnQgZm9y
bQorICovCitzdGF0aWMgaW5saW5lIHZvaWQgZHJtX3JlY3RfZnBfdG9faW50KHN0cnVjdCBkcm1f
cmVjdCAqZGVzdGluYXRpb24sCisJCQkJICAgICAgY29uc3Qgc3RydWN0IGRybV9yZWN0ICpzb3Vy
Y2UpCit7CisJZHJtX3JlY3RfaW5pdChkZXN0aW5hdGlvbiwgc291cmNlLT54MSA+PiAxNiwgc291
cmNlLT55MSA+PiAxNiwKKwkJICAgICAgZHJtX3JlY3Rfd2lkdGgoc291cmNlKSA+PiAxNiwKKwkJ
ICAgICAgZHJtX3JlY3RfaGVpZ2h0KHNvdXJjZSkgPj4gMTYpOworfQorCiBib29sIGRybV9yZWN0
X2ludGVyc2VjdChzdHJ1Y3QgZHJtX3JlY3QgKnIsIGNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqY2xp
cCk7CiBib29sIGRybV9yZWN0X2NsaXBfc2NhbGVkKHN0cnVjdCBkcm1fcmVjdCAqc3JjLCBzdHJ1
Y3QgZHJtX3JlY3QgKmRzdCwKIAkJCSAgY29uc3Qgc3RydWN0IGRybV9yZWN0ICpjbGlwKTsKLS0g
CjIuMjkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
