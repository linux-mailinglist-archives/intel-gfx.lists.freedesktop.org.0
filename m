Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B261C4A06
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 10:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F81D89CA0;
	Wed,  2 Oct 2019 08:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219B889CA0
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 08:55:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 01:55:02 -0700
X-IronPort-AV: E=Sophos;i="5.64,573,1559545200"; d="scan'208";a="190880936"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 02 Oct 2019 01:55:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
References: <20191001172624.26479-1-ramalingam.c@intel.com>
 <156995131579.1880.10276094944299738871@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d5fdfb8c-9f9a-08a9-29b7-f0adec5a2546@linux.intel.com>
Date: Wed, 2 Oct 2019 09:55:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156995131579.1880.10276094944299738871@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAxLzEwLzIwMTkgMTg6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFJhbWFs
aW5nYW0gQyAoMjAxOS0xMC0wMSAxODoyNjoyMykKPj4gRnJvbTogTWljaGVsIFRoaWVycnkgPG1p
Y2hlbC50aGllcnJ5QGludGVsLmNvbT4KPj4KPj4gSW1wbGVtZW50IFdhXzE2MDQ1NTU2MDcgKHNl
dCB0aGUgRFMgcGFpcmluZyB0aW1lciB0byAxMjggY3ljbGVzKS4KPj4gRkZfTU9ERTIgaXMgcGFy
dCBvZiB0aGUgcmVnaXN0ZXIgc3RhdGUgY29udGV4dCwgdGhhdCdzIHdoeSBpdCBpcwo+PiBpbXBs
ZW1lbnRlZCBoZXJlLgo+Pgo+PiB2MjogUmViYXNlZCBvbiB0b3Agb2YgdGhlIFdBIHJlZmFjdG9y
aW5nIChPc2NhcikKPj4gdjM6IENvcnJlY3RseSBhZGQgdG8gY3R4X3dvcmthcm91bmRzX2luaXQg
KE1pY2hlbCkKPj4KPj4gQlNwZWM6IDE5MzYzCj4+IEhTREVTOiAxNjA0NTU1NjA3Cj4+IFNpZ25l
ZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtbGluZ2FtLmNAaW50ZWwuY29tPgo+PiAtLS0K
Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgOSArKysr
KysrKysKPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwg
NSArKysrKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPj4gaW5kZXggYmE2NWU1
MDE4OTc4Li40MDQ5Yjg3NjQ5MmEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+PiBAQCAtNTY3LDkgKzU2NywxOCBAQCBzdGF0aWMgdm9pZCBp
Y2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+
PiAgIHN0YXRpYyB2b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+PiAgIHsKPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBlbmdpbmUtPmk5MTU7Cj4+ICsgICAgICAgdTMyIHZhbDsK
Pj4gKwo+PiAgICAgICAgICAvKiBXYV8xNDA5MTQyMjU5ICovCj4+ICAgICAgICAgIFdBX1NFVF9C
SVRfTUFTS0VEKEdFTjExX0NPTU1PTl9TTElDRV9DSElDS0VOMywKPj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgR0VOMTJfRElTQUJMRV9DUFNfQVdBUkVfQ09MT1JfUElQRSk7Cj4+ICsKPj4g
KyAgICAgICAvKiBXYV8xNjA0NTU1NjA3OnRnbCAqLwo+PiArICAgICAgIHZhbCA9IEk5MTVfUkVB
RChGRl9NT0RFMik7Cj4gCj4gTm8sIHlvdSBjYW4ndCB1c2UgaW5kaXNjcmltaW5hdGUgbW1pbyBh
Y2Nlc3MgdGhhdCBtYXkgbm90IG1hdGNoIHRoZSBlbmdpbmUKPiAoZW5naW5lLT5ndC0+dW5jb3Jl
KS4KPiAKPiBCdXQgcmVhbGx5IGNvbnNpZGVyIGRvaW5nIHRoZSBybXcgYXMgcGFydCBvZiB0aGUg
d2EuCgpZb3UgYXJlIHN1Z2dlc3RpbmcgZ29pbmcgdmlhIHRoZSBjb250ZXh0IGltYWdlIGFmdGVy
IGFsbD8gT3IgTUlfTUFUSD8KClJlZ2FyZHMsCgpUdnJ0a28KCj4+ICsgICAgICAgdmFsICY9IH5G
Rl9NT0RFMl9URFNfVElNRVJfTUFTSzsKPj4gKyAgICAgICB2YWwgfD0gRkZfTU9ERTJfVERTX1RJ
TUVSXzEyODsKPj4gKyAgICAgICB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZf
TU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCk7Cj4+ICAgfQo+IApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
