Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D02E080C41
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Aug 2019 21:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E112E89E03;
	Sun,  4 Aug 2019 19:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C66E89E03
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Aug 2019 19:51:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Aug 2019 12:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,347,1559545200"; d="scan'208";a="185118790"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 04 Aug 2019 12:51:01 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.143])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x74JovTR026070; Sun, 4 Aug 2019 20:51:00 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  4 Aug 2019 19:50:52 +0000
Message-Id: <20190804195052.31140-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190804195052.31140-1-michal.wajdeczko@intel.com>
References: <20190804195052.31140-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/uc: Don't fail on HuC early init
 errors
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

U2luY2UgY29tbWl0IDMwMWVmZTk2Zjc3NyAoImRybS9pOTE1L3VjOiBEb24ndCBmYWlsIG9uIEh1
QwpmaXJtd2FyZSBmYWlsdXJlIikgd2UgY2FuIGNvbnRpbnVlIGRyaXZlciBsb2FkIGFmdGVyIGVy
cm9yCmR1cmluZyBIdUMgZmlybXdhcmUgbG9hZCBvciBhdXRoZW50aWNhdGlvbiwgYnV0IHdlIGNv
dWxkCnN0aWxsIGZhaWwgb24gYW55IGVycm9yIGR1cmluZyBlYXJseSBIdUMgaW5pdGlhbGl6YXRp
b24uCkNoYW5nZSB0aGF0IGJ5IGlnbm9yaW5nIEh1QyByZWxhdGVkIGVycm9ycyB1bnRpbCBoYXJk
d2FyZQppbml0aWFsaXphdGlvbiBwaGFzZSB3aGVyZSB3ZSBjYW4gZGVjaWRlIGFib3V0IG5leHQg
c3RlcHMuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtv
QGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYyB8IDcgKysrKysr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgfCA4ICsrKystLS0tCiAy
IGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYwppbmRleCA2NmIyZDVmZGIzMTcuLmZhYWY4YWQ1
YmE4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMKQEAgLTUyLDYgKzUy
LDExIEBAIHN0YXRpYyBpbnQgaW50ZWxfaHVjX3JzYV9kYXRhX2NyZWF0ZShzdHJ1Y3QgaW50ZWxf
aHVjICpodWMpCiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CiAJc2l6ZV90IGNvcGllZDsKIAl2b2lk
ICp2YWRkcjsKKwlpbnQgZXJyOworCisJZXJyID0gaTkxNV9pbmplY3RfbG9hZF9lcnJvcihndC0+
aTkxNSwgLUVOWElPKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwogCiAJLyoKIAkgKiBIdUMg
ZmlybXdhcmUgd2lsbCBzaXQgYWJvdmUgR1VDX0dHVFRfVE9QIGFuZCB3aWxsIG5vdCBtYXAKQEAg
LTExNSw4ICsxMjAsOCBAQCBpbnQgaW50ZWxfaHVjX2luaXQoc3RydWN0IGludGVsX2h1YyAqaHVj
KQogCiB2b2lkIGludGVsX2h1Y19maW5pKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIHsKLQlpbnRl
bF91Y19md19maW5pKCZodWMtPmZ3KTsKIAlpbnRlbF9odWNfcnNhX2RhdGFfZGVzdHJveShodWMp
OworCWludGVsX3VjX2Z3X2ZpbmkoJmh1Yy0+ZncpOwogfQogCiAvKioKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IDFkZGQyNTI0MTllYy4uZTg3Yjc5MDRhYjdhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTMxNiwxNCArMzE2LDE0IEBAIGlu
dCBpbnRlbF91Y19pbml0KHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJaWYgKGludGVsX3VjX3N1cHBv
cnRzX2h1Yyh1YykpIHsKIAkJcmV0ID0gaW50ZWxfaHVjX2luaXQoaHVjKTsKIAkJaWYgKHJldCkK
LQkJCWdvdG8gZXJyX2d1YzsKKwkJCWdvdG8gb3V0X2h1YzsKIAl9CiAKIAlyZXR1cm4gMDsKIAot
ZXJyX2d1YzoKLQlpbnRlbF9ndWNfZmluaShndWMpOwotCXJldHVybiByZXQ7CitvdXRfaHVjOgor
CWludGVsX3VjX2Z3X2NsZWFudXBfZmV0Y2goJmh1Yy0+ZncpOworCXJldHVybiAwOwogfQogCiB2
b2lkIGludGVsX3VjX2Zpbmkoc3RydWN0IGludGVsX3VjICp1YykKLS0gCjIuMTkuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
