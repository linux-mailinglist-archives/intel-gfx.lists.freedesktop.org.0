Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC843388780
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 08:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABA86EAC6;
	Wed, 19 May 2021 06:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 776D86E196;
 Wed, 19 May 2021 06:27:54 +0000 (UTC)
IronPort-SDR: lO+5a8PJojQtu+Rm6Jtua3MFzixIpzwNmqjc539diOuYiZ2EuNDTeVlQupgSef+f5tjasEQj5v
 pLiF60Sw7xyQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="197810678"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="197810678"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 23:27:53 -0700
IronPort-SDR: D0yQiy2JUiTycIv8o+pzcfB5Aebl2NOP4ERHPU2DA1dUgw2QHICbPZku6BeLCwzVaeY0/ky0lt
 6yN70qPixHIw==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="627496700"
Received: from clanggaa-mobl1.ger.corp.intel.com (HELO [10.249.254.222])
 ([10.249.254.222])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 23:27:52 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-10-thomas.hellstrom@linux.intel.com>
 <c4cd4843-c3aa-1f01-fc73-bc9144fa478f@linux.intel.com>
 <60276369-dbfd-e0dc-548b-a9419ff4c7eb@amd.com>
 <471d8fd5-379f-e95a-4973-c50fadace7cb@linux.intel.com>
 <b909db91-5c61-4af5-135d-aa62d5e4b481@amd.com>
 <f5c008cb-5047-7cbf-0361-e4e58e38d6e0@linux.intel.com>
 <fb9a4898-5844-c1e5-7a24-cb50a9ad6df7@amd.com>
 <334dc2d2-2053-9e42-62be-58784e4256aa@linux.intel.com>
 <a627f340-492e-c2cd-f805-8fafdca8eb60@amd.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <1be54cd2-5e50-c967-17a8-4b6d86fe71b1@linux.intel.com>
Date: Wed, 19 May 2021 08:27:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <a627f340-492e-c2cd-f805-8fafdca8eb60@amd.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 09/15] drm/ttm,
 drm/amdgpu: Allow the driver some control over swapping
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

