Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDDBE722F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 13:57:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A5E6E849;
	Mon, 28 Oct 2019 12:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9F16E849
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:57:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 05:57:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="350673862"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 28 Oct 2019 05:57:16 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.149.60])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x9SCvEMq002691; Mon, 28 Oct 2019 12:57:15 GMT
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 12:57:03 +0000
Message-Id: <20191028125703.29872-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Use vfunc to check engine
 submission mode
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

V2hpbGUgcHJvY2Vzc2luZyBDU0IgdGhlcmUgaXMgbm8gbmVlZCB0byBsb29rIGF0IEd1QyBzdWJt
aXNzaW9uCnNldHRpbmdzLCBqdXN0IGNoZWNrIGlmIGVuZ2luZSBpcyBjb25maWd1cmVkIGZvciBl
eGVjbGlzdHMgbW9kZS4KCldoaWxlIHRvZGF5IEd1QyBzdWJtaXNzaW9uIGlzIGRpc2FibGVkIGl0
J3Mgc2V0dGluZ3MgYXJlIHN0aWxsCmJhc2VkIG9uIG1vZHBhcmFtIHZhbHVlcyB0aGF0IG1pZ2h0
IG5vdCBjb3JyZWN0bHkgcmVmbGVjdCBhY3R1YWwKc3VibWlzc2lvbiBzdGF0dXMgaW4gY2FzZSBv
ZiBhbnkgZmFsbGJhY2suIFVudGlsIHRoYXQgaXMgZnVsbHkKZml4ZWQsIHVzZSBhbHRlcm5hdGUg
bWV0aG9kIHRvIGNvbmZpcm0gdGhhdCBlbmdpbmUgcmVhbGx5IHJ1bnMgaW4KZXhlY2xpc3RzIG1v
ZGUgYnkgY29tcGFyaW5nIHNldF9kZWZhdWx0X3N1Ym1pc3Npb24gdmZ1bmMuCgpTaWduZWQtb2Zm
LWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSmFudXN6IEtyenlzenRv
ZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgOCArKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmggfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMTYz
NDA3NDAxMzlkLi5jMGQ1NjRiMjhiZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CkBAIC0yMDIyLDcgKzIwMjIsNyBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJICovCiAJR0VNX0JVR19PTighdGFza2xldF9pc19sb2Nr
ZWQoJmV4ZWNsaXN0cy0+dGFza2xldCkgJiYKIAkJICAgIXJlc2V0X2luX3Byb2dyZXNzKGV4ZWNs
aXN0cykpOwotCUdFTV9CVUdfT04oVVNFU19HVUNfU1VCTUlTU0lPTihlbmdpbmUtPmk5MTUpKTsK
KwlHRU1fQlVHX09OKCFpbnRlbF9lbmdpbmVfaW5fZXhlY2xpc3RzX3N1Ym1pc3Npb25fbW9kZShl
bmdpbmUpKTsKIAogCS8qCiAJICogTm90ZSB0aGF0IGNzYl93cml0ZSwgY3NiX3N0YXR1cyBtYXkg
YmUgZWl0aGVyIGluIEhXU1Agb3IgbW1pby4KQEAgLTQ3MTEsNiArNDcxMSwxMiBAQCB2b2lkIGlu
dGVsX2xyX2NvbnRleHRfcmVzZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCV9f
ZXhlY2xpc3RzX3VwZGF0ZV9yZWdfc3RhdGUoY2UsIGVuZ2luZSk7CiB9CiAKK2Jvb2wgaW50ZWxf
ZW5naW5lX2luX2V4ZWNsaXN0c19zdWJtaXNzaW9uX21vZGUoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQoreworCXJldHVybiBlbmdpbmUtPnNldF9kZWZhdWx0X3N1Ym1pc3Npb24gPT0K
KwkgICAgICAgaW50ZWxfZXhlY2xpc3RzX3NldF9kZWZhdWx0X3N1Ym1pc3Npb247Cit9CisKICNp
ZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9TRUxGVEVTVCkKICNpbmNsdWRlICJzZWxmdGVz
dF9scmMuYyIKICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaAppbmRleCA5OWRj
NTc2YTRlMjUuLjIzZGRlOTA4MzM0OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmgK
QEAgLTE0NSw0ICsxNDUsNiBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoKIGludGVsX3ZpcnR1
YWxfZW5naW5lX2dldF9zaWJsaW5nKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJ
CQkgdW5zaWduZWQgaW50IHNpYmxpbmcpOwogCitib29sIGludGVsX2VuZ2luZV9pbl9leGVjbGlz
dHNfc3VibWlzc2lvbl9tb2RlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CisKICNl
bmRpZiAvKiBfSU5URUxfTFJDX0hfICovCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
