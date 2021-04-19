Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCDD363E11
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Apr 2021 10:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A34D89E2A;
	Mon, 19 Apr 2021 08:57:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8969C89E2A
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Apr 2021 08:57:54 +0000 (UTC)
IronPort-SDR: 1apjYgCz0G+UOVaXbYR49f2Sw9/J6vI0TgqDRpB9MfD4U+vuOg3GDWJ9k8QsvVtAElUbpUSEiy
 bwiCBtDL3juA==
X-IronPort-AV: E=McAfee;i="6200,9189,9958"; a="195320710"
X-IronPort-AV: E=Sophos;i="5.82,233,1613462400"; d="scan'208";a="195320710"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 01:57:53 -0700
IronPort-SDR: eAgw081AfBlcdNoZ8MXOFcyT0NcaWoh84PiCD1bA1o90cDnJ47fWZdTbkSsaE+9QRBgMHPmu36
 156SpNGyl/UA==
X-IronPort-AV: E=Sophos;i="5.82,233,1613462400"; d="scan'208";a="419924980"
Received: from boonkhai-mobl.gar.corp.intel.com (HELO [10.214.165.22])
 ([10.214.165.22])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 01:57:49 -0700
To: "jun.miao" <jun.miao@windriver.com>, jani.nikula@linux.intel.com,
 daniel@ffwll.ch, airlied@linux.ie
References: <20210414144828.22813-1-jun.miao@windriver.com>
 <338067c3-406e-a617-3efa-824787793e43@linux.intel.com>
 <1606bffe-f8c9-b619-9647-483393f87105@windriver.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f3bcef8e-4c02-b019-c3da-5d0ce95af1ac@linux.intel.com>
Date: Mon, 19 Apr 2021 09:57:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1606bffe-f8c9-b619-9647-483393f87105@windriver.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH][V2] drm/i915/gt: Fix a lockdep warning on
 RT kernel
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE1LzA0LzIwMjEgMTM6NDEsIGp1bi5taWFvIHdyb3RlOgo+IAo+IE9uIDQvMTUvMjEgNzox
MiBQTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+IFtQbGVhc2Ugbm90ZTogVGhpcyBlLW1haWwg
aXMgZnJvbSBhbiBFWFRFUk5BTCBlLW1haWwgYWRkcmVzc10KPj4KPj4gSGksCj4+Cj4+IE9uIDE0
LzA0LzIwMjEgMTU6NDgsIEp1biBNaWFvIHdyb3RlOgo+Pj4gRG9uYHQgc2ltcGxlIGRpc2FibGUg
YWxsIHRoZSBIRC1pcnEsIHNob3VsZCByYWNlIHRoZSByZWdpb24gaW4gdGhlCj4+PiBpbnRlbF9i
cmVhZGNydW1ic19kaXNhcm1faXJxKCkgb25seS4KPj4+Cj4+Cj4+IFdoYXQgaXMgSEQtaXJxLCBJ
IGFtLCBub3QgZmFtaWxpYXIgd2l0aCB0aGF0IHRlcm0/Cj4gCj4gRGlzYWJsZSBsb2NhbCBpbnRl
cnJ1cHQgZGVsaXZlcnkgZnJvbSBIYXJkd2FyZSBvZiBjcHUuOi0pCgpIVyB0aGVuLCBub3QgSEQu
IDspCgpbLi4uXQoKPj4+IMKgIHN0YXRpYyB2b2lkIGFkZF9zaWduYWxpbmdfY29udGV4dChzdHJ1
Y3QgaW50ZWxfYnJlYWRjcnVtYnMgKmIsCj4+PiBAQCAtMzM3LDkgKzMzOSw3IEBAIHZvaWQgX19p
bnRlbF9icmVhZGNydW1ic19wYXJrKHN0cnVjdCAKPj4+IGludGVsX2JyZWFkY3J1bWJzICpiKQo+
Pj4gwqDCoMKgwqDCoCAvKiBLaWNrIHRoZSB3b3JrIG9uY2UgbW9yZSB0byBkcmFpbiB0aGUgc2ln
bmFsZXJzLCBhbmQgZGlzYXJtIAo+Pj4gdGhlIGlycSAqLwo+Pj4gwqDCoMKgwqDCoCBpcnFfd29y
a19zeW5jKCZiLT5pcnFfd29yayk7Cj4+PiDCoMKgwqDCoMKgIHdoaWxlIChSRUFEX09OQ0UoYi0+
aXJxX2FybWVkKSAmJiAhYXRvbWljX3JlYWQoJmItPmFjdGl2ZSkpIHsKPj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgbG9jYWxfaXJxX2Rpc2FibGUoKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHNpZ25hbF9pcnFfd29yaygmYi0+aXJxX3dvcmspOwo+Pj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBsb2NhbF9pcnFfZW5hYmxlKCk7Cj4+Cj4+IFVuZm9ydHVuYXRlbHkgdGhl
cmUgaXMgYW5vdGhlciBsb2NrIGluc2lkZSBzaWduYWxfaXJxX3dvcmsgKHJxLT5sb2NrKQo+PiB3
aGljaCBuZWVkcyB0byBiZSB0YWtlbiBpcnEgc2FmZS4KPj4KPiBPaywgaSB3aWxsIGNoYW5nZSB0
aGUgbGVmdCBzcGluX2xvY2sgLT4gc3Bpbl9sb2NrX2lycXNhdmUuCj4gCj4gSW4gZmFjdCzCoCBp
bnNpZGUgc2lnbmFsX2lycV93b3JrLMKgIGludGVsX2JyZWFkY3J1bWJzX2FybV9pcnEgCj4gKCZi
LT5pcnFfbG9jaynCoCB3aGljaCBhbHNvIG5lZWRzIHRvIGJlIHRha2VuIGlycSBzYWZlLgo+IAo+
IFRoYW5rcywKPiAKPiBKdW4KPiAKPj4gUlQgcGF0Y2hlcyBhcmUgaW4gdHJlZSBvciBvdXQgb2Yg
dGhlIHRyZWUgdGhlc2UgZGF5cz8KPiAKPiBJIGJhc2Ugb24gdGhlIG1haW5saW5lIGtlcm5lbCB0
cmVl77yMIGFuZCB0aGlzIEJVRyB3YXJuaW5nIHdpbGwgbm90IAo+IGhhcHBlbi7CoCBCdXQgUlQg
djUuMTAgd2lsbCBjb21wbGFpbiAiQlVHIHdhcm5pbmciLCBzbyBpIHdhbnQgdGhpcyBwYXRjaCAK
PiB3aWxsIHNvbHZlIFJUIFdBUk5JTkcgd2l0aG91dCBhZmZlY3RpbmcgbWFpbmxpbmUgcGVyZm9y
bWFuY2UgaW4gbWFpbmxpbmUgCj4gdHJlZS4KClNvIHRoZSBwcm9ibGVtIGlzIHdlIGRpZCBub3Qg
dHlwaWNhbGx5IGRvIGNoYW5nZXMgdG8gY2F0ZXIgZm9yIG91dCBvZiAKdHJlZSBzdHVmZiwgdW5s
ZXNzIHRoZXkgYXJlIHJlYWxseSBtaW5pbWFsLiBBbmQgdGhpcyBvbmUgaW4gbXkgdmlldyBkb2Vz
IApub3QgcXVpdGUgcXVhbGlmeSBhcyBzdWNoLgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
