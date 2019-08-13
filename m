Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 145A88C461
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 00:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FBA6E0E2;
	Tue, 13 Aug 2019 22:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29AED6E0E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 22:40:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 15:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="178811743"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga003.jf.intel.com with ESMTP; 13 Aug 2019 15:40:14 -0700
Message-ID: <1565736068.30036.45.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 15:41:08 -0700
In-Reply-To: <20190813215707.14703-1-chris@chris-wilson.co.uk>
References: <20190813215707.14703-1-chris@chris-wilson.co.uk>
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include engine->mmio_base in the
 debug duump
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

T24gVHVlLCAyMDE5LTA4LTEzIGF0IDIyOjU3ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
U29tZSBJR1Qgd291bGQgbGlrZSB0byBrbm93IHRoZSBtbWlvIGFkZHJlc3Mgb2YgZWFjaCBlbmdp
bmUgc28gbWFrZQo+IGl0Cj4gYXZhaWxhYmxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKUmV2aWV3ZWQtYnk6IFN0dWFydCBTdW1t
ZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAxICsKPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2Nz
LmMKPiBpbmRleCA0NWY1YjYwMDE0NTYuLmVlNmNmNDRkN2Q4ZCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gQEAgLTE0MDcsNiArMTQwNyw3IEBAIHZv
aWQgaW50ZWxfZW5naW5lX2R1bXAoc3RydWN0IGludGVsX2VuZ2luZV9jcwo+ICplbmdpbmUsCj4g
wqAJfQo+IMKgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+YWN0aXZlLmxvY2ssIGZs
YWdzKTsKPiDCoAo+ICsJZHJtX3ByaW50ZihtLCAiXHRNTUlPIGJhc2U6IDB4JTA4eFxuIiwgZW5n
aW5lLT5tbWlvX2Jhc2UpOwo+IMKgCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldF9pZl9p
bl91c2UoJmVuZ2luZS0+aTkxNS0KPiA+cnVudGltZV9wbSk7Cj4gwqAJaWYgKHdha2VyZWYpIHsK
PiDCoAkJaW50ZWxfZW5naW5lX3ByaW50X3JlZ2lzdGVycyhlbmdpbmUsIG0pOwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
