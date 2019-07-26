Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F149676E5F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 17:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B8316EDB1;
	Fri, 26 Jul 2019 15:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 894A36EDB2
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 15:58:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 08:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="181910439"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 26 Jul 2019 08:58:38 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6QFwa8M030808; Fri, 26 Jul 2019 16:58:37 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jul 2019 15:58:04 +0000
Message-Id: <20190726155805.2736-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190726155805.2736-1-michal.wajdeczko@intel.com>
References: <20190726155805.2736-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/uc: Remove redundant ucode offset
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
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jIHwgOCArKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuaCB8IDEgLQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKaW5kZXgg
NjZiZGEwYzUxNGEzLi4wNTA3OWM1OWFlMDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWNfZncuYwpAQCAtMjI5LDcgKzIyOSw2IEBAIHZvaWQgaW50ZWxfdWNfZndfZmV0Y2go
c3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CiAJfQogCiAJLyogRmlybXdhcmUgYmxvYiBhbHdheXMgc3RhcnRzIHdpdGggdGhlIGhlYWRlciwg
dGhlbiB1Q29kZSAqLwotCXVjX2Z3LT51Y29kZV9vZmZzZXQgPSBzaXplb2Yoc3RydWN0IHVjX2Nz
c19oZWFkZXIpOwogCXVjX2Z3LT51Y29kZV9zaXplID0gKGNzcy0+c2l6ZV9kdyAtIGNzcy0+aGVh
ZGVyX3NpemVfZHcpICogc2l6ZW9mKHUzMik7CiAKIAkvKiBub3cgUlNBICovCkBAIC0yMzksNyAr
MjM4LDcgQEAgdm9pZCBpbnRlbF91Y19md19mZXRjaChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3
LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJZXJyID0gLUVOT0VYRUM7CiAJCWdv
dG8gZmFpbDsKIAl9Ci0JdWNfZnctPnJzYV9vZmZzZXQgPSB1Y19mdy0+dWNvZGVfb2Zmc2V0ICsg
dWNfZnctPnVjb2RlX3NpemU7CisJdWNfZnctPnJzYV9vZmZzZXQgPSBzaXplb2Yoc3RydWN0IHVj
X2Nzc19oZWFkZXIpICsgdWNfZnctPnVjb2RlX3NpemU7CiAJdWNfZnctPnJzYV9zaXplID0gY3Nz
LT5rZXlfc2l6ZV9kdyAqIHNpemVvZih1MzIpOwogCiAJLyogQXQgbGVhc3QsIGl0IHNob3VsZCBo
YXZlIGhlYWRlciwgdUNvZGUgYW5kIFJTQS4gU2l6ZSBvZiBhbGwgdGhyZWUuICovCkBAIC0zODIs
NyArMzgxLDcgQEAgc3RhdGljIGludCB1Y19md194ZmVyKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNf
ZncsIHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJICogdmlhIERNQSwgZXhjbHVkaW5nIGFueSBvdGhl
ciBjb21wb25lbnRzCiAJICovCiAJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgRE1BX0NP
UFlfU0laRSwKLQkJCSAgICAgIHVjX2Z3LT51Y29kZV9vZmZzZXQgKyB1Y19mdy0+dWNvZGVfc2l6
ZSk7CisJCQkgICAgICBzaXplb2Yoc3RydWN0IHVjX2Nzc19oZWFkZXIpICsgdWNfZnctPnVjb2Rl
X3NpemUpOwogCiAJLyogU3RhcnQgdGhlIERNQSAqLwogCWludGVsX3VuY29yZV93cml0ZV9mdyh1
bmNvcmUsIERNQV9DVFJMLApAQCAtNTM2LDggKzUzNSw3IEBAIHZvaWQgaW50ZWxfdWNfZndfZHVt
cChjb25zdCBzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnAp
CiAJZHJtX3ByaW50ZihwLCAiXHR2ZXJzaW9uOiB3YW50ZWQgJXUuJXUsIGZvdW5kICV1LiV1XG4i
LAogCQkgICB1Y19mdy0+bWFqb3JfdmVyX3dhbnRlZCwgdWNfZnctPm1pbm9yX3Zlcl93YW50ZWQs
CiAJCSAgIHVjX2Z3LT5tYWpvcl92ZXJfZm91bmQsIHVjX2Z3LT5taW5vcl92ZXJfZm91bmQpOwot
CWRybV9wcmludGYocCwgIlx0dUNvZGU6IG9mZnNldCAldSwgc2l6ZSAldVxuIiwKLQkJICAgdWNf
ZnctPnVjb2RlX29mZnNldCwgdWNfZnctPnVjb2RlX3NpemUpOworCWRybV9wcmludGYocCwgIlx0
dUNvZGU6ICV1IGJ5dGVzXG4iLCB1Y19mdy0+dWNvZGVfc2l6ZSk7CiAJZHJtX3ByaW50ZihwLCAi
XHRSU0E6IG9mZnNldCAldSwgc2l6ZSAldVxuIiwKIAkJICAgdWNfZnctPnJzYV9vZmZzZXQsIHVj
X2Z3LT5yc2Ffc2l6ZSk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncu
aAppbmRleCBhODA0OGY5MWYwZGEuLjZhMDRiYzZkNDE5ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Y19mdy5oCkBAIC03Nyw3ICs3Nyw2IEBAIHN0cnVjdCBpbnRlbF91Y19m
dyB7CiAJdTMyIHJzYV9zaXplOwogCXUzMiByc2Ffb2Zmc2V0OwogCXUzMiB1Y29kZV9zaXplOwot
CXUzMiB1Y29kZV9vZmZzZXQ7CiB9OwogCiBzdGF0aWMgaW5saW5lCi0tIAoyLjE5LjIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
