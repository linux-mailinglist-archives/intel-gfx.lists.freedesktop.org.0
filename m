Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D2B103CB2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 14:56:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D526EA52;
	Wed, 20 Nov 2019 13:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1FE36EA4F;
 Wed, 20 Nov 2019 13:56:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 05:56:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="237738215"
Received: from cdonitzk-mobl1.ger.corp.intel.com (HELO [10.249.32.229])
 ([10.249.32.229])
 by fmsmga002.fm.intel.com with ESMTP; 20 Nov 2019 05:56:20 -0800
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
 <20191119210844.16947-3-daniel.vetter@ffwll.ch>
 <7fb69a1a-170a-9afa-7de8-d511cbd20c39@amd.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <12b1c5c8-2eaf-d33b-9840-c356bcb45b29@linux.intel.com>
Date: Wed, 20 Nov 2019 14:56:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7fb69a1a-170a-9afa-7de8-d511cbd20c39@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] dma-resv: Also prime acquire ctx for
 lockdep
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
Cc: Rob Herring <robh@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Eric Anholt <eric@anholt.net>, Huang Rui <ray.huang@amd.com>,
 Ben Skeggs <bskeggs@redhat.com>, Russell King <linux+etnaviv@armlinux.org.uk>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjAtMTEtMjAxOSBvbSAxMjozMCBzY2hyZWVmIENocmlzdGlhbiBLw7ZuaWc6Cj4gQW0gMTku
