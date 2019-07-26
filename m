Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D616C77169
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 20:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4C16EE25;
	Fri, 26 Jul 2019 18:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC6C6EE23
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 18:42:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 11:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="322129083"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2019 11:42:18 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6QIgG5N006385; Fri, 26 Jul 2019 19:42:17 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 18:42:11 +0000
Message-Id: <20190726184212.1836-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190726184212.1836-1-michal.wajdeczko@intel.com>
References: <20190726184212.1836-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/uc: Remove redundant ucode offset
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

QWNjb3JkaW5nIHRvIEZpcm13YXJlIGxheW91dCBkZWZpbml0aW9uLCB1Q29kZSBpcyBsb2NhdGVk
IHJpZ2h0CmFmdGVyIENTUyBoZWFkZXIsIHNvIHVjb2RlIG9mZnNldCBpcyBhbHdheXMgc2FtZSBh
cyBoZWFkZXIgc2l6ZS4KClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53
YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDYgKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Y19mdy5oIHwgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNf
ZncuYwppbmRleCBiNTI2YmFiNWIyN2EuLjE2YWI5YmM5MjkxOSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCkBAIC0yMjksNyArMjI5LDYgQEAgdm9pZCBpbnRlbF91
Y19md19mZXRjaChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKIAl9CiAKIAkvKiB1Q29kZSBzaXplIG11c3QgY2FsY3VsYXRlZCBmcm9tIG90
aGVyIHNpemVzICovCi0JdWNfZnctPnVjb2RlX29mZnNldCA9IHNpemVvZihzdHJ1Y3QgdWNfY3Nz
X2hlYWRlcik7CiAJdWNfZnctPnVjb2RlX3NpemUgPSAoY3NzLT5zaXplX2R3IC0gY3NzLT5oZWFk
ZXJfc2l6ZV9kdykgKiBzaXplb2YodTMyKTsKIAogCS8qIG5vdyBSU0EgKi8KQEAgLTIzOSw3ICsy
MzgsNyBAQCB2b2lkIGludGVsX3VjX2Z3X2ZldGNoKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncs
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQllcnIgPSAtRU5PRVhFQzsKIAkJZ290
byBmYWlsOwogCX0KLQl1Y19mdy0+cnNhX29mZnNldCA9IHVjX2Z3LT51Y29kZV9vZmZzZXQgKyB1
Y19mdy0+dWNvZGVfc2l6ZTsKKwl1Y19mdy0+cnNhX29mZnNldCA9IHNpemVvZihzdHJ1Y3QgdWNf
Y3NzX2hlYWRlcikgKyB1Y19mdy0+dWNvZGVfc2l6ZTsKIAl1Y19mdy0+cnNhX3NpemUgPSBjc3Mt
PmtleV9zaXplX2R3ICogc2l6ZW9mKHUzMik7CiAKIAkvKiBBdCBsZWFzdCwgaXQgc2hvdWxkIGhh
dmUgaGVhZGVyLCB1Q29kZSBhbmQgUlNBLiBTaXplIG9mIGFsbCB0aHJlZS4gKi8KQEAgLTUzNiw4
ICs1MzUsNyBAQCB2b2lkIGludGVsX3VjX2Z3X2R1bXAoY29uc3Qgc3RydWN0IGludGVsX3VjX2Z3
ICp1Y19mdywgc3RydWN0IGRybV9wcmludGVyICpwKQogCWRybV9wcmludGYocCwgIlx0dmVyc2lv
bjogd2FudGVkICV1LiV1LCBmb3VuZCAldS4ldVxuIiwKIAkJICAgdWNfZnctPm1ham9yX3Zlcl93
YW50ZWQsIHVjX2Z3LT5taW5vcl92ZXJfd2FudGVkLAogCQkgICB1Y19mdy0+bWFqb3JfdmVyX2Zv
dW5kLCB1Y19mdy0+bWlub3JfdmVyX2ZvdW5kKTsKLQlkcm1fcHJpbnRmKHAsICJcdHVDb2RlOiBv
ZmZzZXQgJXUsIHNpemUgJXVcbiIsCi0JCSAgIHVjX2Z3LT51Y29kZV9vZmZzZXQsIHVjX2Z3LT51
Y29kZV9zaXplKTsKKwlkcm1fcHJpbnRmKHAsICJcdHVDb2RlOiAldSBieXRlc1xuIiwgdWNfZnct
PnVjb2RlX3NpemUpOwogCWRybV9wcmludGYocCwgIlx0UlNBOiBvZmZzZXQgJXUsIHNpemUgJXVc
biIsCiAJCSAgIHVjX2Z3LT5yc2Ffb2Zmc2V0LCB1Y19mdy0+cnNhX3NpemUpOwogfQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKaW5kZXggYTgwNDhmOTFmMGRhLi42YTA0
YmM2ZDQxOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
X2Z3LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaApAQCAt
NzcsNyArNzcsNiBAQCBzdHJ1Y3QgaW50ZWxfdWNfZncgewogCXUzMiByc2Ffc2l6ZTsKIAl1MzIg
cnNhX29mZnNldDsKIAl1MzIgdWNvZGVfc2l6ZTsKLQl1MzIgdWNvZGVfb2Zmc2V0OwogfTsKIAog
c3RhdGljIGlubGluZQotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
