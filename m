Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFB81E749F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 06:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B05FB6E859;
	Fri, 29 May 2020 04:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969FE6E858
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 04:25:00 +0000 (UTC)
IronPort-SDR: VlOVjBbFY/FrbTsVUe4npdTLOnaLmq1B+wkil0iKiacXsOfbJpTxdJpMSdlMlPj9Opu22AQa/8
 LOdPraS6OECQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 21:25:00 -0700
IronPort-SDR: Dshk670W0rUh5Nte1PC9wryGKdf60+3qI0LbpHPy2lLElpM3idkv9P2WG2/KPia1eBUZjl7AMS
 kfGMeJbNQP4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,447,1583222400"; d="scan'208";a="292241394"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.213.66.141])
 ([10.213.66.141])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 21:24:58 -0700
To: Paulo Zanoni <paulo.r.zanoni@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200420094746.20409-1-karthik.b.s@intel.com>
 <20200420094746.20409-5-karthik.b.s@intel.com>
 <1be83da5bd7eff864200e157c2461fa708699dbb.camel@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <7bc8589b-c8cd-d707-da7e-b6ec3eb4c45b@intel.com>
Date: Fri, 29 May 2020 09:54:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1be83da5bd7eff864200e157c2461fa708699dbb.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915: Make commit call blocking
 in case of async flips
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA0LzI0LzIwMjAgMTE6MTYgUE0sIFBhdWxvIFphbm9uaSB3cm90ZToKPiBFbSBzZWcsIDIw
MjAtMDQtMjAgw6BzIDE1OjE3ICswNTMwLCBLYXJ0aGlrIEIgUyBlc2NyZXZldToKPj4gTWFrZSB0
aGUgY29tbWl0IGNhbGwgYmxvY2tpbmcgaW4gY2FzZSBvZiBhc3luYyBmbGlwcwo+PiBzbyB0aGF0
IHRoZXJlIGlzIG5vIGRlbGF5IGluIGNvbXBsZXRpbmcgdGhlIGZsaXAuCj4+Cj4gCj4gSSdtIHRy
eWluZyB0byB1bmRlcnN0YW5kIHRoZSBjb2RlLiBDYW4geW91IHBsZWFzZSBlbGFib3JhdGUgbW9y
ZSBoZXJlCj4gaW4gdGhpcyBjb21taXQgbWVzc2FnZT8gV2h5IGV4YWN0bHkgZG9lcyB0aGUgY2Fs
bCBuZWVkIHRvIGJsb2NrPyBXaGF0Cj4gd291bGQgYmUgdGhlIHByb2JsZW0gb2Ygbm90IGhhdmlu
ZyB0aGlzIHBhdGNoPyBBbmQgaG93IGRvZXMgYmxvY2tpbmcKPiBlbnN1cmVzIG5vIGRlbGF5PwoK
TXkgaW5pdGlhbCBhc3N1bXB0aW9uIHdhcyB0aGF0IGJsb2NraW5nIGNhbGwgd291bGQgZW5zdXJl
IGxlc3NlciBkZWxheSAKYXMgY29tbWl0IHRhaWwgaXMgaW1tZWRpYXRlbHkgY2FsbGVkLCBidXQg
YWZ0ZXIgcnVubmluZyBzb21lIApiZW5jaG1hcmtpbmcgdGVzdHMsIGl0cyBjbGVhcmx5IG5vdCB0
aGUgY2FzZS4KClNvIG5vIHBvaW50IGluIGhhdmluZyB0aGlzLCByZW1vdmVkIHRoaXMgcGF0Y2gg
aW4gVjMuCgpUaGFua3MsCkthcnRoaWsuQi5TCj4gCj4+IHYyOiAtUmViYXNlZAo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBLYXJ0aGlrIEIgUyA8a2FydGhpay5iLnNAaW50ZWwuY29tPgo+PiAtLS0KPj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE1ICsrKysr
KysrKystLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+PiBpbmRleCA4NjAxYjE1OWY0MjUuLmE1MjAzZGUyNDA0NSAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gQEAgLTE1NTYzLDcg
KzE1NTYzLDkgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsCj4+ICAgewo+PiAgIAlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSA9
IHRvX2ludGVsX2F0b21pY19zdGF0ZShfc3RhdGUpOwo+PiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4+IC0JaW50IHJldCA9IDA7Cj4+ICsJc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOwo+PiArCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjOwo+PiArCWludCByZXQgPSAwLCBpOwo+PiAgIAo+PiAgIAlzdGF0ZS0+d2FrZXJl
ZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZkZXZfcHJpdi0+cnVudGltZV9wbSk7Cj4+ICAgCj4+
IEBAIC0xNTU4OSwxMCArMTU1OTEsNiBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jb21taXQo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwKPj4gICAJICogKGFzc3VtaW5nIHdlIGhhZCBhbnkpIHdv
dWxkIHNvbHZlIHRoZXNlIHByb2JsZW1zLgo+PiAgIAkgKi8KPj4gICAJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPCA5ICYmIHN0YXRlLT5iYXNlLmxlZ2FjeV9jdXJzb3JfdXBkYXRlKSB7Cj4+IC0J
CXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKPj4gLQkJc3RydWN0IGlu
dGVsX2NydGMgKmNydGM7Cj4+IC0JCWludCBpOwo+PiAtCj4+ICAgCQlmb3JfZWFjaF9uZXdfaW50
ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpCj4+ICAgCQkJ
aWYgKG5ld19jcnRjX3N0YXRlLT53bS5uZWVkX3Bvc3R2YmxfdXBkYXRlIHx8Cj4+ICAgCQkJICAg
IG5ld19jcnRjX3N0YXRlLT51cGRhdGVfd21fcG9zdCkKPj4gQEAgLTE1NjM0LDYgKzE1NjMyLDEz
IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NvbW1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAo+PiAgIAlkcm1fYXRvbWljX3N0YXRlX2dldCgmc3RhdGUtPmJhc2UpOwo+PiAgIAlJTklUX1dP
UksoJnN0YXRlLT5iYXNlLmNvbW1pdF93b3JrLCBpbnRlbF9hdG9taWNfY29tbWl0X3dvcmspOwo+
PiAgIAo+PiArCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBu
ZXdfY3J0Y19zdGF0ZSwgaSkgewo+PiArCQlpZiAobmV3X2NydGNfc3RhdGUtPnVhcGkuYXN5bmNf
ZmxpcCkgewo+PiArCQkJbm9uYmxvY2sgPSBmYWxzZTsKPj4gKwkJCWJyZWFrOwo+PiArCQl9Cj4+
ICsJfQo+PiArCj4+ICAgCWk5MTVfc3dfZmVuY2VfY29tbWl0KCZzdGF0ZS0+Y29tbWl0X3JlYWR5
KTsKPj4gICAJaWYgKG5vbmJsb2NrICYmIHN0YXRlLT5tb2Rlc2V0KSB7Cj4+ICAgCQlxdWV1ZV93
b3JrKGRldl9wcml2LT5tb2Rlc2V0X3dxLCAmc3RhdGUtPmJhc2UuY29tbWl0X3dvcmspOwo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
