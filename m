Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E08C434B5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 11:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4B4892EF;
	Thu, 13 Jun 2019 09:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D325892EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 09:33:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 02:33:22 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2019 02:33:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156041738573.27443.11336619597847360845@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190613084416.6794-1-jani.nikula@intel.com>
 <156041738573.27443.11336619597847360845@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 12:36:20 +0300
Message-ID: <87v9x9x1wr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: make intel_sdvo_regs.h
 self-contained
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

T24gVGh1LCAxMyBKdW4gMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDYtMTMgMDk6NDQ6MTQpCj4+
IEVuc3VyZSBpbnRlbF9zZHZvX3JlZ3MuaCBpcyBzZWxmLWNvbnRhaW5lZCBhbmQgcmVtYWlucyB0
aGF0IHdheS4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVy
LXRlc3QgfCAxICsKPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9fcmVncy5oICAg
IHwgNyArKysrKysrCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+PiAKPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPj4gaW5kZXggNmVmM2I2
NDdhYzY1Li5jMDQyOTdjZTU3YjQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlLmhlYWRlci10ZXN0Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlLmhlYWRlci10ZXN0Cj4+IEBAIC01Niw2ICs1Niw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKPj4g
ICAgICAgICBpbnRlbF9xdWlya3MuaCBcCj4+ICAgICAgICAgaW50ZWxfcnVudGltZV9wbS5oIFwK
Pj4gICAgICAgICBpbnRlbF9zZHZvLmggXAo+PiArICAgICAgIGludGVsX3Nkdm9fcmVncy5oIFwK
Pj4gICAgICAgICBpbnRlbF9zaWRlYmFuZC5oIFwKPj4gICAgICAgICBpbnRlbF9zcHJpdGUuaCBc
Cj4+ICAgICAgICAgaW50ZWxfdHYuaCBcCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9zZHZvX3JlZ3MuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9f
cmVncy5oCj4+IGluZGV4IGU5YmEzYjA0N2Y5My4uYWYwMmMwZDIxZDZiIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvX3JlZ3MuaAo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvX3JlZ3MuaAo+PiBAQCAtMjQsNiArMjQsMTEgQEAKPj4g
ICAqICAgICBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0Pgo+PiAgICovCj4+ICAKPj4gKyNp
Zm5kZWYgX19JTlRFTF9TRFZPX1JFR1NfSF9fCj4+ICsjZGVmaW5lIF9fSU5URUxfU0RWT19SRUdT
X0hfXwo+PiArCj4KPiAjaW5jbHVkZSA8bGludXgvY29tcGlsZXIuaD4gb3IgY29tcGlsZXJfYXR0
cmlidXRlcy5oIGZvciBfX3BhY2tlZAo+Cj4gTG9va3MgbGlrZSByYW5kb20gaW5jbHVzaW9uIG90
aGVyd2lzZS4KPgo+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CgpIdWgsIG5vIGVycm9ycyBh
Ym91dCBfX3BhY2tlZCB0aGF0IEkgY291bGQgc2VlLCB3aGF0IGFtIEkgbWlzc2luZz8KPGxpbnV4
L3R5cGVzLmg+IGlzIGZvciBrZXJuZWwgdW5zaWduZWQgdHlwZXMuCgpCUiwKSmFuaS4KCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
