Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D885DCC53C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 23:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28BC46EB31;
	Fri,  4 Oct 2019 21:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ABBF6EB31
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 21:50:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 14:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,257,1566889200"; d="scan'208";a="182841581"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by orsmga007.jf.intel.com with ESMTP; 04 Oct 2019 14:50:46 -0700
Date: Fri, 4 Oct 2019 14:51:34 -0700
From: James Ausmus <james.ausmus@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191004215134.GB13100@jausmus-gentoo-dev6.jf.intel.com>
References: <20190925201353.27565-2-james.ausmus@intel.com>
 <20190927222427.5491-1-james.ausmus@intel.com>
 <20190927222427.5491-2-james.ausmus@intel.com>
 <20191004205546.xeq43hvktkbs6pzr@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004205546.xeq43hvktkbs6pzr@ldmartin-desk1>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Read SAGV block time
 from PCODE
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMDQsIDIwMTkgYXQgMDE6NTU6NDZQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIEZyaSwgU2VwIDI3LCAyMDE5IGF0IDAzOjI0OjI3UE0gLTA3MDAsIEphbWVz
IEF1c211cyB3cm90ZToKPiA+U3RhcnRpbmcgZnJvbSBUR0wsIHdlIG5vdyBuZWVkIHRvIHJlYWQg
dGhlIFNBR1YgYmxvY2sgdGltZSB2aWEgYSBQQ09ERQo+ID5tYWlsYm94LCByYXRoZXIgdGhhbiBo
YXZpbmcgYSBzdGF0aWMgdmFsdWUuCj4gPgo+ID5CU3BlYzogNDkzMjYKPiA+Cj4gPnYyOiBGaXgg
dXAgcGNvZGUgdmFsIGRhdGEgdHlwZSAoVmlsbGUpLCB0aWdodGVuIHZhcmlhYmxlIHNjb3BlIChW
aWxsZSkKPiA+Cj4gPkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+ID5DYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+Cj4gPkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KPiA+U2lnbmVkLW9mZi1ieTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29t
Pgo+ID5SZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+LS0tCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgIDEg
Kwo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE1ICsrKysrKysrKysrKysr
LQo+ID4gMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
Pgo+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+aW5kZXggMDU4YWE1Y2E4YjczLi42YTQ1ZGY5
ZGFkOWMgMTAwNjQ0Cj4gPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID5AQCAtODg2OSw2ICs4ODY5
LDcgQEAgZW51bSB7Cj4gPiAjZGVmaW5lICAgICBHRU45X1NBR1ZfRElTQUJMRQkJCTB4MAo+ID4g
I2RlZmluZSAgICAgR0VOOV9TQUdWX0lTX0RJU0FCTEVECQkweDEKPiA+ICNkZWZpbmUgICAgIEdF
TjlfU0FHVl9FTkFCTEUJCQkweDMKPiA+KyNkZWZpbmUgR0VOMTJfUENPREVfUkVBRF9TQUdWX0JM
T0NLX1RJTUVfVVMJMHgyMwo+ID4gI2RlZmluZSBHRU42X1BDT0RFX0RBVEEJCQkJX01NSU8oMHgx
MzgxMjgpCj4gPiAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVRX0lBX1JBVElPX1NISUZUCTgKPiA+
ICNkZWZpbmUgICBHRU42X1BDT0RFX0ZSRVFfUklOR19SQVRJT19TSElGVAkxNgo+ID5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKPiA+aW5kZXggYjQxM2E3ZjNiYzVkLi4xMzcyMWJhNDQwMTMgMTAwNjQ0
Cj4gPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiA+KysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+ID5AQCAtMzY0NSw3ICszNjQ1LDIwIEBAIGludGVs
X2hhc19zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+IHN0YXRpYyB2
b2lkCj4gPiBza2xfc2V0dXBfc2Fndl9ibG9ja190aW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiA+IHsKPiA+LQlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpIHsKPiA+Kwlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+IAo+IHNhZ3Ygd2lsbCBzdGlsbCBuZXZl
ciBiZSBlbmFibGVkIGZvciBUR0wuIEFyZSB5b3UgZ29pbmcgdG8gcmV2ZXJ0IAo+IDhmZmE0Mzky
YTMyZSAoImRybS9pOTE1L3RnbDogZGlzYWJsZSBTQUdWIHRlbXBvcmFyaWx5IikKPiBpbiBhIHNl
cGFyZXRlIHBhdGNoPwoKWWVzLCB0aGF0J3MgdGhlIGlkZWEgLSB3ZSBsYW5kIHRoZXNlIHR3byBw
YXRjaGVzLCB0aGVuIG9uY2UgSFNECjE0MDk1NDI4OTUgZ2V0cyByZXNvbHZlZCwgd2UgcmV2ZXJ0
IDhmZmE0MzkyYTMyZSBhbmQgZXZlcnl0aGluZyBKdXN0CldvcmtzLiA7KQoKLUphbWVzCgo+IAo+
IEx1Y2FzIERlIE1hcmNoaQo+IAo+ID4rCQl1MzIgdmFsID0gMDsKPiA+KwkJaW50IHJldDsKPiA+
Kwo+ID4rCQlyZXQgPSBzYW5keWJyaWRnZV9wY29kZV9yZWFkKGRldl9wcml2LAo+ID4rCQkJCQkg
ICAgIEdFTjEyX1BDT0RFX1JFQURfU0FHVl9CTE9DS19USU1FX1VTLAo+ID4rCQkJCQkgICAgICZ2
YWwsIE5VTEwpOwo+ID4rCQlpZiAoIXJldCkgewo+ID4rCQkJZGV2X3ByaXYtPnNhZ3ZfYmxvY2tf
dGltZV91cyA9IHZhbDsKPiA+KwkJCXJldHVybjsKPiA+KwkJfQo+ID4rCj4gPisJCURSTV9ERUJV
R19EUklWRVIoIkNvdWxkbid0IHJlYWQgU0FHViBibG9jayB0aW1lIVxuIik7Cj4gPisJfSBlbHNl
IGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkgewo+ID4gCQlkZXZfcHJpdi0+c2Fndl9ibG9ja190
aW1lX3VzID0gMTA7Cj4gPiAJCXJldHVybjsKPiA+IAl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJp
diwgMTApKSB7Cj4gPi0tIAo+ID4yLjIyLjEKPiA+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
