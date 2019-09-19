Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4788B7E21
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 17:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C791F6F493;
	Thu, 19 Sep 2019 15:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01E2C6F493
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 15:27:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 08:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="192077745"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga006.jf.intel.com with ESMTP; 19 Sep 2019 08:27:36 -0700
Date: Thu, 19 Sep 2019 08:27:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <20190919152739.GA29800@mdroper-desk1.amr.corp.intel.com>
References: <20190909231445.23815-1-radhakrishna.sripada@intel.com>
 <ee561b9f-ffa4-db0f-51da-42c298171dd7@intel.com>
 <8C2593290C2B3E488D763E819AF1F02E15F4CACF@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8C2593290C2B3E488D763E819AF1F02E15F4CACF@ORSMSX101.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Implement Wa_1409142259
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDQ6MDU6MDZQTSAtMDcwMCwgU3JpcGFkYSwgUmFkaGFr
cmlzaG5hIHdyb3RlOgo+IEhpIERhbmllbGUsCj4gCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBD
YW4geW91IGhlbHAgbWUgbWVyZ2UgdGhpcyBwYXRoYz8KPiAKPiBUaGFua3MsCj4gUmFkaGFrcmlz
aG5hKFJLKSBTcmlwYWRhCgpBcHBsaWVkIHRvIGRpbnEuICBUaGFua3MgZm9yIHRoZSBwYXRjaCBh
bmQgcmV2aWV3LgoKCk1hdHQKCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4g
RnJvbTogQ2VyYW9sbyBTcHVyaW8sIERhbmllbGUKPiA+IFNlbnQ6IFdlZG5lc2RheSwgU2VwdGVt
YmVyIDExLCAyMDE5IDExOjEyIEFNCj4gPiBUbzogU3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxyYWRo
YWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+OyBpbnRlbC0KPiA+IGdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiA+IENjOiBTdW1tZXJzLCBTdHVhcnQgPHN0dWFydC5zdW1tZXJzQGludGVsLmNv
bT47IFJvcGVyLCBNYXR0aGV3IEQKPiA+IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+ID4g
U3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gZHJtL2k5MTUvdGdsOiBJbXBsZW1lbnQgV2FfMTQwOTE0
MjI1OQo+ID4gCj4gPiAKPiA+IAo+ID4gT24gOS85LzE5IDQ6MTQgUE0sIFJhZGhha3Jpc2huYSBT
cmlwYWRhIHdyb3RlOgo+ID4gPiBEaXNhYmxlIENQUyBhd2FyZSBjb2xvciBwaXBlIGJ5IHNldHRp
bmcgY2hpY2tlbiBiaXQuCj4gPiA+Cj4gPiA+IEJTcGVjOiA1Mjg5MAo+ID4gPiBIU0RFUzogMTQw
OTE0MjI1OQo+ID4gPgo+ID4gPiB2MjogTW92ZSBXQSB0byBjdHggV0EncyhEYW5pZWxlKQo+ID4g
Pgo+ID4gPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KPiA+ID4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRl
bC5jb20+Cj4gPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNy
aXBhZGFAaW50ZWwuY29tPgo+ID4gCj4gPiBSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiA+IAo+ID4gRGFuaWVsZQo+
ID4gCj4gPiA+IC0tLQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMgfCAzICsrKwo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgICAgfCAxICsKPiA+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKPiA+ID4gaW5kZXggMjQzZDNmNzdiZTEzLi45NWVmMmYxZGZkYmIgMTAwNjQ0Cj4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4g
PiBAQCAtNTY3LDYgKzU2Nyw5IEBAIHN0YXRpYyB2b2lkIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5p
dChzdHJ1Y3QKPiA+IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ID4gPiAgIHN0YXRpYyB2b2lk
IHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
Cj4gPiA+ICAgCQkJCSAgICAgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ID4gPiAgIHsKPiA+
ID4gKwkvKiBXYV8xNDA5MTQyMjU5ICovCj4gPiA+ICsJV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTFf
Q09NTU9OX1NMSUNFX0NISUNLRU4zLAo+ID4gPiArCQkJICBHRU4xMl9ESVNBQkxFX0NQU19BV0FS
RV9DT0xPUl9QSVBFKTsKPiA+ID4gICB9Cj4gPiA+Cj4gPiA+ICAgc3RhdGljIHZvaWQKPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IDAwNmNmZmQ1NmJlMi4uNTNlMDc4ODJl
ZmI3Cj4gPiA+IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+ID4gQEAg
LTc2NjgsNiArNzY2OCw3IEBAIGVudW0gewo+ID4gPgo+ID4gPiAgICNkZWZpbmUgR0VOMTFfQ09N
TU9OX1NMSUNFX0NISUNLRU4zCj4gPiAJX01NSU8oMHg3MzA0KQo+ID4gPiAgICAgI2RlZmluZSBH
RU4xMV9CTEVORF9FTUJfRklYX0RJU0FCTEVfSU5fUkNDCSgxIDw8IDExKQo+ID4gPiArICAjZGVm
aW5lIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUJKDEgPDwgOSkKPiA+ID4KPiA+
ID4gICAjZGVmaW5lIEhJWl9DSElDS0VOCj4gPiAJX01NSU8oMHg3MDE4KQo+ID4gPiAgICMgZGVm
aW5lIENIVl9IWl84WDhfTU9ERV9JTl8xWAkJCQkoMSA8PAo+ID4gMTUpCj4gPiA+CgotLSAKTWF0
dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFi
bGVtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
