Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E783D6750
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 21:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C451272B4D;
	Mon, 26 Jul 2021 19:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6C96FE1C;
 Mon, 26 Jul 2021 19:08:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="234162083"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="234162083"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 12:08:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="566278129"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2021 12:08:34 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 12:07:47 -0700
Message-Id: <20210726190800.26762-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
References: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/15] drm/i915/guc/slpc: Initial definitions
 for SLPC
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIG1hY3JvcyB0byBjaGVjayBmb3IgU0xQQyBzdXBwb3J0LiBUaGlzIGZlYXR1cmUgaXMgY3Vy
cmVudGx5IHN1cHBvcnRlZApmb3IgR2VuMTIrIGFuZCBlbmFibGVkIHdoZW5ldmVyIEd1QyBzdWJt
aXNzaW9uIGlzIGVuYWJsZWQvc2VsZWN0ZWQuCgpJbmNsdWRlIHRlbXBsYXRlcyBmb3IgU0xQQyBp
bml0L2ZpbmkgYW5kIGVuYWJsZS4KCnYyOiBNb3ZlIFNMUEMgaGVscGVyIGZ1bmN0aW9ucyB0byBp
bnRlbF9ndWNfc2xwYy5jLy5oLiBEZWZpbmUgYmFzaWMKdGVtcGxhdGUgZm9yIFNMUEMgc3RydWN0
dXJlIGluIGludGVsX2d1Y19zbHBjX3R5cGVzLmguIEZpeCBjb3B5cmlnaHQgKE1pY2hhbCBXKQoK
djM6IFJldmlldyBjb21tZW50cyAoTWljaGFsIFcpCgpTaWduZWQtb2ZmLWJ5OiBWaW5heSBCZWxn
YXVta2FyIDx2aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU3VuZGFy
ZXNhbiBTdWphcml0aGEgPHN1amFyaXRoYS5zdW5kYXJlc2FuQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KCmRybS9pOTE1L2d1Yy9zbHBjOiBMYXkgb3V0IHNscGMgaW5pdC9lbmFibGUvZmluaQoK
RGVjbGFyZSBpbml0L2ZpbmkgYW5kIGVuYWJsZSBmdW5jdGlvbiB0ZW1wbGF0ZXMuCgp2MjogUmVi
YXNlCgpTaWduZWQtb2ZmLWJ5OiBWaW5heSBCZWxnYXVta2FyIDx2aW5heS5iZWxnYXVta2FyQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogU3VuZGFyZXNhbiBTdWphcml0aGEgPHN1amFyaXRoYS5z
dW5kYXJlc2FuQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAg
ICAgICAgICAgICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWMuYyAgICAgICAgfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMu
aCAgICAgICAgfCAgNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3Ns
cGMuYyAgIHwgNDUgKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjX3NscGMuaCAgIHwgMzMgKysrKysrKysrKysrKysKIC4uLi9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX3NscGNfdHlwZXMuaCB8IDEyICsrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jICAgICAgICAgfCAgNiArKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjLmggICAgICAgICB8ICAyICsKIDggZmlsZXMgY2hhbmdlZCwg
MTAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3NscGMuYwogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjLmgKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc2xwY190eXBl
cy5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZQppbmRleCBhYjc2Nzk5NTc2MjMuLmQ4ZWFjNDQ2OGRmOSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUKQEAgLTE4Niw2ICsxODYsNyBAQCBpOTE1LXkgKz0gZ3QvdWMv
aW50ZWxfdWMubyBcCiAJICBndC91Yy9pbnRlbF9ndWNfZncubyBcCiAJICBndC91Yy9pbnRlbF9n
dWNfbG9nLm8gXAogCSAgZ3QvdWMvaW50ZWxfZ3VjX2xvZ19kZWJ1Z2ZzLm8gXAorCSAgZ3QvdWMv
aW50ZWxfZ3VjX3NscGMubyBcCiAJICBndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5vIFwKIAkg
IGd0L3VjL2ludGVsX2h1Yy5vIFwKIAkgIGd0L3VjL2ludGVsX2h1Y19kZWJ1Z2ZzLm8gXApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwppbmRleCA5NzkxMjhlMjgzNzIuLjM5YmMz
YzE2MDU3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3Vj
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKQEAgLTcsNiAr
Nyw3IEBACiAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfaXJxLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxf
Z3RfcG1faXJxLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3VjLmgiCisjaW5jbHVkZSAiaW50ZWxfZ3Vj
X3NscGMuaCIKICNpbmNsdWRlICJpbnRlbF9ndWNfYWRzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3Vj
X3N1Ym1pc3Npb24uaCIKICNpbmNsdWRlICJpOTE1X2Rydi5oIgpAQCAtMTU3LDYgKzE1OCw3IEBA
IHZvaWQgaW50ZWxfZ3VjX2luaXRfZWFybHkoc3RydWN0IGludGVsX2d1YyAqZ3VjKQogCWludGVs
X2d1Y19jdF9pbml0X2Vhcmx5KCZndWMtPmN0KTsKIAlpbnRlbF9ndWNfbG9nX2luaXRfZWFybHko
Jmd1Yy0+bG9nKTsKIAlpbnRlbF9ndWNfc3VibWlzc2lvbl9pbml0X2Vhcmx5KGd1Yyk7CisJaW50
ZWxfZ3VjX3NscGNfaW5pdF9lYXJseSgmZ3VjLT5zbHBjKTsKIAogCW11dGV4X2luaXQoJmd1Yy0+
c2VuZF9tdXRleCk7CiAJc3Bpbl9sb2NrX2luaXQoJmd1Yy0+aXJxX2xvY2spOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaAppbmRleCBhOTU0NzA2OWVlN2UuLjE1YWQyZWFlZTQ3
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgKQEAgLTE1LDYgKzE1LDcg
QEAKICNpbmNsdWRlICJpbnRlbF9ndWNfY3QuaCIKICNpbmNsdWRlICJpbnRlbF9ndWNfbG9nLmgi
CiAjaW5jbHVkZSAiaW50ZWxfZ3VjX3JlZy5oIgorI2luY2x1ZGUgImludGVsX2d1Y19zbHBjX3R5
cGVzLmgiCiAjaW5jbHVkZSAiaW50ZWxfdWNfZncuaCIKICNpbmNsdWRlICJpOTE1X3V0aWxzLmgi
CiAjaW5jbHVkZSAiaTkxNV92bWEuaCIKQEAgLTMwLDYgKzMxLDcgQEAgc3RydWN0IGludGVsX2d1
YyB7CiAJc3RydWN0IGludGVsX3VjX2Z3IGZ3OwogCXN0cnVjdCBpbnRlbF9ndWNfbG9nIGxvZzsK
IAlzdHJ1Y3QgaW50ZWxfZ3VjX2N0IGN0OworCXN0cnVjdCBpbnRlbF9ndWNfc2xwYyBzbHBjOwog
CiAJLyogR2xvYmFsIGVuZ2luZSB1c2VkIHRvIHN1Ym1pdCByZXF1ZXN0cyB0byBHdUMgKi8KIAlz
dHJ1Y3QgaTkxNV9zY2hlZF9lbmdpbmUgKnNjaGVkX2VuZ2luZTsKQEAgLTU3LDYgKzU5LDggQEAg
c3RydWN0IGludGVsX2d1YyB7CiAKIAlib29sIHN1Ym1pc3Npb25fc3VwcG9ydGVkOwogCWJvb2wg
c3VibWlzc2lvbl9zZWxlY3RlZDsKKwlib29sIHNscGNfc3VwcG9ydGVkOworCWJvb2wgc2xwY19z
ZWxlY3RlZDsKIAogCXN0cnVjdCBpOTE1X3ZtYSAqYWRzX3ZtYTsKIAlzdHJ1Y3QgX19ndWNfYWRz
X2Jsb2IgKmFkc19ibG9iOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX3NscGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19z
bHBjLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi43Mjc1MTAwZWY4
ZjgKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfc2xwYy5jCkBAIC0wLDAgKzEsNDUgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBN
SVQKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAyMSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNp
bmNsdWRlICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImludGVsX2d1Y19zbHBjLmgiCisjaW5jbHVk
ZSAiZ3QvaW50ZWxfZ3QuaCIKKworc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfZ3VjICpzbHBj
X3RvX2d1YyhzdHJ1Y3QgaW50ZWxfZ3VjX3NscGMgKnNscGMpCit7CisJcmV0dXJuIGNvbnRhaW5l
cl9vZihzbHBjLCBzdHJ1Y3QgaW50ZWxfZ3VjLCBzbHBjKTsKK30KKworc3RhdGljIGJvb2wgX19k
ZXRlY3Rfc2xwY19zdXBwb3J0ZWQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQoreworCS8qIEd1QyBT
TFBDIGlzIHVuYXZhaWxhYmxlIGZvciBwcmUtR2VuMTIgKi8KKwlyZXR1cm4gZ3VjLT5zdWJtaXNz
aW9uX3N1cHBvcnRlZCAmJgorCQlHUkFQSElDU19WRVIoZ3VjX3RvX2d0KGd1YyktPmk5MTUpID49
IDEyOworfQorCitzdGF0aWMgYm9vbCBfX2d1Y19zbHBjX3NlbGVjdGVkKHN0cnVjdCBpbnRlbF9n
dWMgKmd1YykKK3sKKwlpZiAoIWludGVsX2d1Y19zbHBjX2lzX3N1cHBvcnRlZChndWMpKQorCQly
ZXR1cm4gZmFsc2U7CisKKwlyZXR1cm4gZ3VjLT5zdWJtaXNzaW9uX3NlbGVjdGVkOworfQorCit2
b2lkIGludGVsX2d1Y19zbHBjX2luaXRfZWFybHkoc3RydWN0IGludGVsX2d1Y19zbHBjICpzbHBj
KQoreworCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9IHNscGNfdG9fZ3VjKHNscGMpOworCisJZ3Vj
LT5zbHBjX3N1cHBvcnRlZCA9IF9fZGV0ZWN0X3NscGNfc3VwcG9ydGVkKGd1Yyk7CisJZ3VjLT5z
bHBjX3NlbGVjdGVkID0gX19ndWNfc2xwY19zZWxlY3RlZChndWMpOworfQorCitpbnQgaW50ZWxf
Z3VjX3NscGNfaW5pdChzdHJ1Y3QgaW50ZWxfZ3VjX3NscGMgKnNscGMpCit7CisJcmV0dXJuIDA7
Cit9CisKK3ZvaWQgaW50ZWxfZ3VjX3NscGNfZmluaShzdHJ1Y3QgaW50ZWxfZ3VjX3NscGMgKnNs
cGMpCit7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfc2xwYy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3NscGMuaApu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmMzYjBhZDdmMGY5MwotLS0g
L2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBj
LmgKQEAgLTAsMCArMSwzMyBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwor
LyoKKyAqIENvcHlyaWdodCDCqSAyMDIxIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRl
ZiBfSU5URUxfR1VDX1NMUENfSF8KKyNkZWZpbmUgX0lOVEVMX0dVQ19TTFBDX0hfCisKKyNpbmNs
dWRlICJpbnRlbF9ndWNfc3VibWlzc2lvbi5oIgorI2luY2x1ZGUgImludGVsX2d1Y19zbHBjX3R5
cGVzLmgiCisKK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndWNfc2xwY19pc19zdXBwb3J0ZWQo
c3RydWN0IGludGVsX2d1YyAqZ3VjKQoreworCXJldHVybiBndWMtPnNscGNfc3VwcG9ydGVkOwor
fQorCitzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX3NscGNfaXNfd2FudGVkKHN0cnVjdCBp
bnRlbF9ndWMgKmd1YykKK3sKKwlyZXR1cm4gZ3VjLT5zbHBjX3NlbGVjdGVkOworfQorCitzdGF0
aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX3NscGNfaXNfdXNlZChzdHJ1Y3QgaW50ZWxfZ3VjICpn
dWMpCit7CisJcmV0dXJuIGludGVsX2d1Y19zdWJtaXNzaW9uX2lzX3VzZWQoZ3VjKSAmJiBpbnRl
bF9ndWNfc2xwY19pc193YW50ZWQoZ3VjKTsKK30KKwordm9pZCBpbnRlbF9ndWNfc2xwY19pbml0
X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndWNfc2xwYyAqc2xwYyk7CisKK2ludCBpbnRlbF9ndWNfc2xw
Y19pbml0KHN0cnVjdCBpbnRlbF9ndWNfc2xwYyAqc2xwYyk7CitpbnQgaW50ZWxfZ3VjX3NscGNf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9ndWNfc2xwYyAqc2xwYyk7Cit2b2lkIGludGVsX2d1Y19zbHBj
X2Zpbmkoc3RydWN0IGludGVsX2d1Y19zbHBjICpzbHBjKTsKKworI2VuZGlmCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc2xwY190eXBlcy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3NscGNfdHlwZXMuaApuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmJmZTRhN2Y5Y2UxNQotLS0gL2Rldi9udWxs
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjX3R5cGVzLmgK
QEAgLTAsMCArMSwxMiBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoK
KyAqIENvcHlyaWdodCDCqSAyMDIxIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBf
SU5URUxfR1VDX1NMUENfVFlQRVNfSF8KKyNkZWZpbmUgX0lOVEVMX0dVQ19TTFBDX1RZUEVTX0hf
CisKK3N0cnVjdCBpbnRlbF9ndWNfc2xwYyB7Cit9OworCisjZW5kaWYKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IGRhNTdkMThkOWY2Yi4uZTZiZDk0MDZjN2IyIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTc1LDE2ICs3NSwxOCBAQCBzdGF0
aWMgdm9pZCBfX2NvbmZpcm1fb3B0aW9ucyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gdWNfdG9fZ3QodWMpLT5pOTE1OwogCiAJZHJtX2RiZygm
aTkxNS0+ZHJtLAotCQkiZW5hYmxlX2d1Yz0lZCAoZ3VjOiVzIHN1Ym1pc3Npb246JXMgaHVjOiVz
KVxuIiwKKwkJImVuYWJsZV9ndWM9JWQgKGd1YzolcyBzdWJtaXNzaW9uOiVzIGh1YzolcyBzbHBj
OiVzKVxuIiwKIAkJaTkxNS0+cGFyYW1zLmVuYWJsZV9ndWMsCiAJCXllc25vKGludGVsX3VjX3dh
bnRzX2d1Yyh1YykpLAogCQl5ZXNubyhpbnRlbF91Y193YW50c19ndWNfc3VibWlzc2lvbih1Yykp
LAotCQl5ZXNubyhpbnRlbF91Y193YW50c19odWModWMpKSk7CisJCXllc25vKGludGVsX3VjX3dh
bnRzX2h1Yyh1YykpLAorCQl5ZXNubyhpbnRlbF91Y193YW50c19ndWNfc2xwYyh1YykpKTsKIAog
CWlmIChpOTE1LT5wYXJhbXMuZW5hYmxlX2d1YyA9PSAwKSB7CiAJCUdFTV9CVUdfT04oaW50ZWxf
dWNfd2FudHNfZ3VjKHVjKSk7CiAJCUdFTV9CVUdfT04oaW50ZWxfdWNfd2FudHNfZ3VjX3N1Ym1p
c3Npb24odWMpKTsKIAkJR0VNX0JVR19PTihpbnRlbF91Y193YW50c19odWModWMpKTsKKwkJR0VN
X0JVR19PTihpbnRlbF91Y193YW50c19ndWNfc2xwYyh1YykpOwogCQlyZXR1cm47CiAJfQogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaAppbmRleCBlMmRhMmI2ZTc2ZTEuLjkyNWE1
OGNhNmI5NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oCkBAIC04LDYgKzgs
NyBAQAogCiAjaW5jbHVkZSAiaW50ZWxfZ3VjLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3VjX3N1Ym1p
c3Npb24uaCIKKyNpbmNsdWRlICJpbnRlbF9ndWNfc2xwYy5oIgogI2luY2x1ZGUgImludGVsX2h1
Yy5oIgogI2luY2x1ZGUgImk5MTVfcGFyYW1zLmgiCiAKQEAgLTgzLDYgKzg0LDcgQEAgX191Y19z
dGF0ZV9jaGVja2VyKHgsIGZ1bmMsIHVzZXMsIHVzZWQpCiB1Y19zdGF0ZV9jaGVja2VycyhndWMs
IGd1Yyk7CiB1Y19zdGF0ZV9jaGVja2VycyhodWMsIGh1Yyk7CiB1Y19zdGF0ZV9jaGVja2Vycyhn
dWMsIGd1Y19zdWJtaXNzaW9uKTsKK3VjX3N0YXRlX2NoZWNrZXJzKGd1YywgZ3VjX3NscGMpOwog
CiAjdW5kZWYgdWNfc3RhdGVfY2hlY2tlcnMKICN1bmRlZiBfX3VjX3N0YXRlX2NoZWNrZXIKLS0g
CjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
