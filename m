Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43015E2BB5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 10:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A556E14F;
	Thu, 24 Oct 2019 08:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09F4E6E14F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 08:05:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 01:05:07 -0700
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="192109103"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 01:05:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <57510F3E2013164E925CD03ED7512A3B80987BB5@BGSMSX108.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191022140300.20872-1-jani.nikula@intel.com>
 <57510F3E2013164E925CD03ED7512A3B80987BB5@BGSMSX108.gar.corp.intel.com>
Date: Thu, 24 Oct 2019 11:05:02 +0300
Message-ID: <87y2xad0wh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: add compression parameter
 block definition
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

T24gVGh1LCAyNCBPY3QgMjAxOSwgIkt1bGthcm5pLCBWYW5kaXRhIiA8dmFuZGl0YS5rdWxrYXJu
aUBpbnRlbC5jb20+IHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9t
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiBTZW50OiBUdWVzZGF5LCBP
Y3RvYmVyIDIyLCAyMDE5IDc6MzMgUE0KPj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgS3Vsa2Fy
bmksIFZhbmRpdGEKPj4gPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+PiBTdWJqZWN0OiBb
UEFUQ0hdIGRybS9pOTE1L2Jpb3M6IGFkZCBjb21wcmVzc2lvbiBwYXJhbWV0ZXIgYmxvY2sgZGVm
aW5pdGlvbgo+PiAKPj4gQWRkIGRlZmluaXRpb24gZm9yIGJsb2NrIDU2LCB0aGUgY29tcHJlc3Np
b24gcGFyYW1ldGVycy4KPj4gCj4+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGth
cm5pQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ZidF9kZWZzLmggfCA1MCArKysrKysrKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwg
NTAgaW5zZXJ0aW9ucygrKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmJ0X2RlZnMuaAo+PiBpbmRleCBlMzA0NWNlZDRiZmUuLjdmMjIyMTk2ZDJkNSAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVm
cy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMu
aAo+PiBAQCAtMTE0LDYgKzExNCw3IEBAIGVudW0gYmRiX2Jsb2NrX2lkIHsKPj4gIAlCREJfTFZE
U19QT1dFUgkJCT0gNDQsCj4+ICAJQkRCX01JUElfQ09ORklHCQkJPSA1MiwKPj4gIAlCREJfTUlQ
SV9TRVFVRU5DRQkJPSA1MywKPj4gKwlCREJfQ09NUFJFU1NJT05fUEFSQU1FVEVSUwk9IDU2LAo+
PiAgCUJEQl9TS0lQCQkJPSAyNTQsIC8qIFZCSU9TIHByaXZhdGUgYmxvY2ssIGlnbm9yZQo+PiAq
Lwo+PiAgfTsKPj4gCj4+IEBAIC04MTEsNCArODEyLDUzIEBAIHN0cnVjdCBiZGJfbWlwaV9zZXF1
ZW5jZSB7Cj4+ICAJdTggZGF0YVswXTsgLyogdXAgdG8gNiB2YXJpYWJsZSBsZW5ndGggYmxvY2tz
ICovICB9IF9fcGFja2VkOwo+PiAKPj4gKy8qCj4+ICsgKiBCbG9jayA1NiAtIENvbXByZXNzaW9u
IFBhcmFtZXRlcnMKPj4gKyAqLwo+PiArCj4+ICsjZGVmaW5lIFZCVF9SQ19CVUZGRVJfQkxPQ0tf
U0laRV8xS0IJMAo+PiArI2RlZmluZSBWQlRfUkNfQlVGRkVSX0JMT0NLX1NJWkVfNEtCCTEKPj4g
KyNkZWZpbmUgVkJUX1JDX0JVRkZFUl9CTE9DS19TSVpFXzE2S0IJMgo+PiArI2RlZmluZSBWQlRf
UkNfQlVGRkVSX0JMT0NLX1NJWkVfNjRLQgkzCj4+ICsKPj4gKyNkZWZpbmUgVkJUX0RTQ19MSU5F
X0JVRkZFUl9ERVBUSCh2YnRfdmFsdWUpCSgodmJ0X3ZhbHVlKSArIDgpIC8qCj4+IGJpdHMgKi8K
Pj4gKyNkZWZpbmUgVkJUX0RTQ19NQVhfQlBQKHZidF92YWx1ZSkJCSg2ICsgKHZidF92YWx1ZSkg
KiAyKQo+PiArCj4+ICtzdHJ1Y3QgZHNjX2NvbXByZXNzaW9uX3BhcmFtZXRlcnNfZW50cnkgewo+
PiArCXU4IHZlcnNpb25fbWFqb3I6NDsKPj4gKwl1OCB2ZXJzaW9uX21pbm9yOjQ7Cj4+ICsKPj4g
Kwl1OCByY19idWZmZXJfYmxvY2tfc2l6ZToyOwo+PiArCXU4IHJlc2VydmVkMTo2Owo+PiArCj4+
ICsJLyoKPj4gKwkgKiBCdWZmZXIgc2l6ZSBpbiBieXRlczoKPj4gKwkgKgo+PiArCSAqIDQgXiBy
Y19idWZmZXJfYmxvY2tfc2l6ZSAqIDEwMjQgKiAocmNfYnVmZmVyX3NpemUgKyAxKSBieXRlcwo+
PiArCSAqLwo+PiArCXU4IHJjX2J1ZmZlcl9zaXplOwo+PiArCXUzMiBzbGljZXNfcGVyX2xpbmU7
Cj4+ICsKPj4gKwl1OCBsaW5lX2J1ZmZlcl9kZXB0aDo0Owo+PiArCXU4IHJlc2VydmVkMjo0Owo+
PiArCj4+ICsJLyogRmxhZyBCaXRzIDEgKi8KPj4gKwl1OCBibG9ja19wcmVkaWN0aW9uX2VuYWJs
ZToxOwo+PiArCXU4IHJlc2VydmVkMzo3Owo+PiArCj4+ICsJdTggbWF4X2JwcDsgLyogbWFwcGlu
ZyAqLwo+PiArCj4+ICsJLyogQ29sb3IgZGVwdGggY2FwYWJpbGl0aWVzICovCj4KPiBJIGRpZCBu
b3QgdW5kZXJzdGFuZCB0aGUgc3BsaXQgaGVyZSwgdGhlIHNwZWMgc2F5cyBCaXRzIDctNCByZXNl
cnZlZC4KCkJpdCAwICphbmQqIGJpdHMgNy00IGFyZSByZXNlcnZlZC4KCj4+ICsJdTggcmVzZXJ2
ZWQ0OjE7Cj4+ICsJdTggc3VwcG9ydF84YnBjOjE7Cj4+ICsJdTggc3VwcG9ydF8xMGJwYzoxOwo+
PiArCXU4IHN1cHBvcnRfMTJicGM6MTsKPj4gKwl1OCByZXNlcnZlZDU6NDsKPgo+IERvIHdlIG5v
dCBuZWVkIERTQyBzbGljZSBoZWlnaHQ/CgpXaG9vcHMuIFBvc3RlZCB2Mi4KClRoYW5rcywKSmFu
aS4KCgo+Cj4gUmVnYXJkcywKPiAtIFZhbmRpdGEKPj4gK30gX19wYWNrZWQ7Cj4+ICsKPj4gK3N0
cnVjdCBiZGJfY29tcHJlc3Npb25fcGFyYW1ldGVycyB7Cj4+ICsJdTE2IGVudHJ5X3NpemU7Cj4+
ICsJc3RydWN0IGRzY19jb21wcmVzc2lvbl9wYXJhbWV0ZXJzX2VudHJ5IGRhdGFbMTZdOyB9IF9f
cGFja2VkOwo+PiArCj4+ICAjZW5kaWYgLyogX0lOVEVMX1ZCVF9ERUZTX0hfICovCj4+IC0tCj4+
IDIuMjAuMQo+CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
