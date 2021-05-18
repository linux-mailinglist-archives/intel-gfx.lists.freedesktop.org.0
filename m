Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9730387D15
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 18:09:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229166EC1A;
	Tue, 18 May 2021 16:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50ACE6EC2C;
 Tue, 18 May 2021 16:09:09 +0000 (UTC)
IronPort-SDR: ZgjL7T0OfixtTL1IPGHKl4PGOrfIErJcrUlibSLCu+rdt2dYkrwV7bkilIth1HjZ3L/EqiFqku
 w7vamOejuvEA==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="200804788"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="200804788"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 09:07:29 -0700
IronPort-SDR: iDotVLPyfjU7FBk7NwaJk3sZv4BntYDY9mnTI5dVeVC14EdCSg+u9NYwbTBJBBfHkz+Pw+Wpv7
 3/SlzzoQRRCA==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439100599"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 09:07:27 -0700
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
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <334dc2d2-2053-9e42-62be-58784e4256aa@linux.intel.com>
Date: Tue, 18 May 2021 18:07:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <fb9a4898-5844-c1e5-7a24-cb50a9ad6df7@amd.com>
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

Ck9uIDUvMTgvMjEgNTo0MiBQTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAxOC4wNS4y
MSB1bSAxNzozOCBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pgo+PiBPbiA1LzE4LzIxIDU6
MjggUE0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+PiBBbSAxOC4wNS4yMSB1bSAxNzoyMCBz
Y2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Cj4+Pj4gT24gNS8xOC8yMSA1OjE4IFBNLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBBbSAxOC4wNS4yMSB1bSAx
NzoxNSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Pj4KPj4+Pj4+IE9uIDUvMTgvMjEg
MTA6MjYgQU0sIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Pj4+Pj4+IFdlIGFyZSBjYWxsaW5n
IHRoZSBldmljdGlvbl92YWx1YWJsZSBkcml2ZXIgY2FsbGJhY2sgYXQgZXZpY3Rpb24gCj4+Pj4+
Pj4gdGltZSB0bwo+Pj4+Pj4+IGRldGVybWluZSB3aGV0aGVyIHdlIGFjdHVhbGx5IGNhbiBldmlj
dCBhIGJ1ZmZlciBvYmplY3QuCj4+Pj4+Pj4gVGhlIHVwY29taW5nIGk5MTUgVFRNIGJhY2tlbmQg
bmVlZHMgdGhlIHNhbWUgZnVuY3Rpb25hbGl0eSBmb3IgCj4+Pj4+Pj4gc3dhcG91dCwKPj4+Pj4+
PiBhbmQgdGhhdCBtaWdodCBhY3R1YWxseSBiZSBiZW5lZmljaWFsIHRvIG90aGVyIGRyaXZlcnMg
YXMgd2VsbC4KPj4+Pj4+Pgo+Pj4+Pj4+IEFkZCBhbiBldmljdGlvbl92YWx1YWJsZSBjYWxsIGFs
c28gaW4gdGhlIHN3YXBvdXQgcGF0aC4gVHJ5IHRvIAo+Pj4+Pj4+IGtlZXAgdGhlCj4+Pj4+Pj4g
Y3VycmVudCBiZWhhdmlvdXIgZm9yIGFsbCBkcml2ZXJzIGJ5IHJldHVybmluZyB0cnVlIGlmIHRo
ZSAKPj4+Pj4+PiBidWZmZXIgb2JqZWN0Cj4+Pj4+Pj4gaXMgYWxyZWFkeSBpbiB0aGUgVFRNX1BM
X1NZU1RFTSBwbGFjZW1lbnQuIFdlIGNoYW5nZSBiZWhhdmlvdXIgCj4+Pj4+Pj4gZm9yIHRoZQo+
Pj4+Pj4+IGNhc2Ugd2hlcmUgYSBidWZmZXIgb2JqZWN0IGlzIGluIGEgVFQgYmFja2VkIHBsYWNl
bWVudCB3aGVuIAo+Pj4+Pj4+IHN3YXBwZWQgb3V0LAo+Pj4+Pj4+IGluIHdoaWNoIGNhc2UgdGhl
IGRyaXZlcnMgbm9ybWFsIGV2aWN0aW9uX3ZhbHVhYmxlIHBhdGggaXMgcnVuLgo+Pj4+Pj4+Cj4+
Pj4+Pj4gRmluYWxseSBleHBvcnQgdHRtX3R0X3VucG9wdWxhdGUoKSBhbmQgZG9uJ3Qgc3dhcCBv
dXQgYm9zCj4+Pj4+Pj4gdGhhdCBhcmUgbm90IHBvcHVsYXRlZC4gVGhpcyBhbGxvd3MgYSBkcml2
ZXIgdG8gcHVyZ2UgYSBibyBhdAo+Pj4+Pj4+IHN3YXBvdXQgdGltZSBpZiBpdHMgY29udGVudCBp
cyBubyBsb25nZXIgdmFsdWFibGUgcmF0aGVyIHRoYW4gdG8KPj4+Pj4+PiBoYXZlIFRUTSBzd2Fw
IHRoZSBjb250ZW50cyBvdXQuCj4+Pj4+Pj4KPj4+Pj4+PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBI
ZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPj4+Pj4+Cj4+Pj4+
PiBDaHJpc3RpYW4sCj4+Pj4+Pgo+Pj4+Pj4gSGVyZSB3ZSBoYXZlIGEgdHRtX3R0X3VucG9wdWxh
dGUoKSBleHBvcnQgYXMgd2VsbCBhdCB0aGUgZW5kLiBJIAo+Pj4+Pj4gZmlndXJlIHlvdSB3aWxs
IHB1c2ggYmFjayBvbiB0aGF0IG9uZS4gV2hhdCB3ZSByZWFsbHkgbmVlZCBpcyBhIAo+Pj4+Pj4g
ZnVuY3Rpb25hbGl0eSB0byBqdXN0IGRyb3AgdGhlIGJvIGNvbnRlbnRzIGFuZCBlbmQgdXAgaW4g
c3lzdGVtIAo+Pj4+Pj4gbWVtb3J5IHVucG9wdWxhdGVkLiBTaG91bGQgSSBwZXJoYXBzIGFkZCBh
IHV0aWxpdHkgZnVuY3Rpb24gdG8gZG8gCj4+Pj4+PiB0aGF0IGluc3RlYWQ/IGxpa2UgdHRtX2Jv
X3B1cmdlKCk/Cj4+Pj4+Cj4+Pj4+IFdlIGFscmVhZHkgaGF2ZSB0aGF0LiBKdXN0IGNhbGwgdHRt
X2JvX3ZhbGlkYXRlKCkgd2l0aG91dCBhbnkgCj4+Pj4+IHBsYWNlIHRvIHB1dCB0aGUgYnVmZmVy
Lgo+Pj4+Pgo+Pj4+PiBTZWUgaG93IHR0bV9ib19waXBlbGluZV9ndXR0aW5nKCkgaXMgdXNlZC4K
Pj4+Pj4KPj4+Pj4gQ2hyaXN0aWFuLgo+Pj4+Cj4+Pj4gT0ssIHNvIGlzIHRoYXQgcmVlbnRyYW50
IGZyb20gdGhlIG1vdmUoKSBvciBzd2FwX25vdGlmeSgpIGNhbGxiYWNrLgo+Pj4KPj4+IFRoYXQg
c291bmRzIGxpa2UgYSBkZXNpZ24gYnVnIHRvIG1lIHNpbmNlIHlvdSBzaG91bGQgbmV2ZXIgbmVl
ZCB0byAKPj4+IGRvIHRoaXMuCj4+Pgo+Pj4gV2hlbiB5b3Ugd2FudCB0byBkZXN0cm95IHRoZSBi
YWNraW5nIHN0b3JlIG9mIGEgYnVmZmVyIGR1cmluZyAKPj4+IGV2aWN0aW9uIHlvdSBzaG91bGQg
anVzdCBkbyB0aGlzIGJ5IHJldHVybmluZyBhbiBlbXB0eSBwbGFjZW1lbnQgCj4+PiBmcm9tIHRo
ZSBldmljdF9mbGFncyBjYWxsYmFjay4KPj4KPj4gU28gdGhpcyBpcyBmb3IgdGhlIGZ1bmN0aW9u
YWxpdHkgd2hlcmUgdGhlIHVzZXIgaGFzIGluZGljYXRlZCB0aGF0IAo+PiB0aGUgY29udGVudHMg
aXMgbm8gbG9uZ2VyIG9mIHZhbHVlLCBidXQgdGhlIGJ1ZmZlciBpdHNlbGYKPj4gaXMgY2FjaGVk
IHVudGlsIGV2aWN0ZWQgb3Igc3dhcHBlZCBvdXQgZm9yIHBlcmZvcm1hbmNlIHJlYXNvbnMuIFNv
IAo+PiB0aGUgYWJvdmUgd291bGQgd29yayBmb3IgZXZpY3Rpb24sIGJ1dCB3aGF0IGFib3V0IHN3
YXBvdXQuIENvdWxkIHdlIAo+PiBhZGQgc29tZSBzaW1pbGFyIGZ1bmN0aW9uYWxpdHkgdGhlcmU/
Cj4KPiBBbWRncHUgaGFzIHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHkgYW5kIHlvdSBkb24ndCBuZWVk
IHRvIGhhbmRsZSBzd2FwIGF0IAo+IGFsbC4KPgo+IEp1c3QgcmV0dXJuIGZyb20gdGhlIGV2aWN0
X2ZsYWdzIHRoYXQgeW91IHdhbnQgdG8gZHJvcCB0aGUgYmFja2luZyAKPiBzdG9yZSBhcyBzb29u
IGFzIHRoZSBCTyBsZWF2ZXMgdGhlIEdUVCBkb21haW4uCgpIbW0sIHRoZSBwaXBlbGluZV9ndXR0
aW5nIGZ1bmN0aW9uIHNlZW1zIG9rLCBidXQgb3Zlcmx5IGNvbXBsZXggaWYgdGhlIApibyBpcyBh
bHJlYWR5IGlkbGUsIEFtIEkgYWxsb3dlZCB0byBvcHRpbWl6ZSBpdCBzbGlnaHRseSBmb3IgdGhl
IGxhdHRlciAKY2FzZT8KCi9UaG9tYXMKCgo+Cj4gQ2hyaXN0aWFuLgo+Cj4+Cj4+IC9UaG9tYXMK
Pj4KPj4+Cj4+PiBSZWdhcmRzLAo+Pj4gQ2hyaXN0aWFuLgo+Pj4KPj4+Pgo+Pj4+IC9UaG9tYXMK
Pj4+Pgo+Pj4+Cj4+Pj4KPj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBUaGFua3MsCj4+Pj4+Pgo+Pj4+Pj4g
VGhvbWFzCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4KPj4+Cj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
