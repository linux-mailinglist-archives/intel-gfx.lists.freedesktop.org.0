Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB153A15DB
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 15:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9536E314;
	Wed,  9 Jun 2021 13:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 950386E2E1;
 Wed,  9 Jun 2021 13:42:47 +0000 (UTC)
IronPort-SDR: uLtGke1akuY/4/Fxp3RiH3ZQqWNMPYkaoeSMDihhVYb+HJP9Km30g42jY/ftSJQ7cElxXGcDEf
 +7YsUnCC8q7Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="226443557"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="226443557"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 06:42:47 -0700
IronPort-SDR: yqJD6s2GqpnD7kjI1gd2vKk30P4M533hm+gKbRMN4PryaYevWGpNggO11eNONfdfUB4dXGL3CW
 ybWU/UHmEC2g==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="482387071"
Received: from mjkelly-mobl1.ger.corp.intel.com (HELO [10.213.215.68])
 ([10.213.215.68])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 06:42:44 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
 <20210609063436.284332-9-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <074fd3b7-4cd2-5616-c3f3-9733680bbcdd@intel.com>
Date: Wed, 9 Jun 2021 14:42:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210609063436.284332-9-thomas.hellstrom@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/gt: Pipelined clear
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDkvMDYvMjAyMSAwNzozNCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gRnJvbTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gVXBkYXRlIHRoZSBQVEUg
YW5kIGVtaXQgYSBjbGVhciB3aXRoaW4gYSBzaW5nbGUgdW5wcmVlbXB0aWJsZSBwYWNrZXQKPiBz
dWNoIHRoYXQgd2UgY2FuIHNjaGVkdWxlIGFuZCBwaXBlbGluZSBjbGVhcnMuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ28tZGV2
ZWxvcGVkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbWlncmF0ZS5jICAgIHwgMTQxICsrKysrKysrKysrKysrKysrKwo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5oICAgIHwgIDIwICsrKwo+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbWlncmF0ZS5jIHwgMTYzICsrKysrKysrKysrKysrKysrKysr
Kwo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAzMjQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKPiBpbmRleCA3MDc3NjMxNjg2M2QuLmZkYTA1Y2Uz
ZWI5YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRl
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKPiBAQCAt
NDkwLDYgKzQ5MCwxMTIgQEAgaW50ZWxfY29udGV4dF9taWdyYXRlX2NvcHkoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlLAo+ICAgCXJldHVybiBlcnI7Cj4gICB9Cj4gICAKPiArc3RhdGljIGludCBl
bWl0X2NsZWFyKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBpbnQgc2l6ZSwgdTMyIHZhbHVlKQo+
ICt7Cj4gKwljb25zdCBpbnQgZ2VuID0gSU5URUxfR0VOKHJxLT5lbmdpbmUtPmk5MTUpOwo+ICsJ
dTMyICpjczsKPiArCj4gKwlHRU1fQlVHX09OKHNpemUgPj4gUEFHRV9TSElGVCA+IFMxNl9NQVgp
Owo+ICsKPiArCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgZ2VuID49IDggPyA4IDogNik7Cj4g
KwlpZiAoSVNfRVJSKGNzKSkKPiArCQlyZXR1cm4gUFRSX0VSUihjcyk7Cj4gKwo+ICsJaWYgKGdl
biA+PSA4KSB7Cj4gKwkJKmNzKysgPSBYWV9DT0xPUl9CTFRfQ01EIHwgQkxUX1dSSVRFX1JHQkEg
fCAoNyAtIDIpOwo+ICsJCSpjcysrID0gQkxUX0RFUFRIXzMyIHwgQkxUX1JPUF9DT0xPUl9DT1BZ
IHwgUEFHRV9TSVpFOwo+ICsJCSpjcysrID0gMDsKPiArCQkqY3MrKyA9IHNpemUgPj4gUEFHRV9T
SElGVCA8PCAxNiB8IFBBR0VfU0laRSAvIDQ7Cj4gKwkJKmNzKysgPSAwOyAvKiBvZmZzZXQgKi8K
PiArCQkqY3MrKyA9IDA7CgpNaXNzaW5nIGZlZWRpbmcgdGhlIGVuZ2luZSBpbnN0YW5jZSBpbnRv
IHRoZSB1cHBlciBkd29yZCBmb3IgdGhlIG9mZnNldD8KCj4gKwkJKmNzKysgPSB2YWx1ZTsKPiAr
CQkqY3MrKyA9IE1JX05PT1A7Cj4gKwl9IGVsc2Ugewo+ICsJCSpjcysrID0gWFlfQ09MT1JfQkxU
X0NNRCB8IEJMVF9XUklURV9SR0JBIHwgKDYgLSAyKTsKPiArCQkqY3MrKyA9IEJMVF9ERVBUSF8z
MiB8IEJMVF9ST1BfQ09MT1JfQ09QWSB8IFBBR0VfU0laRTsKPiArCQkqY3MrKyA9IDA7Cj4gKwkJ
KmNzKysgPSBzaXplID4+IFBBR0VfU0hJRlQgPDwgMTYgfCBQQUdFX1NJWkUgLyA0Owo+ICsJCSpj
cysrID0gMDsKPiArCQkqY3MrKyA9IHZhbHVlOwo+ICsJfQo+ICsKPiArCWludGVsX3JpbmdfYWR2
YW5jZShycSwgY3MpOwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
