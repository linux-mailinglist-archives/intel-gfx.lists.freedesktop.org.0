Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 200173B4750
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 18:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628706EE14;
	Fri, 25 Jun 2021 16:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EB76EE10;
 Fri, 25 Jun 2021 16:17:50 +0000 (UTC)
IronPort-SDR: Oi9jhA8O/J2lNzZM25P4uGiKStW4T/rmd9ku1EHK7lysEwT/qZ6wdmtA39nPSS39YYz+baCZzZ
 kogU59oUV1Vg==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="204691476"
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="204691476"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 09:17:50 -0700
IronPort-SDR: 5O/pnIz2dcFOVpvq39rMnkbAAlDo+wq7nQF1/ixCF7oLEhHTXEpmsn9HmGtOyHFJhMXyu8gPwI
 5E8aLP5EtaAw==
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; d="scan'208";a="453863460"
Received: from pjthomps-mobl1.ger.corp.intel.com (HELO [10.249.254.221])
 ([10.249.254.221])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 09:17:48 -0700
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
References: <20210624183110.22582-1-thomas.hellstrom@linux.intel.com>
 <20210624183110.22582-5-thomas.hellstrom@linux.intel.com>
 <5304ae661abb43a0816a485db9d3bbb5@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <cd90ba70-15f8-af0a-8810-2ee7939622a2@linux.intel.com>
Date: Fri, 25 Jun 2021 18:17:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <5304ae661abb43a0816a485db9d3bbb5@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gem: Migrate to system at
 dma-buf map time
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIE1pY2hhZWwsCgp0aGFua3MgZm9yIGxvb2tpbmcgYXQgdGhpcy4KCk9uIDYvMjUvMjEgNjow
MiBQTSwgUnVobCwgTWljaGFlbCBKIHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQo+PiBGcm9tOiBkcmktZGV2ZWwgPGRyaS1kZXZlbC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZz4gT24gQmVoYWxmIE9mCj4+IFRob21hcyBIZWxsc3Ryw7ZtCj4+IFNlbnQ6IFRodXJzZGF5
LCBKdW5lIDI0LCAyMDIxIDI6MzEgUE0KPj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gQ2M6IFRob21hcyBIZWxs
c3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT47IEF1bGQsIE1hdHRoZXcK
Pj4gPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4+IFN1YmplY3Q6IFtQQVRDSCA0LzRdIGRybS9p
OTE1L2dlbTogTWlncmF0ZSB0byBzeXN0ZW0gYXQgZG1hLWJ1ZiBtYXAgdGltZQo+Pgo+PiBVbnRp
bCB3ZSBzdXBwb3J0IHAycCBkbWEgb3IgYXMgYSBjb21wbGVtZW50IHRvIHRoYXQsIG1pZ3JhdGUg
ZGF0YQo+PiB0byBzeXN0ZW0gbWVtb3J5IGF0IGRtYS1idWYgbWFwIHRpbWUgaWYgcG9zc2libGUu
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9t
QGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9kbWFidWYuYyB8IDkgKysrKysrKystCj4+IDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9kbWFidWYuYwo+PiBpbmRleCA2MTZjM2EyZjFiYWYuLmE1MmY4ODViYzA5YSAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+PiBAQCAt
MjUsNyArMjUsMTQgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqaTkxNV9nZW1fbWFwX2RtYV9i
dWYoc3RydWN0Cj4+IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWUKPj4gCXN0cnVjdCBzY2F0
dGVybGlzdCAqc3JjLCAqZHN0Owo+PiAJaW50IHJldCwgaTsKPj4KPj4gLQlyZXQgPSBpOTE1X2dl
bV9vYmplY3RfcGluX3BhZ2VzX3VubG9ja2VkKG9iaik7Cj4+ICsJcmV0ID0gaTkxNV9nZW1fb2Jq
ZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmosIE5VTEwpOwo+IEhtbSwgSSBiZWxpZXZlIGluIG1v
c3QgY2FzZXMgdGhhdCB0aGUgY2FsbGVyIHNob3VsZCBiZSBob2xkaW5nIHRoZQo+IGxvY2sgKG9i
amVjdCBkbWEtcmVzdikgb24gdGhpcyBvYmplY3QgYWxyZWFkeS4KClllcywgSSBhZ3JlZSwgSW4g
cGFydGljdWxhciBmb3Igb3RoZXIgaW5zdGFuY2VzIG9mIG91ciBvd24gZHJpdmVyLMKgIGF0IAps
ZWFzdCBzaW5jZSB0aGUgZG1hX3Jlc3YgaW50cm9kdWN0aW9uLgoKQnV0IEkgYWxzbyB0aGluayB0
aGF0J3MgYSBwcmUtZXhpc3RpbmcgYnVnLCBzaW5jZSAKaTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdl
c191bmxvY2tlZCgpIHdpbGwgYWxzbyB0YWtlIHRoZSBsb2NrLgoKSSBUaGluayB3ZSBuZWVkIHRv
IGluaXRpYWxseSBtYWtlIHRoZSBleHBvcnRlciBkeW5hbWljLWNhcGFibGUgdG8gCnJlc29sdmUg
dGhpcywgYW5kIGRyb3AgdGhlIGxvY2tpbmcgaGVyZSBjb21wbGV0ZWx5LCBhcyBkbWEtYnVmIGRv
Y3Mgc2F5cyAKdGhhdCB3ZSdyZSB0aGVuIGd1YXJhbnRlZWQgdG8gZ2V0IGNhbGxlZCB3aXRoIHRo
ZSBvYmplY3QgbG9jayBoZWxkLgoKSSBmaWd1cmUgaWYgd2UgbWFrZSB0aGUgZXhwb3J0ZXIgZHlu
YW1pYywgd2UgbmVlZCB0byBtaWdyYXRlIGFscmVhZHkgYXQgCmRtYV9idWZfcGluIHRpbWUgc28g
d2UgZG9uJ3QgcGluIHRoZSBvYmplY3QgaW4gdGhlIHdyb25nIGxvY2F0aW9uLgoKL1Rob21hcwoK
Cj4KPiBJIGtub3cgZm9yIHRoZSBkeW5hbWljIHZlcnNpb24gb2YgZG1hLWJ1ZiwgdGhlcmUgaXMg
YSBjaGVjayB0byBtYWtlCj4gc3VyZSB0aGF0IHRoZSBsb2NrIGlzIGhlbGQgd2hlbiBjYWxsZWQu
Cj4KPiBJIHRoaW5rIHlvdSB3aWxsIHJ1biBpbnRvIHNvbWUgaXNzdWVzIGlmIHlvdSB0cnkgdG8g
Z2V0IGl0IGhlcmUgYXMgd2VsbC4KPgo+IE1pa2UKPgo+PiArCWlmIChyZXQpCj4+ICsJCXJldHVy
biBFUlJfUFRSKHJldCk7Cj4+ICsKPj4gKwlyZXQgPSBpOTE1X2dlbV9vYmplY3RfbWlncmF0ZShv
YmosIE5VTEwsIElOVEVMX1JFR0lPTl9TTUVNKTsKPj4gKwlpZiAoIXJldCkKPj4gKwkJcmV0ID0g
aTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOwo+PiArCWk5MTVfZ2VtX29iamVjdF91bmxv
Y2sob2JqKTsKPj4gCWlmIChyZXQpCj4+IAkJZ290byBlcnI7Cj4+Cj4+IC0tCj4+IDIuMzEuMQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
