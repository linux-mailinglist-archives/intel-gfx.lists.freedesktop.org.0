Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F98C38C1D4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 10:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2F86E492;
	Fri, 21 May 2021 08:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 798F36E492;
 Fri, 21 May 2021 08:30:48 +0000 (UTC)
IronPort-SDR: r4qusegy3q3SvuVGz61frLe/7sb4PmZ0oBMbE2ONfK1icXRo+t2kXGlNto/gJspOncRC8hYC6n
 5PYBtalvoYTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="198354107"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="198354107"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 01:30:47 -0700
IronPort-SDR: N3cTXFI+xJrHvjGaEguUr6MDfRCetyF2aQI0uZJULsR7YxJ7deXq3eOSgIMD9eBRQ2SB6k/AOW
 OVLL5KoWs5Tg==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="440843215"
Received: from imarinmo-mobl1.ger.corp.intel.com (HELO [10.249.254.34])
 ([10.249.254.34])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 01:30:45 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210520150947.803891-1-thomas.hellstrom@linux.intel.com>
 <20210520150947.803891-4-thomas.hellstrom@linux.intel.com>
 <f917a62f-0552-e9e2-17d3-8f16c713fa8c@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <88fbf503-c8ec-455d-c3c6-ea8598bd51a5@linux.intel.com>
