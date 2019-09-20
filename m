Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB77DB8E60
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 12:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59406E82B;
	Fri, 20 Sep 2019 10:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15A26E82B
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 10:17:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 03:17:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,528,1559545200"; d="scan'208";a="187082545"
Received: from gkarolko-mobl.ger.corp.intel.com (HELO [10.252.55.204])
 ([10.252.55.204])
 by fmsmga008.fm.intel.com with ESMTP; 20 Sep 2019 03:17:46 -0700
To: Anna Karas <anna.karas@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190919104928.22084-1-anna.karas@intel.com>
 <20190920094727.18289-1-anna.karas@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ef4a2cd3-cba8-bfd1-cfe4-08245ef374ed@intel.com>
Date: Fri, 20 Sep 2019 13:17:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190920094727.18289-1-anna.karas@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Fix use of kernel-doc format
 in structure members.
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

T24gMjAvMDkvMjAxOSAxMjo0NywgQW5uYSBLYXJhcyB3cm90ZToKPiBJbnNlcnQgc3RydWN0dXJl
IG1lbWJlcnMgbmFtZXMgaW50byB0aGVpciBkZXNjcmlwdGlvbnMgdG8gZm9sbG93Cj4ga2VybmVs
LWRvYyBmb3JtYXQuCj4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogQW5uYSBLYXJhcyA8YW5uYS5rYXJhc0BpbnRl
bC5jb20+CgpBY2tlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5A
aW50ZWwuY29tPgoKCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwg
MjYgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGlu
ZGV4IDBkMTk0OWE3OGM0NC4uZGM2YzlmNTJkM2E1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCj4gQEAgLTEyMjUsNyArMTIyNSw3IEBAIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsKPiAg
IAlzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZzsKPiAgIAo+ICAgCS8qKgo+IC0JICog
VGhlIE9BIGNvbnRleHQgc3BlY2lmaWMgaW5mb3JtYXRpb24uCj4gKwkgKiBAcGlubmVkX2N0eDog
VGhlIE9BIGNvbnRleHQgc3BlY2lmaWMgaW5mb3JtYXRpb24uCj4gICAJICovCj4gICAJc3RydWN0
IGludGVsX2NvbnRleHQgKnBpbm5lZF9jdHg7Cj4gICAJdTMyIHNwZWNpZmljX2N0eF9pZDsKPiBA
QCAtMTIzOSw3ICsxMjM5LDcgQEAgc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gewo+ICAgCWludCBw
ZXJpb2RfZXhwb25lbnQ7Cj4gICAKPiAgIAkvKioKPiAtCSAqIFN0YXRlIG9mIHRoZSBPQSBidWZm
ZXIuCj4gKwkgKiBAb2FfYnVmZmVyOiBTdGF0ZSBvZiB0aGUgT0EgYnVmZmVyLgo+ICAgCSAqLwo+
ICAgCXN0cnVjdCB7Cj4gICAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+IEBAIC0xMjUwLDcgKzEy
NTAsNyBAQCBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSB7Cj4gICAJCWludCBzaXplX2V4cG9uZW50
Owo+ICAgCj4gICAJCS8qKgo+IC0JCSAqIExvY2tzIHJlYWRzIGFuZCB3cml0ZXMgdG8gYWxsIGhl
YWQvdGFpbCBzdGF0ZQo+ICsJCSAqIEBwdHJfbG9jazogTG9ja3MgcmVhZHMgYW5kIHdyaXRlcyB0
byBhbGwgaGVhZC90YWlsIHN0YXRlCj4gICAJCSAqCj4gICAJCSAqIENvbnNpZGVyOiB0aGUgaGVh
ZCBhbmQgdGFpbCBwb2ludGVyIHN0YXRlIG5lZWRzIHRvIGJlIHJlYWQKPiAgIAkJICogY29uc2lz
dGVudGx5IGZyb20gYSBocnRpbWVyIGNhbGxiYWNrIChhdG9taWMgY29udGV4dCkgYW5kCj4gQEAg
LTEyNzIsOCArMTI3Miw4IEBAIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsKPiAgIAkJc3Bpbmxv
Y2tfdCBwdHJfbG9jazsKPiAgIAo+ICAgCQkvKioKPiAtCQkgKiBPbmUgJ2FnaW5nJyB0YWlsIHBv
aW50ZXIgYW5kIG9uZSAnYWdlZCcgdGFpbCBwb2ludGVyIHJlYWR5IHRvCj4gLQkJICogdXNlZCBm
b3IgcmVhZGluZy4KPiArCQkgKiBAdGFpbHM6IE9uZSAnYWdpbmcnIHRhaWwgcG9pbnRlciBhbmQg
b25lICdhZ2VkJyB0YWlsIHBvaW50ZXIKPiArCQkgKiByZWFkeSB0byB1c2VkIGZvciByZWFkaW5n
Lgo+ICAgCQkgKgo+ICAgCQkgKiBJbml0aWFsIHZhbHVlcyBvZiAweGZmZmZmZmZmIGFyZSBpbnZh
bGlkIGFuZCBpbXBseSB0aGF0IGFuCj4gICAJCSAqIHVwZGF0ZSBpcyByZXF1aXJlZCAoYW5kIHNo
b3VsZCBiZSBpZ25vcmVkIGJ5IGFuIGF0dGVtcHRlZAo+IEBAIC0xMjg0LDIxICsxMjg0LDIzIEBA
IHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsKPiAgIAkJfSB0YWlsc1syXTsKPiAgIAo+ICAgCQkv
KioKPiAtCQkgKiBJbmRleCBmb3IgdGhlIGFnZWQgdGFpbCByZWFkeSB0byByZWFkKCkgZGF0YSB1
cCB0by4KPiArCQkgKiBAYWdlZF90YWlsX2lkeDogSW5kZXggZm9yIHRoZSBhZ2VkIHRhaWwgcmVh
ZHkgdG8gcmVhZCgpIGRhdGEKPiArCQkgKiB1cCB0by4KPiAgIAkJICovCj4gICAJCXVuc2lnbmVk
IGludCBhZ2VkX3RhaWxfaWR4Owo+ICAgCj4gICAJCS8qKgo+IC0JCSAqIEEgbW9ub3RvbmljIHRp
bWVzdGFtcCBmb3Igd2hlbiB0aGUgY3VycmVudCBhZ2luZyB0YWlsIHBvaW50ZXIKPiAtCQkgKiB3
YXMgcmVhZDsgdXNlZCB0byBkZXRlcm1pbmUgd2hlbiBpdCBpcyBvbGQgZW5vdWdoIHRvIHRydXN0
Lgo+ICsJCSAqIEBhZ2luZ190aW1lc3RhbXA6IEEgbW9ub3RvbmljIHRpbWVzdGFtcCBmb3Igd2hl
biB0aGUgY3VycmVudAo+ICsJCSAqIGFnaW5nIHRhaWwgcG9pbnRlciB3YXMgcmVhZDsgdXNlZCB0
byBkZXRlcm1pbmUgd2hlbiBpdCBpcyBvbGQKPiArCQkgKiBlbm91Z2ggdG8gdHJ1c3QuCj4gICAJ
CSAqLwo+ICAgCQl1NjQgYWdpbmdfdGltZXN0YW1wOwo+ICAgCj4gICAJCS8qKgo+IC0JCSAqIEFs
dGhvdWdoIHdlIGNhbiBhbHdheXMgcmVhZCBiYWNrIHRoZSBoZWFkIHBvaW50ZXIgcmVnaXN0ZXIs
Cj4gLQkJICogd2UgcHJlZmVyIHRvIGF2b2lkIHRydXN0aW5nIHRoZSBIVyBzdGF0ZSwganVzdCB0
byBhdm9pZCBhbnkKPiAtCQkgKiByaXNrIHRoYXQgc29tZSBoYXJkd2FyZSBjb25kaXRpb24gY291
bGQgKiBzb21laG93IGJ1bXAgdGhlCj4gLQkJICogaGVhZCBwb2ludGVyIHVucHJlZGljdGFibHkg
YW5kIGNhdXNlIHVzIHRvIGZvcndhcmQgdGhlIHdyb25nCj4gKwkJICogQGhlYWQ6IEFsdGhvdWdo
IHdlIGNhbiBhbHdheXMgcmVhZCBiYWNrIHRoZSBoZWFkIHBvaW50ZXIKPiArCQkgKiByZWdpc3Rl
ciwgd2UgcHJlZmVyIHRvIGF2b2lkIHRydXN0aW5nIHRoZSBIVyBzdGF0ZSwganVzdCB0bwo+ICsJ
CSAqIGF2b2lkIGFueSByaXNrIHRoYXQgc29tZSBoYXJkd2FyZSBjb25kaXRpb24gY291bGQgc29t
ZWhvdyBidW1wCj4gKwkJICogdGhlIGhlYWQgcG9pbnRlciB1bnByZWRpY3RhYmx5IGFuZCBjYXVz
ZSB1cyB0byBmb3J3YXJkIHRoZSB3cm9uZwo+ICAgCQkgKiBPQSBidWZmZXIgZGF0YSB0byB1c2Vy
c3BhY2UuCj4gICAJCSAqLwo+ICAgCQl1MzIgaGVhZDsKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
