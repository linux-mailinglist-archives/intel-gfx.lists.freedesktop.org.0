Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A7428DD0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD516E095;
	Thu, 23 May 2019 23:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E06136E086
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:39 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 23 May 2019 16:31:38 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0k023503; Fri, 24 May 2019 00:31:37 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:40 +0000
Message-Id: <20190523233049.28020-14-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 13/22] drm/i915/guc: New GuC interrupt
 register for Gen11
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

R2VuMTEgZGVmaW5lcyBuZXcgbW9yZSBmbGV4aWJsZSBIb3N0LXRvLUd1QyBpbnRlcnJ1cHQgcmVn
aXN0ZXIuCk5vdyB0aGUgaG9zdCBjYW4gd3JpdGUgYW55IDMyLWJpdCBwYXlsb2FkIHRvIHRyaWdn
ZXIgYW4gaW50ZXJydXB0CmFuZCBHdUMgY2FuIGFkZGl0aW9uYWxseSByZWFkIHRoaXMgcGF5bG9h
ZCBmcm9tIHRoZSByZWdpc3Rlci4KQ3VycmVudCBHdUMgZmlybXdhcmUgaWdub3JlcyB0aGUgcGF5
bG9hZCBzbyB3ZSBqdXN0IHdyaXRlIDAuCgpCc3BlYzogMjEwNDMKClNpZ25lZC1vZmYtYnk6IE1p
Y2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFJvZHJpZ28g
Vml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmMgICAgIHwgMTQgKysrKysrKysrKysrKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaCB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMTQg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d1Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjLmMKaW5k
ZXggNjBlNjQ2M2EzYWFjLi44ODhhMWU5OTljOGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d1Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5j
CkBAIC0zNCw2ICszNCwxMyBAQCBzdGF0aWMgdm9pZCBnZW44X2d1Y19yYWlzZV9pcnEoc3RydWN0
IGludGVsX2d1YyAqZ3VjKQogCUk5MTVfV1JJVEUoR1VDX1NFTkRfSU5URVJSVVBULCBHVUNfU0VO
RF9UUklHR0VSKTsKIH0KIAorc3RhdGljIHZvaWQgZ2VuMTFfZ3VjX3JhaXNlX2lycShzdHJ1Y3Qg
aW50ZWxfZ3VjICpndWMpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
Z3VjX3RvX2k5MTUoZ3VjKTsKKworCUk5MTVfV1JJVEUoR0VOMTFfR1VDX0hPU1RfSU5URVJSVVBU
LCAwKTsKK30KKwogc3RhdGljIGlubGluZSBpOTE1X3JlZ190IGd1Y19zZW5kX3JlZyhzdHJ1Y3Qg
aW50ZWxfZ3VjICpndWMsIHUzMiBpKQogewogCUdFTV9CVUdfT04oIWd1Yy0+c2VuZF9yZWdzLmJh
c2UpOwpAQCAtNjMsNiArNzAsOCBAQCB2b2lkIGludGVsX2d1Y19pbml0X3NlbmRfcmVncyhzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMpCiAKIHZvaWQgaW50ZWxfZ3VjX2luaXRfZWFybHkoc3RydWN0IGlu
dGVsX2d1YyAqZ3VjKQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3VjX3Rv
X2k5MTUoZ3VjKTsKKwogCWludGVsX2d1Y19md19pbml0X2Vhcmx5KGd1Yyk7CiAJaW50ZWxfZ3Vj
X2N0X2luaXRfZWFybHkoJmd1Yy0+Y3QpOwogCWludGVsX2d1Y19sb2dfaW5pdF9lYXJseSgmZ3Vj
LT5sb2cpOwpAQCAtNzEsNyArODAsMTAgQEAgdm9pZCBpbnRlbF9ndWNfaW5pdF9lYXJseShzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMpCiAJc3Bpbl9sb2NrX2luaXQoJmd1Yy0+aXJxX2xvY2spOwogCWd1
Yy0+c2VuZCA9IGludGVsX2d1Y19zZW5kX25vcDsKIAlndWMtPmhhbmRsZXIgPSBpbnRlbF9ndWNf
dG9faG9zdF9ldmVudF9oYW5kbGVyX25vcDsKLQlndWMtPm5vdGlmeSA9IGdlbjhfZ3VjX3JhaXNl
X2lycTsKKwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDExKQorCQlndWMtPm5vdGlmeSA9IGdlbjEx
X2d1Y19yYWlzZV9pcnE7CisJZWxzZQorCQlndWMtPm5vdGlmeSA9IGdlbjhfZ3VjX3JhaXNlX2ly
cTsKIH0KIAogc3RhdGljIGludCBndWNfaW5pdF93cShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmgKaW5kZXggNTdlN2FkNTIyYzJmLi5hZWMwMmVk
ZGJhZWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmgKQEAgLTEwMyw2ICsxMDMs
NyBAQAogCiAjZGVmaW5lIEdVQ19TRU5EX0lOVEVSUlVQVAkJX01NSU8oMHhjNGM4KQogI2RlZmlu
ZSAgIEdVQ19TRU5EX1RSSUdHRVIJCSAgKDE8PDApCisjZGVmaW5lIEdFTjExX0dVQ19IT1NUX0lO
VEVSUlVQVAlfTU1JTygweDE5MDFmMCkKIAogI2RlZmluZSBHVUNfTlVNX0RPT1JCRUxMUwkJMjU2
CiAKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