Ck9uIDUvMTgvMjEgNjozMCBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAxOC4wNS4y
MSB1bSAxODowNyBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pgo+PiBPbiA1LzE4LzIxIDU6
NDIgUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAxOC4wNS4yMSB1bSAxNzozOCBz
Y2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Cj4+Pj4gT24gNS8xOC8yMSA1OjI4IFBNLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+PiBBbSAxOC4wNS4yMSB1bSAxNzoyMCBzY2hyaWVi
IFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Pj4KPj4+Pj4+IE9uIDUvMTgvMjEgNToxOCBQTSwgQ2hy
aXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gQW0gMTguMDUuMjEg
dW0gMTc6MTUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gT24g
NS8xOC8yMSAxMDoyNiBBTSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4+Pj4+Pj4+PiBXZSBh
cmUgY2FsbGluZyB0aGUgZXZpY3Rpb25fdmFsdWFibGUgZHJpdmVyIGNhbGxiYWNrIGF0IAo+Pj4+
Pj4+Pj4gZXZpY3Rpb24gdGltZSB0bwo+Pj4+Pj4+Pj4gZGV0ZXJtaW5lIHdoZXRoZXIgd2UgYWN0
dWFsbHkgY2FuIGV2aWN0IGEgYnVmZmVyIG9iamVjdC4KPj4+Pj4+Pj4+IFRoZSB1cGNvbWluZyBp
OTE1IFRUTSBiYWNrZW5kIG5lZWRzIHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHkgZm9yIAo+Pj4+Pj4+
Pj4gc3dhcG91dCwKPj4+Pj4+Pj4+IGFuZCB0aGF0IG1pZ2h0IGFjdHVhbGx5IGJlIGJlbmVmaWNp
YWwgdG8gb3RoZXIgZHJpdmVycyBhcyB3ZWxsLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEFkZCBhbiBl
dmljdGlvbl92YWx1YWJsZSBjYWxsIGFsc28gaW4gdGhlIHN3YXBvdXQgcGF0aC4gVHJ5IHRvIAo+
Pj4+Pj4+Pj4ga2VlcCB0aGUKPj4+Pj4+Pj4+IGN1cnJlbnQgYmVoYXZpb3VyIGZvciBhbGwgZHJp
dmVycyBieSByZXR1cm5pbmcgdHJ1ZSBpZiB0aGUgCj4+Pj4+Pj4+PiBidWZmZXIgb2JqZWN0Cj4+
Pj4+Pj4+PiBpcyBhbHJlYWR5IGluIHRoZSBUVE1fUExfU1lTVEVNIHBsYWNlbWVudC4gV2UgY2hh
bmdlIGJlaGF2aW91ciAKPj4+Pj4+Pj4+IGZvciB0aGUKPj4+Pj4+Pj4+IGNhc2Ugd2hlcmUgYSBi
dWZmZXIgb2JqZWN0IGlzIGluIGEgVFQgYmFja2VkIHBsYWNlbWVudCB3aGVuIAo+Pj4+Pj4+Pj4g
c3dhcHBlZCBvdXQsCj4+Pj4+Pj4+PiBpbiB3aGljaCBjYXNlIHRoZSBkcml2ZXJzIG5vcm1hbCBl
dmljdGlvbl92YWx1YWJsZSBwYXRoIGlzIHJ1bi4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBGaW5hbGx5
IGV4cG9ydCB0dG1fdHRfdW5wb3B1bGF0ZSgpIGFuZCBkb24ndCBzd2FwIG91dCBib3MKPj4+Pj4+
Pj4+IHRoYXQgYXJlIG5vdCBwb3B1bGF0ZWQuIFRoaXMgYWxsb3dzIGEgZHJpdmVyIHRvIHB1cmdl
IGEgYm8gYXQKPj4+Pj4+Pj4+IHN3YXBvdXQgdGltZSBpZiBpdHMgY29udGVudCBpcyBubyBsb25n
ZXIgdmFsdWFibGUgcmF0aGVyIHRoYW4gdG8KPj4+Pj4+Pj4+IGhhdmUgVFRNIHN3YXAgdGhlIGNv
bnRlbnRzIG91dC4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhl
bGxzdHLDtm0gCj4+Pj4+Pj4+PiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IENocmlzdGlhbiwKPj4+Pj4+Pj4KPj4+Pj4+Pj4gSGVyZSB3ZSBoYXZl
IGEgdHRtX3R0X3VucG9wdWxhdGUoKSBleHBvcnQgYXMgd2VsbCBhdCB0aGUgZW5kLiBJIAo+Pj4+
Pj4+PiBmaWd1cmUgeW91IHdpbGwgcHVzaCBiYWNrIG9uIHRoYXQgb25lLiBXaGF0IHdlIHJlYWxs
eSBuZWVkIGlzIGEgCj4+Pj4+Pj4+IGZ1bmN0aW9uYWxpdHkgdG8ganVzdCBkcm9wIHRoZSBibyBj
b250ZW50cyBhbmQgZW5kIHVwIGluIHN5c3RlbSAKPj4+Pj4+Pj4gbWVtb3J5IHVucG9wdWxhdGVk
LiBTaG91bGQgSSBwZXJoYXBzIGFkZCBhIHV0aWxpdHkgZnVuY3Rpb24gdG8gCj4+Pj4+Pj4+IGRv
IHRoYXQgaW5zdGVhZD8gbGlrZSB0dG1fYm9fcHVyZ2UoKT8KPj4+Pj4+Pgo+Pj4+Pj4+IFdlIGFs
cmVhZHkgaGF2ZSB0aGF0LiBKdXN0IGNhbGwgdHRtX2JvX3ZhbGlkYXRlKCkgd2l0aG91dCBhbnkg
Cj4+Pj4+Pj4gcGxhY2UgdG8gcHV0IHRoZSBidWZmZXIuCj4+Pj4+Pj4KPj4+Pj4+PiBTZWUgaG93
IHR0bV9ib19waXBlbGluZV9ndXR0aW5nKCkgaXMgdXNlZC4KPj4+Pj4+Pgo+Pj4+Pj4+IENocmlz
dGlhbi4KPj4+Pj4+Cj4+Pj4+PiBPSywgc28gaXMgdGhhdCByZWVudHJhbnQgZnJvbSB0aGUgbW92
ZSgpIG9yIHN3YXBfbm90aWZ5KCkgY2FsbGJhY2suCj4+Pj4+Cj4+Pj4+IFRoYXQgc291bmRzIGxp
a2UgYSBkZXNpZ24gYnVnIHRvIG1lIHNpbmNlIHlvdSBzaG91bGQgbmV2ZXIgbmVlZCB0byAKPj4+
Pj4gZG8gdGhpcy4KPj4+Pj4KPj4+Pj4gV2hlbiB5b3Ugd2FudCB0byBkZXN0cm95IHRoZSBiYWNr
aW5nIHN0b3JlIG9mIGEgYnVmZmVyIGR1cmluZyAKPj4+Pj4gZXZpY3Rpb24geW91IHNob3VsZCBq
dXN0IGRvIHRoaXMgYnkgcmV0dXJuaW5nIGFuIGVtcHR5IHBsYWNlbWVudCAKPj4+Pj4gZnJvbSB0
aGUgZXZpY3RfZmxhZ3MgY2FsbGJhY2suCj4+Pj4KPj4+PiBTbyB0aGlzIGlzIGZvciB0aGUgZnVu
Y3Rpb25hbGl0eSB3aGVyZSB0aGUgdXNlciBoYXMgaW5kaWNhdGVkIHRoYXQgCj4+Pj4gdGhlIGNv
bnRlbnRzIGlzIG5vIGxvbmdlciBvZiB2YWx1ZSwgYnV0IHRoZSBidWZmZXIgaXRzZWxmCj4+Pj4g
aXMgY2FjaGVkIHVudGlsIGV2aWN0ZWQgb3Igc3dhcHBlZCBvdXQgZm9yIHBlcmZvcm1hbmNlIHJl
YXNvbnMuIFNvIAo+Pj4+IHRoZSBhYm92ZSB3b3VsZCB3b3JrIGZvciBldmljdGlvbiwgYnV0IHdo
YXQgYWJvdXQgc3dhcG91dC4gQ291bGQgd2UgCj4+Pj4gYWRkIHNvbWUgc2ltaWxhciBmdW5jdGlv
bmFsaXR5IHRoZXJlPwo+Pj4KPj4+IEFtZGdwdSBoYXMgdGhlIHNhbWUgZnVuY3Rpb25hbGl0eSBh
bmQgeW91IGRvbid0IG5lZWQgdG8gaGFuZGxlIHN3YXAgCj4+PiBhdCBhbGwuCj4+Pgo+Pj4gSnVz
dCByZXR1cm4gZnJvbSB0aGUgZXZpY3RfZmxhZ3MgdGhhdCB5b3Ugd2FudCB0byBkcm9wIHRoZSBi
YWNraW5nIAo+Pj4gc3RvcmUgYXMgc29vbiBhcyB0aGUgQk8gbGVhdmVzIHRoZSBHVFQgZG9tYWlu
Lgo+Pgo+PiBIbW0sIHRoZSBwaXBlbGluZV9ndXR0aW5nIGZ1bmN0aW9uIHNlZW1zIG9rLCBidXQg
b3Zlcmx5IGNvbXBsZXggaWYgCj4+IHRoZSBibyBpcyBhbHJlYWR5IGlkbGUsIEFtIEkgYWxsb3dl
ZCB0byBvcHRpbWl6ZSBpdCBzbGlnaHRseSBmb3IgdGhlIAo+PiBsYXR0ZXIgY2FzZT8KPgo+IFll
YWgsIHN1cmUuIFdlIGp1c3QgbmV2ZXIgaGF0IHRoYXQgdXNlIGNhc2Ugc28gZmFyLgoKT25lIHRo
aW5nIGFib3V0IHRoZSBjb2RlIGhlcmUgdGhhdCBtYWtlcyBtZSB3b3JyaWVkIGlzIHRoYXQgdGhl
IAoiZGVzdGluYXRpb24iIHR0bV90dCBpcyBhbGxvY2F0ZWQgKmFmdGVyKiBwaXBlbGluZV9ndXR0
aW5nLiBXZSdyZSBub3QgCnJlYWxseSBhbGxvd2VkIHRvIGZhaWwgaGVyZSBiZWNhdXNlIHRoYXQg
d291bGQgbGVhdmUgdGhlIEJPIGluIGEgc3RhdGUgCndoZXJlIGNvZGVwYXRocyAoZmF1bHQgZm9y
IGV4YW1wbGUpIHRyeSB0byBhY2Nlc3MgYSBOVUxMIHR0bV90dC4gV2hpbGUgCnRoZSBpZGxlIGNh
c2UgY2FuIGdldCBhd2F5IHdpdGggdHRtX3R0X3VucG9wdWxhdGUsIGZvciB0aGUgYXN5bmMgY2Fz
ZSwgCnR0bV90dCByZWFsbHkgbmVlZHMgdG8gYmUgcHJlLWFsbG9jYXRlZCwgc28gdGhhdCB3ZSBj
YW4gbGVhdmUgdGhlIGJvIGluIAphIGNvbnNpc3RlbnQgc3RhdGUuCgovVGhvbWFzCgoKPgo+IENo
cmlzdGlhbi4KPgo+Pgo+PiAvVGhvbWFzCj4+Cj4+Cj4+Pgo+Pj4gQ2hyaXN0aWFuLgo+Pj4KPj4+
Pgo+Pj4+IC9UaG9tYXMKPj4+Pgo+Pj4+Pgo+Pj4+PiBSZWdhcmRzLAo+Pj4+PiBDaHJpc3RpYW4u
Cj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gL1Rob21hcwo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4+
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoYW5rcywKPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhvbWFzCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4KPj4+Cj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
