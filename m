Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C28EA3A14DA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 14:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0467888861;
	Wed,  9 Jun 2021 12:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A99A6E3D3;
 Wed,  9 Jun 2021 12:48:20 +0000 (UTC)
IronPort-SDR: uqmB2N4ab+nOry0sG2fqEPz2Kh1FOIUqdoPWgRfGrk5kMSdbFLAcMPBNAYCbwgnaC+Nl7S3S1H
 Cz4/uKyPjqrw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="204877281"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="204877281"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 05:48:19 -0700
IronPort-SDR: FhYDG0OCOjI8NXB11zIOIPCQGSbgKkfBAiZFpAsOquGOZGPR+/XTGzAM70hUtcqxzgrrMPDJ0D
 N9BFFnU8RiwQ==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="419268532"
Received: from gbwalsh-mobl6.ger.corp.intel.com (HELO [10.252.10.147])
 ([10.252.10.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 05:48:17 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
 <20210609063436.284332-8-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <f3bbc37f-5926-90ec-fa2e-6719b27189bd@intel.com>
Date: Wed, 9 Jun 2021 13:48:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210609063436.284332-8-thomas.hellstrom@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/gt: Pipelined page migration
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
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gSWYgd2UgcGlwZWxpbmUg
dGhlIFBURSB1cGRhdGVzIGFuZCB0aGVuIGRvIHRoZSBjb3B5IG9mIHRob3NlIHBhZ2VzCj4gd2l0
aGluIGEgc2luZ2xlIHVucHJlZW1wdGlibGUgY29tbWFuZCBwYWNrZXQsIHdlIGNhbiBzdWJtaXQg
dGhlIGNvcGllcwo+IGFuZCBsZWF2ZSB0aGVtIHRvIGJlIHNjaGVkdWxlZCB3aXRob3V0IGhhdmlu
ZyB0byBzeW5jaHJvbm91c2x5IHdhaXQKPiB1bmRlciBhIGdsb2JhbCBsb2NrLiBJbiBvcmRlciB0
byBtYW5hZ2UgbWlncmF0aW9uLCB3ZSBuZWVkIHRvCj4gcHJlYWxsb2NhdGUgdGhlIHBhZ2UgdGFi
bGVzIChhbmQga2VlcCB0aGVtIHBpbm5lZCBhbmQgYXZhaWxhYmxlIGZvciB1c2UKPiBhdCBhbnkg
dGltZSksIGNhdXNpbmcgYSBib3R0bGVuZWNrIGZvciBtaWdyYXRpb25zIGFzIGFsbCBjbGllbnRz
IG11c3QKPiBjb250ZW5kIG9uIHRoZSBsaW1pdGVkIHJlc291cmNlcy4gQnkgaW5saW5pbmcgdGhl
IHBwR1RUIHVwZGF0ZXMgYW5kCj4gcGVyZm9ybWluZyB0aGUgYmxpdCBhdG9taWNhbGx5LCBlYWNo
IGNsaWVudCBvbmx5IG93bnMgdGhlIFBURSB3aGlsZSBpbgo+IHVzZSwgYW5kIHNvIHdlIGNhbiBy
ZXNjaGVkdWxlIGluZGl2aWR1YWwgb3BlcmF0aW9ucyBob3dldmVyIHdlIHNlZSBmaXQuCj4gQW5k
IG1vc3QgaW1wb3J0YW50bHksIHdlIGRvIG5vdCBuZWVkIHRvIHRha2UgYSBnbG9iYWwgbG9jayBv
biB0aGUgc2hhcmVkCj4gdm0sIGFuZCB3YWl0IHVudGlsIHRoZSBvcGVyYXRpb24gaXMgY29tcGxl
dGUgYmVmb3JlIHJlbGVhc2luZyB0aGUgbG9jawo+IGZvciBvdGhlcnMgdG8gY2xhaW0gdGhlIFBU
RSBmb3IgdGhlbXNlbHZlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDby1kZXZlbG9wZWQtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBUaG9t
YXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4g
djI6Cj4gLSBBZGQgYSBUT0RPIGZvciBodWdlIExNRU0gcHRlcyAoUG9pbnRlZCBvdXQgYnkgTWF0
dGhldyBBdWxkKQo+IC0gVXNlIGludGVsX2VuZ2luZV9kZXN0cm95X3Bpbm5lZF9jb250ZXh0KCkg
dG8gcHJvcGVybHkgdGFrZSB0aGUgcGlubmVkCj4gICAgY29udGV4dCB0aW1lbGluZSBvZmYgdGhl
IGVuZ2luZSBsaXN0LiAoQ0kgd2FybmluZykuCj4gLS0tCgo8c25pcD4KCj4gKwo+ICtpbnQKPiAr
aW50ZWxfY29udGV4dF9taWdyYXRlX2NvcHkoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ICsJ
CQkgICBzdHJ1Y3QgZG1hX2ZlbmNlICphd2FpdCwKPiArCQkJICAgc3RydWN0IHNjYXR0ZXJsaXN0
ICpzcmMsCj4gKwkJCSAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBzcmNfY2FjaGVfbGV2ZWwsCj4g
KwkJCSAgIGJvb2wgc3JjX2lzX2xtZW0sCj4gKwkJCSAgIHN0cnVjdCBzY2F0dGVybGlzdCAqZHN0
LAo+ICsJCQkgICBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgZHN0X2NhY2hlX2xldmVsLAo+ICsJCQkg
ICBib29sIGRzdF9pc19sbWVtLAo+ICsJCQkgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqb3V0KQo+
ICt7Cj4gKwlzdHJ1Y3Qgc2d0X2RtYSBpdF9zcmMgPSBzZ19zZ3Qoc3JjKSwgaXRfZHN0ID0gc2df
c2d0KGRzdCk7Cj4gKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiArCWludCBlcnI7Cj4gKwo+
ICsJKm91dCA9IE5VTEw7Cj4gKwo+ICsJLyogR0VNX0JVR19PTihjZS0+dm0gIT0gbWlncmF0ZV92
bSk7ICovCgpTaG91bGQgd2UgZHJvcCB0aGlzPwoKPiArCj4gKwlHRU1fQlVHX09OKGNlLT5yaW5n
LT5zaXplIDwgU1pfNjRLKTsKPiArCj4gKwlkbyB7Cj4gKwkJaW50IGxlbjsKPiArCj4gKwkJcnEg
PSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNlKTsKPiArCQlpZiAoSVNfRVJSKHJxKSkgewo+ICsJCQll
cnIgPSBQVFJfRVJSKHJxKTsKPiArCQkJZ290byBvdXRfY2U7Cj4gKwkJfQo+ICsKPiArCQlpZiAo
YXdhaXQpIHsKPiArCQkJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShycSwgYXdh
aXQpOwo+ICsJCQlpZiAoZXJyKQo+ICsJCQkJZ290byBvdXRfcnE7Cj4gKwo+ICsJCQlpZiAocnEt
PmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1bWIpIHsKPiArCQkJCWVyciA9IHJxLT5lbmdpbmUt
PmVtaXRfaW5pdF9icmVhZGNydW1iKHJxKTsKPiArCQkJCWlmIChlcnIpCj4gKwkJCQkJZ290byBv
dXRfcnE7Cj4gKwkJCX0KPiArCj4gKwkJCWF3YWl0ID0gTlVMTDsKPiArCQl9Cj4gKwo+ICsJCS8q
IFRoZSBQVEUgdXBkYXRlcyArIGNvcHkgbXVzdCBub3QgYmUgaW50ZXJydXB0ZWQuICovCj4gKwkJ
ZXJyID0gZW1pdF9ub19hcmJpdHJhdGlvbihycSk7Cj4gKwkJaWYgKGVycikKPiArCQkJZ290byBv
dXRfcnE7Cj4gKwo+ICsJCWxlbiA9IGVtaXRfcHRlKHJxLCAmaXRfc3JjLCBzcmNfY2FjaGVfbGV2
ZWwsIHNyY19pc19sbWVtLCAwLAo+ICsJCQkgICAgICAgQ0hVTktfU1opOwo+ICsJCWlmIChsZW4g
PD0gMCkgewo+ICsJCQllcnIgPSBsZW47Cj4gKwkJCWdvdG8gb3V0X3JxOwo+ICsJCX0KPiArCj4g
KwkJZXJyID0gZW1pdF9wdGUocnEsICZpdF9kc3QsIGRzdF9jYWNoZV9sZXZlbCwgZHN0X2lzX2xt
ZW0sCj4gKwkJCSAgICAgICBDSFVOS19TWiwgbGVuKTsKPiArCQlpZiAoZXJyIDwgMCkKPiArCQkJ
Z290byBvdXRfcnE7Cj4gKwkJaWYgKGVyciA8IGxlbikgewo+ICsJCQllcnIgPSAtRUlOVkFMOwo+
ICsJCQlnb3RvIG91dF9ycTsKPiArCQl9Cj4gKwo+ICsJCWVyciA9IHJxLT5lbmdpbmUtPmVtaXRf
Zmx1c2gocnEsIEVNSVRfSU5WQUxJREFURSk7Cj4gKwkJaWYgKGVycikKPiArCQkJZ290byBvdXRf
cnE7Cj4gKwo+ICsJCWVyciA9IGVtaXRfY29weShycSwgbGVuKTsKPiArCj4gKwkJLyogQXJiaXRy
YXRpb24gaXMgcmUtZW5hYmxlZCBiZXR3ZWVuIHJlcXVlc3RzLiAqLwo+ICtvdXRfcnE6Cj4gKwkJ
aWYgKCpvdXQpCj4gKwkJCWk5MTVfcmVxdWVzdF9wdXQoKm91dCk7Cj4gKwkJKm91dCA9IGk5MTVf
cmVxdWVzdF9nZXQocnEpOwo+ICsJCWk5MTVfcmVxdWVzdF9hZGQocnEpOwo+ICsJCWlmIChlcnIg
fHwgIWl0X3NyYy5zZyB8fCAhc2dfZG1hX2xlbihpdF9zcmMuc2cpKQo+ICsJCQlicmVhazsKPiAr
Cj4gKwkJY29uZF9yZXNjaGVkKCk7Cj4gKwl9IHdoaWxlICgxKTsKPiArCj4gK291dF9jZToKPiAr
CXJldHVybiBlcnI7Cj4gK30KPiArCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
