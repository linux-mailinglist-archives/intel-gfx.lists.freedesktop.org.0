Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E392B617C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 12:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 954AC6EEBA;
	Wed, 18 Sep 2019 10:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 258A76EEBA
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 10:32:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 03:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="211814177"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 18 Sep 2019 03:32:57 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 81FFD5C1DFD; Wed, 18 Sep 2019 13:32:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190917194746.26710-1-chris@chris-wilson.co.uk>
References: <20190917194746.26710-1-chris@chris-wilson.co.uk>
Date: Wed, 18 Sep 2019 13:32:37 +0300
Message-ID: <87d0fxrj22.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extend Haswell GT1 PSMI
 workaround to all
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQSBmZXcg
dGltZXMgaW4gQ0ksIHdlIGhhdmUgZGV0ZWN0ZWQgYSBHUFUgaGFuZyBvbiBvdXIgSGFzd2VsbCBH
VDIKPiBzeXN0ZW1zIHdpdGggdGhlIGNoYXJhY3RlcmlzdGljIElQRUhSIG9mIDB4NzgwYzAwMDAu
IFdoZW4gdGhlIFBTTUkgdy9hCj4gd2FzIGZpcnN0IGludHJvZHVjdGVkLCBpdCB3YXMgYXBwbGll
ZCB0byBhbGwgSGFzd2VsbCwgYnV0IGxhdGVyIG9uIHdlCj4gZm91bmQgYW4gZXJyYXR1bSB0aGF0
IHN1cHBvc2VkbHkgcmVzdHJpY3RlZCB0aGUgaXNzdWUgdG8gR1QxIGFuZCBzbwo+IGNvbnN0cmFp
bmVkIGl0IG9ubHkgYmUgYXBwbGllZCBvbiBHVDEuIFRoYXQgbWF5IGhhdmUgYmVlbiBhIG1pc3Rh
a2UuLi4KPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTE2OTIKPiBGaXhlczogMTY3YmM3NTllODIzICgiZHJtL2k5MTU6IFJlc3RyaWN0
IFBTTUkgY29udGV4dCBsb2FkIHcvYSB0byBIYXN3ZWxsIEdUMSIpCj4gUmVmZXJlbmNlczogMmM1
NTAxODM0NzZkICgiZHJtL2k5MTU6IERpc2FibGUgUFNNSSBzbGVlcCBtZXNzYWdlcyBvbiBhbGwg
cmluZ3MgYXJvdW5kIGNvbnRleHQgc3dpdGNoZXMiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCkkgc2VlIG5vIGhhcm0gb2YgZXh0ZW5kaW5nIHRo
ZSB1bWJyZWxsYSBkaXNhYmxpbmcgc2xlZXAKc28sCgpBY2tlZC1ieTogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nYnVmZmVyLmMKPiBpbmRleCBhNzMyOTZlNmIxM2QuLmEyNWI4NGIxMmVmMSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiBAQCAtMTU3
NCw3ICsxNTc0LDcgQEAgc3RhdGljIGlubGluZSBpbnQgbWlfc2V0X2NvbnRleHQoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIHUzMiBmbGFncykKPiAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSA9IHJxLT5lbmdpbmU7Cj4gIAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKPiAgCWNvbnN0
IGludCBudW1fZW5naW5lcyA9Cj4gLQkJSVNfSFNXX0dUMShpOTE1KSA/IFJVTlRJTUVfSU5GTyhp
OTE1KS0+bnVtX2VuZ2luZXMgLSAxIDogMDsKPiArCQlJU19IQVNXRUxMKGk5MTUpID8gUlVOVElN
RV9JTkZPKGk5MTUpLT5udW1fZW5naW5lcyAtIDEgOiAwOwo+ICAJYm9vbCBmb3JjZV9yZXN0b3Jl
ID0gZmFsc2U7Cj4gIAlpbnQgbGVuOwo+ICAJdTMyICpjczsKPiAtLSAKPiAyLjIzLjAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
