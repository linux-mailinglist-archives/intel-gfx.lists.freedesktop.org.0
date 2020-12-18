Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 219B72DE74E
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 17:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410726E200;
	Fri, 18 Dec 2020 16:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C2E56E200
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 16:13:14 +0000 (UTC)
IronPort-SDR: R0lUEY/T5IUOOG+/hRchghn0yNW3hXd4OjGzGfDlGlN01JAcPde5KWes+TYONVPR0PaAE8AGtO
 wrPqfy4PXuAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="260190431"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="260190431"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 08:13:14 -0800
IronPort-SDR: 3TrWBiueV16Xs/hwjG5JudEr67rB1ZVuKpSwntkprv/AklVfA2QmwE2g503YusZuthbyBi8xgi
 QhU3mQQQun8w==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="340512495"
Received: from mtsachix-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.201.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 08:13:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20201218124346.rwpfwhe7vmr3aq7r@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201203072359.156682-1-aditya.swarup@intel.com>
 <20201218023129.oxuzjlbxzqg7twpl@ldmartin-desk1> <87eejn4jpp.fsf@intel.com>
 <875z4zqscy.fsf@intel.com> <20201218124346.rwpfwhe7vmr3aq7r@ldmartin-desk1>
Date: Fri, 18 Dec 2020 18:13:08 +0200
Message-ID: <87wnxfozxn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Fix REVID macros for
 TGL to fetch correct stepping
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxOCBEZWMgMjAyMCwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIEZyaSwgRGVjIDE4LCAyMDIwIGF0IDAxOjEzOjQ5UE0gKzAyMDAs
IEphbmkgTmlrdWxhIHdyb3RlOgo+Pk9uIEZyaSwgMTggRGVjIDIwMjAsIEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+IHdyb3RlOgo+Pj4gT24gVGh1LCAxNyBEZWMgMjAyMCwgTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+IHdyb3RlOgo+Pj4+IEJvdGgg
cGF0Y2hlcyBhcHBsaWVkLiBUaGFua3MhCj4+Pj4KPj4+PiBKYW5pLCBtYXliZSBub3cgeW91IGNh
biByZWJhc2UgeW91ciBwYXRjaCB0byBnZXQgcmlkIG9mIHRoZSBleHRlcm4gPwo+Pj4KPj4+IFll
cywgdGhhbmtzIGZvciB0aGUgaXJxIHNvIEkgY2FuIHN0b3AgcG9sbGluZy4gOykKPj4KPj5IdWgs
IHdoeSB3ZXJlIHRoZXNlIGFwcGxpZWQgdG8gZHJtLWludGVsLWd0LW5leHQ/IEl0J3MgbXVjaCBt
b3JlIGFib3V0Cj4+ZHJpdmVyIGNvcmUgY29kZSB0aGFuIGd0Lgo+Cj4gc2lnaC4uLiBieSBtaXN0
YWtlLiBBdCB0aGUgdGltZSBhcyB3YXMgbWFpbmx5IHRoaW5raW5nIGFib3V0IHRoZSBXQXMKPiB0
aGF0IGFyZSBhZmZlY3RlZCBieSB0aGVzZSBhbmQgdGhvdWdodCBpdCB3b3VsZCBiZWxvbmcgdG8g
Z3QuCj4KPiB3aGF0IG5vdz8gRG8gd2UgYXBwbHkgaW4gdG8gZHJtLWludGVsLW5leHQgYXMgd2Vs
bCBvciB3YWl0IGZvciBhIGJhY2ttZXJnZT8KCk1heWJlIEknbGwgZG8gdGhlIHJlZmFjdG9yaW5n
IGluIGd0LW5leHQgYXMgd2VsbC4gT3Igd2FpdCBmb3IgdGhlCmJhY2ttZXJnZS4gKnNocnVnKgoK
RG9uJ3Qgd29ycnkgYWJvdXQgaXQuCgpCUiwKSmFuaS4KCgo+Cj4gc29ycnksCj4KPiBMdWNhcyBE
ZSBNYXJjaGkKPgo+Pgo+PkJSLAo+PkphbmkuCj4+Cj4+Cj4+Pgo+Pj4gQlIsCj4+PiBKYW5pLgo+
Pj4KPj4+Cj4+Pj4KPj4+Pgo+Pj4+IEx1Y2FzIERlIE1hcmNoaQo+Pj4+Cj4+Pj4gT24gV2VkLCBE
ZWMgMDIsIDIwMjAgYXQgMTE6MjM6NThQTSAtMDgwMCwgQWRpdHlhIFN3YXJ1cCB3cm90ZToKPj4+
Pj5GaXggVEdMIFJFVklEIG1hY3JvcyB0byBmZXRjaCBjb3JyZWN0IGRpc3BsYXkvZ3Qgc3RlcHBp
bmcgYmFzZWQKPj4+Pj5vbiBTT0MgcmV2IGlkIGZyb20gSU5URUxfUkVWSUQoKSBtYWNyby4gUHJl
dmlvdXNseSwgd2Ugd2VyZSBqdXN0Cj4+Pj4+cmV0dXJuaW5nIHRoZSBmaXJzdCBlbGVtZW50IG9m
IHRoZSByZXZpZCBhcnJheSBpbnN0ZWFkIG9mIHVzaW5nCj4+Pj4+dGhlIGNvcnJlY3QgaW5kZXgg
YmFzZWQgb24gU09DIHJldiBpZC4KPj4+Pj4KPj4+Pj5GaXhlczogKCJkcm0vaTkxNS90Z2w6IEZp
eCBzdGVwcGluZyBXQSBtYXRjaGluZyIpCj4+Pj4+Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgo+Pj4+PkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPgo+Pj4+PkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KPj4+Pj5DYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4+
Pj5DYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+
Pj5TaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4K
Pj4+Pj5SZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5j
b20+Cj4+Pj4+LS0tCj4+Pj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAxMiAr
KysrKystLS0tLS0KPj4+Pj4gMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKPj4+Pj4KPj4+Pj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4+Pj5pbmRleCBmYzEw
OTBjNjg4OWMuLjJlMjE0OWM5YTJmNCAxMDA2NDQKPj4+Pj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCj4+Pj4+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAo+Pj4+PkBAIC0xNTgwLDkgKzE1ODAsOSBAQCBzdGF0aWMgaW5saW5lIGNvbnN0IHN0cnVjdCBp
OTE1X3Jldl9zdGVwcGluZ3MgKgo+Pj4+PiB0Z2xfcmV2aWRzX2dldChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCj4+Pj4+IHsKPj4+Pj4gCWlmIChJU19UR0xfVShkZXZfcHJpdikg
fHwgSVNfVEdMX1koZGV2X3ByaXYpKQo+Pj4+Pi0JCXJldHVybiB0Z2xfdXlfcmV2aWRzOwo+Pj4+
PisJCXJldHVybiAmdGdsX3V5X3Jldmlkc1tJTlRFTF9SRVZJRChkZXZfcHJpdildOwo+Pj4+PiAJ
ZWxzZQo+Pj4+Pi0JCXJldHVybiB0Z2xfcmV2aWRzOwo+Pj4+PisJCXJldHVybiAmdGdsX3Jldmlk
c1tJTlRFTF9SRVZJRChkZXZfcHJpdildOwo+Pj4+PiB9Cj4+Pj4+Cj4+Pj4+ICNkZWZpbmUgSVNf
VEdMX0RJU1BfUkVWSUQocCwgc2luY2UsIHVudGlsKSBcCj4+Pj4+QEAgLTE1OTIsMTQgKzE1OTIs
MTQgQEAgdGdsX3Jldmlkc19nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+
Pj4+Pgo+Pj4+PiAjZGVmaW5lIElTX1RHTF9VWV9HVF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwK
Pj4+Pj4gCSgoSVNfVEdMX1UocCkgfHwgSVNfVEdMX1kocCkpICYmIFwKPj4+Pj4tCSB0Z2xfdXlf
cmV2aWRzLT5ndF9zdGVwcGluZyA+PSAoc2luY2UpICYmIFwKPj4+Pj4tCSB0Z2xfdXlfcmV2aWRz
LT5ndF9zdGVwcGluZyA8PSAodW50aWwpKQo+Pj4+PisJIHRnbF91eV9yZXZpZHNbSU5URUxfUkVW
SUQocCldLmd0X3N0ZXBwaW5nID49IChzaW5jZSkgJiYgXAo+Pj4+PisJIHRnbF91eV9yZXZpZHNb
SU5URUxfUkVWSUQocCldLmd0X3N0ZXBwaW5nIDw9ICh1bnRpbCkpCj4+Pj4+Cj4+Pj4+ICNkZWZp
bmUgSVNfVEdMX0dUX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXAo+Pj4+PiAJKElTX1RJR0VSTEFL
RShwKSAmJiBcCj4+Pj4+IAkgIShJU19UR0xfVShwKSB8fCBJU19UR0xfWShwKSkgJiYgXAo+Pj4+
Pi0JIHRnbF9yZXZpZHMtPmd0X3N0ZXBwaW5nID49IChzaW5jZSkgJiYgXAo+Pj4+Pi0JIHRnbF9y
ZXZpZHMtPmd0X3N0ZXBwaW5nIDw9ICh1bnRpbCkpCj4+Pj4+KwkgdGdsX3Jldmlkc1tJTlRFTF9S
RVZJRChwKV0uZ3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBcCj4+Pj4+KwkgdGdsX3Jldmlkc1tJ
TlRFTF9SRVZJRChwKV0uZ3Rfc3RlcHBpbmcgPD0gKHVudGlsKSkKPj4+Pj4KPj4+Pj4gI2RlZmlu
ZSBSS0xfUkVWSURfQTAJCTB4MAo+Pj4+PiAjZGVmaW5lIFJLTF9SRVZJRF9CMAkJMHgxCj4+Pj4+
LS0KPj4+Pj4yLjI3LjAKPj4+Pj4KPj4+Pj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+PkludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4+Pj5JbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+Pj4+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPj4KPj4tLSAKPj5KYW5pIE5pa3VsYSwgSW50
ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9w
ZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
