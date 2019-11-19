Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71801102228
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 11:37:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E966E883;
	Tue, 19 Nov 2019 10:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F706E525
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 10:36:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 02:36:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="204479130"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 19 Nov 2019 02:36:56 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A043E5C1DF4; Tue, 19 Nov 2019 12:36:41 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191119100929.2628356-7-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-7-chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 12:36:41 +0200
Message-ID: <877e3wxidi.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/17] drm/i915/gt: Only wait for register
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
dWs+CgpGcm9tIG90aGVyIHRocmVhZHMsCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlr
YS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+IGluZGV4IGI1
YTliODdlNGVjOS4uYzRmZDhkNjViOGEzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5jCj4gQEAgLTMwNCw3ICszMDQsNyBAQCB2b2lkIGludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVz
KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gIAo+ICAJaW50ZWxfZ3RfY2hpcHNldF9mbHVzaChndCk7
Cj4gIAo+IC0Jd2l0aF9pbnRlbF9ydW50aW1lX3BtKHVuY29yZS0+cnBtLCB3YWtlcmVmKSB7Cj4g
Kwl3aXRoX2ludGVsX3J1bnRpbWVfcG1faWZfaW5fdXNlKHVuY29yZS0+cnBtLCB3YWtlcmVmKSB7
Cj4gIAkJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAgCj4gIAkJc3Bpbl9sb2NrX2lycXNhdmUoJnVu
Y29yZS0+bG9jaywgZmxhZ3MpOwo+IC0tIAo+IDIuMjQuMApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
