Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA36F95A8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 17:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C366E4B5;
	Tue, 12 Nov 2019 16:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8286D89DC2
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 16:27:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:27:24 -0800
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="198130473"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 08:27:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191111111029.9126-5-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191111111029.9126-1-vandita.kulkarni@intel.com>
 <20191111111029.9126-5-vandita.kulkarni@intel.com>
Date: Tue, 12 Nov 2019 18:27:19 +0200
Message-ID: <87mud12h7c.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC-v2 4/9] drm/i915/dsi: Add cmd mode flags in
 display mode private flags
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
Cc: --cc=uma.shankar@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMSBOb3YgMjAxOSwgVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+IHdyb3RlOgo+IEFkZGluZyBURSBmbGFncyBhbmQgcGVyaW9kaWMgY29tbWFuZCBt
b2RlIGZsYWdzCj4gYXMgcGFydCBvZiBwcml2YXRlIGZsYWdzIHRvIGluZGljYXRlIHdoYXQgVEUg
aW50ZXJydXB0cwo+IHdlIHdvdWxkIGJlIGdldHRpbmcgaW5zdGVhZCBvZiB2YmxhbmtzIGluIGNh
c2Ugb2YgbWlwaSBkc2kKPiBjb21tYW5kIG1vZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRh
IEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCA2ICsrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IGluZGV4IGZhZGQ5ODUzZjk2
Ni4uZjM2ZThlNGU1YjU1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAtNjU2LDYgKzY1NiwxMiBAQCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zY2FsZXJfc3RhdGUgewo+ICAjZGVmaW5lIEk5MTVfTU9ERV9GTEFHX0dFVF9T
Q0FOTElORV9GUk9NX1RJTUVTVEFNUCAoMTw8MSkKPiAgLyogRmxhZyB0byB1c2UgdGhlIHNjYW5s
aW5lIGNvdW50ZXIgaW5zdGVhZCBvZiB0aGUgcGl4ZWwgY291bnRlciAqLwo+ICAjZGVmaW5lIEk5
MTVfTU9ERV9GTEFHX1VTRV9TQ0FOTElORV9DT1VOVEVSICgxPDwyKQo+ICsvKiBGbGFnIHRvIHVz
ZSBURSBmcm9tIERTSTAgaW5zdGVhZCBvZiBWQkkgaW4gY29tbWFuZCBtb2RlICovCj4gKyNkZWZp
bmUgSTkxNV9NT0RFX0ZMQUdfRFNJX1VTRV9URTAgKDE8PDMpCj4gKy8qIEZsYWcgdG8gdXNlIFRF
IGZyb20gRFNJMSBpbnN0ZWFkIG9mIFZCSSBpbiBjb21tYW5kIG1vZGUgKi8KPiArI2RlZmluZSBJ
OTE1X01PREVfRkxBR19EU0lfVVNFX1RFMSAoMTw8NCkKCk1pZ2h0IGJlIHVzZWZ1bCB0byBjb21t
ZW50IHRoYXQgb25lIG9yIHRoZSBvdGhlciBpcyBzZXQgaWYgdGhlIGNydGMgaGFzCmEgRFNJIGVu
Y29kZXIgdGhhdCdzIG9wZXJhdGluZyBpbiBjb21tYW5kIG1vZGUsIGFuZCBib3RoIGFyZSB1bnNl
dApvdGhlcndpc2UuCgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KCj4gKy8qIEZsYWcgdG8gaW5kaWNhdGUgbWlwaSBkc2kgcGVyaW9kaWMgY29tbWFuZCBt
b2RlIHdoZXJlIHdlIGRvIG5vdCBnZXQgVEUgKi8KPiArI2RlZmluZSBJOTE1X01PREVfRkxBR19E
U0lfUEVSSU9ESUNfQ01EX01PREUgKDE8PDUpCj4gIAo+ICBzdHJ1Y3QgaW50ZWxfcGlwZV93bSB7
Cj4gIAlzdHJ1Y3QgaW50ZWxfd21fbGV2ZWwgd21bNV07CgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
