Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258E6DF5A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 11:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EFD1892B8;
	Mon, 29 Apr 2019 09:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6AD892B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 09:24:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 02:24:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="341748948"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.81])
 ([10.66.116.81])
 by fmsmga006.fm.intel.com with ESMTP; 29 Apr 2019 02:24:18 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190426180151.30036-1-shashank.sharma@intel.com>
 <20190426180151.30036-2-shashank.sharma@intel.com>
 <20190426181607.GU24299@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <6599d156-7f16-216e-b68e-086de73ef0a7@intel.com>
Date: Mon, 29 Apr 2019 14:54:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190426181607.GU24299@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/icl: Add register definitions
 for Multi Segmented gamma
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDQvMjYvMjAxOSAxMTo0NiBQTSwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIEZyaSwg
QXByIDI2LCAyMDE5IGF0IDExOjMxOjUwUE0gKzA1MzAsIFNoYXNoYW5rIFNoYXJtYSB3cm90ZToK
Pj4gRnJvbTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPj4KPj4gQWRkIG1h
Y3JvcyB0byBkZWZpbmUgbXVsdGkgc2VnbWVudGVkIGdhbW1hIHJlZ2lzdGVycwo+Pgo+PiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gQ2M6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4+IC0tLQo+
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAxNyArKysrKysrKysrKysrKysr
Kwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAo+PiBpbmRleCBiNzQ4MjRmMGI1YjEuLmZjNTBlODVjYTg5NSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4+IEBAIC03MTk4LDYgKzcxOTgsNyBAQCBlbnVtIHsKPj4g
ICAjZGVmaW5lICBHQU1NQV9NT0RFX01PREVfMTBCSVQJKDEgPDwgMCkKPj4gICAjZGVmaW5lICBH
QU1NQV9NT0RFX01PREVfMTJCSVQJKDIgPDwgMCkKPj4gICAjZGVmaW5lICBHQU1NQV9NT0RFX01P
REVfU1BMSVQJKDMgPDwgMCkKPiAgICsgLyogaXZiLWJkdyAqLwo+PiArI2RlZmluZSAgR0FNTUFf
TU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRAkoMyA8PCAwKQo+ICAgKyAvKiBpY2wrICov
Cj4KPiBTbyBwZW9wbGUgZG9uJ3QgZ2V0IHN1cGVyIGNvbmZ1c2VkIGFib3V0IHRoZSBjb25mbGlj
dGluZyB2YWx1ZXMuCgotIFN1cmUuCgpSZWdhcmRzCgpTaGFzaGFuawoKPj4gICAKPj4gICAvKiBE
TUMvQ1NSICovCj4+ICAgI2RlZmluZSBDU1JfUFJPR1JBTShpKQkJX01NSU8oMHg4MDAwMCArIChp
KSAqIDQpCj4+IEBAIC0xMDE0NCw2ICsxMDE0NSwyMiBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsK
Pj4gICAjZGVmaW5lIFBSRV9DU0NfR0FNQ19JTkRFWChwaXBlKQlfTU1JT19QSVBFKHBpcGUsIF9Q
UkVfQ1NDX0dBTUNfSU5ERVhfQSwgX1BSRV9DU0NfR0FNQ19JTkRFWF9CKQo+PiAgICNkZWZpbmUg
UFJFX0NTQ19HQU1DX0RBVEEocGlwZSkJCV9NTUlPX1BJUEUocGlwZSwgX1BSRV9DU0NfR0FNQ19E
QVRBX0EsIF9QUkVfQ1NDX0dBTUNfREFUQV9CKQo+PiAgIAo+PiArLyogQWRkIHJlZ2lzdGVycyBm
b3IgR2VuMTEgTXVsdGkgU2VnbWVudGVkIEdhbW1hIE1vZGUgKi8KPj4gKyNkZWZpbmUgX1BBTF9Q
UkVDX01VTFRJX1NFR19JTkRFWF9BCTB4NEE0MDgKPj4gKyNkZWZpbmUgX1BBTF9QUkVDX01VTFRJ
X1NFR19JTkRFWF9CCTB4NEFDMDgKPj4gKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR01FTlRf
QVVUT19JTkNSRU1FTlQJCUJJVCgxNSkKPj4gKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR01F
TlRfSU5ERVhfVkFMVUVfTUFTSwkoMHgxZiA8PCAwKQo+PiArCj4+ICsjZGVmaW5lIF9QQUxfUFJF
Q19NVUxUSV9TRUdfREFUQV9BCTB4NEE0MEMKPj4gKyNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NF
R19EQVRBX0IJMHg0QUMwQwo+PiArCj4+ICsjZGVmaW5lIFBSRUNfUEFMX01VTFRJX1NFR19JTkRF
WChwaXBlKQlfTU1JT19QSVBFKHBpcGUsIFwKPj4gKwkJCQkJX1BBTF9QUkVDX01VTFRJX1NFR19J
TkRFWF9BLCBcCj4+ICsJCQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdfSU5ERVhfQikKPj4gKyNkZWZp
bmUgUFJFQ19QQUxfTVVMVElfU0VHX0RBVEEocGlwZSkJX01NSU9fUElQRShwaXBlLCBcCj4+ICsJ
CQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9BLCBcCj4+ICsJCQkJCV9QQUxfUFJFQ19NVUxU
SV9TRUdfREFUQV9CKQo+PiArCj4+ICAgLyogcGlwZSBDU0MgJiBkZWdhbW1hL2dhbW1hIExVVHMg
b24gQ0hWICovCj4+ICAgI2RlZmluZSBfQ0dNX1BJUEVfQV9DU0NfQ09FRkYwMQkoVkxWX0RJU1BM
QVlfQkFTRSArIDB4Njc5MDApCj4+ICAgI2RlZmluZSBfQ0dNX1BJUEVfQV9DU0NfQ09FRkYyMwko
VkxWX0RJU1BMQVlfQkFTRSArIDB4Njc5MDQpCj4+IC0tIAo+PiAyLjE3LjEKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
