Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89D9268ECA
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 17:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6236E4CD;
	Mon, 14 Sep 2020 15:02:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F66E6E4CA
 for <Intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 15:02:27 +0000 (UTC)
IronPort-SDR: 23Lmxv0JUFMoRev9OiDlnSjxiufcNDEHSVXYDeUSWFIbhDCguDk0Grh4IjoBhA8qiB6lsnwsRI
 1xLMx5hz+1+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="138596768"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="138596768"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 08:02:22 -0700
IronPort-SDR: Usf4+5LtruoMmxt5i9cubecjPkxk4ESaMMWeaHxXLbBan2N0CS/T+XIwFb1Ufn9bvm6v/XCC2e
 PUCWjNR3tYjg==
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="306194735"
Received: from matancoh-mobl2.ger.corp.intel.com (HELO [10.255.198.45])
 ([10.255.198.45])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 08:02:20 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20200904125934.133475-1-tvrtko.ursulin@linux.intel.com>
 <20200904125934.133475-4-tvrtko.ursulin@linux.intel.com>
 <20200911064406.zkzlupalayyd3wp5@ldmartin-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b9ab5d00-f1ed-3a41-3dc0-0a11a01fd276@linux.intel.com>
Date: Mon, 14 Sep 2020 16:02:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911064406.zkzlupalayyd3wp5@ldmartin-desk1>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Make GEM contexts track DRM
 clients
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
Cc: Intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzA5LzIwMjAgMDc6NDQsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBPbiBGcmksIFNl
cCAwNCwgMjAyMCBhdCAwMTo1OToyOFBNICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4g
RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4KPj4gSWYg
d2UgbWFrZSBHRU0gY29udGV4dHMga2VlcCBhIHJlZmVyZW5jZSB0byBpOTE1X2RybV9jbGllbnQg
Zm9yIHRoZSB3aG9sZQo+PiBvZiB0aGVpciBsaWZldGltZSwgd2UgY2FuIGNvbnNvbGlkYXRlIHRo
ZSBjdXJyZW50IHRhc2sgcGlkIGFuZCBuYW1lIHVzYWdlCj4+IGJ5IGdldHRpbmcgaXQgZnJvbSB0
aGUgY2xpZW50Lgo+Pgo+PiB2MjoKPj4gKiBEb24ndCBib3RoZXIgc3VwcG9ydGluZyBzZWxmdGVz
dHMgY29udGV4dHMgZnJvbSBkZWJ1Z2ZzLiAoQ2hyaXMpCj4+Cj4+IHYzOgo+PiAqIFRyaXZpYWwg
cmViYXNlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgo+PiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4+IC0tLQo+PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y29udGV4dC5jwqDCoCB8IDE5ICsrKysrKysrKy0tLQo+PiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0X3R5cGVzLmggfCAxMyArKy0tLS0tLS0KPj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDI5ICsrKysrKystLS0t
LS0tLS0tLS0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuY8KgwqDCoMKg
wqDCoMKgwqAgfCAyMiArKysrKysrKy0tLS0tLQo+PiA0IGZpbGVzIGNoYW5nZWQsIDQxIGluc2Vy
dGlvbnMoKyksIDQyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4+IGluZGV4IDU5MTljYzVmODM0OC4uYWI4ZDI1ZWRh
MjA0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMKPj4gQEAgLTMzNiw4ICszMzYsMTMgQEAgc3RhdGljIHN0cnVjdCBpOTE1X2dlbV9lbmdpbmVz
IAo+PiAqZGVmYXVsdF9lbmdpbmVzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCj4+Cj4+
IHN0YXRpYyB2b2lkIGk5MTVfZ2VtX2NvbnRleHRfZnJlZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4KQo+PiB7Cj4+ICvCoMKgwqAgc3RydWN0IGk5MTVfZHJtX2NsaWVudCAqY2xpZW50ID0g
Y3R4LT5jbGllbnQ7Cj4+ICsKPj4gwqDCoMKgwqBHRU1fQlVHX09OKCFpOTE1X2dlbV9jb250ZXh0
X2lzX2Nsb3NlZChjdHgpKTsKPj4KPj4gK8KgwqDCoCBpZiAoY2xpZW50KQo+PiArwqDCoMKgwqDC
oMKgwqAgaTkxNV9kcm1fY2xpZW50X3B1dChjbGllbnQpOwo+PiArCj4+IMKgwqDCoMKgc3Bpbl9s
b2NrKCZjdHgtPmk5MTUtPmdlbS5jb250ZXh0cy5sb2NrKTsKPj4gwqDCoMKgwqBsaXN0X2RlbCgm
Y3R4LT5saW5rKTsKPj4gwqDCoMKgwqBzcGluX3VubG9jaygmY3R4LT5pOTE1LT5nZW0uY29udGV4
dHMubG9jayk7Cj4+IEBAIC0zNDgsNyArMzUzLDYgQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1fY29u
dGV4dF9mcmVlKHN0cnVjdCAKPj4gaTkxNV9nZW1fY29udGV4dCAqY3R4KQo+PiDCoMKgwqDCoGlm
IChjdHgtPnRpbWVsaW5lKQo+PiDCoMKgwqDCoMKgwqDCoCBpbnRlbF90aW1lbGluZV9wdXQoY3R4
LT50aW1lbGluZSk7Cj4+Cj4+IC3CoMKgwqAgcHV0X3BpZChjdHgtPnBpZCk7Cj4+IMKgwqDCoMKg
bXV0ZXhfZGVzdHJveSgmY3R4LT5tdXRleCk7Cj4+Cj4+IMKgwqDCoMKga2ZyZWVfcmN1KGN0eCwg
cmN1KTsKPj4gQEAgLTkzNiw2ICs5NDAsNyBAQCBzdGF0aWMgaW50IGdlbV9jb250ZXh0X3JlZ2lz
dGVyKHN0cnVjdCAKPj4gaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdTMyICppZCkKPj4gewo+PiDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gY3R4LT5pOTE1Owo+PiArwqDCoMKgIHN0cnVjdCBpOTE1X2RybV9jbGll
bnQgKmNsaWVudDsKPj4gwqDCoMKgwqBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bTsKPj4g
wqDCoMKgwqBpbnQgcmV0Owo+Pgo+PiBAQCAtOTQ3LDkgKzk1MiwxMyBAQCBzdGF0aWMgaW50IGdl
bV9jb250ZXh0X3JlZ2lzdGVyKHN0cnVjdCAKPj4gaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+PiDC
oMKgwqDCoMKgwqDCoCBXUklURV9PTkNFKHZtLT5maWxlLCBmcHJpdik7IC8qIFhYWCAqLwo+PiDC
oMKgwqDCoG11dGV4X3VubG9jaygmY3R4LT5tdXRleCk7Cj4+Cj4+IC3CoMKgwqAgY3R4LT5waWQg
PSBnZXRfdGFza19waWQoY3VycmVudCwgUElEVFlQRV9QSUQpOwo+PiArwqDCoMKgIGNsaWVudCA9
IGk5MTVfZHJtX2NsaWVudF9nZXQoZnByaXYtPmNsaWVudCk7Cj4+ICsKPj4gK8KgwqDCoCByY3Vf
cmVhZF9sb2NrKCk7Cj4+IMKgwqDCoMKgc25wcmludGYoY3R4LT5uYW1lLCBzaXplb2YoY3R4LT5u
YW1lKSwgIiVzWyVkXSIsCj4+IC3CoMKgwqDCoMKgwqDCoMKgIGN1cnJlbnQtPmNvbW0sIHBpZF9u
cihjdHgtPnBpZCkpOwo+PiArwqDCoMKgwqDCoMKgwqDCoCByY3VfZGVyZWZlcmVuY2UoY2xpZW50
LT5uYW1lKSwKPj4gK8KgwqDCoMKgwqDCoMKgwqAgcGlkX25yKHJjdV9kZXJlZmVyZW5jZShjbGll
bnQtPnBpZCkpKTsKPj4gK8KgwqDCoCByY3VfcmVhZF91bmxvY2soKTsKPj4KPj4gwqDCoMKgwqAv
KiBBbmQgZmluYWxseSBleHBvc2Ugb3Vyc2VsdmVzIHRvIHVzZXJzcGFjZSB2aWEgdGhlIGlkciAq
Lwo+PiDCoMKgwqDCoHJldCA9IHhhX2FsbG9jKCZmcHJpdi0+Y29udGV4dF94YSwgaWQsIGN0eCwg
eGFfbGltaXRfMzJiLCAKPj4gR0ZQX0tFUk5FTCk7Cj4+IEBAIC05NjAsMTAgKzk2OSwxMiBAQCBz
dGF0aWMgaW50IGdlbV9jb250ZXh0X3JlZ2lzdGVyKHN0cnVjdCAKPj4gaTkxNV9nZW1fY29udGV4
dCAqY3R4LAo+PiDCoMKgwqDCoGxpc3RfYWRkX3RhaWwoJmN0eC0+bGluaywgJmk5MTUtPmdlbS5j
b250ZXh0cy5saXN0KTsKPj4gwqDCoMKgwqBzcGluX3VubG9jaygmaTkxNS0+Z2VtLmNvbnRleHRz
LmxvY2spOwo+Pgo+PiArwqDCoMKgIGN0eC0+Y2xpZW50ID0gY2xpZW50Owo+IAo+IGFzIHBlciA1
ZjdjY2VhYmYxMDQgKCJkcm0vaTkxNS9nZW06IERlbGF5IHRyYWNraW5nIHRoZSBHRU0gY29udGV4
dCB1bnRpbCAKPiBpdCBpcyByZWdpc3RlcmVkIikKPiBzaG91bGRuJ3QgeW91IGZpbmlzaCBjb25z
dHJ1Y3QgY3R4IGJlZm9yZSBhZGRpbmcgaXQgdG8gdGhlIGxpc3Q/CgpTZW50IGFuIHVwZGF0ZWQg
c2VyaWVzIC0gc2hvdWxkIGJlIG9rYXkgbm93LgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
