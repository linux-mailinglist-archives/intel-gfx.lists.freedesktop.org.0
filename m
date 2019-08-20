Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B996AED
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 22:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86A16E461;
	Tue, 20 Aug 2019 20:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007B36E461
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 20:54:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 13:54:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="172573101"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1) ([10.24.9.29])
 by orsmga008.jf.intel.com with ESMTP; 20 Aug 2019 13:54:24 -0700
Date: Tue, 20 Aug 2019 13:54:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190820205423.ridfb6w5zabfokds@ldmartin-desk1>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-22-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817093902.2171-22-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 21/40] drm/i915/tgl: Enable VD HCP/MFX
 sub-pipe power gating
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBBdWcgMTcsIDIwMTkgYXQgMDI6Mzg6NDNBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4K
Pgo+SENQL01GWCBwb3dlciBnYXRpbmcgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdCwgdHVybiBpdCBv
biBmb3IgdGhlIHZkIHVuaXRzCj5hdmFpbGFibGUuIFVzZXIgc3BhY2Ugd2lsbCBhbHNvIGlzc3Vl
IGEgTUlfRk9SQ0VfV0FLRVVQIHByb3Blcmx5IHRvCj53YWtlIHVwIHByb3BlciBzdWJ3ZWxsLgo+
Cj5EdXJpbmcgZHJpdmVyIGxvYWQsIGluaXRfY2xvY2tfZ2F0aW5nIGhhcHBlbnMgYWZ0ZXIgZGV2
aWNlX2luZm9faW5pdF9tbWlvCj5yZWFkIHRoZSB2ZGJveCBkaXNhYmxlIGZ1c2UgcmVnaXN0ZXIs
IHNvIG9ubHkgcHJlc2VudCB2ZCB1bml0cyB3aWxsIGhhdmUKPnRoZXNlIGVuYWJsZWQuCj4KPkJT
cGVjOiAxNDIxNAo+SFNERVM6IDEyMDk5Nzc4MjcKPkNjOiBUb255IFllIDx0b255LnllQGludGVs
LmNvbT4KPlNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRl
bC5jb20+Cj5TaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAgNCArKysr
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE3ICsrKysrKysrKysrKysrKyst
Cj4gMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAo+aW5kZXggYTU1ZjE1ZWI2MTc1Li5jMWI3NzljNDBmYTggMTAw
NjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4rKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj5AQCAtODYyMSw2ICs4NjIxLDEwIEBAIGVudW0gewo+
ICNkZWZpbmUgICBHRU45X1BXUkdUX01FRElBX1NUQVRVU19NQVNLCQkoMSA8PCAwKQo+ICNkZWZp
bmUgICBHRU45X1BXUkdUX1JFTkRFUl9TVEFUVVNfTUFTSwkJKDEgPDwgMSkKPgo+KyNkZWZpbmUg
UE9XRVJHQVRFX0VOQUJMRQkJCV9NTUlPKDB4YTIxMCkKPisjZGVmaW5lICAgIFZETl9IQ1BfUE9X
RVJHQVRFX0VOQUJMRShuKQkJQklUKCgobikgKiAyKSArIDMpCj4rI2RlZmluZSAgICBWRE5fTUZY
X1BPV0VSR0FURV9FTkFCTEUobikJCUJJVCgoKG4pICogMikgKyA0KQo+Kwo+ICNkZWZpbmUgIEdU
RklGT0RCRwkJCQlfTU1JTygweDEyMDAwMCkKPiAjZGVmaW5lICAgIEdUX0ZJRk9fU0JERURJQ0FU
RV9GUkVFX0VOVFJZX0NIVgkoMHgxZiA8PCAyMCkKPiAjZGVmaW5lICAgIEdUX0ZJRk9fRlJFRV9F
TlRSSUVTX0NIVgkJKDB4N2YgPDwgMTMpCj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPmluZGV4IDc1
ZWUwMjdhYmI4MC4uNjA0YzUzNzkzNzI2IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+QEAg
LTkwNzgsNiArOTA3OCwyMSBAQCBzdGF0aWMgdm9pZCBpY2xfaW5pdF9jbG9ja19nYXRpbmcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IAkJICAgX01BU0tFRF9CSVRfRU5BQkxF
KEdFTjExX0VOQUJMRV8zMl9QTEFORV9NT0RFKSk7Cj4gfQo+Cj4rc3RhdGljIHZvaWQgdGdsX2lu
aXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPit7Cj4r
CXUzMiB2ZF9wZ19lbmFibGUgPSAwOwo+Kwl1bnNpZ25lZCBpbnQgaTsKPisKPisJLyogVGhpcyBp
cyBub3QgYSBXQS4gRW5hYmxlIFZEIEhDUCAmIE1GWF9FTkMgcG93ZXJnYXRlICovCj4rCWZvciAo
aSA9IDA7IGkgPCBJOTE1X01BWF9WQ1M7IGkrKykgewo+KwkJaWYgKEhBU19FTkdJTkUoZGV2X3By
aXYsIF9WQ1MoaSkpKQo+KwkJCXZkX3BnX2VuYWJsZSB8PSBWRE5fSENQX1BPV0VSR0FURV9FTkFC
TEUoaSkgfAo+KwkJCQkJVkROX01GWF9QT1dFUkdBVEVfRU5BQkxFKGkpOwo+Kwl9CgptaXNzaW5n
IGJsYW5rIGxpbmUgaGVyZS4gUHJvYmFibHkgbXkgZmF1bHQgd2hpbGUgcmViYXNpbmcuCgpSZXZp
ZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpMdWNh
cyBEZSBNYXJjaGkKCj4rCUk5MTVfV1JJVEUoUE9XRVJHQVRFX0VOQUJMRSwKPisJCSAgIEk5MTVf
UkVBRChQT1dFUkdBVEVfRU5BQkxFKSB8IHZkX3BnX2VuYWJsZSk7Cj4rfQo+Kwo+IHN0YXRpYyB2
b2lkIGNucF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCj4gewo+IAlpZiAoIUhBU19QQ0hfQ05QKGRldl9wcml2KSkKPkBAIC05NTk4LDcgKzk2MTMs
NyBAQCBzdGF0aWMgdm9pZCBub3BfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQo+IHZvaWQgaW50ZWxfaW5pdF9jbG9ja19nYXRpbmdfaG9va3Moc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IHsKPiAJaWYgKElTX0dFTihkZXZfcHJp
diwgMTIpKQo+LQkJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdF9jbG9ja19nYXRpbmcgPSBub3BfaW5p
dF9jbG9ja19nYXRpbmc7Cj4rCQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0X2Nsb2NrX2dhdGluZyA9
IHRnbF9pbml0X2Nsb2NrX2dhdGluZzsKPiAJZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkp
Cj4gCQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0X2Nsb2NrX2dhdGluZyA9IGljbF9pbml0X2Nsb2Nr
X2dhdGluZzsKPiAJZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpCj4tLSAKPjIuMjEu
MAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