Date: Fri, 21 May 2021 10:30:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <f917a62f-0552-e9e2-17d3-8f16c713fa8c@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 3/5] drm/ttm: Use drm_memcpy_from_wc for
 TTM bo moves
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMjEvMjEgMTA6MTAgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gQW0gMjAuMDUu
MjEgdW0gMTc6MDkgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4gVXNlIGZhc3Qgd2MgbWVt
Y3B5IGZvciByZWFkaW5nIG91dCBvZiB3YyBtZW1vcnkgZm9yIFRUTSBibyBtb3Zlcy4KPj4KPj4g
Q2M6IERhdmUgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KPj4gQ2M6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+Cj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0
aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPgo+IE9oLCB5ZXMgSSByZWFsbHkgd2Fu
dGVkIHRvIGhhdmUgdGhhdCBpbiBUVE0gZm9yIHF1aXRlIHNvbWUgdGltZS4KV2Ugc2hvdWxkIHVz
ZSBpdCBmb3Igc3dhcCBjb3B5IGZyb20gV0MgYXMgd2VsbCBJTU8uIEEgdG9kby10YXNrIGZvciAK
c29tZWJvZHkuCj4KPiBCdXQgSSdtIHdvbmRlcmluZyBpZiB3ZSBzaG91bGRuJ3QgZml4IHRoZSBt
ZW1yZW1hcCBzdHVmZiBmaXJzdC4KClVzaW5nIG1lbXJlbWFwIGFsbCBvdmVyIGlzIGEgZmFpcmx5
IGJpZyBjaGFuZ2UgcHJvYmFibHkgd2l0aCBsb3RzIG9mIApvcGluaW9ucyBpbnZvbHZlZCBhbGwg
b3ZlciB0aGUgcGxhY2UuCldoYXQgSSBjYW4gZG8gZm9yIG5vdyBpcyB0byBhZGQgYSBkbWFfYnVm
X21hcCBpbnRlcmZhY2UgdG8gdGhlIG1lbWNweSAKaXRzZWxmLCB0byBtb3ZlIHRoZSBhbGlhc2lu
ZyBvdXQgb2YgVFRNIHRvIHRoZSBhcmNoIHNwZWNpZmljIGNvZGUgdGhhdCAKa25vd3Mgd2hhdCBp
dCdzIGRvaW5nPwoKL1Rob21hcwoKCj4KPiBDaHJpc3RpYW4uCj4KPj4gLS0tCj4+IMKgIGRyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYyB8IDE4ICsrKysrKysrKysrKysrKysrLQo+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jIAo+PiBiL2RyaXZl
cnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwo+PiBpbmRleCBiYWQ5YjE2ZTk2YmEuLjkxOWVl
MDNmN2ViMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwuYwo+PiBAQCAtMzEsNiAr
MzEsNyBAQAo+PiDCoCDCoCAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm9fZHJpdmVyLmg+Cj4+IMKg
ICNpbmNsdWRlIDxkcm0vdHRtL3R0bV9wbGFjZW1lbnQuaD4KPj4gKyNpbmNsdWRlIDxkcm0vZHJt
X21lbWNweS5oPgo+PiDCoCAjaW5jbHVkZSA8ZHJtL2RybV92bWFfbWFuYWdlci5oPgo+PiDCoCAj
aW5jbHVkZSA8bGludXgvZG1hLWJ1Zi1tYXAuaD4KPj4gwqAgI2luY2x1ZGUgPGxpbnV4L2lvLmg+
Cj4+IEBAIC0xODUsNiArMTg2LDcgQEAgdm9pZCB0dG1fbW92ZV9tZW1jcHkoc3RydWN0IHR0bV9i
dWZmZXJfb2JqZWN0ICpibywKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdHRtX3Jlc291cmNlICpvbGRf
bWVtID0gJmJvLT5tZW07Cj4+IMKgwqDCoMKgwqAgc3RydWN0IHR0bV9yZXNvdXJjZV9tYW5hZ2Vy
ICpvbGRfbWFuID0gdHRtX21hbmFnZXJfdHlwZShiZGV2LCAKPj4gb2xkX21lbS0+bWVtX3R5cGUp
Owo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfYnVmX21hcCBvbGRfbWFwLCBuZXdfbWFwOwo+PiAr
wqDCoMKgIGJvb2wgd2NfbWVtY3B5Owo+PiDCoMKgwqDCoMKgIHBnb2ZmX3QgaTsKPj4gwqAgwqDC
oMKgwqDCoCAvKiBTaW5nbGUgVFRNIG1vdmUuIE5PUCAqLwo+PiBAQCAtMjA4LDExICsyMTAsMjUg
QEAgdm9pZCB0dG1fbW92ZV9tZW1jcHkoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4gwqDCoMKgwqDCoCB9Cj4+IMKgICvCoMKgwqAg
d2NfbWVtY3B5ID0gKCghb2xkX21hbi0+dXNlX3R0IHx8IGJvLT50dG0tPmNhY2hpbmcgIT0gCj4+
IHR0bV9jYWNoZWQpICYmCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2hhc19tZW1j
cHlfZnJvbV93YygpKTsKPj4gKwo+PiArwqDCoMKgIC8qCj4+ICvCoMKgwqDCoCAqIFdlIHVzZSBz
b21lIG5hc3R5IGFsaWFzaW5nIGZvciBkcm1fbWVtY3B5X2Zyb21fd2MsIGJ1dCBhc3N1bWluZwo+
PiArwqDCoMKgwqAgKiB0aGF0IHdlIGNhbiBtb3ZlIHRvIG1lbXJlbWFwcGluZyBpbiB0aGUgbm90
IHRvbyBkaXN0YW50IGZ1dHVyZSwKPj4gK8KgwqDCoMKgICogcmVkdWNlIHRoZSBmcmFnaWxpdHkg
Zm9yIG5vdyB3aXRoIGEgYnVpbGQgYXNzZXJ0Lgo+PiArwqDCoMKgwqAgKi8KPj4gK8KgwqDCoCBC
VUlMRF9CVUdfT04ob2Zmc2V0b2YodHlwZW9mKG9sZF9tYXApLCB2YWRkcikgIT0KPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBvZmZzZXRvZih0eXBlb2Yob2xkX21hcCksIHZhZGRyX2lvbWVt
KSk7Cj4+ICsKPj4gwqDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgbmV3X21lbS0+bnVtX3BhZ2Vz
OyArK2kpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG5ld19pdGVyLT5vcHMtPmttYXBfbG9jYWwo
bmV3X2l0ZXIsICZuZXdfbWFwLCBpKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG9sZF9pdGVyLT5v
cHMtPmttYXBfbG9jYWwob2xkX2l0ZXIsICZvbGRfbWFwLCBpKTsKPj4gwqAgLcKgwqDCoMKgwqDC
oMKgIGlmICghb2xkX21hcC5pc19pb21lbSAmJiAhbmV3X21hcC5pc19pb21lbSkgewo+PiArwqDC
oMKgwqDCoMKgwqAgaWYgKHdjX21lbWNweSkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
cm1fbWVtY3B5X2Zyb21fd2MobmV3X21hcC52YWRkciwgb2xkX21hcC52YWRkciwKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFBBR0VfU0laRSk7Cj4+ICvC
oMKgwqDCoMKgwqDCoCB9IGVsc2UgaWYgKCFvbGRfbWFwLmlzX2lvbWVtICYmICFuZXdfbWFwLmlz
X2lvbWVtKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1lbWNweShuZXdfbWFwLnZh
ZGRyLCBvbGRfbWFwLnZhZGRyLCBQQUdFX1NJWkUpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfSBl
bHNlIGlmICghb2xkX21hcC5pc19pb21lbSkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBkbWFfYnVmX21hcF9tZW1jcHlfdG8oJm5ld19tYXAsIG9sZF9tYXAudmFkZHIsCj4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
