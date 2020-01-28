Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1F414B0D3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 09:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289816ECF8;
	Tue, 28 Jan 2020 08:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1966ECF8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 08:24:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 00:23:39 -0800
X-IronPort-AV: E=Sophos;i="5.70,373,1574150400"; d="scan'208";a="222015580"
Received: from vogginge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 00:23:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200121171100.4370-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200121171100.4370-1-ville.syrjala@linux.intel.com>
 <20200121171100.4370-4-ville.syrjala@linux.intel.com>
Date: Tue, 28 Jan 2020 10:23:39 +0200
Message-ID: <875zgwat10.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/crt: Configure
 connector->polled and encoder->hpd_pin consistently
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

T24gVHVlLCAyMSBKYW4gMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBMZXQncyBtYWtlIHN1cmUgZW5jb2Rlci0+aHBkX3BpbiBhbmQg
Y29ubmVjdG9yLT5wb2xsZWQgYXJlIG1pcnJvcgo+IGltYWdlcyBvZiBlYWNoIG90aGVyICh3aGVu
IHdlIHdhbnQgdG8gdXNlIHBvbGxpbmcpLiBUaGUgb3RoZXIKPiBwb3RlbnRpYWxseSBwb2xsZWQg
Y29ubmVjdG9ycyAoc2R2byBhbmQgdHYpIGFscmVhZHkgZ2V0IHRoaXMgcmlnaHQuCj4KPiBBbHNv
IG51a2UgdGhlIHJ1ZHVuZGFudCBmb3JjZV9ob3RwbHVnX3JlcXVpcmVkIGluaXRpYWxpemF0aW9u
Cj4gKHRoZSB0aGluZyBpcyBremFsbG9jKCllZCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jIHwgMTAgKystLS0tLS0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NydC5jCj4gaW5kZXggZjk3NmI4MDBiMjQ1Li5iYThmOTJjMWVh
ZDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMKPiBAQCAt
MTAyNyw2ICsxMDI3LDggQEAgdm9pZCBpbnRlbF9jcnRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCj4gIAkgICAgIWRtaV9jaGVja19zeXN0ZW0oaW50ZWxfc3B1cmlvdXNf
Y3J0X2RldGVjdCkpIHsKPiAgCQljcnQtPmJhc2UuaHBkX3BpbiA9IEhQRF9DUlQ7Cj4gIAkJY3J0
LT5iYXNlLmhvdHBsdWcgPSBpbnRlbF9lbmNvZGVyX2hvdHBsdWc7Cj4gKwl9IGVsc2Ugewo+ICsJ
CWludGVsX2Nvbm5lY3Rvci0+cG9sbGVkID0gRFJNX0NPTk5FQ1RPUl9QT0xMX0NPTk5FQ1Q7Cj4g
IAl9Cj4gIAo+ICAJaWYgKEhBU19EREkoZGV2X3ByaXYpKSB7Cj4gQEAgLTEwNTcsMTQgKzEwNTks
NiBAQCB2b2lkIGludGVsX2NydF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKPiAgCj4gIAlkcm1fY29ubmVjdG9yX2hlbHBlcl9hZGQoY29ubmVjdG9yLCAmaW50ZWxfY3J0
X2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3MpOwo+ICAKPiAtCWlmICghSTkxNV9IQVNfSE9UUExVRyhk
ZXZfcHJpdikpCj4gLQkJaW50ZWxfY29ubmVjdG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BP
TExfQ09OTkVDVDsKPiAtCj4gLQkvKgo+IC0JICogQ29uZmlndXJlIHRoZSBhdXRvbWF0aWMgaG90
cGx1ZyBkZXRlY3Rpb24gc3R1ZmYKPiAtCSAqLwo+IC0JY3J0LT5mb3JjZV9ob3RwbHVnX3JlcXVp
cmVkID0gZmFsc2U7Cj4gLQo+ICAJLyoKPiAgCSAqIFRPRE86IGZpbmQgYSBwcm9wZXIgd2F5IHRv
IGRpc2NvdmVyIHdoZXRoZXIgd2UgbmVlZCB0byBzZXQgdGhlIHRoZQo+ICAJICogcG9sYXJpdHkg
YW5kIGxpbmsgcmV2ZXJzYWwgYml0cyBvciBub3QsIGluc3RlYWQgb2YgcmVseWluZyBvbiB0aGUK
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
