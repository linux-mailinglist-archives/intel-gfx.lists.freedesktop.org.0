Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 343B9B5733
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 22:53:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26F736ED60;
	Tue, 17 Sep 2019 20:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8E9D6ED60
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 20:53:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 13:53:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,518,1559545200"; d="scan'208";a="201904733"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.254.107.190])
 ([10.254.107.190])
 by fmsmga001.fm.intel.com with ESMTP; 17 Sep 2019 13:53:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
 <156870704430.5729.2381429891555562179@skylake-alporthouse-com>
 <a714318c-4fb2-763c-a5a5-8da2e64330cd@intel.com>
 <156874666808.5729.14440148691607723440@skylake-alporthouse-com>
 <89b92e0a-cbcc-3118-cbda-7e97438116fa@intel.com>
 <156874975966.5729.1781539964892814467@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <65f19994-d586-ff69-b1a4-5a80fa681c8a@intel.com>
Date: Tue, 17 Sep 2019 13:53:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <156874975966.5729.1781539964892814467@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix SFC reset flow
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
Cc: Owen Zhang <owen.zhang@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzE3LzIwMTkgMTI6NDkgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDktMTcgMjA6NDU6MDIpCj4+Cj4+IE9uIDkvMTcv
MjAxOSAxMTo1NyBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gUXVvdGluZyBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvICgyMDE5LTA5LTE3IDE5OjM2OjM1KQo+Pj4+IE9uIDkvMTcvMjAxOSAxMjo1
NyBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4+PiBRdW90aW5nIERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gKDIwMTktMDktMTYgMjI6NDE6MDQpCj4+Pj4+PiBPdXIgYXNzdW1wdGlvbiB0aGF0IHRo
ZSB3ZSBjYW4gYXNrIHRoZSBIVyB0byBsb2NrIHRoZSBTRkMgZXZlbiBpZiBub3QKPj4+Pj4+IGN1
cnJlbnRseSBpbiB1c2UgZG9lcyBub3QgbWF0Y2ggdGhlIEhXIGNvbW1pdG1lbnQuIFRoZSBleHBl
Y3RhdGlvbiBmcm9tCj4+Pj4+PiB0aGUgSFcgaXMgdGhhdCBTVyB3aWxsIG5vdCB0cnkgdG8gbG9j
ayB0aGUgU0ZDIGlmIHRoZSBlbmdpbmUgaXMgbm90Cj4+Pj4+PiB1c2luZyBpdCBhbmQgaWYgd2Ug
ZG8gdGhhdCB0aGUgYmVoYXZpb3IgaXMgdW5kZWZpbmVkOyBvbiBJQ0wgdGhlIEhXCj4+Pj4+PiBl
bmRzIHVwIHRvIHJldHVybmluZyB0aGUgYWNrIGFuZCBpZ25vcmluZyBvdXIgbG9jayByZXF1ZXN0
LCBidXQgdGhpcyBpcwo+Pj4+Pj4gbm90IGd1YXJhbnRlZWQgYW5kIHdlIHNob3VsZG4ndCBleHBl
Y3QgaXQgZ29pbmcgZm9yd2FyZC4KPj4+Pj4+Cj4+Pj4+PiBSZXBvcnRlZC1ieTogT3dlbiBaaGFu
ZyA8b3dlbi56aGFuZ0BpbnRlbC5jb20+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+Pj4+Pj4gQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Cj4+Pj4+PiAt
LS0KPj4+Pj4+IEBAIC0zNjYsMTAgKzM2OCwxMyBAQCBzdGF0aWMgdTMyIGdlbjExX2xvY2tfc2Zj
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPj4+Pj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc2ZjX2ZvcmNlZF9sb2NrX2Fja19iaXQsCj4+Pj4+
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNmY19mb3JjZWRf
bG9ja19hY2tfYml0LAo+Pj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAxMDAwLCAwLCBOVUxMKSkgewo+Pj4+Pj4gLSAgICAgICAgICAgICAgIERSTV9ERUJV
R19EUklWRVIoIldhaXQgZm9yIFNGQyBmb3JjZWQgbG9jayBhY2sgZmFpbGVkXG4iKTsKPj4+Pj4+
ICsgICAgICAgICAgICAgICAvKiBkaWQgd2UgcmFjZSB0aGUgdW5sb2NrPyAqLwo+Pj4+Pj4gKyAg
ICAgICAgICAgICAgIGlmIChpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIHNmY191c2FnZSkg
JiBzZmNfdXNhZ2VfYml0KQo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgRFJNX0VSUk9S
KCJXYWl0IGZvciBTRkMgZm9yY2VkIGxvY2sgYWNrIGZhaWxlZFxuIik7Cj4+Pj4+IFdoYXQncyBv
dXIgcGxhbiBpZiB0aGlzICpFUlJPUiogaXMgZXZlciB0cmlnZ2VyZWQ/Cj4+Pj4+Cj4+Pj4+IElm
IGl0IHJlbWFpbnMgZG8gbm90aGluZyBhbmQgY2hlY2sgdGhlIGxvZ3Mgb24gZGVhdGgsIHRoZW4g
aXQgcmVtYWlucwo+Pj4+PiBqdXN0IGEgZGVidWcgc3BsYXQuIElmIHRoZXJlIGlzIGEgcGxhbiB0
byBhY3R1YWxseSBkbyBzb21ldGhpbmcgdG8KPj4+Pj4gaGFuZGxlIHRoZSBlcnJvciwgZG8gaXQh
Cj4+Pj4+IC1DaHJpcwo+Pj4+IEFGQUlVIHRoZSBvbmx5IHRoaW5nIHdlIGNhbiBkbyBpcyBlc2Nh
bGF0ZSB0byBmdWxsIGdwdSByZXNldC4gSG93ZXZlciwKPj4+PiB0aGUgcHJvYmFiaWxpdHkgb2Yg
dGhpcyBmYWlsaW5nIHNob3VsZCBiZSBuZXh0IHRvIG5vbi1leGlzdGVudCAob25seSBvbmUKPj4+
PiBlbmdpbmUgY2FuIHVzZSB0aGUgU0ZDIGF0IGFueSB0aW1lIHNvIHRoZXJlIGlzIG5vIGxvY2sg
Y29udGVudGlvbiksIHNvCj4+Pj4gSSdtIG5vdCBjb252aW5jZWQgdGhlIGZhbGxiYWNrIGlzIHdv
cnRoIHRoZSBlZmZvcnQuIFRoZSBlcnJvciBpcyBzdGlsbAo+Pj4+IHVzZWZ1bCBJTU8gdG8gY2F0
Y2ggdW5leHBlY3RlZCBiZWhhdmlvciBvbiBuZXcgcGxhdGZvcm1zLCBhcyBpdCBoYXBwZW5lZAo+
Pj4+IGluIHRoaXMgY2FzZSB3aXRoIHRoZSBtZWRpYSB0ZWFtIHJlcG9ydGluZyBzZWVpbmcgdGhp
cyBtZXNzYWdlIG9uIGdlbjEyCj4+Pj4gd2l0aCB0aGUgcHJldmlvdXMgYmVoYXZpb3IuIFRoaXMg
c2FpZCwgSSdtIGhhcHB5IHRvIGFkZCB0aGUgZXh0cmEgbG9naWMKPj4+PiBpZiB5b3UgYmVsaWV2
ZSBpdCBpcyB3b3J0aCBpdC4KPj4+IFdlJ3ZlIHNlZSB0aGlzIG1lc3NhZ2Ugb24gZXZlcnkgaWNs
IHJ1biEKPj4+IC1DaHJpcwo+PiBJJ3ZlIG5ldmVyIG5vdGljZWQgaXQsIHdoaWNoIHRlc3RzIGFy
ZSBoaXR0aW5nIGl0PyBNeSB1bmRlcnN0YW5kaW5nIGZyb20KPj4gd2hhdCB0aGUgSFcgdGVhbSBz
YWlkIGlzIHRoYXQgb24gSUNMIHRoZSBhY2sgd2lsbCBhbHdheXMgY29tZSBiYWNrIChldmVuCj4+
IGlmIGl0IGlzIG5vdCBwYXJ0IG9mIHRoZSAib2ZmaWNpYWwiIFNXL0hXIGludGVyZmFjZSkgYW5k
IHRoZSBIVyB0d2Vhawo+PiB0aGF0IHN0b3BzIHRoYXQgaXMgYSBnZW4xMiBjaGFuZ2UuIFNvbWV0
aGluZyBlbHNlIG1pZ2h0IGJlIHdyb25nIGlzIHRoaXMKPj4gaXMgZmlyaW5nIG9mZiBpbiBvdXIg
SUNMIENJLCBhbHNvIGJlY2F1c2UgSSBkb24ndCB0aGluayB3ZSBoYXZlIGFueSB0ZXN0Cj4+IGNh
c2UgdGhhdCBhY3R1YWxseSB1c2VzIHRoZSBTRkMsIGRvIHdlPwo+IGh0dHBzOi8vaW50ZWwtZ2Z4
LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzY5MTEvZmktaWNsLXUyL2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVfaGFuZ2NoZWNrLmh0bWwKPgo+IEFsbCBpY2wsIGxpdmVfaGFuZ2NoZWNrIG9y
IGxpdmVfcmVzZXQsIGZvciBhcyBsb25nIGFzIEkgY2FuIHJlbWVtYmVyLgo+IC1DaHJpcwoKVGhh
bmtzLiBJJ20gZ29pbmcgdG8gY2hlY2sgd2l0aCB0aGUgSFcgdGVhbSB0byBzZWUgd2hhdCB0aGVp
ciAKcmVjb21tZW5kZWQgdGltZW91dCB2YWx1ZSBpcywgaW4gY2FzZSBvdXJzIGlzIHRvbyBzaG9y
dC4gSXQgY291bGQgYWxzbyAKYmUgdGhhdCBldmVuIG9uIElDTCB0aGUgYWNrIGlzIG5vdCBhbHdh
eXMgcmV0dXJuZWQgaWYgdGhlIFNGQyBpcyBub3QgCmFjdHVhbGx5IGluIHVzZS4KCkRhbmllbGUK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
