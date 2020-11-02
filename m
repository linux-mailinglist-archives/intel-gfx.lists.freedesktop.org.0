Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA6E2A26E5
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 10:22:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19E766E44A;
	Mon,  2 Nov 2020 09:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1287C6E44A
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 09:22:29 +0000 (UTC)
IronPort-SDR: 2uavGF5kerdngw1EArutFJFJY4WAkN1mdWbZKwTvPprDsxGms3buPZgylsp/5vRpQTb83sf5A9
 edVdXUYfkirQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="166266570"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="166266570"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 01:22:28 -0800
IronPort-SDR: F16zCKYArNXC8AOoqLTFC6TUdA7F6ByijH7xaW2rsBFK+hjYdUxplSnBCIOf5nhqEbjxgOXBsL
 PP+gUdOMKLlg==
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="537948118"
Received: from vanderss-mobl1.ger.corp.intel.com (HELO
 W10-45-itb-67.SSPE.ch.intel.com) ([10.249.254.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 01:22:27 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-21-maarten.lankhorst@linux.intel.com>
 <1b38a307-0d57-9abd-d72d-a0e783b39183@linux.intel.com>
 <5ed58ed0-ce0c-dbf8-ceb3-5a88c2e1fc00@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <2c5a14d7-e01d-5af1-a4a0-96281c7a8943@linux.intel.com>
Date: Mon, 2 Nov 2020 10:22:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <5ed58ed0-ce0c-dbf8-ceb3-5a88c2e1fc00@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 20/61] drm/i915: Rework clflush to work
 correctly without obj->mm.lock.
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

Ck9uIDExLzIvMjAgOTo0OCBBTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gT3AgMzAtMTAt
MjAyMCBvbSAxNjowOCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBPbiAxMC8xNi8yMCAx
Mjo0NCBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+PiBQaW4gaW4gdGhlIGNhbGxlciwg
bm90IGluIHRoZSB3b3JrIGl0c2VsZi4gVGhpcyBzaG91bGQgYWxzbwo+Pj4gd29yayBiZXR0ZXIg
Zm9yIGRtYS1mZW5jZSBhbm5vdGF0aW9ucy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+Pj4gLS0tCj4+
PiAgwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsZmx1c2guYyB8IDE1ICsr
KysrKystLS0tLS0tLQo+Pj4gIMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDgg
ZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jbGZsdXNoLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y2xmbHVzaC5jCj4+PiBpbmRleCBiYzAyMjM3MTY5MDYuLmRhZjkyODRlZjFmNSAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGZsdXNoLmMKPj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGZsdXNoLmMKPj4+IEBAIC0y
NywxNSArMjcsOCBAQCBzdGF0aWMgdm9pZCBfX2RvX2NsZmx1c2goc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKPj4+ICDCoCBzdGF0aWMgaW50IGNsZmx1c2hfd29yayhzdHJ1Y3QgZG1h
X2ZlbmNlX3dvcmsgKmJhc2UpCj4+PiAgwqAgewo+Pj4gIMKgwqDCoMKgwqAgc3RydWN0IGNsZmx1
c2ggKmNsZmx1c2ggPSBjb250YWluZXJfb2YoYmFzZSwgdHlwZW9mKCpjbGZsdXNoKSwgYmFzZSk7
Cj4+PiAtwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBjbGZsdXNoLT5v
Ymo7Cj4+PiAtwqDCoMKgIGludCBlcnI7Cj4+PiAgwqAgLcKgwqDCoCBlcnIgPSBpOTE1X2dlbV9v
YmplY3RfcGluX3BhZ2VzKG9iaik7Cj4+PiAtwqDCoMKgIGlmIChlcnIpCj4+PiAtwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIGVycjsKPj4+IC0KPj4+IC3CoMKgwqAgX19kb19jbGZsdXNoKG9iaik7Cj4+
PiAtwqDCoMKgIGk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmopOwo+Pj4gK8KgwqDCoCBf
X2RvX2NsZmx1c2goY2xmbHVzaC0+b2JqKTsKPj4+ICDCoCDCoMKgwqDCoMKgIHJldHVybiAwOwo+
Pj4gIMKgIH0KPj4+IEBAIC00NCw2ICszNyw3IEBAIHN0YXRpYyB2b2lkIGNsZmx1c2hfcmVsZWFz
ZShzdHJ1Y3QgZG1hX2ZlbmNlX3dvcmsgKmJhc2UpCj4+PiAgwqAgewo+Pj4gIMKgwqDCoMKgwqAg
c3RydWN0IGNsZmx1c2ggKmNsZmx1c2ggPSBjb250YWluZXJfb2YoYmFzZSwgdHlwZW9mKCpjbGZs
dXNoKSwgYmFzZSk7Cj4+PiAgwqAgK8KgwqDCoCBpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMo
Y2xmbHVzaC0+b2JqKTsKPj4gSG1tLCBDb3VsZCB3ZSBkbyB3aXRob3V0IHBpbm5pbmcgaGVyZT8g
UGFnZXMgcHJlc2VudCBhcmUgcHJvdGVjdGVkIGZpcnN0IGJ5IHRoZSBvYmplY3QgbG9jaywgdGhl
biBieSB0aGUgZmVuY2U/Cj4+Cj4+IC9UaG9tYXMKPj4KPj4KPj4KPiBJIGZlbHQgdGhlIGxlYXN0
IGNoYW5jZSBvZiByZWdyZXNzaW9ucyB3YXMgdG8gY29weSB0aGUgZXhpc3RpbmcgY29kZS4gOikK
Pgo+IEF0IGxlYXN0IHVudGlsIHdlIGhhdmUgY29tcGxldGVkIG9iai0+bW0ubG9jayByZW1vdmFs
LCB3ZSBzaG91bGRuJ3QgdHJ5IHRvIGJlIHNtYXJ0IHdpdGggdGhlc2Uga2luZCBvZiB0aGluZ3Mu
Cj4KPiBMaWtlbHksIHdlJ3ZlIGFscmVhZHkgcGlubmVkIHRoZSBwYWdlcywgc28gaXQncyBhIHNp
bXBsZSByZWYgaW5jcmVhc2UuCj4KPiBMYXRlciBvbiwgd2UgY2FuIHRyeSB0byBiZSBzbWFydCwg
YnV0IHdoZW5ldmVyIEkgdHJpZWQgdG8gY2hhbmdlIGJlaGF2aW9yIHNvIGZhciwgSSB3YXMgZm9y
Y2VkIHRvIGh1bnQgZG93biBidWdzLgoKT0ssIHNvdW5kcyBnb29kLgoKL1Rob21hcwoKCgo+Cj4g
fk1hYXJ0ZW4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
