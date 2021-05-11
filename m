Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E88E237A944
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 16:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4074C6EA50;
	Tue, 11 May 2021 14:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836676E194;
 Tue, 11 May 2021 14:28:40 +0000 (UTC)
IronPort-SDR: 9uXW7rtVso5XqG7WoEAvhSBviakWVhQJ8sNmOrUSnI54JH/hT0PVWR7oNpADlQOr1TGjLPyabL
 2HU3utfqHmjA==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="196359976"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="196359976"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 07:28:39 -0700
IronPort-SDR: BUWZ3nAt2KFYwhtg7w4r04CahXvBgSOzMex1dJJfxtotNtWaTLk6wDZ7XqwKt96V4PzDofgQJt
 z6W7OKO8D3MQ==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="391421714"
Received: from kjeldbeg-mobl2.ger.corp.intel.com (HELO [10.249.254.168])
 ([10.249.254.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 07:28:38 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
 <20210511132525.377190-7-thomas.hellstrom@linux.intel.com>
 <8ac6bc5c-17c0-2ffd-7f8c-823ab3c8a858@amd.com>
 <88ea8e22-3314-60a4-8f4b-0b37de444b1d@shipmail.org>
 <8551810c-a095-3906-d982-7bc409140c48@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <0b7f32d8-bfb9-84dd-fea7-556dddded1cc@linux.intel.com>
Date: Tue, 11 May 2021 16:28:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <8551810c-a095-3906-d982-7bc409140c48@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/ttm,
 drm/ttm: Introduce a TTM i915 gem object backend
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

Ck9uIDUvMTEvMjEgNDowOSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPgo+Cj4gQW0gMTEu
MDUuMjEgdW0gMTY6MDYgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+Pgo+PiBP
biA1LzExLzIxIDM6NTggUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAxMS4wNS4y
MSB1bSAxNToyNSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+IE1vc3QgbG9naWNhbCBw
bGFjZSB0byBpbnRyb2R1Y2UgVFRNIGJ1ZmZlciBvYmplY3RzIGlzIGFzIGFuIGk5MTUKPj4+PiBn
ZW0gb2JqZWN0IGJhY2tlbmQuIFdlIG5lZWQgdG8gYWRkIHNvbWUgb3BzIHRvIGFjY291bnQgZm9y
IGFkZGVkCj4+Pj4gZnVuY3Rpb25hbGl0eSBsaWtlIGRlbGF5ZWQgZGVsZXRlIGFuZCBMUlUgbGlz
dCBtYW5pcHVsYXRpb24uCj4+Pj4KPj4+PiBJbml0aWFsbHkgd2Ugc3VwcG9ydCBvbmx5IExNRU0g
YW5kIFNZU1RFTSBtZW1vcnksIGJ1dCBTWVNURU0KPj4+PiAod2hpY2ggaW4gdGhpcyBjYXNlIG1l
YW5zIGV2aWN0ZWQgTE1FTSBvYmplY3RzKSBpcyBub3QKPj4+PiB2aXNpYmxlIHRvIGk5MTUgR0VN
IHlldC4gVGhlIHBsYW4gaXMgdG8gbW92ZSB0aGUgaTkxNSBnZW0gc3lzdGVtIAo+Pj4+IHJlZ2lv
bgo+Pj4+IG92ZXIgdG8gdGhlIFRUTSBzeXN0ZW0gbWVtb3J5IHR5cGUgaW4gdXBjb21pbmcgcGF0
Y2hlcy4KPj4+Pgo+Pj4+IFdlIHNldCB1cCBHUFUgYmluZGluZ3MgZGlyZWN0bHkgYm90aCBmcm9t
IExNRU0gYW5kIGZyb20gdGhlIHN5c3RlbSAKPj4+PiByZWdpb24sCj4+Pj4gYXMgdGhlcmUgaXMg
bm8gbmVlZCB0byB1c2UgdGhlIGxlZ2FjeSBUVE1fVFQgbWVtb3J5IHR5cGUuIFdlIHJlc2VydmUK
Pj4+PiB0aGF0IGZvciBmdXR1cmUgcG9ydGluZyBvZiBHR1RUIGJpbmRpbmdzIHRvIFRUTS4KPj4+
Pgo+Pj4+IFRoZXJlIGFyZSBzb21lIGNoYW5nZXMgdG8gVFRNIHRvIGFsbG93IGZvciBwdXJnaW5n
IHN5c3RlbSBtZW1vcnkgCj4+Pj4gYnVmZmVyCj4+Pj4gb2JqZWN0cyBhbmQgdG8gcmVmdXNlIHN3
YXBwaW5nIG9mIHNvbWUgb2JqZWN0czogVW5mb3J0dW5hdGVseSBpOTE1IGdlbQo+Pj4+IHN0aWxs
IHJlbGllcyBoZWF2aWx5IG9uIHNob3J0LXRlcm0gb2JqZWN0IHBpbm5pbmcsIGFuZCB3ZSd2ZSBj
aG9zZW4gdG8KPj4+PiBrZWVwIHNob3J0LXRlcm0tcGlubmVkIGJ1ZmZlciBvYmplY3RzIG9uIHRo
ZSBUVE0gTFJVIGxpc3RzIGZvciBub3csCj4+Pj4gbWVhbmluZyB0aGF0IHdlIG5lZWQgc29tZSBz
b3J0IG9mIG1lY2hhbmlzbSB0byB0ZWxsIFRUTSB0aGV5IGFyZSBub3QKPj4+PiBzd2FwcGFibGUu
IEEgbG9uZ2VyIHRlcm0gZ29hbCBpcyB0byBnZXQgcmlkIG9mIHRoZSBzaG9ydC10ZXJtIHBpbm5p
bmcuCj4+Pgo+Pj4gV2VsbCBqdXN0IHVzZSB0aGUgZXZpY3Rpb25fdmFsdWFibGUgaW50ZXJmYWNl
IGZvciB0aGlzLgo+Pgo+PiBZZXMsIHdlIGRvIHRoYXQgZm9yIHZyYW0vbG1lbSBldmljdGlvbiwg
YnV0IHdlIGhhdmUgbm90aGluZyBzaW1pbGFyIAo+PiBmb3Igc3lzdGVtIHN3YXBwaW5nLiBEbyBJ
IHVuZGVyc3RhbmQgeW91IGNvcnJlY3RseSB0aGF0IHlvdSB3YW50IG1lIAo+PiB0byBhZGQgYSBj
YWxsIHRvIGV2aWN0aW9uX3ZhbHVhYmxlKCkgYWxzbyBmb3IgdGhhdCBpbnN0ZWFkIG9mIAo+PiBz
d2FwX3Bvc3NpYmxlKCk/Cj4KPiBZb3Ugc2hvdWxkIGFscmVhZHkgaGF2ZSB0aGF0LiBldmljdGlv
bl92YWx1YWJsZSBpcyBjYWxsZWQgaW4gYm90aCBjYXNlcy4KPgpIbW0uIEkgY2FuIG9ubHkgc2Vl
IGl0IGNhbGxlZCBmcm9tIHR0bV9tZW1fZXZpY3RfZmlyc3QoKSB3aGljaCBpcyBub3QgaW4gCnRo
ZSBzd2FwcGluZyBwYXRoPyBPciBkbyBJIG1pc3Mgc29tZXRoaW5nPwoKVGhhbmtzLAoKVGhvbWFz
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
