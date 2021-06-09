Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1353A1764
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 16:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E286E059;
	Wed,  9 Jun 2021 14:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D0F6E043;
 Wed,  9 Jun 2021 14:36:02 +0000 (UTC)
IronPort-SDR: JahA67szNhEQhI7mLBJRQ711S4sv7VXg9IuE6+1OAAs2I8fuCEvLwr4FvHeTtUf3QwioXPV7PV
 xeDp/LMBDQIg==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="192398689"
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="192398689"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 07:36:01 -0700
IronPort-SDR: 0R4U09SPxWPlXMVSH+bECe2FMUnv0ojQFK4TD46vTKCwiv8DjByCB47VZSYJmdechvGLIMbaJq
 xuYBPbyehItA==
X-IronPort-AV: E=Sophos;i="5.83,261,1616482800"; d="scan'208";a="635437702"
Received: from agilev-mobl1.ccr.corp.intel.com (HELO [10.249.254.250])
 ([10.249.254.250])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 07:35:59 -0700
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel@ffwll.ch>
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
 <YMCqm48rZIKLYk/s@phenom.ffwll.local>
 <9f38fc28-15fb-2736-ba01-503821fdbe54@linux.intel.com>
 <4d570a5b-0ea7-71ab-5082-e67f0cd668a7@intel.com>
 <1cd6b04d-8928-14b3-a63d-c9ac2e81fcca@linux.intel.com>
