Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3819A634CA
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 13:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140AE89CA4;
	Tue,  9 Jul 2019 11:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCDD89CA4
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 11:16:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 04:16:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170564610"
Received: from unknown (HELO [10.252.37.9]) ([10.252.37.9])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 04:16:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-12-lionel.g.landwerlin@intel.com>
 <156266657826.9375.60632268806953517@skylake-alporthouse-com>
 <a4a998ff-4f22-66c9-3ff1-115bf71da8b2@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <3c4be6fb-e318-6eb5-46ef-2c32a7004618@intel.com>
Date: Tue, 9 Jul 2019 14:16:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <a4a998ff-4f22-66c9-3ff1-115bf71da8b2@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 11/12] drm/i915/perf: execute OA
 configuration from command stream
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDkvMDcvMjAxOSAxNDowNCwgTGlvbmVsIExhbmR3ZXJsaW4gd3JvdGU6Cj4gT24gMDkvMDcv
MjAxOSAxMzowMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiBRdW90aW5nIExpb25lbCBMYW5kd2Vy
bGluICgyMDE5LTA3LTA5IDEwOjMyOjA3KQo+Pj4gK3N0YXRpYyBpbnQgZW1pdF9vYV9jb25maWco
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJl
YW0pCj4+PiDCoCB7Cj4+PiAtwqDCoMKgwqDCoMKgIHUzMiBpOwo+Pj4gK8KgwqDCoMKgwqDCoCBz
dHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZyA9IHN0cmVhbS0+b2FfY29uZmlnOwo+Pj4g
K8KgwqDCoMKgwqDCoCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSA9IHN0cmVhbS0+aW5pdGlhbF9j
b25maWdfcnE7Cj4+PiArwqDCoMKgwqDCoMKgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+Pj4gK8Kg
wqDCoMKgwqDCoCB1MzIgKmNzOwo+Pj4gK8KgwqDCoMKgwqDCoCBpbnQgZXJyOwo+Pj4gwqAgLcKg
wqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgbl9yZWdzOyBpKyspIHsKPj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpOTE1X29hX3JlZyAqcmVnID0gcmVncyAr
IGk7Cj4+PiArwqDCoMKgwqDCoMKgIHZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9hX2NvbmZpZy0+
b2JqLCAmaTkxNS0+Z2d0dC52bSwgTlVMTCk7Cj4+PiArwqDCoMKgwqDCoMKgIGlmICh1bmxpa2Vs
eShJU19FUlIodm1hKSkpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
UFRSX0VSUih2bWEpOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCBlcnIgPSBpOTE1X3ZtYV9waW4o
dm1hLCAwLCAwLCBQSU5fR0xPQkFMKTsKPj4+ICvCoMKgwqDCoMKgwqAgaWYgKGVycikKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+IEhtbSwgc3RpbGwgYSBs
b2NrIGludmVyc2lvbiBoZXJlIGFzIHdlIHdpbGwgbm90IGJlIGFsbG93ZWQgdG8gcGluIGZyb20K
Pj4gdW5kZXJuZWF0aCBycS0+dGltZWxpbmUtPm11dGV4Lgo+PiAtQ2hyaXMKPj4KPiBJIGNhbiBw
dXQgdGhpcyBmdW5jdGlvbiBiYWNrIHVuZGVyIHRoZSBpOTE1LT5kcm0uc3RydWN0X211dGV4Lgo+
Cj4gV2Ugc3RpbGwgZHJvcCB0aGUgbG9jayB0byBkbyB0aGUgd2FpdC4KPgo+Cj4gU291bmRzIG9r
Pwo+Cj4KPiAtTGlvbmVsCgoKV2hlbiB3aXRoIGxvY2tpbmcgYXJvdW5kIHRoZSBnbG9iYWwgcGlu
LgoKCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
