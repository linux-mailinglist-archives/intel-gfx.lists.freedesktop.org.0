Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF5B29B15C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 15:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C486EB7E;
	Tue, 27 Oct 2020 14:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82B916EB7E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 14:31:04 +0000 (UTC)
IronPort-SDR: 58u1+LIo5JhW3kqfPCyvXug73Zgu5NWtBfb8mEfEDOvcE3ON/PDh5QJik3T0mSaV5/v/0eEmZP
 EORQTNFhwq+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="232274613"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="232274613"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 07:31:04 -0700
IronPort-SDR: 1x1Eiyn8M1N9Oqu/EWgR5wL8vbarqKQ3yGgVyr5rTS6BS+b1SyvW5CJ360uBq07nEWkmHmC3nA
 4YHVmKuAyLRw==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="535816308"
Received: from lbatukox-mobl.ccr.corp.intel.com (HELO [10.252.58.34])
 ([10.252.58.34])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 07:31:03 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20201015112627.1142745-1-maarten.lankhorst@linux.intel.com>
 <20201015112627.1142745-5-maarten.lankhorst@linux.intel.com>
 <8677ec74-b31e-05c9-2cdf-514fd11462e4@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <89f87f2f-a941-0769-4765-0b659b357703@linux.intel.com>
Date: Tue, 27 Oct 2020 15:31:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <8677ec74-b31e-05c9-2cdf-514fd11462e4@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 04/63] drm/i915: Pin timeline map after
 first timeline pin, v3.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjctMTAtMjAyMCBvbSAxMjowMyBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiAxMC8xNS8yMCAxOjI1IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4gV2Un
cmUgc3RhcnRpbmcgdG8gcmVxdWlyZSB0aGUgcmVzZXJ2YXRpb24gbG9jayBmb3IgcGlubmluZywK
Pj4gc28gd2FpdCB1bnRpbCB3ZSBoYXZlIHRoYXQuCj4+Cj4+IFVwZGF0ZSB0aGUgc2VsZnRlc3Rz
IHRvIGhhbmRsZSB0aGlzIGNvcnJlY3RseSwgYW5kIGVuc3VyZSBwaW4gaXMKPj4gY2FsbGVkIGlu
IGxpdmVfaHdzcF9yb2xsb3Zlcl91c2VyKCkgYW5kIG1vY2tfaHdzcF9mcmVlbGlzdCgpLgo+Pgo+
PiBDaGFuZ2VzIHNpbmNlIHYxOgo+PiAtIEZpeCBOVUxMICsgWFggYXJpdGhtYXRpYywgdXNlIGNh
c3RzLiAoa2J1aWxkKQo+PiBDaGFuZ2VzIHNpbmNlIHYyOgo+PiAtIENsZWFyIGVudGlyZSBjYWNo
ZWxpbmUgd2hlbiBwaW5uaW5nLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3Jz
dCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+PiBSZXBvcnRlZC1ieToga2Vy
bmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gLi4uCj4+IEBAIC0xNTAsNiArMTYxLDEy
IEBAIGludCBpbnRlbF90aW1lbGluZV9waW4oc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCwgc3Ry
dWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cpCj4+IMKgwqDCoMKgwqAgaWYgKGF0b21pY19hZGRfdW5s
ZXNzKCZ0bC0+cGluX2NvdW50LCAxLCAwKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAw
Owo+PiDCoCArwqDCoMKgIGlmICghdGwtPmh3c3BfbWFwKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBl
cnIgPSBpbnRlbF90aW1lbGluZV9waW5fbWFwKHRsKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChl
cnIpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+ICvCoMKgwqAgfQo+
PiArCj4KPiBPbiBzdWJzZXF1ZW50IGVycm9ycyBvciBpZiBzb21lYm9keSBiZWF0cyB1cyB0byB0
aGUgMC0+MSB0cmFuc2l0aW9uLCB3ZSBuZWVkIHRvIHVucGluX21hcCB0byBhdm9pZCBsZWFraW5n
IHBpbnMuCgpObz8gdGwtPmh3c3BfbWFwIGNhbiBzdGF5IHNldC4gV2UgaG9sZCBhIGxvY2sgdG8g
dGwtPmh3c3BfZ2d0dCB0byBwcmV2ZW50IGFueSByYWNlcy4gOikKCn5NYWFydGVuCgo+PiDCoMKg
wqDCoMKgIGVyciA9IGk5MTVfZ2d0dF9waW4odGwtPmh3c3BfZ2d0dCwgd3csIDAsIFBJTl9ISUdI
KTsKPj4gwqDCoMKgwqDCoCBpZiAoZXJyKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVy
cjsKPgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxp
bmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmgKPj4gaW5kZXgg
OTg4MmNkOTExZDhlLi4xY2ZkYzQ2NzliNjIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfdGltZWxpbmUuaAo+PiBAQCAtMTA2LDQgKzEwNiw2IEBAIGludCBpbnRlbF90aW1l
bGluZV9yZWFkX2h3c3Aoc3RydWN0IGk5MTVfcmVxdWVzdCAqZnJvbSwKPj4gwqAgdm9pZCBpbnRl
bF9ndF9pbml0X3RpbWVsaW5lcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKPj4gwqAgdm9pZCBpbnRl
bF9ndF9maW5pX3RpbWVsaW5lcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKPj4gwqAgK0k5MTVfU0VM
RlRFU1RfREVDTEFSRShpbnQgaW50ZWxfdGltZWxpbmVfcGluX21hcChzdHJ1Y3QgaW50ZWxfdGlt
ZWxpbmUgKnRsKSk7Cj4+ICsKPj4gwqAgI2VuZGlmCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9j
a19lbmdpbmUuYwo+PiBpbmRleCAyZjgzMDAxN2M1MWQuLmVmZmJhYzg3N2VlYyAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwo+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCj4+IEBAIC0zMiw5ICszMiwyMCBAQAo+
PiDCoCAjaW5jbHVkZSAibW9ja19lbmdpbmUuaCIKPj4gwqAgI2luY2x1ZGUgInNlbGZ0ZXN0cy9t
b2NrX3JlcXVlc3QuaCIKPj4gwqAgLXN0YXRpYyB2b2lkIG1vY2tfdGltZWxpbmVfcGluKHN0cnVj
dCBpbnRlbF90aW1lbGluZSAqdGwpCj4+ICtzdGF0aWMgaW50IG1vY2tfdGltZWxpbmVfcGluKHN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpCj4+IMKgIHsKPj4gK8KgwqDCoCBpbnQgZXJyOwo+PiAr
Cj4+ICvCoMKgwqAgaWYgKFdBUk5fT04oIWk5MTVfZ2VtX29iamVjdF90cnlsb2NrKHRsLT5od3Nw
X2dndHQtPm9iaikpKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FQlVTWTsKPgo+IEkgdGhp
bmsgd2Ugc2hvdWxkIGVpdGhlciBhbm5vdGF0ZSB0aGlzIHByb3Blcmx5IGFzIGFuIGlzb2xhdGVk
IGxvY2ssIG9yIGFsbG93IGEgc2lsZW50IC1FQlVTWS4gCgpUaGlzIGlzIGRvbmUgaW4gYSBjb250
cm9sbGVkIHNlbGZ0ZXN0IHdoZXJlIHdlIG1vY2sgdGhlIGVudGlyZSBpOTE1IGRldmljZSwgc28g
bm9ybWFsbHkgdGhpcyBjYW4ndCBoYXBwZW4uIDopCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
