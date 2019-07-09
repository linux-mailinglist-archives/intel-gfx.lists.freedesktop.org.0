Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B9C634B8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 13:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD066E030;
	Tue,  9 Jul 2019 11:04:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15ED089CA4
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 11:04:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 04:04:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170562049"
Received: from unknown (HELO [10.252.37.9]) ([10.252.37.9])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 04:04:56 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-12-lionel.g.landwerlin@intel.com>
 <156266657826.9375.60632268806953517@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a4a998ff-4f22-66c9-3ff1-115bf71da8b2@intel.com>
Date: Tue, 9 Jul 2019 14:04:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156266657826.9375.60632268806953517@skylake-alporthouse-com>
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

T24gMDkvMDcvMjAxOSAxMzowMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDkgMTA6MzI6MDcpCj4+ICtzdGF0aWMgaW50IGVtaXRfb2Ff
Y29uZmlnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4+ICAgewo+PiAtICAg
ICAgIHUzMiBpOwo+PiArICAgICAgIHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnID0g
c3RyZWFtLT5vYV9jb25maWc7Cj4+ICsgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEgPSBz
dHJlYW0tPmluaXRpYWxfY29uZmlnX3JxOwo+PiArICAgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1h
Owo+PiArICAgICAgIHUzMiAqY3M7Cj4+ICsgICAgICAgaW50IGVycjsKPj4gICAKPj4gLSAgICAg
ICBmb3IgKGkgPSAwOyBpIDwgbl9yZWdzOyBpKyspIHsKPj4gLSAgICAgICAgICAgICAgIGNvbnN0
IHN0cnVjdCBpOTE1X29hX3JlZyAqcmVnID0gcmVncyArIGk7Cj4+ICsgICAgICAgdm1hID0gaTkx
NV92bWFfaW5zdGFuY2Uob2FfY29uZmlnLT5vYmosICZpOTE1LT5nZ3R0LnZtLCBOVUxMKTsKPj4g
KyAgICAgICBpZiAodW5saWtlbHkoSVNfRVJSKHZtYSkpKQo+PiArICAgICAgICAgICAgICAgcmV0
dXJuIFBUUl9FUlIodm1hKTsKPj4gKwo+PiArICAgICAgIGVyciA9IGk5MTVfdm1hX3Bpbih2bWEs
IDAsIDAsIFBJTl9HTE9CQUwpOwo+PiArICAgICAgIGlmIChlcnIpCj4+ICsgICAgICAgICAgICAg
ICByZXR1cm4gZXJyOwo+IEhtbSwgc3RpbGwgYSBsb2NrIGludmVyc2lvbiBoZXJlIGFzIHdlIHdp
bGwgbm90IGJlIGFsbG93ZWQgdG8gcGluIGZyb20KPiB1bmRlcm5lYXRoIHJxLT50aW1lbGluZS0+
bXV0ZXguCj4gLUNocmlzCj4KSSBjYW4gcHV0IHRoaXMgZnVuY3Rpb24gYmFjayB1bmRlciB0aGUg
aTkxNS0+ZHJtLnN0cnVjdF9tdXRleC4KCldlIHN0aWxsIGRyb3AgdGhlIGxvY2sgdG8gZG8gdGhl
IHdhaXQuCgoKU291bmRzIG9rPwoKCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
