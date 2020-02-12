Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 506DB15A43E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 10:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A89F86F48F;
	Wed, 12 Feb 2020 09:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2F46F48F
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 09:08:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 01:08:15 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="226803311"
Received: from pbaltus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.24])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 01:08:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200211185008.30806-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211185008.30806-1-jose.souza@intel.com>
Date: Wed, 12 Feb 2020 11:08:35 +0200
Message-ID: <87y2t8uq98.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mst: Set intel_dp_set_m_n()
 for MST slaves
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

T24gVHVlLCAxMSBGZWIgMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IENvbW1pdCAxYzlkMmViMjQxNTMgKCJkcm0vaTkxNTogbW92ZSBp
bnRlbF9kcF9zZXRfbV9uKCkgdG8gZW5jb2RlciBmb3IKPiBEREkgcGxhdGZvcm1zIikgbW92ZWQg
dGhlIGludGVsX2RwX3NldF9tX24oKSBmcm9tIGhzd19jcnRjX2VuYWJsZSgpCj4gdG8gaW50ZWxf
ZGRpX3ByZV9lbmFibGVfZHAoKSBidXQgaXQgbWlzc2VkIGFkZCBpdCB0bwo+IGludGVsX21zdF9w
cmVfZW5hYmxlX2RwKCkgY2F1c2luZyBNU1Qgc2xhdmVzIHRvIG5vdCB3b3JrLgo+Cj4gdjI6IE5v
dCBzZXR0aW5nIGludGVsX2RkaV9zZXRfZHBfbXNhKCkgdHdpY2UgZm9yIE1TVCBtYXN0ZXIKPgo+
IEZpeGVzOiAxYzlkMmViMjQxNTMgKCJkcm0vaTkxNTogbW92ZSBpbnRlbF9kcF9zZXRfbV9uKCkg
dG8gZW5jb2RlciBmb3IgRERJIHBsYXRmb3JtcyIpCj4gQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgoKVGhhbmtzLAoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+CgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyAgICB8IDUgKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9tc3QuYyB8IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKPiBpbmRleCA1NDRlMTU2MDNlZjkuLmExZmQ4ZmQ2N2M4NSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC0zNjE1LDEwICszNjE1LDExIEBA
IHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAo+ICAJLyogTVNUIHdpbGwgY2FsbCBhIHNldHRpbmcgb2YgTVNBIGFmdGVyIGFu
IGFsbG9jYXRpbmcgb2YgVmlydHVhbCBDaGFubmVsCj4gIAkgKiBmcm9tIE1TVCBlbmNvZGVyIHBy
ZV9lbmFibGUgY2FsbGJhY2suCj4gIAkgKi8KPiAtCWlmICghaW50ZWxfY3J0Y19oYXNfdHlwZShj
cnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkKPiArCWlmICghaW50ZWxfY3J0Y19oYXNf
dHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkgewo+ICAJCWludGVsX2RkaV9z
ZXRfZHBfbXNhKGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOwo+ICAKPiAtCWludGVsX2RwX3NldF9t
X24oY3J0Y19zdGF0ZSwgTTFfTjEpOwo+ICsJCWludGVsX2RwX3NldF9tX24oY3J0Y19zdGF0ZSwg
TTFfTjEpOwo+ICsJfQo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJs
ZV9oZG1pKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IGluZGV4IDljZDU5MTQxOTUzZC4uZDdiZmE3
YzM1MGU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jCj4gQEAgLTQ4MCw2ICs0ODAsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcHJlX2VuYWJs
ZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQlpbnRlbF9kZGlfZW5hYmxl
X3BpcGVfY2xvY2socGlwZV9jb25maWcpOwo+ICAKPiAgCWludGVsX2RkaV9zZXRfZHBfbXNhKHBp
cGVfY29uZmlnLCBjb25uX3N0YXRlKTsKPiArCj4gKwlpbnRlbF9kcF9zZXRfbV9uKHBpcGVfY29u
ZmlnLCBNMV9OMSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGludGVsX21zdF9lbmFibGVfZHAo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9w
ZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