Message-ID: <99ff0d9f-9bd4-c27d-45a5-a66d2ad9064f@linux.intel.com>
Date: Wed, 9 Jun 2021 16:35:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1cd6b04d-8928-14b3-a63d-c9ac2e81fcca@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 0/9] Prereqs for TTM accelerated migration
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvOS8yMSAzOjA4IFBNLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPgo+IE9uIDYvOS8y
MSAyOjIwIFBNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IE9uIDA5LzA2LzIwMjEgMTM6MTYsIFRo
b21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Pj4KPj4+IE9uIDYvOS8yMSAxOjQ4IFBNLCBEYW5pZWwg
VmV0dGVyIHdyb3RlOgo+Pj4+IE9uIFdlZCwgSnVuIDA5LCAyMDIxIGF0IDA4OjM0OjI3QU0gKzAy
MDAsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Pj4+PiBBIGNvdXBsZSBvZiBwYXRjaGVzIGZy
b20gQ2hyaXMgd2hpY2ggaW1wbGVtZW50IHBpcGVsaW5lZCBtaWdyYXRpb24gCj4+Pj4+IGFuZAo+
Pj4+PiBjbGVhcnMgYnkgYXRvbWljYWxseSB3cml0aW5nIHRoZSBQVEVzIGluIHBsYWNlIGJlZm9y
ZSBwZXJmb3JtaW5nIHRoZQo+Pj4+PiBhY3R1YWwgYmxpdC4KPj4+Pj4KPj4+Pj4gU29tZSB3dyB1
dGlsaXRpZXMgbWFpbmx5IGZvciB0aGUgYWNjb21wYW55aW5nIHNlbGZ0ZXN0cyBhZGRlZCBieSAK
Pj4+Pj4gVGhvbWFzLAo+Pj4+PiBhcyB3ZWxsIGFzIG1vZGlmaWVkIHRoZSBhYm92ZSBwYXRjaGVz
IGZvciB3dyBsb2NraW5nLSBhbmQgbG1lbSAKPj4+Pj4gc3VwcG9ydC4KPj4+Pj4KPj4+Pj4gVGhl
IGFjdHVhbCBob29rIHVwIHRvIHRoZSBpOTE1IHR0bSBiYWNrZW5kIGlzIGJlaW5nIHdvcmtlZCBv
biBhbmQgbm90Cj4+Pj4+IGluY2x1ZGVkIHlldCwgc28gdGhpcyBpcyBjb25zaWRlcmVkIHRvIGJl
IGFuIGVhcmx5IHJldmlldyAKPj4+Pj4gb3Bwb3J0dW5pdHkuCj4+Pj4+Cj4+Pj4+IHYyOgo+Pj4+
PiAtIEEgY291cGxlIG9mIG1pbm9yIHN0eWxlIGZpeGVzIHBvaW50ZWQgb3V0IGJ5IE1hdHRoZXcg
QXVsZAo+Pj4+PiAtIEV4cG9ydCBhbmQgdXNlIGludGVsX2VuZ2luZV9kZXN0cm95X3Bpbm5lZF9j
b250ZXh0KCkgdG8gYWRkcmVzcyBhCj4+Pj4+IGxzwqDCoCBDSSB3YXJuaW5nIC8gZmFpbHVyZS4K
Pj4+PiBKdXN0IHRvIGNoZWNrIG15IHVuZGVyc3RhbmRpbmcgb2YgdGhlIHBsYW46IFRoZXNlIGFy
ZSB0aGUgbmV3IHdpbmRvd2VkCj4+Pj4gY2xlYXIvYmx0IGZ1bmN0aW9ucyB3aGljaCB3ZSBwbGFu
IHRvIHVzZSBldmVyeXdoZXJlLCBiZWNhdXNlIGxlc3MgCj4+Pj4gbmFzdHkKPj4+PiBsb2NraW5n
IGltcGxpY2F0aW9ucz8gQW5kIHRoZSBjbGVhci9ibHQgd2UgY3VycmVudGx5IGhhdmUgaW4gCj4+
Pj4gdXBzdHJlYW0gd2lsbAo+Pj4+IGJlIHJlcGxhY2VkPwo+Pj4KPj4+IFllcy4gVGhlc2UgYXJl
IGZvciBMTUVNIGNsZWFyaW5nIGFuZCBtaWdyYXRpb24uIEl0IGxvb2tzIHRvIG1lIGxpa2UgCj4+
PiB0aGUgb3RoZXIgb25lcyB3ZSBoYXZlIGluIHVwc3RyZWFtIGFyZSBhY3R1YWxseSB1bnVzZWQg
ZXhjZXB0IGZvciAKPj4+IHNlbGZ0ZXN0cy4gV2UncmUgYWN0dWFsbHkgdXNpbmcgQ1BVIGNsZWFy
aW5nIGZvciBub3cuCj4+Pgo+Pj4+Cj4+Pj4gSWYgc28gd291bGQgYmUgbmljZSBpZiB0aGlzIHBh
dGNoIHNldCBpbmNsdWRlcyB0aGF0IHJlcGxhY2VtZW50IAo+Pj4+IHdvcmsgKEkKPj4+PiB0aGlu
ayByaWdodCBub3cgYWxsIHdlIGhhdmUgaXMgdGhlIGNsZWFyIGZvciBsbWVtKSwgaW5jbHVkaW5n
IAo+Pj4+IHVwZGF0aW5nIG9mCj4+Pj4gc2VsZnRlc3RzIGFuZCBzdHVmZiBsaWtlIHRoYXQuIEp1
c3QgdG8gYXZvaWQgaGF2aW5nIHR3byB3YXlzIHRvIGRvIHRoZQo+Pj4+IHNhbWUgdGhpbmcgaW4g
dGhlIGRyaXZlci4KPj4+Cj4+PiBPSywgSSdsbCBoYXZlIGEgbG9vayBhdCBzdHJpcHBpbmcgdGhl
IGV4aXN0aW5nIGNvZGUuIElmIHdlIG5lZWQgaXQgCj4+PiBtb3ZpbmcgZm9yd2FyZCwgd2UgY2Fu
IGFsd2F5cyByZS1hZGQuCj4+Cj4+IFNvbWUgbG93IGhhbmdpbmcgZnJ1aXQgd291bGQgYmUgYWxs
IHRoZSBjbGllbnRfYmx0IHN0dWZmIHdoaWNoIGNhbiAKPj4gZm9yIHN1cmUgYmUgZGVsZXRlZCBu
b3cuCj4KPiBXaGF0IGhhcyB0aGUgY2xpZW50X2JsdCBzdHVmZiBiZWVuIHVzZWQgZm9yPwo+Cj4g
SW4gYW55IGNhc2UsIEkgbmVlZCAyNSBjb21taXRzIGZvciBjb21taXQgYWNjZXNzIHRvIGJlIGdy
YW50ZWQuCj4KPiAvVGhvbWFzCj4KPgpTZXJpZXMgb24gdHJ5Ym90IG5vdy4gSXQncyB0aGUgZGcx
IGxpdmUgbWVtb3J5X3JlZ2lvbiBzZWxmdGVzdCB0aGF0IApjaGFuZ2VzIHNsaWd0aGx5IHRvIHVz
ZSB0aGUgbmV3IG1pZ3JhdGlvbiBmaWxsIGJsdC4KCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
