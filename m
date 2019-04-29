Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B002DE460
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 16:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B09891C3;
	Mon, 29 Apr 2019 14:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E19891C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 14:12:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 07:12:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168961202"
Received: from ssedlma-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.46.37])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 07:12:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Shashank Sharma <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190426180151.30036-2-shashank.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190426180151.30036-1-shashank.sharma@intel.com>
 <20190426180151.30036-2-shashank.sharma@intel.com>
Date: Mon, 29 Apr 2019 17:12:14 +0300
Message-ID: <87ftq0hpdt.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNiBBcHIgMjAxOSwgU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50
ZWwuY29tPiB3cm90ZToKPiBGcm9tOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pgo+Cj4gQWRkIG1hY3JvcyB0byBkZWZpbmUgbXVsdGkgc2VnbWVudGVkIGdhbW1hIHJlZ2lzdGVy
cwo+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDE3ICsrKysrKysrKysr
KysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKPiBpbmRleCBiNzQ4MjRmMGI1YjEuLmZjNTBlODVjYTg5NSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC03MTk4LDYgKzcxOTgsNyBAQCBlbnVtIHsKPiAgI2Rl
ZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEwQklUCSgxIDw8IDApCj4gICNkZWZpbmUgIEdBTU1BX01P
REVfTU9ERV8xMkJJVAkoMiA8PCAwKQo+ICAjZGVmaW5lICBHQU1NQV9NT0RFX01PREVfU1BMSVQJ
KDMgPDwgMCkKPiArI2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRF
RAkoMyA8PCAwKQo+ICAKPiAgLyogRE1DL0NTUiAqLwo+ICAjZGVmaW5lIENTUl9QUk9HUkFNKGkp
CQlfTU1JTygweDgwMDAwICsgKGkpICogNCkKPiBAQCAtMTAxNDQsNiArMTAxNDUsMjIgQEAgZW51
bSBza2xfcG93ZXJfZ2F0ZSB7Cj4gICNkZWZpbmUgUFJFX0NTQ19HQU1DX0lOREVYKHBpcGUpCV9N
TUlPX1BJUEUocGlwZSwgX1BSRV9DU0NfR0FNQ19JTkRFWF9BLCBfUFJFX0NTQ19HQU1DX0lOREVY
X0IpCj4gICNkZWZpbmUgUFJFX0NTQ19HQU1DX0RBVEEocGlwZSkJCV9NTUlPX1BJUEUocGlwZSwg
X1BSRV9DU0NfR0FNQ19EQVRBX0EsIF9QUkVfQ1NDX0dBTUNfREFUQV9CKQo+ICAKPiArLyogQWRk
IHJlZ2lzdGVycyBmb3IgR2VuMTEgTXVsdGkgU2VnbWVudGVkIEdhbW1hIE1vZGUgKi8KPiArI2Rl
ZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0EJMHg0QTQwOAo+ICsjZGVmaW5lIF9QQUxf
UFJFQ19NVUxUSV9TRUdfSU5ERVhfQgkweDRBQzA4Cj4gKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJ
X1NFR01FTlRfQVVUT19JTkNSRU1FTlQJCUJJVCgxNSkKPiArI2RlZmluZSAgUEFMX1BSRUNfTVVM
VElfU0VHTUVOVF9JTkRFWF9WQUxVRV9NQVNLCSgweDFmIDw8IDApCgpTZWUgUkVHX0JJVCgpIGFu
ZCBSRUdfRklFTERfUFJFUCgpIGF0IHRoZSB0b3Agb2YgdGhlIGZpbGUuCgpCUiwKSmFuaS4KCgo+
ICsKPiArI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFfQQkweDRBNDBDCj4gKyNkZWZp
bmUgX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0IJMHg0QUMwQwo+ICsKPiArI2RlZmluZSBQUkVD
X1BBTF9NVUxUSV9TRUdfSU5ERVgocGlwZSkJX01NSU9fUElQRShwaXBlLCBcCj4gKwkJCQkJX1BB
TF9QUkVDX01VTFRJX1NFR19JTkRFWF9BLCBcCj4gKwkJCQkJX1BBTF9QUkVDX01VTFRJX1NFR19J
TkRFWF9CKQo+ICsjZGVmaW5lIFBSRUNfUEFMX01VTFRJX1NFR19EQVRBKHBpcGUpCV9NTUlPX1BJ
UEUocGlwZSwgXAo+ICsJCQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9BLCBcCj4gKwkJCQkJ
X1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0IpCj4gKwo+ICAvKiBwaXBlIENTQyAmIGRlZ2FtbWEv
Z2FtbWEgTFVUcyBvbiBDSFYgKi8KPiAgI2RlZmluZSBfQ0dNX1BJUEVfQV9DU0NfQ09FRkYwMQko
VkxWX0RJU1BMQVlfQkFTRSArIDB4Njc5MDApCj4gICNkZWZpbmUgX0NHTV9QSVBFX0FfQ1NDX0NP
RUZGMjMJKFZMVl9ESVNQTEFZX0JBU0UgKyAweDY3OTA0KQoKLS0gCkphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
