Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2386D294E5E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 16:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819BF6EDB0;
	Wed, 21 Oct 2020 14:18:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687726EDAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 14:18:13 +0000 (UTC)
IronPort-SDR: Y3/wsuqlyg6ZjG3J5iCq31VLd7F8x7OCgGmblhvB4U6jnvOJSvUfrQFQ4HET0sQ6DUjJJYUOmT
 EKEjDE1c16wQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="167493463"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="167493463"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 07:18:04 -0700
IronPort-SDR: UQiHePD0aFZdUu03EfGRXXEjOLznTZ8f/SPWhrpqrs4oAxKmE5WELIzqs6ad0FDLuMMDDzVnC2
 IdG/ez7jnKOw==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="533544526"
Received: from pklein-mobl.ger.corp.intel.com (HELO localhost) ([10.252.5.88])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2020 07:18:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201021133213.328994-4-aditya.swarup@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201021133213.328994-1-aditya.swarup@intel.com>
 <20201021133213.328994-4-aditya.swarup@intel.com>
Date: Wed, 21 Oct 2020 17:17:59 +0300
Message-ID: <874kmn8xyg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/18] drm/i915/adl_s: Add PCH support
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMSBPY3QgMjAyMCwgQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5j
b20+IHdyb3RlOgo+IEZyb206IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVs
LmNvbT4KPgo+IEFkZCBzdXBwb3J0IGZvciBBbGRlcnBvaW50KEFEUCkgUENIIHVzZWQgd2l0aCBB
bGRlcmxha2UtUy4KPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pgo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiBDYzog
Q2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyB8IDggKysrKysr
Ky0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggfCAzICsrKwo+ICAyIGZpbGVz
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BjaC5jCj4gaW5kZXggZjMxYzBkYWJkMGNjLi43ZmFjOTY4NmEwYzAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wY2guYwo+IEBAIC0xMjgsNiArMTI4LDEwIEBAIGludGVsX3BjaF90
eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdW5zaWduZWQgc2hv
cnQgaWQpCj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJGb3VuZCBKYXNwZXIgTGFr
ZSBQQ0hcbiIpOwo+ICAJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhSVNfSlNMX0VITChk
ZXZfcHJpdikpOwo+ICAJCXJldHVybiBQQ0hfSlNQOwo+ICsJY2FzZSBJTlRFTF9QQ0hfQURQX0RF
VklDRV9JRF9UWVBFOgo+ICsJCURSTV9ERUJVR19LTVMoIkZvdW5kIEFsZGVyIExha2UgUENIXG4i
KTsKPiArCQlXQVJOX09OKCFJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpOwo+ICsJCXJldHVybiBQ
Q0hfQURQOwoKUGxlYXNlIHVzZSBkcm1fZGJnX2ttcyBhbmQgZHJtX1dBUk5fT04gbGlrZSBhYm92
ZS4KCkJSLApKYW5pLgoKPiAgCWRlZmF1bHQ6Cj4gIAkJcmV0dXJuIFBDSF9OT05FOwo+ICAJfQo+
IEBAIC0xNTUsNyArMTU5LDkgQEAgaW50ZWxfdmlydF9kZXRlY3RfcGNoKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCSAqIG1ha2UgYW4gZWR1Y2F0ZWQgZ3Vlc3Mg
YXMgdG8gd2hpY2ggUENIIGlzIHJlYWxseSB0aGVyZS4KPiAgCSAqLwo+ICAKPiAtCWlmIChJU19U
SUdFUkxBS0UoZGV2X3ByaXYpIHx8IElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQo+ICsJaWYgKElT
X0FMREVSTEFLRV9TKGRldl9wcml2KSkKPiArCQlpZCA9IElOVEVMX1BDSF9BRFBfREVWSUNFX0lE
X1RZUEU7Cj4gKwllbHNlIGlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpIHx8IElTX1JPQ0tFVExB
S0UoZGV2X3ByaXYpKQo+ICAJCWlkID0gSU5URUxfUENIX1RHUF9ERVZJQ0VfSURfVFlQRTsKPiAg
CWVsc2UgaWYgKElTX0pTTF9FSEwoZGV2X3ByaXYpKQo+ICAJCWlkID0gSU5URUxfUENIX01DQ19E
RVZJQ0VfSURfVFlQRTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cGNoLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaAo+IGluZGV4IDA2ZDJjZDUw
YWYwYi4uNzMxODM3NzUwM2IwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BjaC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgKPiBAQCAt
MjYsNiArMjYsNyBAQCBlbnVtIGludGVsX3BjaCB7Cj4gIAlQQ0hfSlNQLAkvKiBKYXNwZXIgTGFr
ZSBQQ0ggKi8KPiAgCVBDSF9NQ0MsICAgICAgICAvKiBNdWxlIENyZWVrIENhbnlvbiBQQ0ggKi8K
PiAgCVBDSF9UR1AsCS8qIFRpZ2VyIExha2UgUENIICovCj4gKwlQQ0hfQURQLAkvKiBBbGRlciBM
YWtlIFBDSCAqLwo+ICAKPiAgCS8qIEZha2UgUENIcywgZnVuY3Rpb25hbGl0eSBoYW5kbGVkIG9u
IHRoZSBzYW1lIFBDSSBkZXYgKi8KPiAgCVBDSF9ERzEgPSAxMDI0LAo+IEBAIC01MywxMiArNTQs
MTQgQEAgZW51bSBpbnRlbF9wY2ggewo+ICAjZGVmaW5lIElOVEVMX1BDSF9UR1AyX0RFVklDRV9J
RF9UWVBFCQkweDQzODAKPiAgI2RlZmluZSBJTlRFTF9QQ0hfSlNQX0RFVklDRV9JRF9UWVBFCQkw
eDREODAKPiAgI2RlZmluZSBJTlRFTF9QQ0hfSlNQMl9ERVZJQ0VfSURfVFlQRQkJMHgzODgwCj4g
KyNkZWZpbmUgSU5URUxfUENIX0FEUF9ERVZJQ0VfSURfVFlQRQkJMHg3QTgwCj4gICNkZWZpbmUg
SU5URUxfUENIX1AyWF9ERVZJQ0VfSURfVFlQRQkJMHg3MTAwCj4gICNkZWZpbmUgSU5URUxfUENI
X1AzWF9ERVZJQ0VfSURfVFlQRQkJMHg3MDAwCj4gICNkZWZpbmUgSU5URUxfUENIX1FFTVVfREVW
SUNFX0lEX1RZUEUJCTB4MjkwMCAvKiBxZW11IHEzNSBoYXMgMjkxOCAqLwo+ICAKPiAgI2RlZmlu
ZSBJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikJCSgoZGV2X3ByaXYpLT5wY2hfdHlwZSkKPiAgI2Rl
ZmluZSBJTlRFTF9QQ0hfSUQoZGV2X3ByaXYpCQkJKChkZXZfcHJpdiktPnBjaF9pZCkKPiArI2Rl
ZmluZSBIQVNfUENIX0FEUChkZXZfcHJpdikJCQkoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09
IFBDSF9BRFApCj4gICNkZWZpbmUgSEFTX1BDSF9ERzEoZGV2X3ByaXYpCQkJKElOVEVMX1BDSF9U
WVBFKGRldl9wcml2KSA9PSBQQ0hfREcxKQo+ICAjZGVmaW5lIEhBU19QQ0hfSlNQKGRldl9wcml2
KQkJCShJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENIX0pTUCkKPiAgI2RlZmluZSBIQVNf
UENIX01DQyhkZXZfcHJpdikJCQkoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9NQ0Mp
CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