MTEuMTkgdW0gMjI6MDggc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+PiBTZW1uYXRpY2FsbHkgaXQg
cmVhbGx5IGRvZXNuJ3QgbWF0dGVyIHdoZXJlIHdlIGdyYWIgdGhlIHRpY2tldC4gQnV0Cj4+IHNp
bmNlIHRoZSB0aWNrZXQgaXMgYSBmYWtlIGxvY2tkZXAgbG9jaywgaXQgbWF0dGVycyBmb3IgbG9j
a2RlcAo+PiB2YWxpZGF0aW9uIHB1cnBvc2VzLgo+Pgo+PiBUaGlzIG1lYW5zIHN0dWZmIGxpa2Ug
Z3JhYmJpbmcgYSB0aWNrZXQgYW5kIHRoZW4gZG9pbmcKPj4gY29weV9mcm9tL3RvX3VzZXIgaXNu
J3QgYWxsb3dlZCBhbnltb3JlLiBUaGlzIGlzIGEgY2hhbmdlZCBjb21wYXJlZCB0bwo+PiB0aGUg
Y3VycmVudCB0dG0gZmF1bHQgaGFuZGxlciwgd2hpY2ggZG9lc24ndCBib3RoZXIgd2l0aCBoYXZp
bmcgYSBmdWxsCj4+IHJlc2VydmF0aW9uLiBTaW5jZSBJJ20gbG9va2luZyBpbnRvIGZpeGluZyB0
aGUgVE9ETyBlbnRyeSBpbgo+PiB0dG1fbWVtX2V2aWN0X3dhaXRfYnVzeSgpIEkgdGhpbmsgdGhh
dCdsbCBoYXZlIHRvIGNoYW5nZSBzb29uZXIgb3IKPj4gbGF0ZXIgYW55d2F5LCBiZXR0ZXIgZ2V0
IHN0YXJ0ZWQuIEEgYml0IG1vcmUgY29udGV4dCBvbiB3aHkgSSdtCj4+IGxvb2tpbmcgaW50byB0
aGlzOiBGb3IgYmFja3dhcmRzIGNvbXBhdCB3aXRoIGV4aXN0aW5nIGk5MTUgZ2VtIGNvZGUgSQo+
PiB0aGluayB3ZSdsbCBoYXZlIHRvIGRvIGZ1bGwgc2xvd3BhdGggbG9ja2luZyBpbiB0aGUgaTkx
NSBlcXVpdmFsZW50IG9mCj4+IHRoZSBldmljdGlvbiBjb2RlLiBBbmQgd2l0aCBkeW5hbWljIGRt
YS1idWYgdGhhdCB3aWxsIGxlYWsgYWNyb3NzCj4+IGRyaXZlcnMsIHNvIGFub3RoZXIgdGhpbmcg
d2UgbmVlZCB0byBzdGFuZGFyZGl6ZSBhbmQgbWFrZSBzdXJlIGl0J3MKPj4gZG9uZSB0aGUgc2Ft
ZSB3YXkgZXZlcnl3YXkuCj4+Cj4+IFVuZm9ydHVuYXRlbHkgdGhpcyBtZWFucyBhbm90aGVyIGZ1
bGwgYXVkaXQgb2YgYWxsIGRyaXZlcnM6Cj4+Cj4+IC0gZ2VtIGhlbHBlcnM6IGFjcXVpcmVfaW5p
dCBpcyBkb25lIHJpZ2h0IGJlZm9yZSB0YWtpbmcgbG9ja3MsIHNvIG5vCj4+IMKgwqAgcHJvYmxl
bS4gU2FtZSBmb3IgYWNxdWlyZV9maW5pIGFuZCB1bmxvY2tpbmcsIHdoaWNoIG1lYW5zIG5vdGhp
bmcKPj4gwqDCoCB0aGF0J3Mgbm90IGFscmVhZHkgY292ZXJlZCBieSB0aGUgZG1hX3Jlc3ZfbG9j
ayBydWxlcyB3aWxsIGJlIGNhdWdodAo+PiDCoMKgIHdpdGggdGhpcyBleHRlbnNpb24gaGVyZSB0
byB0aGUgYWNxdWlyZV9jdHguCj4+Cj4+IC0gZXRuYXZpdjogQW4gYWJzb2x1dGUgbWFzc2l2ZSBh
bW91bnQgb2YgY29kZSBpcyBydW4gYmV0d2VlbiB0aGUKPj4gwqDCoCBhY3F1aXJlX2luaXQgYW5k
IHRoZSBmaXJzdCBsb2NrIGFjcXVpc2l0aW9uIGluIHN1Ym1pdF9sb2NrX29iamVjdHMuCj4+IMKg
wqAgQnV0IG5vdGhpbmcgdGhhdCB3b3VsZCB0b3VjaCB1c2VyIG1lbW9yeSBhbmQgY291bGQgY2F1
c2UgYSBmYXVsdC4KPj4gwqDCoCBGdXJ0aGVybW9yZSBub3RoaW5nIHRoYXQgdXNlcyB0aGUgdGlj
a2V0LCBzbyBldmVuIGlmIEkgbWlzc2VkCj4+IMKgwqAgc29tZXRoaW5nLCBpdCB3b3VsZCBiZSBl
YXN5IHRvIGZpeCBieSBwdXNoaW5nIHRoZSBhY3F1aXJlX2luaXQgcmlnaHQKPj4gwqDCoCBiZWZv
cmUgdGhlIGZpcnN0IHVzZS4gU2ltaWxhciBvbiB0aGUgdW5sb2NrL2FjcXVpcmVfZmluaSBzaWRl
Lgo+Pgo+PiAtIGk5MTU6IFJpZ2h0IG5vdyAoYW5kIHRoaXMgd2lsbCBsaWtlbHkgY2hhbmdlIGEg
bG90IHJzbikgdGhlIGFjcXVpcmUKPj4gwqDCoCBjdHggYW5kIGFjdHVhbCBsb2NrcyBhcmUgcmln
aHQgbmV4dCB0byBlYWNoIGFub3RoZXIuIE5vIHByb2JsZW0uCj4+Cj4+IC0gbXNtIGhhcyBhIHBy
b2JsZW06IHN1Ym1pdF9jcmVhdGUgY2FsbHMgYWNxdWlyZV9pbml0LCBidXQgdGhlbgo+PiDCoMKg
IHN1Ym1pdF9sb29rdXBfb2JqZWN0cygpIGhhcyBhIGJ1bmNoIG9mIGNvcHlfZnJvbV91c2VyIHRv
IGRvIHRoZQo+PiDCoMKgIG9iamVjdCBsb29rdXBzLiBUaGF0J3MgdGhlIG9ubHkgdGhpbmcgYmVm
b3JlIHN1Ym1pdF9sb2NrX29iamVjdHMKPj4gwqDCoCBjYWxsIGRtYV9yZXN2X2xvY2soKS4gRGVz
cGl0ZSBhbGwgdGhlIGNvcHlwYXN0YSB0byBldG5hdml2LCBldG5hdml2Cj4+IMKgwqAgZG9lcyBu
b3QgaGF2ZSB0aGlzIGlzc3VlIHNpbmNlIGl0IGNvcGllcyBhbGwgdGhlIHVzZXJzcGFjZSBzdHJ1
Y3RzCj4+IMKgwqAgZWFybGllci4gc3VibWl0X2NsZWFudXAgZG9lcyBub3QgaGF2ZSBhbnkgc3Vj
aCBpc3N1ZXMuCj4+Cj4+IMKgwqAgV2l0aCB0aGUgcHJlcCBwYXRjaCB0byBwdWxsIG91dCB0aGUg
YWNxdWlyZV9jdHggYW5kIHJlb3JkZXIgaXQgbXNtCj4+IMKgwqAgaXMgZ29pbmcgdG8gYmUgc2Fm
ZSB0b28uCj4+Cj4+IC0gbm91dmVhdTogYWNxdWlyZV9pbml0IGlzIHJpZ2h0IG5leHQgdG8gdHRt
X2JvX3Jlc2VydmUsIHNvIGFsbCBnb29kLgo+PiDCoMKgIFNpbWlsYXIgb24gdGhlIGFjcXVpcmVf
ZmluaS90dG1fYm9fdW5yZXNlcnZlIHNpZGUuCj4+Cj4+IC0gdHRtIGV4ZWNidWYgdXRpbHM6IGFj
cXVpcmUgY29udGV4dCBhbmQgbG9ja2luZyBhcmUgZXZlbiBpbiB0aGUgc2FtZQo+PiDCoMKgIGZ1
bmN0aW9ucyBoZXJlIChvbmUgZnVuY3Rpb24gdG8gcmVzZXJ2ZSBldmVyeXRoaW5nLCB0aGUgb3Ro
ZXIgdG8KPj4gwqDCoCB1bnJlc2VydmUpLCBzbyBhbGwgZ29vZC4KPj4KPj4gLSB2YzQ6IEFub3Ro
ZXIgY2FzZSB3aGVyZSBhY3F1aXJlIGNvbnRleHQgYW5kIGxvY2tpbmcgYXJlIGhhbmRsZWQgaW4K
Pj4gwqDCoCB0aGUgc2FtZSBmdW5jdGlvbnMgKG9uZSBmdW5jdGlvbiB0byBsb2NrIGV2ZXJ5dGhp
bmcsIHRoZSBvdGhlciB0bwo+PiDCoMKgIHVubG9jaykuCj4+Cj4+IENjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+PiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgo+PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4+IENjOiBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPj4gQ2M6IEh1YW5nIFJ1aSA8cmF5Lmh1YW5n
QGFtZC5jb20+Cj4+IENjOiBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0Pgo+PiBDYzogQmVu
IFNrZWdncyA8YnNrZWdnc0ByZWRoYXQuY29tPgo+PiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5k
ZXIuZGV1Y2hlckBhbWQuY29tPgo+PiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4K
Pj4gQ2M6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+PiBDYzogUnVzc2Vs
bCBLaW5nIDxsaW51eCtldG5hdml2QGFybWxpbnV4Lm9yZy51az4KPj4gQ2M6IENocmlzdGlhbiBH
bWVpbmVyIDxjaHJpc3RpYW4uZ21laW5lckBnbWFpbC5jb20+Cj4+IENjOiBSb2IgQ2xhcmsgPHJv
YmRjbGFya0BnbWFpbC5jb20+Cj4+IENjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KPj4g
U2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4K
PiBBY2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+
Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDggKysrKysrKy0KPj4g
wqAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLXJlc3YuYwo+PiBpbmRleCBkM2M3NjBlMTk5OTEuLjA3OWUzOGZkZTMzYSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMKPj4gQEAgLTEwMCw3ICsxMDAsOSBAQCBzdGF0aWMgdm9pZCBkbWFfcmVzdl9s
aXN0X2ZyZWUoc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3QpCj4+IMKgIHN0YXRpYyB2b2lkIF9f
aW5pdCBkbWFfcmVzdl9sb2NrZGVwKHZvaWQpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3Qg
bW1fc3RydWN0ICptbSA9IG1tX2FsbG9jKCk7Cj4+ICvCoMKgwqAgc3RydWN0IHd3X2FjcXVpcmVf
Y3R4IGN0eDsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX3Jlc3Ygb2JqOwo+PiArwqDCoMKgIGlu
dCByZXQ7Cj4+IMKgIMKgwqDCoMKgwqAgaWYgKCFtbSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybjsKPj4gQEAgLTEwOCwxMCArMTEwLDE0IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBkbWFfcmVz
dl9sb2NrZGVwKHZvaWQpCj4+IMKgwqDCoMKgwqAgZG1hX3Jlc3ZfaW5pdCgmb2JqKTsKPj4gwqAg
wqDCoMKgwqDCoCBkb3duX3JlYWQoJm1tLT5tbWFwX3NlbSk7Cj4+IC3CoMKgwqAgd3dfbXV0ZXhf
bG9jaygmb2JqLmxvY2ssIE5VTEwpOwo+PiArwqDCoMKgIHd3X2FjcXVpcmVfaW5pdCgmY3R4LCAm
cmVzZXJ2YXRpb25fd3dfY2xhc3MpOwo+PiArwqDCoMKgIHJldCA9IGRtYV9yZXN2X2xvY2soJm9i
aiwgJmN0eCk7Cj4+ICvCoMKgwqAgaWYgKHJldCA9PSAtRURFQURMSykKPj4gK8KgwqDCoMKgwqDC
oMKgIGRtYV9yZXN2X2xvY2tfc2xvdygmb2JqLCAmY3R4KTsKPj4gwqDCoMKgwqDCoCBmc19yZWNs
YWltX2FjcXVpcmUoR0ZQX0tFUk5FTCk7Cj4+IMKgwqDCoMKgwqAgZnNfcmVjbGFpbV9yZWxlYXNl
KEdGUF9LRVJORUwpOwo+PiDCoMKgwqDCoMKgIHd3X211dGV4X3VubG9jaygmb2JqLmxvY2spOwo+
PiArwqDCoMKgIHd3X2FjcXVpcmVfZmluaSgmY3R4KTsKPj4gwqDCoMKgwqDCoCB1cF9yZWFkKCZt
bS0+bW1hcF9zZW0pOwo+PiDCoMKgwqDCoMKgCj4+IMKgwqDCoMKgwqAgbW1wdXQobW0pOwo+CgpG
b3Igd2hvbGUgc2VyaWVzOgoKUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cgp0eXBvIGluIHBhdGNoIDMgYnR3IDopCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
