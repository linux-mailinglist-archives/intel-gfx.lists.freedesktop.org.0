Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8223D8433
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 01:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 986AA6E8AD;
	Tue, 15 Oct 2019 23:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9966E893
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 23:03:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 16:03:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,301,1566889200"; d="scan'208";a="225590075"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga002.fm.intel.com with ESMTP; 15 Oct 2019 16:03:24 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 16:05:17 -0700
Message-Id: <20191015230519.15022-5-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191015230519.15022-1-manasi.d.navare@intel.com>
References: <20191015230519.15022-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 4/6] drm/i915/display/icl: Enable
 master-slaves in trans port sync
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGVyIHRoZSBkaXNwbGF5IGVuYWJsZSBzZXF1ZW5jZSwgd2UgbmVlZCB0byBmb2xsb3cgdGhl
IGVuYWJsZSBzZXF1ZW5jZQpmb3Igc2xhdmVzIGZpcnN0IHdpdGggRFBfVFBfQ1RMIHNldCB0byBJ
ZGxlIGFuZCBjb25maWd1cmUgdGhlIHRyYW5zY29kZXIKcG9ydCBzeW5jIHJlZ2lzdGVyIHRvIHNl
bGVjdCB0aGUgY29yZXJzcG9uZGluZyBtYXN0ZXIsIHRoZW4gZm9sbG93IHRoZQplbmFibGUgc2Vx
dWVuY2UgZm9yIG1hc3RlciBsZWF2aW5nIERQX1RQX0NUTCB0byBpZGxlLgpBdCB0aGlzIHBvaW50
IHRoZSB0cmFuc2NvZGVyIHBvcnQgc3luYyBtb2RlIGlzIGNvbmZpZ3VyZWQgYW5kIGVuYWJsZWQK
YW5kIHRoZSBWYmxhbmtzIG9mIGJvdGggcG9ydHMgYXJlIHN5bmNocm9uaXplZCBzbyB0aGVuIHNl
dCBEUF9UUF9DVEwKZm9yIHRoZSBzbGF2ZSBhbmQgbWFzdGVyIHRvIE5vcm1hbCBhbmQgZG8gcG9z
dCBjcnRjIGVuYWJsZSB1cGRhdGVzLgoKdjg6CiogUmViYXNlIG9uIE1hYXJ0ZW4ncyBwYXRjaGVz
IChNYW5hc2kpCnY3OgoqIFVzZSBmZnMoc2xhdmVzKSB0byBnZXQgc2xhdmUgY3J0YyAoVmlsbGUp
CnY2OgoqIE1vZGVzZXQgaW1wbGllcyBhY3RpdmVfY2hhbmdlZCwgcmVtb3ZlIG9uZSBjb25kaXRp
b24gKE1hYXJ0ZW4pCnY1OgoqIEZpeCBjaGVja3BhdGNoIHdhcm5pbmcgKE1hbmFzaSkKdjQ6Ciog
UmV1c2Ugc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoKSBob29rIChNYWFydGVuKQoqIE9idGFp
biBzbGF2ZSBjcnRjIGFuZCBzdGF0ZXMgZnJvbSBtYXN0ZXIgKE1hYXJ0ZW4pCnYzOgoqIFJlYmFz
ZSBvbiBkcm0tdGlwIChNYW5hc2kpCnYyOgoqIENyZWF0ZSBhIGljbF91cGRhdGVfY3J0Y3MgaG9v
ayAoTWFhcnRlbiwgRGFudmV0KQoqIFRoaXMgc2VxdWVuY2Ugb25seSBmb3IgQ1JUQ3MgaW4gdHJh
bnMgcG9ydCBzeW5jIG1vZGUgKE1hYXJ0ZW4pCgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAg
fCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MTM2ICsrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oIHwgICAyICsKIDMgZmlsZXMgY2hhbmdlZCwgMTM3IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
aW5kZXggNmMxMzE1YzdiY2RlLi5iOTYwOTE4MDA2NjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzU3MSw3ICszNTcxLDggQEAgc3RhdGljIHZvaWQgaHN3
X2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCQkg
ICAgICB0cnVlKTsKIAlpbnRlbF9kcF9zaW5rX3NldF9mZWNfcmVhZHkoaW50ZWxfZHAsIGNydGNf
c3RhdGUpOwogCWludGVsX2RwX3N0YXJ0X2xpbmtfdHJhaW4oaW50ZWxfZHApOwotCWlmIChwb3J0
ICE9IFBPUlRfQSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpCisJaWYgKChwb3J0ICE9IFBP
UlRfQSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpICYmCisJICAgICFpc190cmFuc19wb3J0
X3N5bmNfbW9kZShjcnRjX3N0YXRlKSkKIAkJaW50ZWxfZHBfc3RvcF9saW5rX3RyYWluKGludGVs
X2RwKTsKIAogCWludGVsX2RkaV9lbmFibGVfZmVjKGVuY29kZXIsIGNydGNfc3RhdGUpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAzZjQwZmEy
ZDgyNzguLmJkZTE0MjYwN2RhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTE0MDA4LDYgKzE0MDA4LDE4IEBAIHN0YXRpYyB2b2lkIGludGVs
X3VwZGF0ZV9jcnRjKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQlpbnRlbF9jcnRjX2FybV9m
aWZvX3VuZGVycnVuKGNydGMsIG5ld19jcnRjX3N0YXRlKTsKIH0KIAorc3RhdGljIHN0cnVjdCBp
bnRlbF9jcnRjICppbnRlbF9nZXRfc2xhdmVfY3J0Yyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqbmV3X2NydGNfc3RhdGUpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShuZXdfY3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5kZXYpOworCWVudW0gdHJh
bnNjb2RlciBzbGF2ZV90cmFuc2NvZGVyOworCisJV0FSTl9PTighaXNfcG93ZXJfb2ZfMihuZXdf
Y3J0Y19zdGF0ZS0+c3luY19tb2RlX3NsYXZlc19tYXNrKSk7CisKKwlzbGF2ZV90cmFuc2NvZGVy
ID0gZmZzKG5ld19jcnRjX3N0YXRlLT5zeW5jX21vZGVfc2xhdmVzX21hc2spIC0gMTsKKwlyZXR1
cm4gaW50ZWxfZ2V0X2NydGNfZm9yX3BpcGUoZGV2X3ByaXYsCisJCQkJICAgICAgIChlbnVtIHBp
cGUpc2xhdmVfdHJhbnNjb2Rlcik7Cit9CisKIHN0YXRpYyB2b2lkIGludGVsX29sZF9jcnRjX3N0
YXRlX2Rpc2FibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJCQkgIHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAkJCQkJICBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUsCkBAIC0xNDA4Niw2ICsxNDA5OCwxMTMgQEAg
c3RhdGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSkKIAl9CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX2NydGNfZW5hYmxl
X3RyYW5zX3BvcnRfc3luYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKKwkJCQkJICAgICAgc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCisJCQkJCSAgICAgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7CisKKwl1cGRhdGVfc2NhbmxpbmVf
b2Zmc2V0KG5ld19jcnRjX3N0YXRlKTsKKwlkZXZfcHJpdi0+ZGlzcGxheS5jcnRjX2VuYWJsZShu
ZXdfY3J0Y19zdGF0ZSwgc3RhdGUpOworCWludGVsX2NydGNfZW5hYmxlX3BpcGVfY3JjKGNydGMp
OworfQorCitzdGF0aWMgdm9pZCBpbnRlbF9zZXRfZHBfdHBfY3RsX25vcm1hbChzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywKKwkJCQkgICAgICAgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCit7CisJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGU7CisJc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm47CisJc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsKKwlpbnQg
aTsKKworCWZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3RhdGUoJnN0YXRlLT5iYXNlLCBjb25u
LCBjb25uX3N0YXRlLCBpKSB7CisJCWlmIChjb25uX3N0YXRlLT5jcnRjID09ICZjcnRjLT5iYXNl
KQorCQkJYnJlYWs7CisJfQorCWludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKCZpbnRlbF9hdHRh
Y2hlZF9lbmNvZGVyKGNvbm4pLT5iYXNlKTsKKwlpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4oaW50
ZWxfZHApOworfQorCitzdGF0aWMgdm9pZCBpbnRlbF9wb3N0X2NydGNfZW5hYmxlX3VwZGF0ZXMo
c3RydWN0IGludGVsX2NydGMgKmNydGMsCisJCQkJCSAgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSA9
CisJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOworCXN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSA9CisJCWludGVsX2F0b21pY19nZXRf
b2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOworCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
bmV3X3BsYW5lX3N0YXRlID0KKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVfc3RhdGUoc3Rh
dGUsCisJCQkJCQkgdG9faW50ZWxfcGxhbmUoY3J0Yy0+YmFzZS5wcmltYXJ5KSk7CisJYm9vbCBt
b2Rlc2V0ID0gbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSk7CisKKwlpZiAobmV3X2NydGNf
c3RhdGUtPnVwZGF0ZV9waXBlICYmICFuZXdfY3J0Y19zdGF0ZS0+ZW5hYmxlX2ZiYykKKwkJaW50
ZWxfZmJjX2Rpc2FibGUoY3J0Yyk7CisJZWxzZSBpZiAobmV3X3BsYW5lX3N0YXRlKQorCQlpbnRl
bF9mYmNfZW5hYmxlKGNydGMsIG5ld19jcnRjX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOworCisJ
LyogUGVyZm9ybSB2YmxhbmsgZXZhc2lvbiBhcm91bmQgY29tbWl0IG9wZXJhdGlvbiAqLworCWlu
dGVsX3BpcGVfdXBkYXRlX3N0YXJ0KG5ld19jcnRjX3N0YXRlKTsKKwljb21taXRfcGlwZV9jb25m
aWcoc3RhdGUsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7CisJc2tsX3VwZGF0ZV9w
bGFuZXNfb25fY3J0YyhzdGF0ZSwgY3J0Yyk7CisJaW50ZWxfcGlwZV91cGRhdGVfZW5kKG5ld19j
cnRjX3N0YXRlKTsKKworCS8qCisJICogV2UgdXN1YWxseSBlbmFibGUgRklGTyB1bmRlcnJ1biBp
bnRlcnJ1cHRzIGFzIHBhcnQgb2YgdGhlCisJICogQ1JUQyBlbmFibGUgc2VxdWVuY2UgZHVyaW5n
IG1vZGVzZXRzLiAgQnV0IHdoZW4gd2UgaW5oZXJpdCBhCisJICogdmFsaWQgcGlwZSBjb25maWd1
cmF0aW9uIGZyb20gdGhlIEJJT1Mgd2UgbmVlZCB0byB0YWtlIGNhcmUKKwkgKiBvZiBlbmFibGlu
ZyB0aGVtIG9uIHRoZSBDUlRDJ3MgZmlyc3QgZmFzdHNldC4KKwkgKi8KKwlpZiAobmV3X2NydGNf
c3RhdGUtPnVwZGF0ZV9waXBlICYmICFtb2Rlc2V0ICYmCisJICAgIG9sZF9jcnRjX3N0YXRlLT5i
YXNlLm1vZGUucHJpdmF0ZV9mbGFncyAmIEk5MTVfTU9ERV9GTEFHX0lOSEVSSVRFRCkKKwkJaW50
ZWxfY3J0Y19hcm1fZmlmb191bmRlcnJ1bihjcnRjLCBuZXdfY3J0Y19zdGF0ZSk7Cit9CisKK3N0
YXRpYyB2b2lkIGludGVsX3VwZGF0ZV90cmFuc19wb3J0X3N5bmNfY3J0Y3Moc3RydWN0IGludGVs
X2NydGMgKmNydGMsCisJCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwKKwkJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwK
KwkJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKK3sK
KwlzdHJ1Y3QgaW50ZWxfY3J0YyAqc2xhdmVfY3J0YyA9IGludGVsX2dldF9zbGF2ZV9jcnRjKG5l
d19jcnRjX3N0YXRlKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X3NsYXZlX2NydGNf
c3RhdGUgPQorCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBzbGF2ZV9j
cnRjKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX3NsYXZlX2NydGNfc3RhdGUgPQor
CQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBzbGF2ZV9jcnRjKTsKKwor
CVdBUk5fT04oIXNsYXZlX2NydGMgfHwgIW5ld19zbGF2ZV9jcnRjX3N0YXRlIHx8CisJCSFvbGRf
c2xhdmVfY3J0Y19zdGF0ZSk7CisKKwlEUk1fREVCVUdfS01TKCJVcGRhdGluZyBUcmFuc2NvZGVy
IFBvcnQgU3luYyBNYXN0ZXIgQ1JUQyA9ICVkICVzIGFuZCBTbGF2ZSBDUlRDICVkICVzXG4iLAor
CQkgICAgICBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgc2xhdmVfY3J0Yy0+
YmFzZS5iYXNlLmlkLAorCQkgICAgICBzbGF2ZV9jcnRjLT5iYXNlLm5hbWUpOworCisJLyogRW5h
YmxlIHNlcSBmb3Igc2xhdmUgd2l0aCB3aXRoIERQX1RQX0NUTCBsZWZ0IElkbGUgdW50aWwgdGhl
CisJICogbWFzdGVyIGlzIHJlYWR5CisJICovCisJaW50ZWxfY3J0Y19lbmFibGVfdHJhbnNfcG9y
dF9zeW5jKHNsYXZlX2NydGMsCisJCQkJCSAgc3RhdGUsCisJCQkJCSAgbmV3X3NsYXZlX2NydGNf
c3RhdGUpOworCisJLyogRW5hYmxlIHNlcSBmb3IgbWFzdGVyIHdpdGggd2l0aCBEUF9UUF9DVEwg
bGVmdCBJZGxlICovCisJaW50ZWxfY3J0Y19lbmFibGVfdHJhbnNfcG9ydF9zeW5jKGNydGMsCisJ
CQkJCSAgc3RhdGUsCisJCQkJCSAgbmV3X2NydGNfc3RhdGUpOworCisJLyogU2V0IFNsYXZlJ3Mg
RFBfVFBfQ1RMIHRvIE5vcm1hbCAqLworCWludGVsX3NldF9kcF90cF9jdGxfbm9ybWFsKHNsYXZl
X2NydGMsCisJCQkJICAgc3RhdGUpOworCisJLyogU2V0IE1hc3RlcidzIERQX1RQX0NUTCBUbyBO
b3JtYWwgKi8KKwl1c2xlZXBfcmFuZ2UoMjAwLCA0MDApOworCWludGVsX3NldF9kcF90cF9jdGxf
bm9ybWFsKGNydGMsCisJCQkJICAgc3RhdGUpOworCisJLyogTm93IGRvIHRoZSBwb3N0IGNydGMg
ZW5hYmxlIGZvciBhbGwgbWFzdGVyIGFuZCBzbGF2ZXMgKi8KKwlpbnRlbF9wb3N0X2NydGNfZW5h
YmxlX3VwZGF0ZXMoc2xhdmVfY3J0YywKKwkJCQkgICAgICAgc3RhdGUpOworCWludGVsX3Bvc3Rf
Y3J0Y19lbmFibGVfdXBkYXRlcyhjcnRjLAorCQkJCSAgICAgICBzdGF0ZSk7Cit9CisKIHN0YXRp
YyB2b2lkIHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoc3RhdGUtPmJhc2UuZGV2KTsKQEAgLTE0MTIwLDYgKzE0MjM5LDcgQEAgc3RhdGljIHZvaWQg
c2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCiAJCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBv
bGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpIHsKIAkJCWJvb2wgdmJsX3dhaXQgPSBm
YWxzZTsKIAkJCXVuc2lnbmVkIGludCBjbWFzayA9IGRybV9jcnRjX21hc2soJmNydGMtPmJhc2Up
OworCQkJYm9vbCBtb2Rlc2V0ID0gbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSk7CiAKIAkJ
CXBpcGUgPSBjcnRjLT5waXBlOwogCkBAIC0xNDE0MiwxMiArMTQyNjIsMjIgQEAgc3RhdGljIHZv
aWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCiAJCQkgKi8KIAkJCWlmICghc2tsX2RkYl9lbnRyeV9lcXVhbCgmbmV3X2NydGNfc3Rh
dGUtPndtLnNrbC5kZGIsCiAJCQkJCQkgJm9sZF9jcnRjX3N0YXRlLT53bS5za2wuZGRiKSAmJgot
CQkJICAgICFuZXdfY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmVfY2hhbmdlZCAmJgorCQkJICAgICFt
b2Rlc2V0ICYmCiAJCQkgICAgc3RhdGUtPndtX3Jlc3VsdHMuZGlydHlfcGlwZXMgIT0gdXBkYXRl
ZCkKIAkJCQl2Ymxfd2FpdCA9IHRydWU7CiAKLQkJCWludGVsX3VwZGF0ZV9jcnRjKGNydGMsIHN0
YXRlLCBvbGRfY3J0Y19zdGF0ZSwKLQkJCQkJICBuZXdfY3J0Y19zdGF0ZSk7CisJCQlpZiAobW9k
ZXNldCAmJiBpc190cmFuc19wb3J0X3N5bmNfbW9kZShuZXdfY3J0Y19zdGF0ZSkpIHsKKwkJCQlp
ZiAoaXNfdHJhbnNfcG9ydF9zeW5jX21hc3RlcihuZXdfY3J0Y19zdGF0ZSkpCisJCQkJCWludGVs
X3VwZGF0ZV90cmFuc19wb3J0X3N5bmNfY3J0Y3MoY3J0YywKKwkJCQkJCQkJCSAgIHN0YXRlLAor
CQkJCQkJCQkJICAgb2xkX2NydGNfc3RhdGUsCisJCQkJCQkJCQkgICBuZXdfY3J0Y19zdGF0ZSk7
CisJCQkJZWxzZQorCQkJCQljb250aW51ZTsKKwkJCX0gZWxzZSB7CisJCQkJaW50ZWxfdXBkYXRl
X2NydGMoY3J0Yywgc3RhdGUsIG9sZF9jcnRjX3N0YXRlLAorCQkJCQkJICBuZXdfY3J0Y19zdGF0
ZSk7CisJCQl9CiAKIAkJCWlmICh2Ymxfd2FpdCkKIAkJCQlpbnRlbF93YWl0X2Zvcl92Ymxhbmso
ZGV2X3ByaXYsIHBpcGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaAppbmRleCA3NjFjNzllZTY2YTUuLmFmYjhlYWIwZDk0MCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTI3LDYgKzI3LDcgQEAKIAog
I2luY2x1ZGUgPGRybS9kcm1fdXRpbC5oPgogI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPgorI2lu
Y2x1ZGUgImludGVsX2RwX2xpbmtfdHJhaW5pbmcuaCIKIAogZW51bSBsaW5rX21fbl9zZXQ7CiBz
dHJ1Y3QgZHBsbDsKQEAgLTU0LDYgKzU1LDcgQEAgc3RydWN0IGludGVsX3BsYW5lOwogc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlOwogc3RydWN0IGludGVsX3JlbWFwcGVkX2luZm87CiBzdHJ1Y3Qg
aW50ZWxfcm90YXRpb25faW5mbzsKK3N0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOwogCiBlbnVtIGk5
MTVfZ3BpbyB7CiAJR1BJT0EsCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
