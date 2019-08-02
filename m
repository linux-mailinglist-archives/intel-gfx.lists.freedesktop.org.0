Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA08004C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 20:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7165F6EF45;
	Fri,  2 Aug 2019 18:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC8E6EF46
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 18:41:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 11:41:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="324649384"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2019 11:41:07 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x72If4tI012718; Fri, 2 Aug 2019 19:41:06 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 18:40:52 +0000
Message-Id: <20190802184055.31988-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190802184055.31988-1-michal.wajdeczko@intel.com>
References: <20190802184055.31988-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 3/6] drm/i915/uc: Reorder firmware status
 codes
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
LCB3ZSBoaXQ6Cgo8Nz4gWzIzMi4wMjU5MjddIFtkcm06aW50ZWxfdWNfaW5pdF9odyBbaTkxNV1d
IEd1QyBmdyBsb2FkIGZhaWxlZDogLTg7IHdpbGwgcmVzZXQgYW5kIHJldHJ5IDIgbW9yZSB0aW1l
KHMpCjw3PiBbMjMyLjAyNjAwNF0gW2RybTppbnRlbF91Y19md191cGxvYWQgW2k5MTVdXSBIdUMg
ZncgbG9hZCBpOTE1L2tibF9odWNfdmVyMDJfMDBfMTgxMC5iaW4KPDc+IFsyMzIuMDI2Njg2XSBb
ZHJtOmludGVsX3VjX2Z3X3VwbG9hZCBbaTkxNV1dIEh1QyBmdyB4ZmVyIGNvbXBsZXRlZAo8Nj4g
WzIzMi4wMjY2ODhdIFtkcm1dIEh1QzogTG9hZGVkIGZpcm13YXJlIGk5MTUva2JsX2h1Y192ZXIw
Ml8wMF8xODEwLmJpbiAodmVyc2lvbiAyLjApCjwzPiBbMjMyLjAyNjcwM10gaW50ZWxfdWNfZndf
Y29weV9yc2E6NTQxIEdFTV9CVUdfT04oIWludGVsX3VjX2Z3X2lzX2F2YWlsYWJsZSh1Y19mdykp
CgphcyBmaXJtd2FyZSB0aGF0IHByZXZpb3VzbHkgZmFpbGVkIHRvIGxvYWQgd2FzIHdyb25nbHkg
dHJlYXRlZCBhcwp1bmF2YWlsYWJsZSBzaW5jZSBpdHMgc3RhdHVzIGNvZGUgd2FzIG5vdCBtYXRj
aGluZyBzdGF0dXMgY2hlY2sgbG9naWMuCgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtv
IDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8g
PGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF91Y19mdy5oIHwgMTQgKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZncuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
X2Z3LmgKaW5kZXggNmI2NGI4MDczNzAzLi5iZmUzNjE0NjEzYjcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaApAQCAtMzcsMTIgKzM3LDEyIEBAIHN0cnVjdCBpbnRl
bF9ndDsKICNkZWZpbmUgSU5URUxfVUNfRklSTVdBUkVfVVJMICJodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9maXJtd2FyZS9saW51eC1maXJtd2FyZS5naXQv
dHJlZS9pOTE1IgogCiBlbnVtIGludGVsX3VjX2Z3X3N0YXR1cyB7Ci0JSU5URUxfVUNfRklSTVdB
UkVfRkFJTCA9IC0zLCAvKiBmYWlsZWQgdG8geGZlciBvciBpbml0L2F1dGggdGhlIGZ3ICovCi0J
SU5URUxfVUNfRklSTVdBUkVfTUlTU0lORyA9IC0yLCAvKiBibG9iIG5vdCBmb3VuZCBvbiB0aGUg
c3lzdGVtICovCi0JSU5URUxfVUNfRklSTVdBUkVfTk9UX1NVUFBPUlRFRCA9IC0xLCAvKiBubyB1
YyBIVyAqLworCUlOVEVMX1VDX0ZJUk1XQVJFX05PVF9TVVBQT1JURUQgPSAtMSwgLyogbm8gdWMg
SFcgb3IgZGlzYWJsZWQgKi8KIAlJTlRFTF9VQ19GSVJNV0FSRV9VTklOSVRJQUxJWkVEID0gMCwg
LyogdXNlZCB0byBjYXRjaCBjaGVja3MgZG9uZSB0b28gZWFybHkgKi8KIAlJTlRFTF9VQ19GSVJN
V0FSRV9TRUxFQ1RFRCwgLyogc2VsZWN0ZWQgdGhlIGJsb2Igd2Ugd2FudCB0byBsb2FkICovCisJ
SU5URUxfVUNfRklSTVdBUkVfTUlTU0lORywgLyogYmxvYiBub3QgZm91bmQgb24gdGhlIHN5c3Rl
bSAqLwogCUlOVEVMX1VDX0ZJUk1XQVJFX0FWQUlMQUJMRSwgLyogYmxvYiBmb3VuZCBhbmQgY29w
aWVkIGluIG1lbSAqLworCUlOVEVMX1VDX0ZJUk1XQVJFX0ZBSUwsIC8qIGZhaWxlZCB0byB4ZmVy
IG9yIGluaXQvYXV0aCB0aGUgZncgKi8KIAlJTlRFTF9VQ19GSVJNV0FSRV9UUkFOU0ZFUlJFRCwg
LyogZG1hIHhmZXIgZG9uZSAqLwogCUlOVEVMX1VDX0ZJUk1XQVJFX1JVTk5JTkcgLyogaW5pdC9h
dXRoIGRvbmUgKi8KIH07CkBAIC04MywxOCArODMsMTggQEAgc3RhdGljIGlubGluZQogY29uc3Qg
Y2hhciAqaW50ZWxfdWNfZndfc3RhdHVzX3JlcHIoZW51bSBpbnRlbF91Y19md19zdGF0dXMgc3Rh
dHVzKQogewogCXN3aXRjaCAoc3RhdHVzKSB7Ci0JY2FzZSBJTlRFTF9VQ19GSVJNV0FSRV9GQUlM
OgotCQlyZXR1cm4gIkZBSUwiOwotCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfTUlTU0lORzoKLQkJ
cmV0dXJuICJNSVNTSU5HIjsKIAljYXNlIElOVEVMX1VDX0ZJUk1XQVJFX05PVF9TVVBQT1JURUQ6
CiAJCXJldHVybiAiTi9BIjsKIAljYXNlIElOVEVMX1VDX0ZJUk1XQVJFX1VOSU5JVElBTElaRUQ6
CiAJCXJldHVybiAiVU5JTklUSUFMSVpFRCI7CiAJY2FzZSBJTlRFTF9VQ19GSVJNV0FSRV9TRUxF
Q1RFRDoKIAkJcmV0dXJuICJTRUxFQ1RFRCI7CisJY2FzZSBJTlRFTF9VQ19GSVJNV0FSRV9NSVNT
SU5HOgorCQlyZXR1cm4gIk1JU1NJTkciOwogCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfQVZBSUxB
QkxFOgogCQlyZXR1cm4gIkFWQUlMQUJMRSI7CisJY2FzZSBJTlRFTF9VQ19GSVJNV0FSRV9GQUlM
OgorCQlyZXR1cm4gIkZBSUwiOwogCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfVFJBTlNGRVJSRUQ6
CiAJCXJldHVybiAiVFJBTlNGRVJSRUQiOwogCWNhc2UgSU5URUxfVUNfRklSTVdBUkVfUlVOTklO
RzoKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
