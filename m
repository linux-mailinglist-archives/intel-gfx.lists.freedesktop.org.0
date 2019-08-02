Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C46B68004B
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 20:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B697E6EF44;
	Fri,  2 Aug 2019 18:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E342D6EF44
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 18:41:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 11:41:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="197290060"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 02 Aug 2019 11:41:06 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x72If4tH012718; Fri, 2 Aug 2019 19:41:05 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 18:40:51 +0000
Message-Id: <20190802184055.31988-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190802184055.31988-1-michal.wajdeczko@intel.com>
References: <20190802184055.31988-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 2/6] drm/i915/uc: Do full sanitize instead of
 pure reset
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

T24gR2VuOSB3aGVuIHdlIHRyeSB0byByZWxvYWQgSHVDIGR1ZSB0byBHdUMgdXBsb2FkIGVycm9y
LCB3ZSBoaXQ6Cgo8Nz4gWzIyOS42NTY2ODhdIFtkcm06aW50ZWxfdWNfaW5pdF9odyBbaTkxNV1d
IEd1QyBmdyBsb2FkIGZhaWxlZDogLTg7IHdpbGwgcmVzZXQgYW5kIHJldHJ5IDIgbW9yZSB0aW1l
KHMpCjw3PiBbMjI5LjY1NjczOV0gW2RybTppbnRlbF91Y19md191cGxvYWQgW2k5MTVdXSBIdUMg
ZncgbG9hZCBpOTE1L2tibF9odWNfdmVyMDJfMDBfMTgxMC5iaW4KPDM+IFsyMjkuNjU2NzQwXSBp
bnRlbF91Y19md191cGxvYWQ6NDI1IEdFTV9CVUdfT04oaW50ZWxfdWNfZndfaXNfbG9hZGVkKHVj
X2Z3KSkKCmFzIHdlIHBlcmZvcm1lZCBvbmx5IHB1cmUgcmVzZXQgYW5kIGRpZG4ndCBzYW5pdGl6
ZWQgSHVDIGZ3IHN0YXR1cy4KClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMg
fCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYwppbmRleCBkMWIwOGIyOGIxYWQu
LmYyNDg2MGE4NmQwZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCkBAIC0z
NDAsNyArMzQwLDcgQEAgdm9pZCBpbnRlbF91Y19maW5pKHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJ
aW50ZWxfZ3VjX2ZpbmkoZ3VjKTsKIH0KIAotc3RhdGljIHZvaWQgX191Y19zYW5pdGl6ZShzdHJ1
Y3QgaW50ZWxfdWMgKnVjKQorc3RhdGljIGludCBfX3VjX3Nhbml0aXplKHN0cnVjdCBpbnRlbF91
YyAqdWMpCiB7CiAJc3RydWN0IGludGVsX2d1YyAqZ3VjID0gJnVjLT5ndWM7CiAJc3RydWN0IGlu
dGVsX2h1YyAqaHVjID0gJnVjLT5odWM7CkBAIC0zNTAsNyArMzUwLDcgQEAgc3RhdGljIHZvaWQg
X191Y19zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCWludGVsX2h1Y19zYW5pdGl6ZSho
dWMpOwogCWludGVsX2d1Y19zYW5pdGl6ZShndWMpOwogCi0JX19pbnRlbF91Y19yZXNldF9odyh1
Yyk7CisJcmV0dXJuIF9faW50ZWxfdWNfcmVzZXRfaHcodWMpOwogfQogCiB2b2lkIGludGVsX3Vj
X3Nhbml0aXplKHN0cnVjdCBpbnRlbF91YyAqdWMpCkBAIC00MzQsNyArNDM0LDcgQEAgaW50IGlu
dGVsX3VjX2luaXRfaHcoc3RydWN0IGludGVsX3VjICp1YykKIAkJICogQWx3YXlzIHJlc2V0IHRo
ZSBHdUMganVzdCBiZWZvcmUgKHJlKWxvYWRpbmcsIHNvCiAJCSAqIHRoYXQgdGhlIHN0YXRlIGFu
ZCB0aW1pbmcgYXJlIGZhaXJseSBwcmVkaWN0YWJsZQogCQkgKi8KLQkJcmV0ID0gX19pbnRlbF91
Y19yZXNldF9odyh1Yyk7CisJCXJldCA9IF9fdWNfc2FuaXRpemUodWMpOwogCQlpZiAocmV0KQog
CQkJZ290byBlcnJfb3V0OwogCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
