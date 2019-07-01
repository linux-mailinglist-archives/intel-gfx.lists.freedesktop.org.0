Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB9A5BCB7
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B9B89B48;
	Mon,  1 Jul 2019 13:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC74A89B48
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:17:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 06:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="314881593"
Received: from unknown (HELO [10.249.141.63]) ([10.249.141.63])
 by orsmga004.jf.intel.com with ESMTP; 01 Jul 2019 06:15:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-8-lionel.g.landwerlin@intel.com>
 <156198682494.1583.17536983719626873726@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <990b6ecd-4260-5da0-83e8-ce22de2eecf0@intel.com>
Date: Mon, 1 Jul 2019 16:15:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156198682494.1583.17536983719626873726@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 07/11] drm/i915: add syncobj timeline
 support
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

T24gMDEvMDcvMjAxOSAxNjoxMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDEgMTI6MzQ6MzMpCj4+ICAgc3RydWN0IGk5MTVfZXhlY2J1
ZmZlciB7Cj4+ICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1OyAvKiogaTkx
NSBiYWNrcG9pbnRlciAqLwo+PiAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGU7IC8qKiBw
ZXItZmlsZSBsb29rdXAgdGFibGVzIGFuZCBsaW1pdHMgKi8KPj4gQEAgLTI3NSw2ICsyODIsNyBA
QCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyIHsKPj4gICAKPj4gICAgICAgICAgc3RydWN0IHsKPj4g
ICAgICAgICAgICAgICAgICB1NjQgZmxhZ3M7IC8qKiBBdmFpbGFibGUgZXh0ZW5zaW9ucyBwYXJh
bWV0ZXJzICovCj4+ICsgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZm
ZXJfZXh0X3RpbWVsaW5lX2ZlbmNlcyB0aW1lbGluZV9mZW5jZXM7Cj4+ICAgICAgICAgIH0gZXh0
ZW5zaW9uczsKPj4gICB9Owo+PiArc3RhdGljIGludCBwYXJzZV90aW1lbGluZV9mZW5jZXMoc3Ry
dWN0IGk5MTVfdXNlcl9leHRlbnNpb24gX191c2VyICpleHQsIHZvaWQgKmRhdGEpCj4+ICt7Cj4+
ICsgICAgICAgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIgPSBkYXRhOwo+PiArCj4+ICsgICAg
ICAgLyogVGltZWxpbmUgZmVuY2VzIGFyZSBpbmNvbXBhdGlibGUgd2l0aCB0aGUgZmVuY2UgYXJy
YXkgZmxhZy4gKi8KPj4gKyAgICAgICBpZiAoZWItPmFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0ZF
TkNFX0FSUkFZKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4+ICsKPj4gKyAg
ICAgICBpZiAoZWItPmV4dGVuc2lvbnMuZmxhZ3MgJiBCSVQoRFJNX0k5MTVfR0VNX0VYRUNCVUZG
RVJfRVhUX1RJTUVMSU5FX0ZFTkNFUykpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsKPiBmbGFncyBpcyA2NGIsIHNvIHdpc2VyIGlmIHdlIHVzZSBCSVRfVUxMKCkgZnJvbSB0aGUg
c3RhcnQuIFlvdSBkb24ndAo+IHdhbnQgdG8gY29weSBteSBidWdzIDspCj4gLUNocmlzCj4KRGFt
bWl0ISBXaHkgYXJlbid0IGFsbCBiaXQgbWFjcm9zIDY0Yml0cz8gOikKCgotTGlvbmVsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
