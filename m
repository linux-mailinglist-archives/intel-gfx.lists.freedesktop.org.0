Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B213E8506
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D39B6E19A;
	Tue, 29 Oct 2019 10:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17036E19A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:05:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:05:00 -0700
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="193557567"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:04:58 -0700
Date: Tue, 29 Oct 2019 12:03:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191029100326.GA12142@ideak-desk.fi.intel.com>
References: <20191029011014.286885-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029011014.286885-1-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Do not switch aux to TBT mode
 for non-TC ports
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDY6MTA6MTRQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBOb24tVEMgcG9ydHMgYWx3YXlzIGhhdmUgdGNfbW9kZSA9PSBUQ19Q
T1JUX1RCVF9BTFQgc28gaXQgd2FzCj4gc3dpdGNoaW5nIGF1eCB0byBUQyBtb2RlIGZvciBhbGwg
Y29tYm8tcGh5IHBvcnRzLCBoYXBwaWx5IHRoaXMgZGlkCj4gbm90IGNhdXNlZCBhbnkgaXNzdWUg
YnV0IGlzIGJldHRlciBmb2xsb3cgQlNwZWMuCj4gQWxzbyB0aGlzIGlzIHJlc2VydmVkIGJpdCBi
ZWZvcmUgSUNMLgo+IAo+IEZpeGVzOiA2ZjIxMWVkNDM0MzggKCJkcm0vaTkxNS9pY2w6IFNldCBU
QlQgSU8gaW4gQXV4IHRyYW5zYWN0aW9uIikKClRoaXMgYWN0dWFsbHkKRml4ZXM6IGU5YjdlMTQy
MmQ0MCAoImRybS9pOTE1OiBTYW5pdGl6ZSB0aGUgdGVybWlub2xvZ3kgdXNlZCBmb3IgVHlwZUMg
cG9ydCBtb2RlcyIpCgp0aGFua3MgZm9yIHNwb3R0aW5nIGl0LgoKPiBDYzogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyB8IDYgKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4g
aW5kZXggODY5ODllYzI1YmM2Li4zNzk2MjMzOTczMDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gQEAgLTEyOTEsNiArMTI5MSw5IEBAIHN0YXRpYyB1MzIg
c2tsX2dldF9hdXhfc2VuZF9jdGwoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgCQkJCXUz
MiB1bnVzZWQpCj4gIHsKPiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPQo+ICsJCQl0b19pOTE1KGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsK
PiArCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGk5MTUsIGludGVsX2RpZ19wb3J0
LT5iYXNlLnBvcnQpOwo+ICAJdTMyIHJldDsKPiAgCj4gIAlyZXQgPSBEUF9BVVhfQ0hfQ1RMX1NF
TkRfQlVTWSB8Cj4gQEAgLTEzMDMsNyArMTMwNiw4IEBAIHN0YXRpYyB1MzIgc2tsX2dldF9hdXhf
c2VuZF9jdGwoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgCSAgICAgIERQX0FVWF9DSF9D
VExfRldfU1lOQ19QVUxTRV9TS0woMzIpIHwKPiAgCSAgICAgIERQX0FVWF9DSF9DVExfU1lOQ19Q
VUxTRV9TS0woMzIpOwo+ICAKPiAtCWlmIChpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSA9PSBUQ19Q
T1JUX1RCVF9BTFQpCj4gKwlpZiAoaW50ZWxfcGh5X2lzX3RjKGk5MTUsIHBoeSkgJiYKPiArCSAg
ICBpbnRlbF9kaWdfcG9ydC0+dGNfbW9kZSA9PSBUQ19QT1JUX1RCVF9BTFQpCj4gIAkJcmV0IHw9
IERQX0FVWF9DSF9DVExfVEJUX0lPOwo+ICAKPiAgCXJldHVybiByZXQ7Cj4gLS0gCj4gMi4yMy4w
Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
