Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E9310D546
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7FC6E8EC;
	Fri, 29 Nov 2019 11:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986406E8EB;
 Fri, 29 Nov 2019 11:56:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 03:56:55 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="203714030"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 29 Nov 2019 03:56:53 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191129114552.802185-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6848bd67-7c69-a7a4-ec32-079be2a4c307@linux.intel.com>
Date: Fri, 29 Nov 2019 11:56:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191129114552.802185-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Check that while
 parked, we report min freq or below
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI5LzExLzIwMTkgMTE6NDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGlsZSB0aGUgSFcg
aXMgcGFya2VkLCB0aGUgR1BVIHNob3VsZCBiZSB0dXJuZWQgb2ZmIGFuZCBjbG9ja3Mgc3RvcAo+
IChpLmUuIHJ1bm5pbmcgYXQgMEh6KS4gV2Ugc2hvdWxkIHJlcG9ydCBlaXRoZXIgdGhlIGxhc3Qg
ZnJlcXVlbmN5IHdlCj4gcHJvZ3JhbSAod2hpY2ggc2hvdWxkIGJlIHRoZSBtaW5pbXVtIGxlZ2Fs
IHZhbHVlKSBvciBhIG1vcmUgdHJ1dGhmdWwgMC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIHRlc3RzL3BlcmZfcG11LmMgfCA0MCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNDAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9wZXJmX3BtdS5jIGIv
dGVzdHMvcGVyZl9wbXUuYwo+IGluZGV4IDU0ODQyNzg0Yy4uYTE1MjBkMmM0IDEwMDY0NAo+IC0t
LSBhL3Rlc3RzL3BlcmZfcG11LmMKPiArKysgYi90ZXN0cy9wZXJmX3BtdS5jCj4gQEAgLTE0Nzcs
NiArMTQ3Nyw0NCBAQCB0ZXN0X2ZyZXF1ZW5jeShpbnQgZ2VtX2ZkKQo+ICAgCV9fYXNzZXJ0X3dp
dGhpbl9lcHNpbG9uKG1heFswXSwgbWF4X2ZyZXEsIHRvbGVyYW5jZSwgMC4xNWYpOwo+ICAgfQo+
ICAgCj4gK3N0YXRpYyB2b2lkCj4gK3Rlc3RfZnJlcXVlbmN5X2lkbGUoaW50IGdlbV9mZCkKPiAr
ewo+ICsJdWludDMyX3QgbWluX2ZyZXE7Cj4gKwl1aW50NjRfdCB2YWxbMl0sIHN0YXJ0WzJdLCBz
bGVwdDsKPiArCWRvdWJsZSBpZGxlWzJdOwo+ICsJaW50IGZkLCBzeXNmczsKPiArCj4gKwlzeXNm
cyA9IGlndF9zeXNmc19vcGVuKGdlbV9mZCk7Cj4gKwlpZ3RfcmVxdWlyZShzeXNmcyA+PSAwKTsK
PiArCj4gKwltaW5fZnJlcSA9IGlndF9zeXNmc19nZXRfdTMyKHN5c2ZzLCAiZ3RfUlBuX2ZyZXFf
bWh6Iik7Cj4gKwljbG9zZShzeXNmcyk7Cj4gKwo+ICsJLyogV2hpbGUgcGFya2VkLCBvdXIgY29u
dmVudGlvbiBpcyB0byByZXBvcnQgdGhlIEdQVSBhdCAwSHogKi8KPiArCj4gKwlmZCA9IG9wZW5f
Z3JvdXAoSTkxNV9QTVVfUkVRVUVTVEVEX0ZSRVFVRU5DWSwgLTEpOwo+ICsJb3Blbl9ncm91cChJ
OTE1X1BNVV9BQ1RVQUxfRlJFUVVFTkNZLCBmZCk7Cj4gKwo+ICsJZ2VtX3F1aWVzY2VudF9ncHUo
Z2VtX2ZkKTsgLyogQmUgaWRsZSEgKi8KPiArCW1lYXN1cmVkX3VzbGVlcCgyMDAwKTsgLyogV2Fp
dCBmb3IgdGltZXJzIHRvIGNlYXNlICovCj4gKwo+ICsJc2xlcHQgPSBwbXVfcmVhZF9tdWx0aShm
ZCwgMiwgc3RhcnQpOwo+ICsJbWVhc3VyZWRfdXNsZWVwKGJhdGNoX2R1cmF0aW9uX25zIC8gMTAw
MCk7Cj4gKwlzbGVwdCA9IHBtdV9yZWFkX211bHRpKGZkLCAyLCB2YWwpIC0gc2xlcHQ7Cj4gKwo+
ICsJaWRsZVswXSA9IDFlOSoodmFsWzBdIC0gc3RhcnRbMF0pIC8gc2xlcHQ7Cj4gKwlpZGxlWzFd
ID0gMWU5Kih2YWxbMV0gLSBzdGFydFsxXSkgLyBzbGVwdDsKPiArCj4gKwlpZ3RfaW5mbygiSWRs
ZSBmcmVxdWVuY3k6IHJlcXVlc3RlZCAlLjFmLCBhY3R1YWwgJS4xZjsgSFcgbWluICV1XG4iLAo+
ICsJCSBpZGxlWzBdLCBpZGxlWzFdLCBtaW5fZnJlcSk7Cj4gKwo+ICsJaWd0X2Fzc2VydF9mKGlk
bGVbMF0gPD0gbWluX2ZyZXEsCj4gKwkJICAgICAiUmVxdWVzdCBmcmVxdWVuY3kgc2hvdWxkIGJl
IDAgd2hpbGUgcGFya2VkIVxuIik7Cj4gKwlpZ3RfYXNzZXJ0X2YoaWRsZVsxXSA8PSBtaW5fZnJl
cSwKPiArCQkgICAgICJBY3R1YWwgZnJlcXVlbmN5IHNob3VsZCBiZSAwIHdoaWxlIHBhcmtlZCFc
biIpOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGJvb2wgd2FpdF9mb3JfcmM2KGludCBmZCkKPiAgIHsK
PiAgIAlzdHJ1Y3QgdGltZXNwZWMgdHYgPSB7fTsKPiBAQCAtMTk2Nyw2ICsyMDA1LDggQEAgaWd0
X21haW4KPiAgIAkgKi8KPiAgIAlpZ3Rfc3VidGVzdCgiZnJlcXVlbmN5IikKPiAgIAkJdGVzdF9m
cmVxdWVuY3koZmQpOwo+ICsJaWd0X3N1YnRlc3QoImZyZXF1ZW5jeS1pZGxlIikKPiArCQl0ZXN0
X2ZyZXF1ZW5jeV9pZGxlKGZkKTsKPiAgIAo+ICAgCS8qKgo+ICAgCSAqIFRlc3QgaW50ZXJydXB0
IGNvdW50IHJlcG9ydGluZy4KPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgoKU28gd2UgYXJlIGdvaW5nIHdpdGggaXQgYW5kIGxlYXZpbmcg
c3lzZnMgYXMgaXM/CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
