Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D995F69A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073C9890CD;
	Thu,  4 Jul 2019 10:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BC3890CD
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:28:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 03:28:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="172395110"
Received: from cdsmith6-mobl2.ger.corp.intel.com (HELO [10.252.3.86])
 ([10.252.3.86])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jul 2019 03:28:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <463eddd4-b1d0-c9a9-0180-1f0b8f0a77da@intel.com>
Date: Thu, 4 Jul 2019 11:28:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190703171913.16585-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gtt: Defer the free for alloc
 error paths
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDMvMDcvMjAxOSAxODoxOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IElmIHdlIGhpdCBhbiBl
cnJvciB3aGlsZSBhbGxvY2F0aW5nIHRoZSBwYWdlIHRhYmxlcywgd2UgaGF2ZSB0byB1bndpbmQK
PiB0aGUgaW5jb21wbGV0ZSB1cGRhdGVzLCBhbmQgd2lzaCB0byBmcmVlIHRoZSB1bnVzZWQgcGQu
IEhvd2V2ZXIsIHdlIGFyZQo+IG5vdCBhbGxvd2VkIHRvIGJlIGhvZGluZyB0aGUgc3BpbmxvY2sg
YXQgdGhhdCBwb2ludCwgYW5kIHNvIG11c3QgdXNlIHRoZQoKaG9sZGluZwoKPiBsYXRlciBmcmVl
IHRvIGRlZmVyIGl0IHVudGlsIGFmdGVyIHdlIGRyb3AgdGhlIGxvY2suCj4gCj4gPDM+IFs0MTQu
MzYzNzk1XSBCVUc6IHNsZWVwaW5nIGZ1bmN0aW9uIGNhbGxlZCBmcm9tIGludmFsaWQgY29udGV4
dCBhdCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzo0NzIKPiA8Mz4gWzQxNC4z
NjQxNjddIGluX2F0b21pYygpOiAxLCBpcnFzX2Rpc2FibGVkKCk6IDAsIHBpZDogMzkwNSwgbmFt
ZTogaTkxNV9zZWxmdGVzdAo+IDw0PiBbNDE0LjM2NDQwNl0gMyBsb2NrcyBoZWxkIGJ5IGk5MTVf
c2VsZnRlc3QvMzkwNToKPiA8ND4gWzQxNC4zNjQ0MDhdICAjMDogMDAwMDAwMDAzNGZlOGFhOCAo
JmRldi0+bXV0ZXgpey4uLi59LCBhdDogZGV2aWNlX2RyaXZlcl9hdHRhY2grMHgxOC8weDUwCj4g
PDQ+IFs0MTQuMzY0NDE1XSAgIzE6IDAwMDAwMDAwNmJkOGE1NjAgKCZkZXYtPnN0cnVjdF9tdXRl
eCl7Ky4rLn0sIGF0OiBpZ3RfY3R4X2V4ZWMrMHhiNy8weDQxMCBbaTkxNV0KPiA8ND4gWzQxNC4z
NjQ0NzZdICAjMjogMDAwMDAwMDAzZGZkYzc2NiAoJigmcGQtPmxvY2spLT5ybG9jayl7Ky4rLn0s
IGF0OiBnZW44X3BwZ3R0X2FsbG9jX3BkcCsweDQ0OC8weDU0MCBbaTkxNV0KPiA8Mz4gWzQxNC4z
NjQ1MjldIFByZWVtcHRpb24gZGlzYWJsZWQgYXQ6Cj4gPDQ+IFs0MTQuMzY0NTMwXSBbPDAwMDAw
MDAwMDAwMDAwMDA+XSAweDAKPiA8ND4gWzQxNC4zNjQ2OTZdIENQVTogMCBQSUQ6IDM5MDUgQ29t
bTogaTkxNV9zZWxmdGVzdCBUYWludGVkOiBHICAgICBVICAgICAgICAgICAgNS4yLjAtcmM3LUNJ
LUNJX0RSTV82NDAzKyAjMQo+IDw0PiBbNDE0LjM2NDY5OF0gSGFyZHdhcmUgbmFtZTogUUVNVSBT
dGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgcmVsLTEuMTAuMS0wLWc4ODkx
Njk3LXByZWJ1aWx0LnFlbXUtcHJvamVjdC5vcmcgMDQvMDEvMjAxNAo+IDw0PiBbNDE0LjM2NDY5
OV0gQ2FsbCBUcmFjZToKPiA8ND4gWzQxNC4zNjQ3MDRdICBkdW1wX3N0YWNrKzB4NjcvMHg5Ygo+
IDw0PiBbNDE0LjM2NDcwOF0gIF9fX21pZ2h0X3NsZWVwKzB4MTY3LzB4MjUwCj4gPDQ+IFs0MTQu
MzY0Nzc3XSAgdm1fZnJlZV9wYWdlKzB4MjQvMHhjMCBbaTkxNV0KPiA8ND4gWzQxNC4zNjQ4NTJd
ICBmcmVlX3BkKzB4Zi8weDIwIFtpOTE1XQo+IDw0PiBbNDE0LjM2NDg5N10gIGdlbjhfcHBndHRf
YWxsb2NfcGRwKzB4NDg5LzB4NTQwIFtpOTE1XQo+IDw0PiBbNDE0LjM2NDk0Nl0gIGdlbjhfcHBn
dHRfYWxsb2NfNGx2bCsweDhlLzB4MmUwIFtpOTE1XQo+IDw0PiBbNDE0LjM2NDk5Ml0gIHBwZ3R0
X2JpbmRfdm1hKzB4MmUvMHg2MCBbaTkxNV0KPiA8ND4gWzQxNC4zNjUwMzldICBpOTE1X3ZtYV9i
aW5kKzB4ZTgvMHgyYzAgW2k5MTVdCj4gPDQ+IFs0MTQuMzY1MDg4XSAgX19pOTE1X3ZtYV9kb19w
aW4rMHhhMS8weGQyMCBbaTkxNV0KPiAKPiBGaXhlczogMWQxYjU0OTBiOTFjICgiZHJtL2k5MTUv
Z3R0OiBSZXBsYWNlIHN0cnVjdF9tdXRleCBzZXJpYWxpc2F0aW9uIGZvciBhbGxvY2F0aW9uIikK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IENjOiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgNiArKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMKPiBpbmRleCA5ZTc2MzQ3ZTAzOWUuLjEwNjU3NTNlODZmYiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTE0ODksNyArMTQ4OSw4IEBAIHN0YXRpYyBpbnQg
Z2VuOF9wcGd0dF9hbGxvY19wZHAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gICAJ
CWdlbjhfcHBndHRfc2V0X3BkcGUocGRwLCB2bS0+c2NyYXRjaF9wZCwgcGRwZSk7Cj4gICAJCUdF
TV9CVUdfT04oIWF0b21pY19yZWFkKCZwZHAtPnVzZWQpKTsKPiAgIAkJYXRvbWljX2RlYygmcGRw
LT51c2VkKTsKPiAtCQlmcmVlX3BkKHZtLCBwZCk7Cj4gKwkJR0VNX0JVR19PTihhbGxvYyk7CgpQ
cmV0dHkgc3VyZSBpdCdzIHBvc3NpYmxlIGZvciBhbGxvYyAhPSBOVUxMIGF0IHRoaXMgcG9pbnQu
Li50d28gdGhyZWFkcywgCm9uZSBpcyBsYXRlIHRvIHRoZSBwYXJ0eSwgd2UgYXJlIHVubHVja3kg
YW5kIGhpdCB0aGUgdW53aW5kX3BkIHBhdGguIE5vPwoKPiArCQlhbGxvYyA9IHBkOyAvKiBkZWZl
ciB0aGUgZnJlZSB0byBhZnRlciB0aGUgbG9jayAqLwo+ICAgCX0KPiAgIAlzcGluX3VubG9jaygm
cGRwLT5sb2NrKTsKPiAgIHVud2luZDoKPiBAQCAtMTU1OCw3ICsxNTU5LDggQEAgc3RhdGljIGlu
dCBnZW44X3BwZ3R0X2FsbG9jXzRsdmwoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4g
ICAJc3Bpbl9sb2NrKCZwbWw0LT5sb2NrKTsKPiAgIAlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgm
cGRwLT51c2VkKSkgewo+ICAgCQlnZW44X3BwZ3R0X3NldF9wbWw0ZShwbWw0LCB2bS0+c2NyYXRj
aF9wZHAsIHBtbDRlKTsKPiAtCQlmcmVlX3BkKHZtLCBwZHApOwo+ICsJCUdFTV9CVUdfT04oYWxs
b2MpOwo+ICsJCWFsbG9jID0gcGRwOyAvKiBkZWZlciB0aGUgZnJlZSB1bnRpbCBhZnRlciB0aGUg
bG9jayAqLwo+ICAgCX0KPiAgIAlzcGluX3VubG9jaygmcG1sNC0+bG9jayk7Cj4gICB1bndpbmQ6
Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
