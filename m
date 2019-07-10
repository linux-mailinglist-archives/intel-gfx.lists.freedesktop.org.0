Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AF264372
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 10:17:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82F1F6E0BC;
	Wed, 10 Jul 2019 08:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E0DC6E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 08:17:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 01:17:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,473,1557212400"; d="scan'208";a="192968754"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 01:17:40 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 503DD5C093D; Wed, 10 Jul 2019 11:17:27 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190707210024.26192-5-chris@chris-wilson.co.uk>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-5-chris@chris-wilson.co.uk>
Date: Wed, 10 Jul 2019 11:17:27 +0300
Message-ID: <8736je1ey0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/gtt: Markup i915_ppgtt depth
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhpcyB3
aWxsIGJlIHVzZWZ1bCB0byBjb25zb2xpZGF0ZSByZWN1cnNpdmUgY29kZS4KPgo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMgKysrCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIHwgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IGluZGV4IGRhNGRi
NzZjZTA1NC4uMmZjNjBlOGFjZDlhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKPiBAQCAtMTUzNyw2ICsxNTM3LDggQEAgc3RhdGljIHZvaWQgcHBndHRfaW5pdChzdHJ1Y3Qg
aTkxNV9wcGd0dCAqcHBndHQsIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gIAlwcGd0dC0+dm0udm1h
X29wcy51bmJpbmRfdm1hICA9IHBwZ3R0X3VuYmluZF92bWE7Cj4gIAlwcGd0dC0+dm0udm1hX29w
cy5zZXRfcGFnZXMgICA9IHBwZ3R0X3NldF9wYWdlczsKPiAgCXBwZ3R0LT52bS52bWFfb3BzLmNs
ZWFyX3BhZ2VzID0gY2xlYXJfcGFnZXM7Cj4gKwo+ICsJcHBndHQtPnZtLnRvcCA9IGk5MTVfdm1f
aXNfNGx2bCgmcHBndHQtPnZtKSA/IDMgOiAyOwoKUGVyaGFwcyBpdCBiZWNvbWVzIGV2aWRlbnQg
bGF0ZXIgaW4gdGhlIHNlcmllcyB3aHkgdG9wIGFuZApub3QgbGV2ZWwsIHNvIHRoZXNlIHdvdWxk
IGJlIDQgYW5kIDMgaGVyZS4KCi1NaWthCgo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBpbml0X3Bk
X24oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gQEAgLTIwODYsNiArMjA4OCw3IEBA
IHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuNl9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gIAo+ICAJ
cHBndHRfaW5pdCgmcHBndHQtPmJhc2UsICZpOTE1LT5ndCk7Cj4gKwlwcGd0dC0+YmFzZS52bS50
b3AgPSAxOwo+ICAKPiAgCXBwZ3R0LT5iYXNlLnZtLmFsbG9jYXRlX3ZhX3JhbmdlID0gZ2VuNl9h
bGxvY192YV9yYW5nZTsKPiAgCXBwZ3R0LT5iYXNlLnZtLmNsZWFyX3JhbmdlID0gZ2VuNl9wcGd0
dF9jbGVhcl9yYW5nZTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAo+IGluZGV4IDQ4
YmI4YzUxMjVlMy4uMTE5YjZkMzNiMjY2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmgKPiBAQCAtMzIzLDYgKzMyMyw3IEBAIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ugewo+
ICAJc3RydWN0IGk5MTVfcGFnZV9kbWEgc2NyYXRjaF9wdDsKPiAgCXN0cnVjdCBpOTE1X3BhZ2Vf
ZG1hIHNjcmF0Y2hfcGQ7Cj4gIAlzdHJ1Y3QgaTkxNV9wYWdlX2RtYSBzY3JhdGNoX3BkcDsgLyog
R0VOOCsgJiA0OGIgUFBHVFQgKi8KPiArCWludCB0b3A7Cj4gIAo+ICAJLyoqCj4gIAkgKiBMaXN0
IG9mIHZtYSBjdXJyZW50bHkgYm91bmQuCj4gLS0gCj4gMi4yMC4xCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
