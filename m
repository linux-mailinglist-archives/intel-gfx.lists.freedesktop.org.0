Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDAA1021AF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 11:09:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6376E8C2;
	Tue, 19 Nov 2019 10:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4775A6E8C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 10:09:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 02:09:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="289556847"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 19 Nov 2019 02:09:13 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EAF3A5C1DF4; Tue, 19 Nov 2019 12:08:57 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191118184943.2593048-8-chris@chris-wilson.co.uk>
References: <20191118184943.2593048-1-chris@chris-wilson.co.uk>
 <20191118184943.2593048-8-chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 12:08:57 +0200
Message-ID: <87d0doxjnq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/18] drm/i915/gt: Only wait for register
 chipset flush if active
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gT25seSBz
ZXJpYWxpc2Ugd2l0aCB0aGUgY2hpcHNldCB1c2luZyBhbiBtbWlvIGlmIHRoZSBjaGlwc2V0IGlz
Cj4gY3VycmVudGx5IGFjdGl2ZS4gV2UgZXhwZWN0IHRoYXQgYW55IHdyaXRlcyBpbnRvIHRoZSBj
aGlwc2V0IHJhbmdlIHdpbGwKPiBzaW1wbHkgYmUgZm9yZ290dGVuIHVudGlsIGl0IHdha2VzIHVw
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jIHwgMiAr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+IGluZGV4IGI1YTliODdlNGVjOS4uYzRmZDhkNjVi
OGEzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4gQEAgLTMwNCw3ICszMDQs
NyBAQCB2b2lkIGludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
Cj4gIAo+ICAJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaChndCk7Cj4gIAo+IC0Jd2l0aF9pbnRlbF9y
dW50aW1lX3BtKHVuY29yZS0+cnBtLCB3YWtlcmVmKSB7Cj4gKwl3aXRoX2ludGVsX3J1bnRpbWVf
cG1faWZfaW5fdXNlKHVuY29yZS0+cnBtLCB3YWtlcmVmKSB7Cj4gIAkJdW5zaWduZWQgbG9uZyBm
bGFnczsKPiAgCj4gIAkJc3Bpbl9sb2NrX2lycXNhdmUoJnVuY29yZS0+bG9jaywgZmxhZ3MpOwo+
IC0tIAo+IDIuMjQuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
