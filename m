Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F8F37BE31
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4E26E07B;
	Wed, 12 May 2021 13:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12F36E07B;
 Wed, 12 May 2021 13:25:40 +0000 (UTC)
IronPort-SDR: pRsQpG1ofdHUxE/d5H5o43ygVh/DlJABPB6Bc8bk8+ZZJcuxLqht2XrRtT6Ya2NPUwY7new/6U
 QYApJVytrOWQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="285205998"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="285205998"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:25:35 -0700
IronPort-SDR: 1hAkmnEwDuAPuZm7e4fdrqKJKMLdWWqkr/VCuSvZGy7KcrJZ+WvroE8RjVxi3iG+qs/AsrfN2u
 4pUxKqUV6YMA==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="625385127"
Received: from kjeldbeg-mobl2.ger.corp.intel.com (HELO [10.249.254.168])
 ([10.249.254.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:25:34 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
 <20210511132525.377190-7-thomas.hellstrom@linux.intel.com>
 <8ac6bc5c-17c0-2ffd-7f8c-823ab3c8a858@amd.com>
 <88ea8e22-3314-60a4-8f4b-0b37de444b1d@shipmail.org>
 <8551810c-a095-3906-d982-7bc409140c48@amd.com>
 <0b7f32d8-bfb9-84dd-fea7-556dddded1cc@linux.intel.com>
 <a0277869-7244-aee0-3359-21dac8f5a724@amd.com>
 <e85e9bd7a28c8570c6429683d6d68ee0855afacb.camel@linux.intel.com>
 <d0f0c55d-1784-922b-e9bd-0248cd7fb6af@amd.com>
 <6e317ee2b22546a2333d3098f5cda1a59da62a1a.camel@linux.intel.com>
 <d40ac511-3de3-12f0-4f0c-38b730e62b81@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <f6a34adf-f36f-3654-0764-149d7f402ca7@linux.intel.com>
Date: Wed, 12 May 2021 15:25:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <d40ac511-3de3-12f0-4f0c-38b730e62b81@amd.com>
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

Ck9uIDUvMTIvMjEgMzowNSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAxMi4wNS4y
MSB1bSAxNTowMiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBPbiBXZWQsIDIwMjEtMDUt
MTIgYXQgMDk6MDkgKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAxMi4wNS4y
MSB1bSAwOTowNSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+IE9uIFdlZCwgMjAyMS0w
NS0xMiBhdCAwODo1NyArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4gQW0gMTEu
MDUuMjEgdW0gMTY6Mjggc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4+IE9uIDUvMTEv
MjEgNDowOSBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+PiBBbSAxMS4wNS4yMSB1
bSAxNjowNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6Cj4+Pj4+Pj4+IE9uIDUv
MTEvMjEgMzo1OCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+Pj4+IEFtIDExLjA1
LjIxIHVtIDE1OjI1IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+Pj4+Pj4gTW9zdCBs
b2dpY2FsIHBsYWNlIHRvIGludHJvZHVjZSBUVE0gYnVmZmVyIG9iamVjdHMgaXMKPj4+Pj4+Pj4+
PiBhcyBhbgo+Pj4+Pj4+Pj4+IGk5MTUKPj4+Pj4+Pj4+PiBnZW0gb2JqZWN0IGJhY2tlbmQuIFdl
IG5lZWQgdG8gYWRkIHNvbWUgb3BzIHRvIGFjY291bnQKPj4+Pj4+Pj4+PiBmb3IKPj4+Pj4+Pj4+
PiBhZGRlZAo+Pj4+Pj4+Pj4+IGZ1bmN0aW9uYWxpdHkgbGlrZSBkZWxheWVkIGRlbGV0ZSBhbmQg
TFJVIGxpc3QKPj4+Pj4+Pj4+PiBtYW5pcHVsYXRpb24uCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBJ
bml0aWFsbHkgd2Ugc3VwcG9ydCBvbmx5IExNRU0gYW5kIFNZU1RFTSBtZW1vcnksIGJ1dAo+Pj4+
Pj4+Pj4+IFNZU1RFTQo+Pj4+Pj4+Pj4+ICh3aGljaCBpbiB0aGlzIGNhc2UgbWVhbnMgZXZpY3Rl
ZCBMTUVNIG9iamVjdHMpIGlzIG5vdAo+Pj4+Pj4+Pj4+IHZpc2libGUgdG8gaTkxNSBHRU0geWV0
LiBUaGUgcGxhbiBpcyB0byBtb3ZlIHRoZSBpOTE1Cj4+Pj4+Pj4+Pj4gZ2VtCj4+Pj4+Pj4+Pj4g
c3lzdGVtCj4+Pj4+Pj4+Pj4gcmVnaW9uCj4+Pj4+Pj4+Pj4gb3ZlciB0byB0aGUgVFRNIHN5c3Rl
bSBtZW1vcnkgdHlwZSBpbiB1cGNvbWluZyBwYXRjaGVzLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4g
V2Ugc2V0IHVwIEdQVSBiaW5kaW5ncyBkaXJlY3RseSBib3RoIGZyb20gTE1FTSBhbmQgZnJvbQo+
Pj4+Pj4+Pj4+IHRoZQo+Pj4+Pj4+Pj4+IHN5c3RlbQo+Pj4+Pj4+Pj4+IHJlZ2lvbiwKPj4+Pj4+
Pj4+PiBhcyB0aGVyZSBpcyBubyBuZWVkIHRvIHVzZSB0aGUgbGVnYWN5IFRUTV9UVCBtZW1vcnkK
Pj4+Pj4+Pj4+PiB0eXBlLgo+Pj4+Pj4+Pj4+IFdlIHJlc2VydmUKPj4+Pj4+Pj4+PiB0aGF0IGZv
ciBmdXR1cmUgcG9ydGluZyBvZiBHR1RUIGJpbmRpbmdzIHRvIFRUTS4KPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+IFRoZXJlIGFyZSBzb21lIGNoYW5nZXMgdG8gVFRNIHRvIGFsbG93IGZvciBwdXJnaW5n
Cj4+Pj4+Pj4+Pj4gc3lzdGVtCj4+Pj4+Pj4+Pj4gbWVtb3J5Cj4+Pj4+Pj4+Pj4gYnVmZmVyCj4+
Pj4+Pj4+Pj4gb2JqZWN0cyBhbmQgdG8gcmVmdXNlIHN3YXBwaW5nIG9mIHNvbWUgb2JqZWN0czoK
Pj4+Pj4+Pj4+PiBVbmZvcnR1bmF0ZWx5IGk5MTUKPj4+Pj4+Pj4+PiBnZW0KPj4+Pj4+Pj4+PiBz
dGlsbCByZWxpZXMgaGVhdmlseSBvbiBzaG9ydC10ZXJtIG9iamVjdCBwaW5uaW5nLCBhbmQKPj4+
Pj4+Pj4+PiB3ZSd2ZQo+Pj4+Pj4+Pj4+IGNob3NlbiB0bwo+Pj4+Pj4+Pj4+IGtlZXAgc2hvcnQt
dGVybS1waW5uZWQgYnVmZmVyIG9iamVjdHMgb24gdGhlIFRUTSBMUlUKPj4+Pj4+Pj4+PiBsaXN0
cwo+Pj4+Pj4+Pj4+IGZvciBub3csCj4+Pj4+Pj4+Pj4gbWVhbmluZyB0aGF0IHdlIG5lZWQgc29t
ZSBzb3J0IG9mIG1lY2hhbmlzbSB0byB0ZWxsIFRUTQo+Pj4+Pj4+Pj4+IHRoZXkgYXJlIG5vdAo+
Pj4+Pj4+Pj4+IHN3YXBwYWJsZS4gQSBsb25nZXIgdGVybSBnb2FsIGlzIHRvIGdldCByaWQgb2Yg
dGhlCj4+Pj4+Pj4+Pj4gc2hvcnQtCj4+Pj4+Pj4+Pj4gdGVybQo+Pj4+Pj4+Pj4+IHBpbm5pbmcu
Cj4+Pj4+Pj4+PiBXZWxsIGp1c3QgdXNlIHRoZSBldmljdGlvbl92YWx1YWJsZSBpbnRlcmZhY2Ug
Zm9yIHRoaXMuCj4+Pj4+Pj4+IFllcywgd2UgZG8gdGhhdCBmb3IgdnJhbS9sbWVtIGV2aWN0aW9u
LCBidXQgd2UgaGF2ZSBub3RoaW5nCj4+Pj4+Pj4+IHNpbWlsYXIKPj4+Pj4+Pj4gZm9yIHN5c3Rl
bSBzd2FwcGluZy4gRG8gSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0bHkgdGhhdCB5b3UKPj4+Pj4+
Pj4gd2FudCBtZQo+Pj4+Pj4+PiB0byBhZGQgYSBjYWxsIHRvIGV2aWN0aW9uX3ZhbHVhYmxlKCkg
YWxzbyBmb3IgdGhhdCBpbnN0ZWFkCj4+Pj4+Pj4+IG9mCj4+Pj4+Pj4+IHN3YXBfcG9zc2libGUo
KT8KPj4+Pj4+PiBZb3Ugc2hvdWxkIGFscmVhZHkgaGF2ZSB0aGF0LiBldmljdGlvbl92YWx1YWJs
ZSBpcyBjYWxsZWQgaW4KPj4+Pj4+PiBib3RoCj4+Pj4+Pj4gY2FzZXMuCj4+Pj4+Pj4KPj4+Pj4+
IEhtbS4gSSBjYW4gb25seSBzZWUgaXQgY2FsbGVkIGZyb20gdHRtX21lbV9ldmljdF9maXJzdCgp
IHdoaWNoCj4+Pj4+PiBpcwo+Pj4+Pj4gbm90Cj4+Pj4+PiBpbiB0aGUgc3dhcHBpbmcgcGF0aD8g
T3IgZG8gSSBtaXNzIHNvbWV0aGluZz8KPj4+Pj4gTWhtLCBsb29rcyBsaWtlIG15IHJlY29sbGVj
dGlvbiB3YXMgd3JvbmcuIFdlIHNob3VsZCBwcm9iYWJseQo+Pj4+PiBtb3ZlCj4+Pj4+IHRoZQo+
Pj4+PiBjYWxsIGludG8gdGhlIHR0bV9ib19ldmljdF9zd2Fwb3V0X2FsbG93YWJsZSgpIGZ1bmN0
aW9uLgo+Pj4+IFllcywgSSB0aGluayB3ZSBhbHNvIG5lZWQgYSBjb252ZW50aW9uIHdoZXRoZXIg
aXQncyBjYWxsZWQgZG1hX3Jlc3YKPj4+PiBsb2NrZWQgb3Igbm90LCBzaW5jZSB0aGUgaGVscGVy
IGFjY2Vzc2VzIGJvLT5tZW0sIHdoaWNoIHNob3VsZAo+Pj4+IHJlYWxseQo+Pj4+IG9ubHkgYmUg
ZG9uZSB1bmRlciByZXNlcnZhdGlvbi4gQXQgdGhlIHNhbWUgcG9pbnQsIHRoZXJlIGlzIHZhbHVl
Cj4+Pj4gaW4KPj4+PiBjYWxsaW5nIHRoaXMgZnVuY3Rpb24gd2hpbGUgaG9sZGluZyB0aGUgTFJV
IGxvY2suCj4+PiBZb3UgYWN0dWFsbHkgbmVlZCB0byBjYWxsIGl0IHdoaWxlIGhvbGRpbmcgdGhl
IGxvY2sgYmVjYXVzZSBldmljdGlvbgo+Pj4gb3RoZXJ3aXNlIGVuZHMgdXAgaW4gYW4gZW5kbGVz
cyBsb29wLgo+Pj4KPj4+IFRyeWluZyB0byBmaXggdGhhdCBmb3IgeWVhcnMsIGJ1dCBzbyBmYXIg
bm8gbHVjayB3aXRoIHRoYXQuCj4+Pgo+Pj4+IEFsc28sIEkgd29uZGVyIHdoZXRoZXIgaW1wbGVt
ZW50YXRpb25zIG9mIHRoaXMgY2FsbGJhY2sgbWlnaHQKPj4+PiBlbmNvdW50ZXIKPj4+PiB1bmV4
cGVjdGVkIGRhdGEgd2hlbiBjYWxsZWQgZnJvbSB0aGUgc3dhcG91dCBwYXRoLCBiZWNhdXNlIGF0
IGxlYXN0Cj4+Pj4gdGhlCj4+Pj4gaGVscGVyIGFzc3VtZXMgaXQgbm90IGluIHN5c3RlbSBtZW1v
cnksIHNpbmNlIGl0IGlzIGFjY2Vzc2luZyBiby0KPj4+Pj4gbWVtLnN0YXJ0Lgo+Pj4+IFNvIHVu
bGVzcyB3ZSB1c2UgYSBzZXBhcmF0ZSBjYWxsYmFjayBmb3Igc3dhcG91dCwgdGhlcmUncyBzb21l
Cj4+Pj4gYXVkaXRpbmcKPj4+PiB0byBiZSBkb25lLgo+Pj4gUGxlYXNlIGF1ZGl0IHRoZSBleGlz
dGluZyBjYWxsYmFja3MgYW5kIG1vdmUgdGhlIGNhbGxiYWNrIGludG8gdGhlCj4+PiBmdW5jdGlv
biBhZnRlciBkb2luZyB0aGF0Lgo+Pj4KPj4+IFRoYW5rcywKPj4+IENocmlzdGlhbi4KPj4gV291
bGQgaXQgYmUgT0sgaWYgSSBhbHNvIG1vdmUgdGhlIGtyZWZfZ2V0X3VubGVzc196ZXJvKCkgdG8g
YmVmb3JlCj4+IHR0bV9ib19ldmljdF9zd2Fwb3V0X2FsbG93YWJsZSgpIHRvIG1ha2UgdGhlIGNv
ZGUgbGVzcyBzZW5zaXRpdmUgdG8KPj4gc3VycHJpc2VzPwo+Cj4gTm8sIGJlY2F1c2UgdGhlbiB5
b3UgbmVlZCBhIGtyZWZfcHV0IHdoaWxlIGhvbGRpbmcgdGhlIHNwaW5sb2NrIHdoaWNoIAo+IGlz
IG5vdCBhbGxvd2VkLgo+Cj4gQ2hyaXN0aWFuLgoKVWdoLiB5ZXMsIHlvdSdyZSByaWdodC4KCi9U
aG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
