Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 146279FDC2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 11:00:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677C8891A8;
	Wed, 28 Aug 2019 09:00:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20726891A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 09:00:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 02:00:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,440,1559545200"; d="scan'208";a="380326225"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2019 02:00:38 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 073875C1E29; Wed, 28 Aug 2019 12:00:36 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156690742523.15406.5516780195775937383@skylake-alporthouse-com>
References: <20190827115413.31225-1-chris@chris-wilson.co.uk>
 <156690742523.15406.5516780195775937383@skylake-alporthouse-com>
Date: Wed, 28 Aug 2019 12:00:35 +0300
Message-ID: <87a7bty898.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: stall on render flush
 before writing seqno
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjcgMTI6NTQ6MTMpCj4+IFF1aXRlIHJhcmVseSB3ZSBz
ZWUgdGhhdCB0aGUgQ1MgY29tcGxldGlvbiBldmVudCBmaXJlcyBiZWZvcmUgdGhlCj4+IGJyZWFk
Y3J1bWIgaXMgY29oZXJlbnQuIFRyeSByZWFycmFuZ2luZyB0aGUgYnJlYWRjcnVtYiB3cml0ZSBz
ZXF1ZW5jZQo+PiBzdWNoIHRoYXQgdGhlIENTX1NUQUxMIGlzIG9uIHRoZSBwb3N0LXN5bmMgd3Jp
dGUgcGlwZWNvbnRyb2wuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFA
bGludXguaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jIHwgMTcgKysrKysrKystLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+PiBpbmRleCA4MGEzZjFkYmI0NTYuLjY2OWU4YmQ5ZjgzMCAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4gQEAgLTI5NjEsMTggKzI5NjEsMTcgQEAgc3RhdGlj
IHUzMiAqZ2VuOF9lbWl0X2ZpbmlfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1
ZXN0LCB1MzIgKmNzKQo+PiAgCj4+ICBzdGF0aWMgdTMyICpnZW44X2VtaXRfZmluaV9icmVhZGNy
dW1iX3JjcyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LCB1MzIgKmNzKQo+PiAgewo+PiAt
ICAgICAgIGNzID0gZ2VuOF9lbWl0X2dndHRfd3JpdGVfcmNzKGNzLAo+PiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlcXVlc3QtPmZlbmNlLnNlcW5vLAo+PiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlcXVlc3QtPnRpbWVsaW5lLT5od3NwX29m
ZnNldCwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRS
T0xfUkVOREVSX1RBUkdFVF9DQUNIRV9GTFVTSCB8Cj4+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgUElQRV9DT05UUk9MX0RFUFRIX0NBQ0hFX0ZMVVNIIHwKPj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5B
QkxFKTsKPj4gLQo+PiAgICAgICAgIC8qIFhYWCBmbHVzaCt3cml0ZStDU19TVEFMTCBhbGwgaW4g
b25lIHVwc2V0cyBnZW1fY29uY3VycmVudF9ibHQ6a2JsICovCj4+ICAgICAgICAgY3MgPSBnZW44
X2VtaXRfcGlwZV9jb250cm9sKGNzLAo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFIHwKPj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgUElQRV9DT05UUk9MX0NTX1NUQUxMLAo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfUkVOREVSX1RBUkdFVF9DQUNIRV9GTFVT
SCB8Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9E
RVBUSF9DQUNIRV9GTFVTSCB8Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFBJUEVfQ09OVFJPTF9EQ19GTFVTSF9FTkFCTEUsCj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDApOwo+PiArICAgICAgIGNzID0gZ2VuOF9lbWl0X2dndHRfd3JpdGVfcmNz
KGNzLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlcXVlc3QtPmZl
bmNlLnNlcW5vLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlcXVl
c3QtPnRpbWVsaW5lLT5od3NwX29mZnNldCwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFIHwKPgo+IE9yIHBlcmhhcHMgd2Ug
bmVlZCBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5BQkxFIGhlcmUuCj4KPiBJIHRoaW5rIHRoYXQg
bWlnaHQgbWFrZSBtb3JlIHNlbnNlIChyZXBsYWNlIERDX0ZMVVNIIHdpdGggd2hhdGV2ZXIgbWln
aHQKPiBmbHVzaCB0aGUgcG9zdC1zeW5jIHdyaXRlKS4KCldvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8g
dHJ5IHRvIGJlIGFzIG11Y2ggc2ltaWxhciBhcyBwb3NzaWJsZQp3aXRoIHRoZSAtPmVtaXRfZmx1
c2g/CgpJZiBzbywgaXRlcmF0aW5nIGZ1cnRoZXIsIG5vdyB3aXRoIHNlcW5vIGJlaW5nIHBlciBj
b250ZXh0LApiZSBleGFjdGx5IHRoZSBzYW1lIGFzIGVtaXRfZmx1c2ggYW5kIHN0YXJ0IHRvIHVz
ZSBwcGd0dCBzZXFub3M/CgotTWlrYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
