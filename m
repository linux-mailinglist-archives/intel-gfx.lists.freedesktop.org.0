Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F68116BC4
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 12:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF1C6E39E;
	Mon,  9 Dec 2019 11:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AA76E0F7;
 Mon,  9 Dec 2019 11:08:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 03:08:15 -0800
X-IronPort-AV: E=Sophos;i="5.69,294,1571727600"; d="scan'208";a="202799359"
Received: from jkrzyszt-desk.ger.corp.intel.com (HELO
 jkrzyszt-desk.igk.intel.com) ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 03:08:12 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 12:07:52 +0100
Message-Id: <20191209110752.12610-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t] test/prime_vgem: Examine blitter
 access path
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
Cc: =?UTF-8?q?Micha=C5=82=20Czapli=C5=84ski?= <michal.czaplinski@intel.com>,
 Jari Tahvanainen <jari.tahvanainen@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gZnV0dXJlIGhhcmR3YXJlIHdpdGggbWlzc2luZyBHR1RUIEJBUiB3ZSB3b24ndCBiZSBhYmxl
IHRvIGV4ZXJjaXNlCmRtYS1idWYgYWNjZXNzIHZpYSB0aGF0IHBhdGguICBIb3dldmVyLCBhY2Nl
c3MgdG8gdGhlIGRtYSBzZyBsaXN0CmZlYXR1cmUgZXhwb3NlZCBieSBkbWEtYnVmIGNhbiBzdGls
bCBiZSB0ZXN0ZWQgdGhyb3VnaCBibGl0dGVyLgpVbmZvcnR1bmF0ZWx5IHdlIGRvbid0IGhhdmUg
YW55IGVxdWl2YWxlbnRseSBzaW1wbGUgdGVzdHMgdGhhdCB1c2UKYmxpdHRlci4gIFByb3ZpZGUg
dGhlbS4KClN1Z2dlc3RlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4KU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtA
bGludXguaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci0tLQpBY2NvcmRpbmcgdG8gVHJ5Ym90LCB0aGVzZSBzdWJ0ZXN0cyBhcmUgZmFpbGluZyBv
biBTYW5keWJyaWRnZSAoR2VuNikKYW5kIEhhc3dlbGwgKEc3NSksIGNhbiB5b3UgcGxlYXNlIGFk
dmljZSBob3cgdGhvc2UgcGxhdGZvcm1zIHNob3VsZCBiZQpoYW5kbGVkPwoKVGhhbmtzLApKYW51
c3oKCiB0ZXN0cy9wcmltZV92Z2VtLmMgfCAxODkgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTg5IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS90ZXN0cy9wcmltZV92Z2VtLmMgYi90ZXN0cy9wcmltZV92Z2VtLmMKaW5kZXgg
NjlhZThjOWIuLjdiN2JmMWIwIDEwMDY0NAotLS0gYS90ZXN0cy9wcmltZV92Z2VtLmMKKysrIGIv
dGVzdHMvcHJpbWVfdmdlbS5jCkBAIC0yMyw2ICsyMyw3IEBACiAKICNpbmNsdWRlICJpZ3QuaCIK
ICNpbmNsdWRlICJpZ3RfdmdlbS5oIgorI2luY2x1ZGUgImludGVsX2JhdGNoYnVmZmVyLmgiCiAK
ICNpbmNsdWRlIDxzeXMvaW9jdGwuaD4KICNpbmNsdWRlIDxzeXMvcG9sbC5oPgpAQCAtMTcxLDYg
KzE3Miw3NyBAQCBzdGF0aWMgdm9pZCB0ZXN0X2ZlbmNlX21tYXAoaW50IGk5MTUsIGludCB2Z2Vt
KQogCWNsb3NlKHNsYXZlWzFdKTsKIH0KIAorc3RhdGljIHZvaWQgdGVzdF9mZW5jZV9ibHQoaW50
IGk5MTUsIGludCB2Z2VtKQoreworCXN0cnVjdCB2Z2VtX2JvIHNjcmF0Y2g7CisJdWludDMyX3Qg
cHJpbWU7CisJdWludDMyX3QgKnB0cjsKKwl1aW50MzJfdCBmZW5jZTsKKwlpbnQgZG1hYnVmLCBp
OworCWludCBtYXN0ZXJbMl0sIHNsYXZlWzJdOworCisJaWd0X2Fzc2VydChwaXBlKG1hc3Rlcikg
PT0gMCk7CisJaWd0X2Fzc2VydChwaXBlKHNsYXZlKSA9PSAwKTsKKworCXNjcmF0Y2gud2lkdGgg
PSAxMDI0OworCXNjcmF0Y2guaGVpZ2h0ID0gMTAyNDsKKwlzY3JhdGNoLmJwcCA9IDMyOworCXZn
ZW1fY3JlYXRlKHZnZW0sICZzY3JhdGNoKTsKKworCWRtYWJ1ZiA9IHByaW1lX2hhbmRsZV90b19m
ZCh2Z2VtLCBzY3JhdGNoLmhhbmRsZSk7CisJcHJpbWUgPSBwcmltZV9mZF90b19oYW5kbGUoaTkx
NSwgZG1hYnVmKTsKKwljbG9zZShkbWFidWYpOworCisJaWd0X2ZvcmsoY2hpbGQsIDEpIHsKKwkJ
dWludDMyX3QgbmF0aXZlOworCisJCWNsb3NlKG1hc3RlclswXSk7CisJCWNsb3NlKHNsYXZlWzFd
KTsKKworCQluYXRpdmUgPSBnZW1fY3JlYXRlKGk5MTUsIHNjcmF0Y2guc2l6ZSk7CisKKwkJcHRy
ID0gZ2VtX21tYXBfX3djKGk5MTUsIG5hdGl2ZSwgMCwgc2NyYXRjaC5zaXplLCBQUk9UX1JFQUQp
OworCQlmb3IgKGkgPSAwOyBpIDwgMTAyNDsgaSsrKQorCQkJaWd0X2Fzc2VydF9lcShwdHJbMTAy
NCAqIGldLCAwKTsKKworCQl3cml0ZShtYXN0ZXJbMV0sICZjaGlsZCwgc2l6ZW9mKGNoaWxkKSk7
CisJCXJlYWQoc2xhdmVbMF0sICZjaGlsZCwgc2l6ZW9mKGNoaWxkKSk7CisKKwkJaWd0X2JsaXR0
ZXJfZmFzdF9jb3B5X19yYXcoaTkxNSwgcHJpbWUsIDAsCisJCQkJCSAgIHNjcmF0Y2gud2lkdGgg
KiBzY3JhdGNoLmJwcCAvIDgsCisJCQkJCSAgIEk5MTVfVElMSU5HX05PTkUsIDAsIDAsCisJCQkJ
CSAgIHNjcmF0Y2gud2lkdGgsIHNjcmF0Y2guaGVpZ2h0LAorCQkJCQkgICBzY3JhdGNoLmJwcCwg
bmF0aXZlLCAwLAorCQkJCQkgICBzY3JhdGNoLndpZHRoICogc2NyYXRjaC5icHAgLyA4LAorCQkJ
CQkgICBJOTE1X1RJTElOR19OT05FLCAwLCAwKTsKKwkJZ2VtX3N5bmMoaTkxNSwgbmF0aXZlKTsK
KworCQlmb3IgKGkgPSAwOyBpIDwgMTAyNDsgaSsrKQorCQkJaWd0X2Fzc2VydF9lcShwdHJbMTAy
NCAqIGldLCBpKTsKKworCQltdW5tYXAocHRyLCBzY3JhdGNoLnNpemUpOworCQlnZW1fY2xvc2Uo
aTkxNSwgbmF0aXZlKTsKKwkJZ2VtX2Nsb3NlKGk5MTUsIHByaW1lKTsKKwl9CisKKwljbG9zZSht
YXN0ZXJbMV0pOworCWNsb3NlKHNsYXZlWzBdKTsKKwlyZWFkKG1hc3RlclswXSwgJmksIHNpemVv
ZihpKSk7CisJZmVuY2UgPSB2Z2VtX2ZlbmNlX2F0dGFjaCh2Z2VtLCAmc2NyYXRjaCwgVkdFTV9G
RU5DRV9XUklURSk7CisJd3JpdGUoc2xhdmVbMV0sICZpLCBzaXplb2YoaSkpOworCisJcHRyID0g
dmdlbV9tbWFwKHZnZW0sICZzY3JhdGNoLCBQUk9UX1dSSVRFKTsKKwlmb3IgKGkgPSAwOyBpIDwg
MTAyNDsgaSsrKQorCQlwdHJbMTAyNCAqIGldID0gaTsKKwltdW5tYXAocHRyLCBzY3JhdGNoLnNp
emUpOworCXZnZW1fZmVuY2Vfc2lnbmFsKHZnZW0sIGZlbmNlKTsKKwlnZW1fY2xvc2UodmdlbSwg
c2NyYXRjaC5oYW5kbGUpOworCisJaWd0X3dhaXRjaGlsZHJlbigpOworCWNsb3NlKG1hc3Rlclsw
XSk7CisJY2xvc2Uoc2xhdmVbMV0pOworfQorCiBzdGF0aWMgdm9pZCB0ZXN0X3dyaXRlKGludCB2
Z2VtLCBpbnQgaTkxNSkKIHsKIAlzdHJ1Y3QgdmdlbV9ibyBzY3JhdGNoOwpAQCAtMjM2LDYgKzMw
OCw2MiBAQCBzdGF0aWMgdm9pZCB0ZXN0X2d0dChpbnQgdmdlbSwgaW50IGk5MTUpCiAJZ2VtX2Ns
b3NlKHZnZW0sIHNjcmF0Y2guaGFuZGxlKTsKIH0KIAorc3RhdGljIHZvaWQgdGVzdF9ibHQoaW50
IHZnZW0sIGludCBpOTE1KQoreworCXN0cnVjdCB2Z2VtX2JvIHNjcmF0Y2g7CisJdWludDMyX3Qg
cHJpbWUsIG5hdGl2ZTsKKwl1aW50MzJfdCAqcHRyOworCWludCBkbWFidWYsIGk7CisKKwlzY3Jh
dGNoLndpZHRoID0gMTAyNDsKKwlzY3JhdGNoLmhlaWdodCA9IDEwMjQ7CisJc2NyYXRjaC5icHAg
PSAzMjsKKwl2Z2VtX2NyZWF0ZSh2Z2VtLCAmc2NyYXRjaCk7CisKKwlkbWFidWYgPSBwcmltZV9o
YW5kbGVfdG9fZmQodmdlbSwgc2NyYXRjaC5oYW5kbGUpOworCXByaW1lID0gcHJpbWVfZmRfdG9f
aGFuZGxlKGk5MTUsIGRtYWJ1Zik7CisJY2xvc2UoZG1hYnVmKTsKKworCW5hdGl2ZSA9IGdlbV9j
cmVhdGUoaTkxNSwgc2NyYXRjaC5zaXplKTsKKworCXB0ciA9IGdlbV9tbWFwX193YyhpOTE1LCBu
YXRpdmUsIDAsIHNjcmF0Y2guc2l6ZSwgUFJPVF9XUklURSk7CisJZm9yIChpID0gMDsgaSA8IDEw
MjQ7IGkrKykKKwkJcHRyWzEwMjQgKiBpXSA9IGk7CisJbXVubWFwKHB0ciwgc2NyYXRjaC5zaXpl
KTsKKworCWlndF9ibGl0dGVyX2Zhc3RfY29weV9fcmF3KGk5MTUsCisJCQkJICAgbmF0aXZlLCAw
LCBzY3JhdGNoLndpZHRoICogc2NyYXRjaC5icHAgLyA4LAorCQkJCSAgIEk5MTVfVElMSU5HX05P
TkUsIDAsIDAsCisJCQkJICAgc2NyYXRjaC53aWR0aCwgc2NyYXRjaC5oZWlnaHQsIHNjcmF0Y2gu
YnBwLAorCQkJCSAgIHByaW1lLCAwLCBzY3JhdGNoLndpZHRoICogc2NyYXRjaC5icHAgLyA4LAor
CQkJCSAgIEk5MTVfVElMSU5HX05PTkUsIDAsIDApOworCWdlbV9zeW5jKGk5MTUsIHByaW1lKTsK
KworCXB0ciA9IHZnZW1fbW1hcCh2Z2VtLCAmc2NyYXRjaCwgUFJPVF9SRUFEIHwgUFJPVF9XUklU
RSk7CisJZm9yIChpID0gMDsgaSA8IDEwMjQ7IGkrKykgeworCQlpZ3RfYXNzZXJ0X2VxKHB0clsx
MDI0ICogaV0sIGkpOworCQlwdHJbMTAyNCAqIGldID0gfmk7CisJfQorCW11bm1hcChwdHIsIHNj
cmF0Y2guc2l6ZSk7CisKKwlpZ3RfYmxpdHRlcl9mYXN0X2NvcHlfX3JhdyhpOTE1LAorCQkJCSAg
IHByaW1lLCAwLCBzY3JhdGNoLndpZHRoICogc2NyYXRjaC5icHAgLyA4LAorCQkJCSAgIEk5MTVf
VElMSU5HX05PTkUsIDAsIDAsCisJCQkJICAgc2NyYXRjaC53aWR0aCwgc2NyYXRjaC5oZWlnaHQs
IHNjcmF0Y2guYnBwLAorCQkJCSAgIG5hdGl2ZSwgMCwgc2NyYXRjaC53aWR0aCAqIHNjcmF0Y2gu
YnBwIC8gOCwKKwkJCQkgICBJOTE1X1RJTElOR19OT05FLCAwLCAwKTsKKwlnZW1fc3luYyhpOTE1
LCBuYXRpdmUpOworCisJcHRyID0gZ2VtX21tYXBfX3djKGk5MTUsIG5hdGl2ZSwgMCwgc2NyYXRj
aC5zaXplLCBQUk9UX1JFQUQpOworCWZvciAoaSA9IDA7IGkgPCAxMDI0OyBpKyspCisJCWlndF9h
c3NlcnRfZXEocHRyWzEwMjQgKiBpXSwgfmkpOworCW11bm1hcChwdHIsIHNjcmF0Y2guc2l6ZSk7
CisKKwlnZW1fY2xvc2UoaTkxNSwgbmF0aXZlKTsKKwlnZW1fY2xvc2UoaTkxNSwgcHJpbWUpOwor
CWdlbV9jbG9zZSh2Z2VtLCBzY3JhdGNoLmhhbmRsZSk7Cit9CisKIHN0YXRpYyB2b2lkIHRlc3Rf
c2hyaW5rKGludCB2Z2VtLCBpbnQgaTkxNSkKIHsKIAlzdHJ1Y3QgdmdlbV9ibyBzY3JhdGNoID0g
ewpAQCAtMzE5LDYgKzQ0Nyw1OSBAQCBzdGF0aWMgdm9pZCB0ZXN0X2d0dF9pbnRlcmxlYXZlZChp
bnQgdmdlbSwgaW50IGk5MTUpCiAJZ2VtX2Nsb3NlKHZnZW0sIHNjcmF0Y2guaGFuZGxlKTsKIH0K
IAorc3RhdGljIHZvaWQgdGVzdF9ibHRfaW50ZXJsZWF2ZWQoaW50IHZnZW0sIGludCBpOTE1KQor
eworCXN0cnVjdCB2Z2VtX2JvIHNjcmF0Y2g7CisJdWludDMyX3QgcHJpbWUsIG5hdGl2ZTsKKwl1
aW50MzJfdCAqZm9yZWlnbiwgKmxvY2FsOworCWludCBkbWFidWYsIGk7CisKKwlzY3JhdGNoLndp
ZHRoID0gMTAyNDsKKwlzY3JhdGNoLmhlaWdodCA9IDEwMjQ7CisJc2NyYXRjaC5icHAgPSAzMjsK
Kwl2Z2VtX2NyZWF0ZSh2Z2VtLCAmc2NyYXRjaCk7CisKKwlkbWFidWYgPSBwcmltZV9oYW5kbGVf
dG9fZmQodmdlbSwgc2NyYXRjaC5oYW5kbGUpOworCXByaW1lID0gcHJpbWVfZmRfdG9faGFuZGxl
KGk5MTUsIGRtYWJ1Zik7CisJY2xvc2UoZG1hYnVmKTsKKworCW5hdGl2ZSA9IGdlbV9jcmVhdGUo
aTkxNSwgc2NyYXRjaC5zaXplKTsKKworCWZvcmVpZ24gPSB2Z2VtX21tYXAodmdlbSwgJnNjcmF0
Y2gsIFBST1RfV1JJVEUpOworCWxvY2FsID0gZ2VtX21tYXBfX3djKGk5MTUsIG5hdGl2ZSwgMCwg
c2NyYXRjaC5zaXplLCBQUk9UX1dSSVRFKTsKKworCWZvciAoaSA9IDA7IGkgPCAxMDI0OyBpKysp
IHsKKwkJbG9jYWxbMTAyNCAqIGldID0gaTsKKwkJaWd0X2JsaXR0ZXJfZmFzdF9jb3B5X19yYXco
aTkxNSwgbmF0aXZlLCAwLAorCQkJCQkgICBzY3JhdGNoLndpZHRoICogc2NyYXRjaC5icHAgLyA4
LAorCQkJCQkgICBJOTE1X1RJTElOR19OT05FLCAwLCBpLAorCQkJCQkgICBzY3JhdGNoLndpZHRo
LCAxLCBzY3JhdGNoLmJwcCwKKwkJCQkJICAgcHJpbWUsIDAsCisJCQkJCSAgIHNjcmF0Y2gud2lk
dGggKiBzY3JhdGNoLmJwcCAvIDgsCisJCQkJCSAgIEk5MTVfVElMSU5HX05PTkUsIDAsIGkpOwor
CQlnZW1fc3luYyhpOTE1LCBwcmltZSk7CisJCWlndF9hc3NlcnRfZXEoZm9yZWlnblsxMDI0ICog
aV0sIGkpOworCisJCWZvcmVpZ25bMTAyNCAqIGldID0gfmk7CisJCWlndF9ibGl0dGVyX2Zhc3Rf
Y29weV9fcmF3KGk5MTUsIHByaW1lLCAwLAorCQkJCQkgICBzY3JhdGNoLndpZHRoICogc2NyYXRj
aC5icHAgLyA4LAorCQkJCQkgICBJOTE1X1RJTElOR19OT05FLCAwLCBpLAorCQkJCQkgICBzY3Jh
dGNoLndpZHRoLCAxLCBzY3JhdGNoLmJwcCwKKwkJCQkJICAgbmF0aXZlLCAwLAorCQkJCQkgICBz
Y3JhdGNoLndpZHRoICogc2NyYXRjaC5icHAgLyA4LAorCQkJCQkgICBJOTE1X1RJTElOR19OT05F
LCAwLCBpKTsKKwkJZ2VtX3N5bmMoaTkxNSwgbmF0aXZlKTsKKwkJaWd0X2Fzc2VydF9lcShsb2Nh
bFsxMDI0ICogaV0sIH5pKTsKKwl9CisKKwltdW5tYXAobG9jYWwsIHNjcmF0Y2guc2l6ZSk7CisJ
bXVubWFwKGZvcmVpZ24sIHNjcmF0Y2guc2l6ZSk7CisKKwlnZW1fY2xvc2UoaTkxNSwgbmF0aXZl
KTsKKwlnZW1fY2xvc2UoaTkxNSwgcHJpbWUpOworCWdlbV9jbG9zZSh2Z2VtLCBzY3JhdGNoLmhh
bmRsZSk7Cit9CisKIHN0YXRpYyBib29sIHByaW1lX2J1c3koaW50IGZkLCBib29sIGV4Y2wpCiB7
CiAJc3RydWN0IHBvbGxmZCBwZmQgPSB7IC5mZCA9IGZkLCAuZXZlbnRzID0gZXhjbCA/IFBPTExP
VVQgOiBQT0xMSU4gfTsKQEAgLTgzNCwxMiArMTAxNSwxOCBAQCBpZ3RfbWFpbgogCWlndF9zdWJ0
ZXN0KCJiYXNpYy1ndHQiKQogCQl0ZXN0X2d0dCh2Z2VtLCBpOTE1KTsKIAorCWlndF9zdWJ0ZXN0
KCJiYXNpYy1ibHQiKQorCQl0ZXN0X2JsdCh2Z2VtLCBpOTE1KTsKKwogCWlndF9zdWJ0ZXN0KCJz
aHJpbmsiKQogCQl0ZXN0X3Nocmluayh2Z2VtLCBpOTE1KTsKIAogCWlndF9zdWJ0ZXN0KCJjb2hl
cmVuY3ktZ3R0IikKIAkJdGVzdF9ndHRfaW50ZXJsZWF2ZWQodmdlbSwgaTkxNSk7CiAKKwlpZ3Rf
c3VidGVzdCgiY29oZXJlbmN5LWJsdCIpCisJCXRlc3RfYmx0X2ludGVybGVhdmVkKHZnZW0sIGk5
MTUpOworCiAJZm9yIChlID0gaW50ZWxfZXhlY3V0aW9uX2VuZ2luZXM7IGUtPm5hbWU7IGUrKykg
ewogCQlpZ3Rfc3VidGVzdF9mKCIlc3N5bmMtJXMiLAogCQkJICAgICAgZS0+ZXhlY19pZCA9PSAw
ID8gImJhc2ljLSIgOiAiIiwKQEAgLTg4Niw2ICsxMDczLDggQEAgaWd0X21haW4KIAkJCXRlc3Rf
ZmVuY2VfcmVhZChpOTE1LCB2Z2VtKTsKIAkJaWd0X3N1YnRlc3QoImJhc2ljLWZlbmNlLW1tYXAi
KQogCQkJdGVzdF9mZW5jZV9tbWFwKGk5MTUsIHZnZW0pOworCQlpZ3Rfc3VidGVzdCgiYmFzaWMt
ZmVuY2UtYmx0IikKKwkJCXRlc3RfZmVuY2VfYmx0KGk5MTUsIHZnZW0pOwogCiAJCWZvciAoZSA9
IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzOyBlLT5uYW1lOyBlKyspIHsKIAkJCWlndF9zdWJ0ZXN0
X2YoIiVzZmVuY2Utd2FpdC0lcyIsCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
