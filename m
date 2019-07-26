Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 930B576E61
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 17:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30846EDB4;
	Fri, 26 Jul 2019 15:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51FA86EDB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 15:58:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 08:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="173067329"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 26 Jul 2019 08:58:38 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6QFwa8N030808; Fri, 26 Jul 2019 16:58:37 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 15:58:05 +0000
Message-Id: <20190726155805.2736-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190726155805.2736-1-michal.wajdeczko@intel.com>
References: <20190726155805.2736-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/uc: Remove redundant RSA offset
 definition
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

QWNjb3JkaW5nIHRvIEZpcm13YXJlIGxheW91dCBkZWZpbml0aW9uLCBSU0Egc2lnbmF0dXJlIGlz
IGxvY2F0ZWQKYWZ0ZXIgQ1NTIGhlYWRlciBhbmQgdUNvZGUgc28gYWN0dWFsIFJTQSBvZmZzZXQg
aW4gdGhlIGJsb2IgY2FuIGJlCmVhc2lseSBjYWxjdWxhdGVkIHdoZW4gbmVlZGVkIChhbmQgd2Ug
bmVlZCBpdCBvbmx5IG9uY2UpLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWlj
aGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX3VjX2Z3LmMgfCA4ICsrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5oIHwgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwpp
bmRleCAwNTA3OWM1OWFlMDQuLmIwZjI4NTJkZWM0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5jCkBAIC0yMzgsNyArMjM4LDYgQEAgdm9pZCBpbnRlbF91Y19md19m
ZXRjaChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKIAkJZXJyID0gLUVOT0VYRUM7CiAJCWdvdG8gZmFpbDsKIAl9Ci0JdWNfZnctPnJzYV9v
ZmZzZXQgPSBzaXplb2Yoc3RydWN0IHVjX2Nzc19oZWFkZXIpICsgdWNfZnctPnVjb2RlX3NpemU7
CiAJdWNfZnctPnJzYV9zaXplID0gY3NzLT5rZXlfc2l6ZV9kdyAqIHNpemVvZih1MzIpOwogCiAJ
LyogQXQgbGVhc3QsIGl0IHNob3VsZCBoYXZlIGhlYWRlciwgdUNvZGUgYW5kIFJTQS4gU2l6ZSBv
ZiBhbGwgdGhyZWUuICovCkBAIC01MTIsMTEgKzUxMSwxMSBAQCBzaXplX3QgaW50ZWxfdWNfZndf
Y29weV9yc2Eoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgdm9pZCAqZHN0LCB1MzIgbWF4X2xl
bikKIHsKIAlzdHJ1Y3Qgc2dfdGFibGUgKnBhZ2VzID0gdWNfZnctPm9iai0+bW0ucGFnZXM7CiAJ
dTMyIHNpemUgPSBtaW5fdCh1MzIsIHVjX2Z3LT5yc2Ffc2l6ZSwgbWF4X2xlbik7CisJdTMyIG9m
ZnNldCA9IHNpemVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRlcikgKyB1Y19mdy0+dWNvZGVfc2l6ZTsK
IAogCUdFTV9CVUdfT04oIWludGVsX3VjX2Z3X2lzX2F2YWlsYWJsZSh1Y19mdykpOwogCi0JcmV0
dXJuIHNnX3Bjb3B5X3RvX2J1ZmZlcihwYWdlcy0+c2dsLCBwYWdlcy0+bmVudHMsCi0JCQkJICBk
c3QsIHNpemUsIHVjX2Z3LT5yc2Ffb2Zmc2V0KTsKKwlyZXR1cm4gc2dfcGNvcHlfdG9fYnVmZmVy
KHBhZ2VzLT5zZ2wsIHBhZ2VzLT5uZW50cywgZHN0LCBzaXplLCBvZmZzZXQpOwogfQogCiAvKioK
QEAgLTUzNiw2ICs1MzUsNSBAQCB2b2lkIGludGVsX3VjX2Z3X2R1bXAoY29uc3Qgc3RydWN0IGlu
dGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0IGRybV9wcmludGVyICpwKQogCQkgICB1Y19mdy0+bWFq
b3JfdmVyX3dhbnRlZCwgdWNfZnctPm1pbm9yX3Zlcl93YW50ZWQsCiAJCSAgIHVjX2Z3LT5tYWpv
cl92ZXJfZm91bmQsIHVjX2Z3LT5taW5vcl92ZXJfZm91bmQpOwogCWRybV9wcmludGYocCwgIlx0
dUNvZGU6ICV1IGJ5dGVzXG4iLCB1Y19mdy0+dWNvZGVfc2l6ZSk7Ci0JZHJtX3ByaW50ZihwLCAi
XHRSU0E6IG9mZnNldCAldSwgc2l6ZSAldVxuIiwKLQkJICAgdWNfZnctPnJzYV9vZmZzZXQsIHVj
X2Z3LT5yc2Ffc2l6ZSk7CisJZHJtX3ByaW50ZihwLCAiXHRSU0E6ICV1IGJ5dGVzXG4iLCB1Y19m
dy0+cnNhX3NpemUpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWNfZncuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgK
aW5kZXggNmEwNGJjNmQ0MTlmLi5jMmFiMjgwMzcxNWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZncuaApAQCAtNzUsNyArNzUsNiBAQCBzdHJ1Y3QgaW50ZWxfdWNfZncg
ewogCXUxNiBtaW5vcl92ZXJfZm91bmQ7CiAKIAl1MzIgcnNhX3NpemU7Ci0JdTMyIHJzYV9vZmZz
ZXQ7CiAJdTMyIHVjb2RlX3NpemU7CiB9OwogCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
